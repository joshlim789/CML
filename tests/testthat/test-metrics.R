library(tidyverse,quietly = TRUE,verbose = FALSE,warn.conflicts = FALSE)
library(pcalg,quietly = TRUE,verbose = FALSE,warn.conflicts = FALSE)
library(bnlearn)

# Setup -------------------------------------------------------------------

data("asiaDAG")
data("asiadf")
data("andesDAG")
nodes <- colnames(asiaDAG)

# Check Supporting Functions ----------------------------------------------

test_that("Ensure the returned number of edges is correct",{
  # The asia graph has 8 edges/arcs
  expect_equal(getEdgeNumber(asiaDAG),8)
  # The andes graph has 338 arcs
  expect_equal(getEdgeNumber(andesDAG),338)
})

test_that("Check function to determine mutual neighborhoods",{
  # targets: tub, bronc | checking: either
  expect_true(inTargetNeighborhood(asiaDAG,c(2,5)-1,5))
  # checking: dysp
  expect_true(inTargetNeighborhood(asiaDAG,c(2,5)-1,7))
  # checking: lung
  expect_true(inTargetNeighborhood(asiaDAG,c(2,5)-1,3))
  # checking: xray
  expect_false(inTargetNeighborhood(asiaDAG,c(2,5)-1,6))
  # targets: asia, xray | checking: smoke
  expect_false(inTargetNeighborhood(asiaDAG,c(1,7)-1,2))
  # target: lung | checking: bronc
  expect_false(inTargetNeighborhood(asiaDAG,3,4))
  
  
  # targets: tub, bronc | checking: either, bronc
  expect_true(sharedNeighborhood(asiaDAG,c(2,5)-1,5,4))
  # checking: either, dysp
  expect_true(sharedNeighborhood(asiaDAG,c(2,5)-1,5,7))
  # targets: asia, dysp | checking: tub, either
  expect_false(sharedNeighborhood(asiaDAG,c(1,8)-1,1,5))
  # targets: asia, dysp | checking: tub, bronc
  expect_false(sharedNeighborhood(asiaDAG,c(1,8)-1,1,4))
  # targets: lung, either | checking: tub, either
  expect_true(sharedNeighborhood(asiaDAG,c(4,6)-1,1,5))
  # targets: either | checking: tub, either
  expect_true(sharedNeighborhood(asiaDAG,c(6)-1,1,5))
  # targets: asia, either | checking: tub, dysp
  expect_true(sharedNeighborhood(asiaDAG,c(1,6)-1,1,7))
  # targets: asia, either | checking: asia, either
  expect_false(sharedNeighborhood(asiaDAG,c(1,6)-1,0,5))
  # targets: asia, either, tub | checking: asia, either
  expect_true(sharedNeighborhood(asiaDAG,c(1,6,2)-1,0,5))
  
  test_amat <- matrix(c(
    0,1,0,0,0,1,
    0,0,0,0,0,0,
    0,0,0,1,0,0,
    0,0,0,0,0,0,
    0,0,1,0,0,0,
    0,0,0,0,1,0
  ),byrow = TRUE,ncol = 6)
  expect_false(sharedNeighborhood(test_amat,c(0,2),5,4))
  expect_true(sharedNeighborhood(test_amat,c(0,4),5,4))
})

test_that("Test inTargetNeighborhood with verbose",{
  expect_snapshot_output(inTargetNeighborhood(asiaDAG,c(2,5)-1,5,TRUE))
})

test_that("SharedNeighborhood with verbose (I)",{
  test_amat <- matrix(c(
    0,1,0,0,0,1,
    0,0,0,0,0,0,
    0,0,0,1,0,0,
    0,0,0,0,0,0,
    0,0,1,0,0,0,
    0,0,0,0,1,0
  ),byrow = TRUE,ncol = 6)
  expect_true(sharedNeighborhood(test_amat,c(0,4),5,4))
  expect_snapshot_output(sharedNeighborhood(test_amat,c(0,2),5,4,TRUE))
})

test_that("SharedNeighborhood with verbose (II)",{
  test_amat <- matrix(c(
    0,1,0,0,0,1,
    0,0,0,0,0,0,
    0,0,0,1,0,0,
    0,0,0,0,0,0,
    0,0,1,0,0,0,
    0,0,0,0,1,0
  ),byrow = TRUE,ncol = 6)
  expect_snapshot_output(sharedNeighborhood(test_amat,c(0,4),5,4,TRUE))
})


