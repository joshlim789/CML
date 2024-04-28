
# Data setup --------------------------------------------------------------

data("asiadf")
data("asiaDAG")
node_names <- colnames(asiaDAG)
asiaDAG <- matrix(asiaDAG,nrow = ncol(asiadf),ncol = ncol(asiadf))
asiadf <- as.matrix(asiadf)
p <- length(node_names)

mb_mat <- matrix(c(
  0,1,0,0,0,0,0,0,
  1,0,0,1,0,1,0,0,
  0,0,0,1,1,0,0,0,
  0,1,1,0,0,1,0,0,
  0,0,1,0,0,1,0,1,
  0,1,0,1,1,0,1,1,
  0,0,0,0,0,1,0,0,
  0,0,0,0,1,1,0,0
),nrow = 8,ncol = 8,byrow = TRUE)

mb_list <- list(
  "asia"=list("children"=1,"parents"=0,"spouses"=0),
  "tub"=list("children"=1,"parents"=1,"spouses"=1),
  "smoke"=list("children"=2,"parents"=0,"spouses"=0),
  "lung"=list("children"=1,"parents"=1,"spouses"=1),
  "bronc"=list("children"=1,"parents"=1,"spouses"=1),
  "either"=list("children"=2,"parents"=2,"spouses"=1),
  "xray"=list("children"=0,"parents"=1,"spouses"=0),
  "dysp"=list("children"=0,"parents"=2,"spouses"=0)
)

# Calculate Neighborhood Recovery -----------------------------------------

# This calculates parent and child recovery for target nodes
test_that("Parent and Child Recovery",{
  # bronc and either as targets
  targets <- c(5,6)
  # Remove tub -> either and bronc -> dysp and add asia -> either, smoke -> either
  est_graph <- asiaDAG
  est_graph[2,6] <- est_graph[5,8] <- 0  
  est_graph[1,6] <- est_graph[3,6] <- 1
  expect_equal(calcParentRecovery(asiaDAG,est_graph,targets[1]),
               c("tp"=1,"fn"=0,"fp"=0))
  expect_equal(calcParentRecovery(asiaDAG,est_graph,targets[2]),
               c("tp"=1,"fn"=1,"fp"=2))
  
  expect_equal(calcChildRecovery(asiaDAG,est_graph,targets[1]),
               c("tp"=0,"fn"=1,"fp"=0))
  expect_equal(calcChildRecovery(asiaDAG,est_graph,targets[2]),
               c("tp"=2,"fn"=0,"fp"=0))
  # Flip xray <- either
  est_graph[7,6] <- 1
  est_graph[6,7] <- 0
  # Add either -> bronc
  est_graph[6,5] <- 1
  expect_equal(calcChildRecovery(asiaDAG,est_graph,targets[2]),
               c("tp"=1,"fn"=1,"fp"=1))
})

test_that("Check spouse recovery",{
  expect_equal(calcSpouseRecovery(asiaDAG,asiaDAG,5),
               c("tp"=1,"fn"=0,"fp"=0))
  expect_equal(calcSpouseRecovery(asiaDAG,asiaDAG,6),
               c("tp"=1,"fn"=0,"fp"=0))
  expect_equal(calcSpouseRecovery(asiaDAG,asiaDAG,2),
               c("tp"=1,"fn"=0,"fp"=0))
  expect_equal(calcSpouseRecovery(asiaDAG,asiaDAG,4),
               c("tp"=1,"fn"=0,"fp"=0))
  
  est_graph <- asiaDAG
  # Add lung -> dysp, remove either -> dysp, add asia -> either
  est_graph[4,8] <- 1
  est_graph[1,6] <- 1
  est_graph[6,8] <- 0
  expect_equal(calcSpouseRecovery(asiaDAG,est_graph,5),
               c("tp"=0,"fn"=1,"fp"=1))
  expect_equal(calcSpouseRecovery(asiaDAG,est_graph,6),
               c("tp"=0,"fn"=1,"fp"=0))
  expect_equal(calcSpouseRecovery(asiaDAG,est_graph,2),
               c("tp"=1,"fn"=0,"fp"=0))
  expect_equal(calcSpouseRecovery(asiaDAG,est_graph,4),
               c("tp"=1,"fn"=0,"fp"=2))
})


# MB Recovery -------------------------------------------------------------

