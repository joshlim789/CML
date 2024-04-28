library(bnlearn)


# Setup -------------------------------------------------------------------

data("asiadf")
asiadf_mat <- asiadf
data("asiaDAG")
node_names <- colnames(asiaDAG)
p <- ncol(asiadf)
asiaDAG <- matrix(asiaDAG,nrow = p,ncol = p)
asiadf <- as.matrix(asiadf)


# ConstrainedAlgo tests ---------------------------------------------------

test_that("Test getSize",{
  expect_equal(getSizeCML(asiaDAG,asiadf,3,seq(0,p-1),node_names),8)
})

test_that("Change Separating Set",{
  expect_snapshot_output(setSCML(asiaDAG,asiadf,3,seq(0,p-1),node_names,0,1,c(3,4)))
})

test_that("Test set verbose",{
  expect_snapshot_output(setVerboseCML(asiaDAG,asiadf,3,seq(0,p-1),node_names))
})


# Testing object formation ------------------------------------------------

test_that("Testing the CML object",{
  
  expect_snapshot_output(initializeCML(asiaDAG,asiadf,3,seq(0,p-1),node_names))
  
})

test_that("Testing the CML object (Population)",{

  expect_snapshot_output(initializeCMLPop(asiaDAG,3,seq(0,p-1),node_names))

})


# Testing Separation Set --------------------------------------------------

test_that("Testing Separation Test Function",{
  # Check if tub and lung are separated by the empty set
  expect_true(checkSeparationTest(asiaDAG,asiadf,3,seq(0,p-1),node_names,0,2,0,1)>0.1)

  # Check if either and smoke are separated by tub (removing lung)
  expect_true(checkSeparationTest(asiaDAG,asiadf,3,seq(0,p-1),node_names,1,3,1,2)<0.05)

  # Check if either and smoke are separated by lung (removing tub)
  # t = 3 => target is lung (neighborhood: {tub (0), smoke (1), lung (2), either (3)})
  # Nodes 3 and 1 are either and smoke, and we are excluding tub from consideration
  # We should obtain separation between either and smoke conditioned on lung
  expect_true(checkSeparationTest(asiaDAG,asiadf,3,seq(0,p-1),node_names, # setup for object
                                  1, # Smoke
                                  3, # Either - are these separated?
                                  1, # Max. Size of Sep. Set
                                  0)>0.05) # Removing tub from consideration

  # Check if either and lung are separated by any neighbor or set of neighbors
  # t = 5 => either (neighborhood: {tub (0), lung (1), bronc (2), either (3), xray (4), dysp (5)})
  # Nodes 1 and 3 are lung and either, and we are excluding none
  # Should not obtain separation for any grouping
  expect_true(checkSeparationTest(asiaDAG,asiadf,5,seq(0,p-1),node_names,
                                  1, # lung
                                  3, # either
                                  2, # Max size of sep set
                                  vector(mode = "double"))<0.01)
})


# Testing Skeleton Function -----------------------------------------------

test_that("Testing the total skeleton function (one target)",{
  # lung is the target
  expect_snapshot_output(result_amat <- checkSkeletonTotal(asiaDAG,asiadf,3,seq(0,p-1),node_names))
  total_skel <- bnlearn::empty.graph(node_names[c(1,2,3,5)+1])
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
})


test_that("Testing the total skeleton function (two targets)",{
  # Targets are lung and bronc
  testthat::expect_snapshot_output(result_amat <- checkSkeletonTotal(asiaDAG,asiadf,c(3,4),seq(0,p-1),node_names))

  total_skel <- bnlearn::empty.graph(node_names[c(1,2,3,4,5,7)+1])
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
})

test_that("Testing the total skeleton function for population (one target)",{

  testthat::expect_snapshot_output(result_amat <- checkSkeletonTotalPop(asiaDAG,3,seq(0,p-1),node_names))
  total_skel <- bnlearn::empty.graph(node_names[c(1,2,3,5)+1])
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
})

