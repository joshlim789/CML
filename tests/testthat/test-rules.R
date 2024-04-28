library(bnlearn)

# Setup -------------------------------------------------------------------

data("asiadf")
data("asiaDAG")
node_names <- colnames(asiaDAG)
asiaDAG <- matrix(asiaDAG,nrow = ncol(asiadf),ncol = ncol(asiadf))
asiadf <- as.matrix(asiadf)

test_that("Rule 1 is correct.",{
  cat("\n")
  nodes <- c("a","b","alpha","beta","gamma")
  track_changes <- FALSE
  adj.mat1 <- matrix(c(0,1,1,0,0,
                       1,0,0,2,0,
                       1,0,0,2,0,
                       0,3,1,0,1,
                       0,0,0,1,0),nrow = 5,byrow = TRUE)
  adj.mat1orig <- rlang::duplicate(adj.mat1)
  expect_snapshot_output(adj.mat1 <- testRule1(asiaDAG[1:5,1:5],asiadf[,1:5],0,nodes,adj.mat1))
  expect_equal(adj.mat1[4,5],2)
  expect_equal(adj.mat1[5,4],3)
  
  for (i in 1:nrow(adj.mat1)){
    for (j in 1:ncol(adj.mat1)){
      cond1 <- i==4 & j==5
      cond2 <- i==5 & j==4
      if (!(cond1 | cond2)){
        expect_equal(adj.mat1orig[i,j],adj.mat1[i,j])
      }
    }
  }
}) 

test_that("Rule 1 Contradiction Gives Error",{
  # If we have beta o- gamma, this is an error and a contradiction of rule 1
  # Since this would mean we would have another v-structure
  amat_error <- matrix(c(
    0,2,0,
    1,0,3,
    0,1,0
  ),byrow = TRUE,ncol = 3)
  expect_warning(testRule1(asiaDAG,asiadf,0,node_names,amat_error))
})

test_that("Rule 2 is correct.",{
  adj.mat2 <- matrix(c(0,2,1,1,0,0,
                       1,0,2,0,0,0,
                       1,3,0,0,0,0,
                       1,0,0,0,2,1,
                       0,0,0,3,0,2,
                       0,0,0,1,1,0),nrow = 6,byrow = TRUE)
  p <- nrow(adj.mat2)
  adj.mat2orig <- rlang::duplicate(adj.mat2)
  expect_snapshot_output(adj.mat2 <- testRule2(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names[1:p],adj.mat2))
  expect_equal(adj.mat2[1,3],2)
  expect_equal(adj.mat2[4,6],2)
  
  for (i in 1:nrow(adj.mat2)){
    for (j in 1:ncol(adj.mat2)){
      cond1 <- i==1 & j==3 
      cond2 <- i==4 & j==6
      if (!(cond1 | cond2)){
        expect_equal(adj.mat2[i,j],adj.mat2orig[i,j])
      }
    }
  }
})
# 
test_that("Rule 3 is correct.",{
  adj.mat3 <- matrix(c(0,2,2,1,0,0,1,
                       1,0,0,0,0,1,0,
                       3,0,0,0,0,0,0,
                       1,0,0,0,2,0,1,
                       0,0,0,1,0,1,1,
                       0,1,0,0,2,0,1,
                       1,0,0,1,1,1,0),nrow = 7,byrow = TRUE)
  adj.mat3orig <- rlang::duplicate(adj.mat3)
  p <- ncol(adj.mat3)
  
  expect_snapshot_output(adj.mat3 <- testRule3(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names[1:p],adj.mat3))
  expect_equal(adj.mat3[7,5],2)
  for (i in 1:nrow(adj.mat3)){
    for (j in 1:ncol(adj.mat3)){
      cond1 <- i==7 & j==5
      if (!cond1){
        expect_equal(adj.mat3[i,j],adj.mat3orig[i,j])
      }
    }
  }
})


adj.mat4 <- matrix(c(0,2,1,0,0,2,3,
                     2,0,0,2,0,2,0,
                     3,0,0,0,3,0,1,
                     0,2,0,0,1,2,0,
                     0,0,2,2,0,1,0,
                     3,3,0,3,1,0,0,
                     2,0,1,0,0,0,0),nrow = 7,byrow = TRUE)