# Check metric functions --------------------------------------------------

### First set of checks

true_amat <- matrix(c(0,1,0,0,
                      1,0,1,1,
                      0,0,0,1,
                      0,0,0,0),byrow = TRUE,nrow = 4)

perfect_skel <- matrix(c(0,1,0,0,
                         0,0,0,1,
                         0,1,0,1,
                         0,0,0,0),byrow = TRUE,nrow = 4)

false_skel <- matrix(c(0,0,1,1,
                       0,0,1,1,
                       0,0,0,0,
                       0,0,0,0),byrow = TRUE,nrow = 4)

test_that("checking skeleton comparison function",{
  expect_equal(compareSkeletons(false_skel,true_amat),
               list("skel_fp"=2,"skel_fn"=2,"skel_correct"=2))
  expect_equal(compareSkeletons(perfect_skel,true_amat),
               list("skel_fp"=0,"skel_fn"=0,"skel_correct"=4))
})

test_that("checking v structure comparison functions",{
  expect_equal(compareVStructures(perfect_skel,true_amat,TRUE),
               list("missing"=0,"added"=1,"correct"=0))
  expect_equal(compareVStructures(false_skel,true_amat,TRUE),
               list("missing"=0,"added"=2,"correct"=0))
})

test_that("checking parent recovery accuracy functions",{
  expect_equal(parentRecoveryAccuracy(perfect_skel,true_amat,targets = 3),
               list("missing"=0,"added"=0,"correct"=2,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = 3),
               list("missing"=1,"added"=1,"correct"=1,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(0,3)),
               list("missing"=1,"added"=1,"correct"=1,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(2,3)),
               list("missing"=1,"added"=2,"correct"=2,"potential"=0))
  # Adding a potential
  false_skel[3,4] <- 1
  false_skel[4,3] <- 1
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = 3),
               list("missing"=0,"added"=1,"correct"=1,"potential"=1))
  # Using 1-index numbering: Missing 3 -> 4, correctly has 2->3 and 2->4, 
  # has 3-4 as undirected edge, added 1->4 and 1->3
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(2,3)),
               list("missing"=0,"added"=2,"correct"=2,"potential"=1))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(1,2,3)),
               list("missing"=0,"added"=2,"correct"=2,"potential"=1))
  false_skel[3,4] <- 2
  false_skel[4,3] <- 2
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = 3),
               list("missing"=1,"added"=1,"correct"=1,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(2,3)),
               list("missing"=1,"added"=2,"correct"=2,"potential"=0))
  # This looks correct, but it is an ancestral edge
  false_skel[4,3] <- 3
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = 3),
               list("missing"=1,"added"=1,"correct"=1,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(2,3)),
               list("missing"=1,"added"=2,"correct"=2,"potential"=0))
  # This looks correct, but it is once again an ancestral edge
  false_skel[4,3] <- 4
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = 3),
               list("missing"=1,"added"=1,"correct"=1,"potential"=0))
  expect_equal(parentRecoveryAccuracy(false_skel,true_amat,targets = c(2,3)),
               list("missing"=1,"added"=2,"correct"=2,"potential"=0))
})

# Advanced Skeleton Testing -----------------------------------------------

true_skeleton <- matrix(c(
  0,1,0,0,0,0,0,0,0,
  1,0,1,0,0,0,0,0,0,
  0,0,0,1,1,0,1,0,0,
  0,0,0,0,0,1,1,0,0,
  0,0,0,0,0,1,0,1,0,
  0,0,0,0,0,0,0,0,0,
  0,0,1,1,0,0,0,0,0,
  0,0,0,0,1,0,0,0,0,
  0,0,0,0,0,0,0,1,0
),byrow = TRUE,nrow = 9,ncol = 9)

est_skeleton <- matrix(c(
  0,4,0,0,0,0,0,0,0,
  4,0,2,0,0,0,0,0,0,
  0,2,0,0,1,0,1,0,0,
  0,0,1,0,1,2,0,0,0,
  0,0,0,1,0,0,0,1,1,
  0,0,0,4,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,3,
  0,0,0,0,1,0,0,2,0
),byrow = TRUE,nrow = 9,ncol = 9)

test_that("Skeleton metrics with ancestral edges",{
  expect_equal(compareSkeletons(est_skeleton,true_skeleton,verbose = TRUE),
               list("skel_fp"=2,"skel_fn"=6,"skel_correct"=4)
  )
})


