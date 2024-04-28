# Setup -------------------------------------------------------------------

suppressMessages(library(bnlearn))
data("asiadf")
C <- cor(asiadf)


# Test Partial Correlations Against `ppcor` -------------------------------

# These tests are for partial correlations with the follow cond. sets:
# 1. empty set
# 2. all remaining nodes set 
# 3. set of cardinality 1
# 4. set of cardinality 2
test_that("Partial Correlation function is accurate",{
  # Test for empty set being conditioned on
  true_result <- C[1,3]
  est_result <- getPartialCorrelation(cor(asiadf),0,2,double())
  expect_equal(est_result,true_result)
  
  # Test for being conditioned on the remaining nodes
  true_result <- ppcor::pcor(asiadf)
  for (i in 0:7){
    for (j in 0:7){
      est_result <- getPartialCorrelation(C,i,j,setdiff(0:7,c(i,j)))
      expect_equal(est_result,true_result$estimate[i+1,j+1])
      est_test_list <- condIndTest(C,i,j,setdiff(0:7,c(i,j)),500,0.05)
      expect_equal(est_test_list$pval,
                   true_result$p.value[i+1,j+1],tolerance = 0.001)
    }
  }
  
  # Test for being conditioned on one other node
  for (i in 0:7){
    for (j in setdiff(0:7,i)){
      for (k in setdiff(0:7,c(i,j))){
        est_result <- getPartialCorrelation(C,i,j,k)
        test_result <- condIndTest(C,i,j,k,500,0.05)
        true_result <- ppcor::pcor.test(asiadf[,i+1],asiadf[,j+1],asiadf[,k+1])
        expect_equal(est_result,true_result$estimate,tolerance = 0.0001)
        expect_equal(test_result$pval,true_result$p.value,tolerance = 0.01)
      }
    }
  }
  
  # Test for being conditioned on two nodes
  for (i in 0:7){
    for (j in setdiff(0:7,i)){
      vals <- combn(setdiff(0:7,c(i,j)),2)
      apply(vals,2,function(x){
        est_result <- getPartialCorrelation(C,i,j,x)
        test_result <- condIndTest(C,i,j,x,500,0.05)
        true_result <- ppcor::pcor.test(asiadf[,i+1],asiadf[,j+1],list(asiadf[,x[1]+1],asiadf[,x[2]+1]))
        expect_equal(est_result,true_result$estimate,tolerance = 0.0001)
        expect_equal(test_result$pval,true_result$p.value,tolerance = 0.01)
      })
    }
  }
})


# Test CI test functionality ----------------------------------------------