adj.mat4_v2 <- rlang::duplicate(adj.mat4)
adj.mat4_v2.1 <- rlang::duplicate(adj.mat4)
adj.mat4_v2.1.1 <- rlang::duplicate(adj.mat4)
adj.mat4_v3 <- rlang::duplicate(adj.mat4)
adj.mat4orig <- rlang::duplicate(adj.mat4)
p <- ncol(adj.mat4)

nodes <- c("a","b","c","alpha","beta","gamma","theta")
sep <- c(4)
test_that("Rule 4 is correct.",{
  expect_snapshot_output(adj.mat4 <- testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,adj.mat4,5,6,sep))
  expect_equal(adj.mat4[5,6],2)
  expect_equal(adj.mat4[6,5],3)
  expect_equal(adj.mat4orig[5,6],1)
  expect_equal(adj.mat4orig[6,5],1)
  
  for (i in 1:nrow(adj.mat4)){
    for (j in 1:ncol(adj.mat4)){
      cond1 <- (i==5 & j==6) | (i==6 & j==5)
      if (!cond1){
        if (adj.mat4[i,j]!=adj.mat4orig[i,j]){
          cat("Difference for nodes",i,"and",j,"\n")
        }
        expect_equal(adj.mat4[i,j],adj.mat4orig[i,j])
      }
    }
  }
})

test_that("Rule 4 is correct (beta not in separation set).",{
  # Same as above, but this time beta is NOT in the separating set
  sep <- c(1)
  expect_snapshot_output(adj.mat4_v2 <- testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,adj.mat4_v2,5,6,sep))
  expect_equal(adj.mat4_v2[5,6],2)
  expect_equal(adj.mat4_v2[6,5],2)
  expect_equal(adj.mat4_v2[4,5],2)
  expect_equal(adj.mat4orig[5,6],1)
  expect_equal(adj.mat4orig[6,5],1)
  expect_equal(adj.mat4orig[4,5],1)
  
  for (i in 1:nrow(adj.mat4_v2)){
    for (j in 1:ncol(adj.mat4_v2)){
      cond1 <- (i==5 & j==6) | (i==6 & j==5)
      cond2 <- i==4 & j==5
      if (!(cond1 | cond2)){
        if (adj.mat4_v2[i,j]!=adj.mat4orig[i,j]){
          cat("Difference for nodes",i,"and",j,"\n")
        }
        expect_equal(adj.mat4_v2[i,j],adj.mat4orig[i,j])
      }
    }
  }
})

test_that("Rule 4 Multiple Options:",{
  adj.mat4_v2.1[3,4] <- 2
  adj.mat4_v2.1[4,3] <- 2
  expect_snapshot_output(res <- testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,adj.mat4_v2.1,5,6,sep))
})

test_that("Rule 4 Multiple Options (2):",{
  adj.mat4_v2.1.1[3,4] <- 2
  adj.mat4_v2.1.1[4,3] <- 2
  adj.mat4_v2.1.1[3,6] <- 1
  adj.mat4_v2.1.1[6,3] <- 3
  expect_snapshot_output(res <- testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,adj.mat4_v2.1.1,5,6,sep))
})

test_that("Rule 4 testing conditions",{
  sep <- c(1)
  amat_noresult <- matrix(c(
    0,1,2,1,
    2,0,1,0,
    3,1,0,0,
    1,0,0,0
  ),byrow = TRUE,ncol = 4)
  expect_snapshot_output(testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,amat_noresult,5,6,sep))
})

test_that("Rule 4 contradiction testing",{
  sep <- c(1)
  a <- which(nodes=="alpha")
  b <- which(nodes=="beta")
  adj.mat4_v3[a,b] <- 3 # This places a tail, but based on rule 4 it should be an arrowhead
  expect_warning(r4_contradiction <- testRule4(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),nodes,adj.mat4_v3,5,6,sep))
  expect_equal(adj.mat4_v3[a,b],2) # Tail should have been converted to an arrowhead
})