test_that("Testing the total skeleton function for population (two targets)",{

  testthat::expect_snapshot_output(result_amat <- checkSkeletonTotalPop(asiaDAG,c(3,4),seq(0,p-1),node_names))

  total_skel <- bnlearn::empty.graph(node_names[c(1,2,3,4,5,7)+1])
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
})


# Testing Skeleton 2nd Stage and V-Structures -----------------------------

test_that("Testing Skeleton Target function and V-Structure function (sample)",{
  testthat::expect_snapshot_output(result_amat <- checkVStruct(asiaDAG,asiadf,c(3,4),seq(0,p-1),node_names))

  # Convert to PDAG numbering
  for (i in 1:nrow(result_amat)){
    for (j in 1:ncol(result_amat)){
      if (result_amat[i,j]==2){
        result_amat[i,j] <- 1
        result_amat[j,i] <- 0
      }
    }
  }
  # total_skel <- bnlearn::empty.graph(node_names[c(1,2,3,4,5,7)+1])
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
  # Check v-structure with tub -> either <- lung
  expect_equal(result_amat[1,5],1)
  expect_equal(result_amat[5,1],0)
  expect_equal(result_amat[3,5],1)
  expect_equal(result_amat[5,3],0)
  expect_equal(result_amat[1,3],0)
  expect_equal(result_amat[3,1],0)

  # Check v-structure either -> dysp <- bronc
  expect_equal(result_amat[5,6],1)
  expect_equal(result_amat[6,5],0)
  expect_equal(result_amat[4,6],1)
  expect_equal(result_amat[6,4],0)
  expect_equal(result_amat[4,5],0)
  expect_equal(result_amat[5,4],0)

  # Population Version
  result_amat <- checkVStructPop(asiaDAG,c(3,4),seq(0,p-1),node_names)
  # pop_graph <- empty.graph(node_names)
  # amat(pop_graph) <- result_amat
  # graphviz.plot(pop_graph,highlight = list("nodes"=c("lung","bronc")))

  modified_asia_dag <- asiaDAG
  # Remove asia and xray from consideration to match sample version
  modified_asia_dag[1,] <- 0
  modified_asia_dag[,7] <- 0
  # smoke - lung
  modified_asia_dag[4,3] <- 1
  # smoke - bronc
  modified_asia_dag[5,3] <- 1

  expect_equal(result_amat,modified_asia_dag)
})

test_that("Testing Skeleton Target function and V-Structure function (population)",{
  testthat::expect_snapshot_output(result_amat <- checkVStructPop(asiaDAG,c(3,4),seq(0,p-1),node_names))

  # total_skel <- bnlearn::empty.graph(node_names)
  # amat(total_skel) <- result_amat
  # graphviz.plot(total_skel)
  # Check v-structure with tub -> either <- lung
  expect_equal(result_amat[2,6],1)
  expect_equal(result_amat[6,2],0)
  expect_equal(result_amat[4,6],1)
  expect_equal(result_amat[6,4],0)
  expect_equal(result_amat[2,4],0)
  expect_equal(result_amat[4,2],0)

  # Check v-structure either -> dysp <- bronc
  expect_equal(result_amat[6,8],1)
  expect_equal(result_amat[8,6],0)
  expect_equal(result_amat[5,8],1)
  expect_equal(result_amat[8,5],0)
  expect_equal(result_amat[5,6],0)
  expect_equal(result_amat[6,5],0)

})


# Check final matrix conversion -------------------------------------------