# pcalg as baseline
# using asia data, we conduct CI tests with cond. set as follows:
# 1. empty set 
# 2. size 1
# 3. size 2
# 4. size 3
# 5. size 6
test_that("Make sure you are obtaining the correct test results",{
  
  k0 <- numeric(0)
  n <- nrow(asiadf)
  alpha <- 0.05
  # Test all pairs of nodes
  for (i in 0:7){
    for (j in 0:7){
      # Comparing results with empty set
      true_res <- pcalg::gaussCItest(i+1,j+1,k0,list("C"=C,"n"=n))
      true_res2 <- pcalg::condIndFisherZ(i+1,j+1,k0, C, n, qnorm(1-alpha/2), 
                                         verbose= FALSE)
      est_res <- condIndTest(C,i,j,k0,n,signif_level=alpha)
      # Compare p-values
      expect_equal(est_res$pval,true_res)
      # Compare CI test results
      expect_true(est_res$result == true_res2)
      
      # Comparing results with set of size 1
      set.seed(111)
      # choose random conditioning set of size 1
      k1 <- sample(setdiff(0:7,c(i,j)),1,replace = FALSE)
      true_res <- pcalg::gaussCItest(i+1,j+1,k1+1,list("C"=C,"n"=n))
      true_res1 <- pcalg::condIndFisherZ(i+1,j+1,k1+1, C, n, qnorm(1-alpha/2), 
                                         verbose= TRUE)
      est_res <- condIndTest(C,i,j,k1,n,signif_level=alpha)
      # Message if results do not match
      if (est_res$result != true_res1){
        cat("\ni =",i,"| j =",j,"| k =",paste(k1,collapse = " "),
            "| pval (Est):",est_res$pval,"| pval (True): ",true_res,
            "| Estimate:",est_res$result,"| True Result:",true_res1,"\n")
      }
      # Compare results
      expect_equal(est_res$pval,true_res)
      expect_true(est_res$result == true_res1)
      
      # Comparing results with set of size 2
      # choose random conditioning set
      k2 <- sample(setdiff(0:7,c(i,j)),2,replace = FALSE)
      true_res <- pcalg::gaussCItest(i+1,j+1,k2+1,list("C"=C,"n"=n))
      true_res2 <- pcalg::condIndFisherZ(i+1,j+1,k2+1, C, n, qnorm(1-alpha/2), 
                                         verbose= TRUE)
      est_res <- condIndTest(C,i,j,k2,n,signif_level=alpha)
      # Message in case of discrepancy
      if (est_res$result != true_res2){
        cat("\ni =",i,"| j =",j,"| k =",paste(k2,collapse = " "),
            "| pval (Est):",est_res$pval,"| pval (True): ",true_res,
            "| Estimate:",est_res$result,"| True Result:",true_res2,"\n")
      }
      # Compare results
      expect_equal(est_res$pval,true_res)
      expect_true(est_res$result == true_res2)
      
      # Comparing results with set of size 3
      # obtain random conditioning set
      k3 <- sample(setdiff(0:7,c(i,j)),3,replace = FALSE)
      true_res <- pcalg::gaussCItest(i+1,j+1,k3+1,list("C"=C,"n"=n))
      true_res2 <- pcalg::condIndFisherZ(i+1,j+1,k3+1, C, n, qnorm(1-alpha/2), 
                                         verbose= TRUE)
      est_res <- condIndTest(C,i,j,k3,n,signif_level=alpha)
      if (est_res$result != true_res2){
        cat("\ni =",i,"| j =",j,"| k =",paste(k3,collapse = " "),"| pval (Est):",
            est_res$pval,"| pval (True): ",true_res,
            "| Estimate:",est_res$result,"| True Result:",true_res2,"\n")
      }
      # Compare results
      expect_equal(est_res$pval,true_res)
      expect_true(est_res$result == true_res2)
      
      # Comparing results with largest possible set size (6 in this case)
      # obtain all remaining nodes
      k4 <- setdiff(0:7,c(i,j))
      true_res <- pcalg::gaussCItest(i+1,j+1,k4+1,list("C"=C,"n"=n))
      true_res2 <- pcalg::condIndFisherZ(i+1,j+1,k4+1, C, n, qnorm(1-alpha/2), 
                                         verbose= TRUE)
      est_res <- condIndTest(C,i,j,k4,n,signif_level=alpha)
      if (est_res$result != true_res2){
        cat("\ni =",i,"| j =",j,"| k =",paste(k4,collapse = " "),
            "| pval (Est):",est_res$pval,"| pval (True): ",true_res,
            "| Estimate:",est_res$result,"| True Result:",true_res2,"\n")
      }
      expect_equal(est_res$pval,true_res)
      expect_true(est_res$result == true_res2)
    }
  }

})


# Testing Rcpp Armadillo Correlation Matrix -------------------------------

test_that("Test that Rcpp Armadillo correlation function works correctly",{
  R <- cor(asiadf)
  dimnames(R) <- NULL
  expect_equal(R,testArmaCor(as.matrix(asiadf)),tolerance = 1e-05)
})


# Testing population version ----------------------------------------------

test_that("Test that population function works correctly",{
  data("asiaDAG")
  nodes <- colnames(asiaDAG)
  asia <- bnlearn::empty.graph(colnames(asiaDAG))
  bnlearn::amat(asia) <- asiaDAG
  for (i in 0:7){
    for (j in setdiff(0:7,i)){
      for (k in 0:3){ # governs sep set size
        for (n in 1:4){ # 4 runs for each sep set size
          kset <- sample(setdiff(0:7,c(i,j)),k)
          if (k == 0){
            true_val <- bnlearn::dsep(asia,nodes[i+1],nodes[j+1])
          } else {
            true_val <- bnlearn::dsep(asia,nodes[i+1],nodes[j+1],nodes[kset+1])
          }
          my_val <- condIndTestPop(asiaDAG,i,j,kset)
          expect_equal(my_val$result,true_val)
        }
      }
    }
  }
})