test_that("Recovery of MBs",{
  # Missing spouse from "estimated" graph due to how we store Markov Blankets
  expect_equal(mbRecoveryTarget(asiaDAG,asiaDAG,6),
               c("mb_tp"=4,"mb_fn"=1,"mb_fp"=0))
  # Add spouse to estimated graph
  est_dag <- asiaDAG
  est_dag[6,5] <- 1
  expect_equal(mbRecoveryTarget(asiaDAG,est_dag,6),
               c("mb_tp"=5,"mb_fn"=0,"mb_fp"=0))
  
  # Check with estimated MBs
  expect_snapshot_output(est_result <- getEstInitialDAG(getAllMBs(c(2,6,3),asiadf)$mb_list,8,TRUE))
  expected_results <- list(
    "1"=c("mb_tp"=1,"mb_fn"=0,"mb_fp"=0),
    "2"=c("mb_tp"=3,"mb_fn"=0,"mb_fp"=0),
    "3"=c("mb_tp"=2,"mb_fn"=0,"mb_fp"=0),
    "4"=c("mb_tp"=3,"mb_fn"=0,"mb_fp"=0),
    "5"=c("mb_tp"=3,"mb_fn"=0,"mb_fp"=0),
    "6"=c("mb_tp"=5,"mb_fn"=0,"mb_fp"=0),
    "7"=c("mb_tp"=1,"mb_fn"=0,"mb_fp"=0),
    "8"=c("mb_tp"=2,"mb_fn"=0,"mb_fp"=0)
  )
  for (i in 1:8){
    expect_equal(mbRecoveryTarget(asiaDAG,est_result,i),expected_results[[as.character(i)]])
  }
})


# Complete Tests ----------------------------------------------------------

test_that("Testing Markov Blanket Recovery Metrics Function",{
  
  for (i in seq(8)){
    results <- mbRecoveryMetrics(asiaDAG,mb_mat,i)
    expect_equal(results$mb_children_tp,mb_list[[node_names[i]]]$children)
    expect_equal(results$mb_parents_tp,mb_list[[node_names[i]]]$parents)
    expect_equal(results$mb_spouses_tp,mb_list[[node_names[i]]]$spouses)
    expect_equal(results$mb_children_fn,0)
    expect_equal(results$mb_parents_fn,0)
    expect_equal(results$mb_spouses_fn,0)
    expect_equal(results$mb_total_fp,0)
  }
  
  pairs <- combn(seq(8),2)
  apply(pairs,2,function(x){
    results <- mbRecoveryMetrics(asiaDAG,mb_mat,x)
    true_children <- mb_list[[node_names[x[1]]]]$children+mb_list[[node_names[x[2]]]]$children
    true_parents <- mb_list[[node_names[x[1]]]]$parents+mb_list[[node_names[x[2]]]]$parents
    true_spouses <- mb_list[[node_names[x[1]]]]$spouses+mb_list[[node_names[x[2]]]]$spouses
    expect_equal(results$mb_children_tp,true_children)
    expect_equal(results$mb_parents_tp,true_parents)
    expect_equal(results$mb_spouses_tp,true_spouses)
    expect_equal(results$mb_children_fn,0)
    expect_equal(results$mb_parents_fn,0)
    expect_equal(results$mb_spouses_fn,0)
    expect_equal(results$mb_total_fp,0)
  })
  
  # Remove tub as a child of asia
  mb_mat[1,2] <- 0
  mb_mat[2,1] <- 0
  expect_equal(mbRecoveryMetrics(asiaDAG,mb_mat,1)$mb_children_fn,1)
  # Remove either as child of lung, tub as spouse of lung
  # Add dysp as a child of asia
  mb_mat[4,6] <- mb_mat[6,4] <- 0
  mb_mat[4,2] <- mb_mat[2,4] <- 0
  mb_mat[1,8] <- mb_mat[8,1] <- 1
  expect_equal(mbRecoveryMetrics(asiaDAG,mb_mat,c(1,2,6)),
               data.frame("mb_children_fn"=1, # tub is not a child of asia
                          "mb_children_tp"=3, # either is still a child of tub, xray and dysp of either
                          "mb_parents_fn"=2, # asia is no longer parent of tub, either not a child of tub
                          "mb_parents_tp"=1, # tub is still parent of either
                          "mb_spouses_fn"=1, # lung no longer spouse of tub
                          "mb_spouses_tp"=1, # bronc is still a spouse of either
                          "mb_total_fp"=1)) # dysp and asia now in each other's mb
})

test_that("Checking mbRecovery",{
  est_result <- getEstInitialDAG(getAllMBs(c(2,6),asiadf,verbose = FALSE)$mb_list,8,FALSE)
  expect_equal(mbRecovery(mb_mat,est_result,c(2,6)),
               data.frame("mb_tp"=8,"mb_fn"=0,"mb_fp"=0))
  # Remove target 6
  est_result <- getEstInitialDAG(getAllMBs(2,asiadf,verbose = FALSE)$mb_list,8,FALSE)
  expect_equal(mbRecovery(mb_mat,est_result,2),
               data.frame("mb_tp"=3,"mb_fn"=0,"mb_fp"=0))
  # Missing bronc as spouse for either
  expect_equal(mbRecovery(mb_mat,est_result,c(2,6)),
               data.frame("mb_tp"=7,"mb_fn"=1,"mb_fp"=0))
  # Add in a false positive: MB(2) := MB(2) U {8}
  est_result[2,8] <- est_result[8,2] <- 1
  expect_equal(mbRecovery(mb_mat,est_result,c(2,6)),
               data.frame("mb_tp"=7,"mb_fn"=1,"mb_fp"=1))
})