test_that("Testing Adjacency Matrix Conversion",{
  test_mat <- matrix(c(0,2,0,0,1,0,
                       2,0,2,0,0,0,
                       0,1,0,2,0,0,
                       0,0,3,0,0,0,
                       1,0,0,0,0,1,
                       0,0,0,0,3,0),nrow = 6,byrow = TRUE)

  final_mat <- matrix(c(rep(0,11),
                        0,0,0,1,0,0,0,0,1,0,0,
                        rep(0,11),
                        0,1,0,0,1,0,0,0,0,0,0,
                        0,0,0,0,0,0,1,0,0,0,0,
                        rep(0,11),
                        rep(0,11),
                        rep(0,11),
                        0,1,0,0,0,0,0,0,0,0,1,
                        rep(0,11),
                        rep(0,11)),nrow = 11,byrow = TRUE)

  result_amat <- checkAdjMatConversion(final_mat,asiadf,c(3,4),seq(0,10),node_names,
                                       test_mat,c(1,3,4,6,8,10))
  expect_equal(result_amat,final_mat)
  # conv_graph <- empty.graph(as.character(0:10))
  # amat(conv_graph) <- result_amat
  # graphviz.plot(conv_graph)

  asia_test <- matrix(c(
    0,2,0,2,
    2,0,1,2,
    0,1,0,0,
    1,1,0,0
  ),byrow = TRUE,nrow = 4)
  asia_result <- checkAdjMatConversion(asiaDAG,asiadf,c(4,5),seq(0,p-1),node_names,asia_test,4:7)
  expect_snapshot_output(asia_result)
})


# Test Full Algorithm -----------------------------------------------------

test_that("CML (Putting it all together, sample)",{
  sample_g <- empty.graph(node_names)
  amat(sample_g) <- checkCMLSummary(asiaDAG,asiadf,c(0,5),seq(0,p-1),node_names)
  expect_snapshot_output(amat(sample_g))
  # graphviz.plot(sample_g)

})

test_that("CML (Putting it all together, population)",{
  pop_g <- empty.graph(node_names)
  amat(pop_g) <- checkCMLSummaryPop(asiaDAG,c(0,5),seq(0,p-1),node_names)
  expect_snapshot_output(amat(pop_g))
  # graphviz.plot(pop_g)

  # pop_g <- empty.graph(node_names)
  amat(pop_g) <- checkCMLSummaryPop(asiaDAG,c(2,7),seq(0,p-1),node_names)
  expect_snapshot_output(amat(pop_g))
  # graphviz.plot(pop_g)

  # pop_g <- empty.graph(node_names)
  amat(pop_g) <- checkCMLSummaryPop(asiaDAG,c(1,3,7),seq(0,p-1),node_names)
  expect_snapshot_output(amat(pop_g))
  # graphviz.plot(pop_g)

  # pop_g <- empty.graph(node_names)
  amat(pop_g) <- checkCMLSummaryPop(asiaDAG,c(0,6),seq(0,p-1),node_names)
  expect_snapshot_output(amat(pop_g))
  # graphviz.plot(pop_g)
})


# Misc. -------------------------------------------------------------------

test_that("Testing object conversion",{
  expect_equal(class(asiadf_mat),"data.frame")
  expect_error(cml(data = asiadf_mat,targets = 1),NA)
  asiadag_df <- data.frame(asiaDAG)
  expect_equal(class(asiadag_df),"data.frame")
  expect_error(cml(true_dag = asiadag_df,targets = 1),NA)
})

test_that("Testing warnings for checkNotation",{
  m <- asiaDAG
  m[5,3] <- 3
  m[8,6] <- 2
  m[3,4] <- 2
  expect_warning(
    expect_warning(
      expect_warning(checkNotationWarnings(asiaDAG,asiadf,5,seq(1,p-1),node_names,m),
                 "Ancestral marking mixed with neighborhood marking."),
      "Ancestral marking mixed with neighborhood marking."),
    "Ancestral marking mixed with neighborhood marking.")
  expect_warning(checkNotationWarnings(asiaDAG,asiadf,5,seq(1,p-1),
                                       node_names,asiaDAG),NA)
  
  m[3,4] <- 1
  m[6,8] <- 3
  m[3,5] <- 4
  expect_warning(checkNotationWarnings(asiaDAG,asiadf,5,seq(1,p-1),
                                       node_names,m),NA)
})