# Advanced PRA Testing ----------------------------------------------------

true_amat <- matrix(0,ncol = 11,nrow = 11)
true_amat[3,1] <- true_amat[3,2] <- 1
true_amat[4,3] <- true_amat[3,4] <- 1
true_amat[5,3] <- 1
true_amat[6,5] <- 1
true_amat[7,6] <- 1
true_amat[8,11] <- 1
true_amat[9,11] <- 1
true_amat[10,7] <- 1
true_amat[11,4] <- 1

test_amat <- matrix(0,ncol = 11,nrow = 11)
test_amat[1,3] <- test_amat[3,1] <- 1
test_amat[2,3] <- test_amat[3,2] <- 1
test_amat[3,11] <- test_amat[11,3] <- 1
test_amat[4,3] <- 1
test_amat[5,6] <- test_amat[6,5] <- 1
test_amat[7,3] <- 2; test_amat[3,7] <- 4
test_amat[8,11] <- test_amat[11,8] <- 2
test_amat[9,11] <- 1
test_that("Additional pra tests (1)",{
  expect_snapshot_output(parentRecoveryAccuracy(test_amat,true_amat,c(2,6,10),verbose = TRUE))
  
  # make an undirected edge where the parent should be
  # adds a potential parent and removes a strictly missing parent
  test_amat[11,8] <- test_amat[8,11] <- 1
  expect_snapshot_output(parentRecoveryAccuracy(test_amat,true_amat,c(2,6,10),verbose = TRUE))
})

test_that("Additional pra tests (2)",{
  # make a few adjustments
  # 11 ->(anc) 8 | missing parent (ancestral edge)
  test_amat[11,8] <- 3
  test_amat[8,11] <- 2
  # changes to 7 -> 3 (incorrect)
  test_amat[7,3] <- 1
  test_amat[3,7] <- 0
  # changes to undirected (correct)
  test_amat[3,4] <- 1
  expect_snapshot_output(parentRecoveryAccuracy(test_amat,true_amat,c(2,6,10),verbose = TRUE))
})

test_that("Additional pra tests (3)",{
  # Make true parent an undirected edge (potential)
  test_amat[11,8] <- test_amat[8,11] <- 1
  expect_snapshot_output(parentRecoveryAccuracy(test_amat,true_amat,c(2,6,10),verbose = TRUE))
})


# Advanced V-Structure Testing --------------------------------------------

test_that("additional v-structure comparison function tests",{
  true_amat <- matrix(c(0,1,1,0,0,1,
                        0,0,0,0,0,1,
                        0,0,0,1,0,0,
                        0,1,1,0,1,1,
                        0,0,0,1,0,1,
                        0,0,0,1,0,0),nrow = 6,byrow = TRUE)
  false_amat <- matrix(c(0,0,0,0,0,1,
                         1,0,0,1,0,1,
                         1,0,0,0,0,0,
                         0,1,1,0,0,1,
                         0,0,1,0,0,1,
                         0,0,0,1,0,0),nrow = 6,byrow = TRUE)
  
  expect_equal(compareVStructures(false_amat,true_amat,TRUE),
               list("missing"=1,"added"=2,"correct"=2))
  
  # change 3 - 4 - 5 in true graph to 3 -> 4 <- 5 
  #(this combo is now incorrect and a false positive in estimated graph)
  true_amat[4,3] <- true_amat[4,5] <- 0
  expect_equal(compareVStructures(false_amat,true_amat,TRUE),
               list("missing"=2,"added"=2,"correct"=2))
  
  # Create additional v-structure by dropping 2 -> 1
  # also drops incorrect v-structure 2 -> 1 <- 3 from estimated graph
  true_amat[1,2] <- 0
  expect_equal(compareVStructures(false_amat,true_amat,TRUE),
               list("missing"=2,"added"=2,"correct"=2))
  
  true_amat <- matrix(c(
    0,0,0,0,
    1,0,0,0,
    1,0,0,0,
    0,1,0,0
  ),byrow = TRUE,ncol = 4)
  expect_equal(compareVStructures(true_amat,true_amat,TRUE),list("missing"=0,"added"=0,"correct"=1))
})


# Ancestral Recovery Tests ------------------------------------------------

test_that("Ancestral Relations",{
  # Basic, nothing informative
  expect_snapshot_output(interNeighborhoodEdgeMetrics(asiaDAG,asiaDAG,asiaDAG,seq(0,ncol(asiaDAG)-1)))
})