# 
test_that("Rule 8 is correct.",{
  adj.mat8 <- matrix(c(0,1,0,0,0,2,0,
                       3,0,2,0,0,2,0,
                       0,3,0,0,0,0,0,
                       0,0,0,0,2,2,0,
                       0,0,0,3,0,2,1,
                       1,3,0,1,3,0,0,
                       0,1,0,0,0,0,0),nrow = 7,byrow = TRUE)
  adj.mat8orig <- rlang::duplicate(adj.mat8)
  p <- ncol(adj.mat8)
  
  expect_snapshot_output(adj.mat8 <- testRule8(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),node_names,adj.mat8))
  
  expect_equal(adj.mat8[6,1],3)
  expect_equal(adj.mat8[1,6],2)
  expect_equal(adj.mat8[6,4],3)
  expect_equal(adj.mat8[4,6],2)
  for (i in 1:nrow(adj.mat8)){
    for (j in 1:ncol(adj.mat8)){
      cond1 <- (i==6 & j==1) | (i==6 & j==4)
      if (!cond1){
        expect_equal(adj.mat8[i,j],adj.mat8orig[i,j])
      }
    }
  }
})
# 
test_that("Rule 9 is correct.",{
  adj.mat9 <- matrix(c(0,1,0,0,0,0,0,3,
                       1,0,1,0,0,0,0,0,
                       0,1,0,0,0,0,1,0,
                       0,0,0,0,1,0,0,0,
                       0,0,0,1,0,1,2,0,
                       0,0,0,0,1,0,0,2,
                       0,0,1,0,1,0,0,0,
                       2,0,0,0,0,1,0,0),nrow = 8,byrow = TRUE)
  adj.mat9orig <- rlang::duplicate(adj.mat9)
  p <- ncol(adj.mat9)
  
  expect_snapshot_output(adj.mat9 <- testRule9(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),node_names,adj.mat9))
  
  expect_equal(adj.mat9[5,7],2)
  expect_equal(adj.mat9[7,5],3)
  
  for (i in 1:nrow(adj.mat9)){
    for (j in 1:ncol(adj.mat9)){
      cond1 <- i==7 & j==5
      if (!cond1){
        expect_equal(adj.mat9[i,j],adj.mat9orig[i,j])
      }
    }
  }
})

test_that("Rule 9 (completeness of upd function)",{
  adj.mat9_upd <- matrix(c(
    0,0,0,3,0,2,0,0,
    0,0,0,1,0,0,2,0,
    0,0,0,1,2,1,0,0,
    1,2,1,0,0,2,0,0,
    0,0,1,0,0,3,0,1,
    3,0,1,3,2,0,0,0,
    0,1,0,0,0,0,0,1,
    0,0,0,0,2,0,1,0
  ),byrow = TRUE,ncol = 8)
  p <- nrow(adj.mat9_upd)
  expect_snapshot_output(testRule9(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names[1:p],adj.mat9_upd))
})

test_that("Rule 10 is correct.",{
  adj.mat10 <- matrix(c(0,0,0,2,0,0,1,0,
                        0,0,0,0,0,1,0,1,
                        0,0,0,0,2,0,2,1,
                        1,0,0,0,2,0,0,0,
                        0,0,1,3,0,3,0,0,
                        0,1,0,0,2,0,0,0,
                        1,0,3,0,0,0,0,0,
                        0,2,1,0,0,0,0,0),nrow = 8,byrow = TRUE)
  adj.mat10orig <- rlang::duplicate(adj.mat10)
  p <- ncol(adj.mat10)
  expect_snapshot_output(adj.mat10 <- testRule10(asiaDAG[1:p,1:p],asiadf[,1:p],seq(0,p-1),node_names,adj.mat10))
  
  expect_equal(adj.mat10[3,5],2)
  expect_equal(adj.mat10[5,3],3)
  for (i in 1:nrow(adj.mat10)){
    for (j in 1:ncol(adj.mat10)){
      cond1 <- (i==5 & j==3)
      if (!cond1){
        expect_equal(adj.mat10[i,j],adj.mat10orig[i,j])
      }
    }
  }
})

