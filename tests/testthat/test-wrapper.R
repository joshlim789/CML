
# Setup -------------------------------------------------------------------

data("asiadf")
data("asiaDAG")
node_names <- colnames(asiaDAG)
asiaDAG <- matrix(asiaDAG,nrow = ncol(asiadf),ncol = ncol(asiadf))
asiadf <- as.matrix(asiadf)
p <- length(node_names)

test_that("Wrapper function works (Sample with true DAG)",{
  # CML
  results <- cml(true_dag = asiaDAG,data = asiadf,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("totalSkeletonTime","targetSkeletonTimes","mbEstTime","totalTime","MBNumTests"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  expect_equal(results[["MBNumTests"]],0)
  
  # SNL
  results <- snl(true_dag = asiaDAG,data = asiadf,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("targetSkeletonTimes","totalTime","mbEstTime","MBNumTests"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  expect_equal(results[["MBNumTests"]],0)
})

test_that("Wrapper function works (Population)",{
  # CML
  results <- cml(true_dag = asiaDAG,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("totalSkeletonTime","targetSkeletonTimes","mbEstTime","totalTime","MBNumTests"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  expect_equal(results[["MBNumTests"]],0)
  
  # SNL
  results <- snl(true_dag = asiaDAG,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("targetSkeletonTimes","totalTime","mbEstTime","MBNumTests"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  expect_equal(results[["MBNumTests"]],0)
  
})

test_that("Wrapper function works (Sample)",{
  # CML
  results <- cml(data = asiadf,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("totalSkeletonTime","targetSkeletonTimes","totalTime","mbList","mbEstTime","MBNumTests"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  results1 <- results[["MBNumTests"]]
  # SNL
  results <- snl(data = asiadf,targets = c(1,6),node_names=node_names,verbose = FALSE)
  # g <- empty.graph(node_names)
  # amat(g) <- results$amat
  # graphviz.plot(g)
  for (result_part in setdiff(names(results),c("targetSkeletonTimes","totalTime","mbList","MBNumTests","mbEstTime"))){
    expect_snapshot_output(print(results[[result_part]]))
  }
  expect_snapshot_output(print(results1))
  expect_snapshot_output(print(results[["MBNumTests"]]))
})

test_that("Testing pre-checks",{
  expect_error(cml(data = asiadf,targets = c(1,6),lmax = -1,node_names=node_names,verbose = FALSE))
  expect_error(snl(data = asiadf,targets = c(1,6),lmax = -1,node_names=node_names,verbose = FALSE))
})