test_that("Ancestral checks for cml on asia",{
  res <- cml(true_dag = asiaDAG,targets=c(1,8),node_names = nodes,verbose = FALSE)
  # g_true <- empty.graph(nodes = nodes)
  # amat(g_true) <- asiaDAG
  # g_est <- empty.graph(nodes=nodes)
  # amat(g_est) <- res$amat
  # par(mfrow=c(1,2))
  # graphviz.plot(g_true)
  # graphviz.plot(g_est)
  # asia and dysp are targets: correct edge between tub and either, but it is not oriented
  expect_snapshot_output(interNeighborhoodEdgeMetrics(res$amat,asiaDAG,asiaDAG,seq(0,ncol(asiaDAG)-1)))
})

test_that("Ancestral checks for cml on asia (2)",{
  res <- cml(true_dag = asiaDAG,targets=c(3,7),node_names = nodes,verbose = FALSE)
  # g_est <- empty.graph(nodes=nodes)
  # amat(g_est) <- res$amat
  # par(mfrow=c(1,2))
  # graphviz.plot(g_true)
  # graphviz.plot(g_est)
  # smoke and xray are the targets: lung and either are connected, but not oriented
  expect_snapshot_output(interNeighborhoodEdgeMetrics(res$amat,asiaDAG,asiaDAG,seq(0,ncol(asiaDAG)-1)))
})

true_amat <- matrix(0,ncol = 16,nrow = 16)
true_amat[1,3] <- 1
true_amat[2,4] <- true_amat[2,11] <- 1
true_amat[1,4] <- true_amat[4,3] <- true_amat[4,9] <- 1
true_amat[5,4] <- 1
true_amat[6,5] <- true_amat[6,14] <- 1
true_amat[7,4] <- true_amat[7,8] <- 1
true_amat[9,8] <- 1
true_amat[10,5] <- 1
true_amat[11,1] <- 1
true_amat[12,16] <- 1
true_amat[13,14] <- true_amat[13,12] <- true_amat[13,15] <- 1
true_amat[14,10] <- 1
true_amat[15,7] <- 1
true_amat[16,11] <- 1
# true_g <- empty.graph(nodes = as.character(1:16))
# amat(true_g) <- true_amat
# graphviz.plot(true_g)

est_amat <- matrix(0,ncol = 16,nrow = 16)
est_amat[1,12] <- 1
est_amat[2,14] <- est_amat[14,2] <- 1
est_amat[3,1] <- 1
est_amat[4,3] <- est_amat[4,2] <- est_amat[4,15] <- est_amat[15,4] <- 1
est_amat[5,4] <- est_amat[5,15] <- est_amat[5,14] <- est_amat[14,5] <- 1
est_amat[7,3] <- est_amat[7,8] <- 1
est_amat[8,9] <- est_amat[9,8] <- 1
est_amat[12,13] <- 1
est_amat[13,14] <- est_amat[13,9] <- 1
est_amat[15,13] <- 1
# est_g <- empty.graph(nodes = as.character(1:16))
# amat(est_g) <- est_amat
# graphviz.plot(est_g)

test_that("Testing ancestral relations (1)",{
  # ancestral edge with no ancestry added
  est_amat[5,14] <- est_amat[14,5] <- 4
  # Incorrect ancestral edge
  est_amat[2,14] <- 2; est_amat[14,2] <- 3
  # Correct ancestral edge
  est_amat[13,9] <- 2; est_amat[9,13] <- 3
  num_nodes <- ncol(est_amat)
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,true_amat,true_amat,seq(0,num_nodes-1),verbose = TRUE))
})

test_that("Testing ancestral relations (2)",{
  # This should be overlooked because of the open mark
  est_amat[12,1] <- 2
  est_amat[1,12] <- 4
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,true_amat,true_amat,seq(0,ncol(est_amat)-1),verbose = TRUE))
})

test_that("Testing ancestral relations (3)",{
  # This should be overlooked because of the open mark
  est_amat[12,1] <- 2

  # Get one true positive
  est_amat[1,12] <- 3
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,true_amat,true_amat,seq(0,ncol(est_amat)-1),verbose = TRUE))
})