test_that("Rule 10 (simple)",{
  adj.mat10_simple <- matrix(c(
    0,2,2,1,
    1,0,2,0,
    1,3,0,3,
    3,0,2,0
  ),nrow = 4,byrow = TRUE)
  adj.mat10_s_orig <- rlang::duplicate(adj.mat10_simple)
  p <- ncol(adj.mat10_simple)
  expect_snapshot_output(res <- testRule10(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names[1:p],adj.mat10_simple))
  expect_equal(res[3,1],3)
  expect_equal(adj.mat10_s_orig[3,1],1)
  
  for (i in 1:nrow(adj.mat10_simple)){
    for (j in 1:ncol(adj.mat10_simple)){
      cond1 <- (i==3 & j==1)
      if (!cond1){
        expect_equal(adj.mat10_simple[i,j],adj.mat10_s_orig[i,j])
      }
    }
  }
})

test_that("Rule 10 (capture simple unprotected pd paths)",{
  adj.mat10_upd <- matrix(c(
    0,0,2,0,1,2,
    0,0,2,0,0,3,
    1,3,0,3,0,0,
    0,0,2,0,1,0,
    1,0,0,2,0,0,
    3,2,0,0,0,0
  ),byrow = TRUE,nrow = 6)
  p <- nrow(adj.mat10_upd)
  
  expect_snapshot_output(testRule10(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names[1:p],adj.mat10_upd))
})

test_that("All Rules is correct.",{
  adj.mat10 <- matrix(c(0,0,0,2,0,0,1,0,
                        0,0,0,0,0,1,0,1,
                        0,0,0,0,2,0,2,1,
                        1,0,0,0,2,0,0,0,
                        0,0,1,3,0,3,0,0,
                        0,1,0,0,2,0,0,0,
                        1,0,3,0,0,0,0,0,
                        0,2,1,0,0,0,0,0),nrow = 8,byrow = TRUE)
  adj.mat10orig <- rlang::duplicate(adj.mat10)
  p <- ncol(adj.mat10)
  node_names <- paste0("V",seq(0,p-1))
  expect_snapshot_output(adj.mat10 <- testAllRules(asiaDAG[1:p,1:p],asiadf[,1:p],0,node_names,adj.mat10))
  
  expect_equal(adj.mat10[7,1],2)
  expect_equal(adj.mat10[1,7],3)
  expect_equal(adj.mat10[1,4],2)
  expect_equal(adj.mat10[4,1],3)
  expect_equal(adj.mat10[2,6],2)
  expect_equal(adj.mat10[6,2],3)
  expect_equal(adj.mat10[3,5],2)
  expect_equal(adj.mat10[5,3],3)
  
})

test_that("Test conversion of Mixed Graph",{
  dag_amat <- matrix(0,nrow = 12,ncol = 12)
  dag_amat[1,2] <- dag_amat[1,5] <- 1
  dag_amat[2,3] <- 1
  dag_amat[3,6] <- 1
  dag_amat[4,3] <- 1
  dag_amat[5,7] <- 1
  dag_amat[6,12] <- 1
  dag_amat[7,8] <- 1
  dag_amat[10,8] <- dag_amat[10,9] <- 1
  dag_amat[11,9] <- 1
  dag_amat[12,11] <- dag_amat[12,10] <- 1
  # tmp <- empty.graph(paste0("V",1:12))
  # amat(tmp) <- dag_amat
  # graphviz.plot(tmp)
  
  prelim_mixed_graph <- matrix(c(
    0,0,2,2,0,0,0,0,
    0,0,2,0,0,0,0,0,
    3,1,0,2,0,0,1,2,
    2,0,1,0,1,0,0,2,
    0,0,0,1,0,0,0,1,
    0,0,0,0,0,0,1,3,
    0,0,3,0,0,2,0,0,
    0,0,3,2,2,1,0,0
  ),byrow = TRUE,nrow = 8)
  
  expect_snapshot_output(testConvertMixed(dag_amat,c(1,9),paste0("V",1:12),prelim_mixed_graph,c(2,4,3,7,8,9,11,10)-1))
})