true_amat <- matrix(c(
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,0,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,1,0,0,0,
  0,0,0,0,0,1,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

est_amat <- matrix(c(
  0,0,0,0,0,0,0,0,
  1,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,0,4,0,
  0,0,0,0,0,0,0,0,
  0,0,0,0,2,0,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

est_amat2 <- matrix(c(
  0,0,0,0,0,0,0,0,
  1,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,3,1,0,
  0,0,0,0,2,0,0,0,
  0,0,0,0,0,1,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

test_that("Testing ancestral relations (3)",{
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,true_amat,true_amat,seq(0,ncol(true_amat)-1),verbose = TRUE))
})

test_that("Testing ancestral relations (4)",{
  est_amat[5,7] <- 3
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,true_amat,true_amat,seq(0,ncol(true_amat)-1),verbose = TRUE))
})

test_that("Testing ancestral relations (5)",{
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat2,true_amat,true_amat,seq(0,ncol(true_amat)-1),verbose = TRUE))
})

test_that("Testing ancestral relations (6)",{
  est_amat2[5,6] <- 2
  est_amat2[4,1] <- 2
  est_amat2[1,4] <- 3
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat2,true_amat,true_amat,seq(0,ncol(true_amat)-1),verbose = TRUE))
})

t_amat <- matrix(c(
  0,1,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,0,
  0,0,0,0,1,0,1,0,
  0,0,0,0,0,0,0,0,
  0,0,0,0,1,0,0,0,
  0,0,0,0,0,0,0,1,
  0,0,1,0,0,0,0,0
),byrow = TRUE,nrow = 8)

test_that("Completing ancestral checks",{
  est_amat <- t_amat
  est_amat[4,3] <- 2
  est_amat[3,4] <- 3
  est_amat[,8] <- est_amat[8,] <- est_amat[7,] <- est_amat[,7] <- rep(0,8)
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,t_amat,t_amat,seq(0,5),verbose = TRUE))
  
})

t_amat <- matrix(c(
  0,1,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,1,
  0,0,0,0,1,0,0,0,
  0,0,0,0,0,0,0,0,
  0,0,0,0,1,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,0,0,1,0
),byrow = TRUE,nrow = 8)

test_that("Completing ancestral checks (2)",{
  est_amat <- t_amat
  est_amat[3,4] <- 2
  est_amat[4,3] <- 3
  est_amat[,8] <- est_amat[8,] <- est_amat[7,] <- est_amat[,7] <- rep(0,8)
  expect_snapshot_output(interNeighborhoodEdgeMetrics(est_amat,t_amat,t_amat,seq(0,5),verbose = TRUE))
})


# Testing Overall F1 Score ------------------------------------------------

true_amat <- matrix(c(
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,0,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,1,0,0,0,
  0,0,0,0,0,1,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

est_amat <- matrix(c(
  0,0,0,0,0,0,0,0,
  1,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,0,1,0,
  0,0,0,0,0,0,0,0,
  0,0,0,0,1,0,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

est_amat2 <- matrix(c(
  0,0,0,0,0,0,0,0,
  1,0,0,0,0,0,0,0,
  0,1,0,0,0,0,0,0,
  0,0,1,0,0,0,0,0,
  0,0,0,1,0,0,0,0,
  0,0,0,0,1,0,0,0,
  0,0,0,0,0,1,0,1,
  0,0,0,0,0,0,0,0
),byrow = TRUE,ncol = 8)

test_that("Testing Overall F1 Score Function",{
  # g_true <- empty.graph(as.character(0:7))
  # amat(g_true) <- true_amat
  # g_est <- empty.graph(as.character(0:7))
  # amat(g_est) <- est_amat
  # par(mfrow=c(1,2))
  # graphviz.plot(g_true)
  # graphviz.plot(g_est)
  
  expect_snapshot_output(overallF1(est_amat,true_amat,c(0,3,6),verbose = TRUE))
})

test_that("Testing Overall F1 (2)",{
  # g_true <- empty.graph(as.character(0:7))
  # amat(g_true) <- true_amat
  # g_est <- empty.graph(as.character(0:7))
  # amat(g_est) <- est_amat2
  # par(mfrow=c(1,2))
  # graphviz.plot(g_true)
  # graphviz.plot(g_est)
  
  expect_snapshot_output(overallF1(est_amat2,true_amat,c(0,3,6),verbose = TRUE))
})

test_that("Testing Overall F1 (3)",{
  est_amat3 <- est_amat2 
  est_amat3[8,6] <- est_amat3[6,8] <- 1
  est_amat3[6,7] <- 3; est_amat3[7,6] <- 2
  est_amat3[8,7] <- 3; est_amat3[7,8] <- 2
  est_amat3[6,8] <- est_amat3[8,6] <- 3
  expect_snapshot_output(overallF1(est_amat3,true_amat,c(0,3,6),verbose = TRUE))
})

# All metric functions ----------------------------------------------------

test_that("checking metric functions for cml",{
  t <- c(1,6,7,8)
  est <- cml(data=asiadf,true_dag = asiaDAG,targets = t,verbose = FALSE)
  
  # cml_g <- empty.graph(colnames(asiaDAG))
  # amat(cml_g) <- est$amat
  # graphviz.plot(cml_g)
  
  asiaDAG_sub <- asiaDAG
  asiaDAG_sub[3,] <- asiaDAG_sub[,3] <- rep(0,8)
  
  # skeleton perfect, missing tub -> either <- lung and either -> dysp <- bronc, have all parents except for tub and either, which are both potential
  expect_snapshot_output(allMetrics(est$amat,asiaDAG_sub,t-1,asiaDAG,est$Nodes,algo="cml"))
  
})

test_that("checking metric functions for pc",{
  t <- c(1,6,7,8)
  est <- cml(data=asiadf,true_dag = asiaDAG,targets = t,verbose = FALSE)
  pc.fit <- as(pcalg::pc(suffStat = list(C = cor(asiadf), n = nrow(asiadf)),
                         indepTest = gaussCItest, ## indep.test: partial correlations
                         alpha=0.05, labels = colnames(asiaDAG),
                         verbose = FALSE,m.max=3),"amat")
  pc_asia <- matrix(pc.fit,nrow = 8)
  # Remove smoke edges from consideration
  pc_asia[3,] <- pc_asia[,3] <- rep(0,8)
  
  # pc_g <- empty.graph(colnames(asiaDAG))
  # amat(pc_g) <- pc_asia
  # graphviz.plot(pc_g)
  
  asiaDAG_sub <- asiaDAG
  asiaDAG_sub[3,] <- asiaDAG_sub[,3] <- rep(0,8)

  # skeleton perfect (smoke edges don't count), missing both v-structures and added 1, missing all parents, either got two fp parents
  expect_snapshot_output(allMetrics(pc_asia,asiaDAG_sub,t-1,asiaDAG,est$Nodes,algo="pc"))
  
})

test_that("Check allMetrics (1)",{
  node_names_interest <- c("asia","tub","bronc","xray","dysp")
  nodes_int <- sapply(node_names_interest,function(x) which(x==nodes))
  names(nodes_int) <- NULL
  # targets are asia and bronc
  targets <- c(0,2)
  est_mat <- matrix(c(
    0,1,0,0,0,
    0,0,0,2,2,
    0,0,0,0,0,
    0,3,1,0,1,
    0,3,1,1,0
  ),nrow = 5,byrow = TRUE)
  asia_g <- empty.graph(nodes)
  amat(asia_g) <- asiaDAG
  asia_cpdag <- cpdag(asia_g)
  asia_cpdag_mat <- amat(asia_cpdag)
  asia_cpdag_submat <- asia_cpdag_mat[nodes_int,nodes_int]
  expect_snapshot_output(allMetrics(est_mat,asia_cpdag_submat,targets,asiaDAG,nodes_int-1))
})

test_that("Check allMetrics (2)",{
  node_names_interest <- c("asia","tub","bronc","xray","dysp")
  nodes_int <- sapply(node_names_interest,function(x) which(x==nodes))
  names(nodes_int) <- NULL
  # targets are asia and bronc
  targets <- c(0,2)
  est_mat <- matrix(c(
    0,1,0,0,0,
    0,0,0,2,2,
    0,0,0,0,0,
    0,3,1,0,1,
    0,3,1,1,0
  ),nrow = 5,byrow = TRUE)
  asia_g <- empty.graph(nodes)
  amat(asia_g) <- asiaDAG
  asia_cpdag <- cpdag(asia_g)
  asia_cpdag_mat <- amat(asia_cpdag)
  asia_cpdag_submat <- asia_cpdag_mat[nodes_int,nodes_int]
  
  # Switch one ancestral edge
  est_mat[5,2] <- 2
  est_mat[2,5] <- 3
  expect_snapshot_output(allMetrics(est_mat,asia_cpdag_submat,targets,asiaDAG,nodes_int-1))
})

test_that("Check allMetrics (3)",{
  node_names_interest <- c("asia","tub","bronc","xray","dysp")
  nodes_int <- sapply(node_names_interest,function(x) which(x==nodes))
  names(nodes_int) <- NULL
  # targets are asia and bronc
  targets <- c(0,2)
  est_mat <- matrix(c(
    0,1,0,0,0,
    0,0,0,2,2,
    0,0,0,0,0,
    0,3,1,0,1,
    0,3,1,1,0
  ),nrow = 5,byrow = TRUE)
  asia_g <- empty.graph(nodes)
  amat(asia_g) <- asiaDAG
  asia_cpdag <- cpdag(asia_g)
  asia_cpdag_mat <- amat(asia_cpdag)
  asia_cpdag_submat <- asia_cpdag_mat[nodes_int,nodes_int]
  
  # Switch one ancestral edge
  est_mat[5,2] <- 2
  est_mat[2,5] <- 3
  
  # Ancestral edge without orientation
  est_mat[4,2] <- est_mat[2,4] <- 2
  expect_snapshot_output(allMetrics(est_mat,asia_cpdag_submat,targets,asiaDAG,nodes_int-1))
})

# Check Markov Blanket Recovery Metrics -----------------------------------

true_amat <- matrix(c(
  0,0,1,0,0,0,0,
  0,0,1,0,0,0,0,
  0,0,0,1,1,0,1,
  0,0,0,0,0,1,0,
  0,0,0,0,0,1,0,
  0,0,0,0,0,0,0,
  0,0,1,0,1,1,0
),byrow = TRUE,nrow = 7)

# a <- empty.graph(as.character(1:7))
# amat(a) <- true_amat
# graphviz.plot(a)

test_that("Checking MB metric functions (Specific)",{
  
  # Remove the edge 7 -> 5
  test_amat <- true_amat
  test_amat[7,5] <- 0
  
  # Check results
  expect_equal(calcParentRecovery(true_amat,test_amat,5),
               c("tp"=1,
                 "fn"=1,
                 "fp"=0)
  )
  expect_equal(calcChildRecovery(true_amat,test_amat,5),
               c("tp"=1,
                 "fn"=0,
                 "fp"=0)
  )
  expect_equal(calcSpouseRecovery(true_amat,test_amat,5),
               c("tp"=1,
                 "fn"=0,
                 "fp"=1)
  )
  
  # Remove the edge from 1 -> 3 and add 1 -> 6
  test_amat[1,3] <- 0
  test_amat[1,6] <- 1
  # 1 is missing and 2 is correct
  expect_equal(calcParentRecovery(true_amat,test_amat,3),
               c("tp"=1,
                 "fn"=1,
                 "fp"=0)
  )
  # 3 is missing and 6 is added
  expect_equal(calcChildRecovery(true_amat,test_amat,1),
               c("tp"=0,
                 "fn"=1,
                 "fp"=1)
  )
  # 4,5,7 are correct, but 1 is added
  expect_equal(calcParentRecovery(true_amat,test_amat,6),
               c("tp"=3,
                 "fn"=0,
                 "fp"=1)
  )
  # 5 and 7 are true spouses, but 1 is added
  expect_equal(calcSpouseRecovery(true_amat,test_amat,4),
               c("tp"=2,
                 "fn"=0,
                 "fp"=1)
  )
  # 4 is a true spouse, but 1 and 5 are added
  expect_equal(calcSpouseRecovery(true_amat,test_amat,7),
               c("tp"=1,
                 "fn"=0,
                 "fp"=2)
  )
  # We've added 4,5,7 as spouses and are missing 2
  expect_equal(calcSpouseRecovery(true_amat,test_amat,1),
               c("tp"=0,
                 "fn"=1,
                 "fp"=3)
  )
})

test_that("Test MB Recovery (General) Function",{
  test_amat <- matrix(
    c(
      0,0,0,0,0,0,0,
      0,0,0,0,0,0,1,
      1,0,0,0,0,0,1,
      0,0,0,0,0,1,0,
      0,0,0,1,0,1,1,
      0,0,0,0,0,0,1,
      0,0,0,0,0,0,0
    ),
    nrow = 7,byrow = TRUE
  )
  # b <- empty.graph(as.character(1:7))
  # amat(b) <- test_amat
  # graphviz.compare(b,a)
  # graphviz.plot(b)
  # 1 is connected to 3, but loses 2 as spouse
  expect_equal(mbRecovery(true_amat,test_amat,1),
               data.frame("mb_tp"=1,"mb_fn"=1,"mb_fp"=0)
  )
  # 2 loses 3 and 1 (spouse), adds 7 [At this stage we are double counting]
  expect_equal(mbRecovery(true_amat,test_amat,c(1,2)),
               data.frame("mb_tp"=1,"mb_fn"=3,"mb_fp"=1)
  )
  # 6 has perfect recovery (4,5,7)
  expect_equal(mbRecovery(true_amat,test_amat,6),
               data.frame("mb_tp"=3,"mb_fn"=0,"mb_fp"=0)
  )
  expect_equal(mbRecovery(true_amat,test_amat,c(1,2,6)),
               data.frame("mb_tp"=4,"mb_fn"=3,"mb_fp"=1)
  )
  # 7 keeps 6,5,3 but loses 4 (spouse) and adds 2
  expect_equal(mbRecovery(true_amat,test_amat,7),
               data.frame("mb_tp"=3,"mb_fn"=1,"mb_fp"=1)
  )
})

# Very similar to previous true amat and test amat
true_amat <- matrix(c(
  0,0,1,0,0,0,0,
  0,0,1,0,0,0,0,
  0,0,0,1,1,0,1,
  0,0,0,0,0,1,0,
  0,0,0,0,0,1,0,
  0,0,0,0,0,0,0,
  0,0,0,0,1,1,0
),byrow = TRUE,nrow = 7)
test_amat <- matrix(
  c(
    0,0,0,0,0,0,0,
    0,0,0,0,0,0,1,
    1,0,0,0,0,0,1,
    0,0,0,0,0,1,0,
    0,0,0,1,0,1,1,
    0,0,0,0,0,0,1,
    0,0,0,0,0,0,0
  ),
  nrow = 7,byrow = TRUE
)
test_that("Detailed MB Recovery Stats",{
  # amat(a) <- true_amat
  # graphviz.plot(a)
  # graphviz.plot(b)
  expect_snapshot_output(mbRecoveryMetricsList(true_amat,test_amat,1))
  expect_equal(mbRecoveryMetrics(true_amat,test_amat,1),data.frame(
    "mb_children_fn"=0,
    "mb_children_tp"=1,
    "mb_parents_fn"=0,
    "mb_parents_tp"=0,
    "mb_spouses_fn"=1,
    "mb_spouses_tp"=0,
    "mb_total_fp"=0
  ))
})

test_that("Detailed MB Recovery Stats (2)",{
  expect_snapshot_output(mbRecoveryMetricsList(true_amat,test_amat,c(1,2,6)))
  expect_equal(mbRecoveryMetrics(true_amat,test_amat,c(1,2,6)),data.frame(
    "mb_children_fn"=1,
    "mb_children_tp"=1,
    "mb_parents_fn"=0,
    "mb_parents_tp"=3,
    "mb_spouses_fn"=2,
    "mb_spouses_tp"=0,
    "mb_total_fp"=1
  ))
})


# Miscellaneous tests -----------------------------------------------------

test_that("Miscellaneous function tests",{
  expect_equal(getNeighborhoodMetrics(asiaDAG),data.frame("size"=8,"num_edges"=8))
  expect_equal(getNeighborhoodMetrics(andesDAG),data.frame("size"=223,"num_edges"=338))
})

test_that("Testing warnings and stops",{
  # Invalid matrices
  expect_error(compareSkeletons(matrix(0,nrow = 4,ncol = 3),matrix(0,nrow = 4,ncol = 4),0))
  expect_error(compareSkeletons(matrix(0,nrow = 4,ncol = 4),matrix(0,nrow = 4,ncol = 3),0))
  expect_error(compareSkeletons(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 6,ncol = 6),1))
  
  # Invalid targets
  expect_error(parentRecoveryAccuracy(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 5,ncol = 5),-1))
  expect_error(parentRecoveryAccuracy(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 5,ncol = 5),5))
  expect_error(parentRecoveryAccuracy(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 5,ncol = 5),6))
  expect_error(parentRecoveryAccuracy(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 5,ncol = 5),c(2,5,4)))
  expect_error(parentRecoveryAccuracy(matrix(0,nrow = 5,ncol = 5),matrix(0,nrow = 5,ncol = 5),c(2,4,-1)))
  
  # We have an undirected edge denoted by 3's for both entries
  test_amat <- asiaDAG; test_amat[2,8] <- test_amat[8,2] <- 3
  expect_warning(interNeighborhoodEdgeMetrics(test_amat,asiaDAG,asiaDAG,seq(0,ncol(asiaDAG)-1)))
})


