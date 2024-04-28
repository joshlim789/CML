library(bnlearn)

# Setup -------------------------------------------------------------------

data("asiaDAG")
data("asiadf")
t <- 5
names <- colnames(asiaDAG)
df <- as.matrix(asiadf)
asiaDAG <- as.matrix(asiaDAG)
p <- ncol(asiaDAG)

test_that("Targets are properly validated",{
  targets <- c(1,2,4,5,8)
  expect_error(validateTargetSNL(targets,10))
  expect_error(validateTargetSNL(targets,5),NA)
  expect_error(validateTargetSNL(targets,-1))
})


# Test SNL ----------------------------------------------------------------

test_that("Sample SNL (given true Markov Blankets)",{
  expect_equal(checkInitializeSNL(asiaDAG,df,t,seq(0,p-1),names),8)
  
  pc_dag <- empty.graph(names[c(2,4,5,6,7,8)])
  expect_snapshot_output(amat(pc_dag) <- checkGetTargetSkel(asiaDAG,df,t,seq(0,p-1),names))
  # graphviz.plot(pc_dag)
})

test_that("Check V-Structures",{
  expect_equal(checkInitializeSNL(asiaDAG,df,t,seq(0,p-1),names),8)
  
  pc_dag <- empty.graph(names[c(2,4,5,6,7,8)])
  amat(pc_dag) <- checkGetTargetSkel(asiaDAG,df,t,seq(0,p-1),names)
  # graphviz.plot(pc_dag)
  
  expect_snapshot_output(amat(pc_dag) <- checkGetVStructures(asiaDAG,df,t,seq(0,p-1),names))
  # graphviz.plot(pc_dag)
})

test_that("Population SNL",{
  pc_dag_pop <- empty.graph(names[c(2,4,5,6,7,8)])
  expect_equal(checkInitializeSNLPop(asiaDAG,t,seq(0,p-1),names),8)
  amat(pc_dag_pop) <- checkGetTargetSkelPop(asiaDAG,t,seq(0,p-1),names)
  # tub, lung, bronc, either, xray, dysp
  expect_equal(amat(pc_dag_pop),
               matrix(c(
                 0,0,0,1,0,0,
                 0,0,0,1,0,0,
                 0,0,0,0,0,1,
                 1,1,0,0,1,1,
                 0,0,0,1,0,0,
                 0,0,1,1,0,0
               ),nrow = 6,byrow = TRUE,
               dimnames = list(names[c(2,4,5,6,7,8)],
                               names[c(2,4,5,6,7,8)]))
  )
  # graphviz.plot(pc_dag_pop)
  #
  expect_snapshot_output(amat(pc_dag_pop) <- checkGetVStructuresPop(asiaDAG,t,seq(0,p-1),names))
  # graphviz.plot(pc_dag_pop)
})


# Test SNL Multiple Targets -----------------------------------------------

test_that("Initializing for multiple targets",{
  expect_snapshot_output(checkInitializeSNLPop(asiaDAG,c(0,7),seq(0,p-1),names))
})

test_that("Multiple Targets",{
  lpc_test <- empty.graph(names)
  amat_test <- checkSNL(asiaDAG,df,c(3,4),seq(0,p-1),names)
  # amat(lpc_test) <- amat_test
  # graphviz.plot(lpc_test)
  expect_snapshot_output(cat(amat_test))
})

test_that("Multiple Targets Population Version",{
  # lpc_test_pop <- empty.graph(names)
  amat_pop <- checkSNLPop(asiaDAG,c(3,4),seq(0,p-1),names)
  # amat(lpc_test_pop) <- amat_pop
  # graphviz.plot(lpc_test_pop)
  expect_snapshot_output(cat(amat_pop))
})

test_that("Additional Pop. Version test",{
  # lpc_test_pop2 <- empty.graph(names)
  amat_pop2 <- checkSNLPop(asiaDAG,c(0,5),seq(0,p-1),names)
  # amat(lpc_test_pop2) <- amat_pop2
  # graphviz.plot(lpc_test_pop2)
  expect_snapshot_output(cat(amat_pop2))
})


# Test Wrapper Functions --------------------------------------------------

test_that("Wrapper function (Population Version)",{
  expect_snapshot_output(wrapper_res <- snl(true_dag = asiaDAG,targets = c(3,4),
                                            node_names = names))
  # res_g <- empty.graph(names)
  # amat(res_g) <- wrapper_res$amat
  # graphviz.plot(res_g)
})

test_that("Wrapper function (Semi-Sample Version)",{
  expect_snapshot_output(wrapper_res_semi <- snl(data = asiadf,true_dag = asiaDAG,
                                                 targets = c(3,4),node_names = names))
})

test_that("Wrapper function (Sample Version)",{
  expect_snapshot_output(wrapper_res_sample <- snl(data = asiadf,targets = c(3,4),
                                                   node_names = names))
  # Same as above, but without names
  expect_snapshot_output(wrapper_res_sample <- snl(data = asiadf,targets = c(3,4)))
})

test_that("Run function (Sample Version)",{
  expect_snapshot_output(checkSNLRun(asiaDAG,df,c(3,4),seq(0,p-1),names))
})


# Testing Rules -----------------------------------------------------------

test_that("Testing rule 1",{
  my_amat <- matrix(c(
    0,1,1,0,0,0,0,0,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,1,1,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,0,1,
    0,0,0,0,0,0,0,0,
    0,0,1,0,0,0,0,1,
    0,0,0,0,1,0,1,0
  ),byrow = TRUE,nrow = 8)
  # g_start <- empty.graph(as.character(1:8))
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  
  expect_snapshot_output(amat_end <- checkRule1(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  testthat::expect_equal(amat_end,
                         matrix(c(
                           0,1,1,0,0,0,0,0,
                           0,0,0,0,0,1,0,0,
                           0,0,0,0,0,0,1,1,
                           0,0,0,0,0,1,0,0,
                           0,0,0,0,0,0,0,0,
                           0,0,0,0,0,0,0,0,
                           0,0,0,0,0,0,0,1,
                           0,0,0,0,1,0,1,0
                         ),byrow = TRUE,nrow = 8))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

test_that("Test rule 1 no change",{
  expect_snapshot_output(checkRule1(asiaDAG,asiaDAG,0:7,0:7,as.character(1:8)))
})

test_that("Testing rule 1 (2)",{
  my_amat <- matrix(c(
    0,1,1,0,0,0,0,0,
    0,0,0,0,0,1,0,0,
    0,0,0,0,1,0,1,1,
    0,0,0,0,0,1,0,0,
    0,0,1,0,0,0,0,1,
    0,0,0,0,0,0,0,0,
    0,0,1,0,0,0,0,1,
    0,0,0,0,1,0,1,0
  ),byrow = TRUE,nrow = 8)
  # g_start <- empty.graph(as.character(1:8))
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  
  expect_snapshot_output(amat_end <- checkRule1(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

test_that("Testing rule 2",{
  my_amat <- matrix(c(
    0,1,1,0,0,0,0,0,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,1,1,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,0,1,
    0,0,0,0,0,0,0,0,
    0,0,1,0,0,0,0,1,
    0,0,0,0,1,0,1,0
  ),byrow = TRUE,nrow = 8)
  # g_start <- empty.graph(as.character(1:8))
  # Add an edge 1 - 8 and 1 - 6
  my_amat[1,8] <- my_amat[8,1] <- 1
  my_amat[1,6] <- my_amat[6,1] <- 1
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  
  expect_snapshot_output(amat_end <- checkRule2(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  expect_equal(amat_end,matrix(c(
    0,1,1,0,0,1,0,1,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,1,1,
    0,0,0,0,0,1,0,0,
    0,0,0,0,0,0,0,1,
    0,0,0,0,0,0,0,0,
    0,0,1,0,0,0,0,1,
    0,0,0,0,1,0,1,0
  ),byrow = TRUE,nrow = 8))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

test_that("Test rule 2 no change",{
  expect_snapshot_output(checkRule2(asiaDAG,asiaDAG,0:7,0:7,as.character(1:8)))
})

test_that("Testing rule 3",{
  my_amat <- matrix(c(
    0,1,1,1,0,0,0,0,
    0,0,0,1,1,1,1,0,
    1,0,0,1,0,0,0,0,
    1,0,0,0,0,0,0,1,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0
  ),byrow = TRUE,nrow = 8)
  # g_start <- empty.graph(as.character(1:8))
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  
  expect_snapshot_output(amat_end <- checkRule3(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  expect_equal(amat_end,matrix(c(
    0,1,1,1,0,0,0,0,
    0,0,0,1,1,1,1,0,
    1,0,0,1,0,0,0,0,
    1,0,0,0,0,0,0,1,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,1,0,
    0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0
  ),byrow = TRUE,nrow = 8))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

test_that("Test rule 3 no change",{
  expect_snapshot_output(checkRule3(asiaDAG,asiaDAG,0:7,0:7,as.character(1:8)))
})

test_that("Testing rule 4",{
  my_amat <- matrix(c(
    0,1,1,1,0,0,0,0,
    0,0,0,1,1,1,1,0,
    1,0,0,1,0,0,0,0,
    1,0,0,0,0,0,0,1,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0
  ),byrow = TRUE,nrow = 8)
  my_amat[4,3] <- 1
  my_amat[1,4] <- my_amat[4,1] <- 0
  my_amat[2,3] <- 1
  # g_start <- empty.graph(as.character(1:8))
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  
  expect_snapshot_output(amat_end <- checkRule4(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  expect_equal(amat_end,matrix(c(
    0,1,1,0,0,0,0,0,
    0,0,1,1,1,1,1,0,
    1,0,0,1,0,0,0,0,
    0,0,0,0,0,0,0,1,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0
  ),byrow = TRUE,nrow = 8))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

test_that("Test rule 4 no change",{
  expect_snapshot_output(checkRule4(asiaDAG,asiaDAG,0:7,0:7,as.character(1:8)))
})

test_that("Testing all rules together",{
  my_amat <- matrix(c(
    0,1,1,1,0,0,0,0,
    0,0,0,1,1,1,1,0,
    1,0,0,1,0,0,0,0,
    1,0,0,0,0,0,0,1,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,1,0,
    0,1,0,0,0,0,0,0,
    0,0,0,1,0,0,0,0
  ),byrow = TRUE,nrow = 8)
  my_amat[4,3] <- 1
  my_amat[1,4] <- my_amat[4,1] <- 0
  my_amat[2,3] <- my_amat[3,2] <- 1
  my_amat[2,8] <- my_amat[8,2] <-1
  # g_start <- empty.graph(as.character(1:8))
  # amat(g_start) <- my_amat
  # graphviz.plot(g_start)
  expect_snapshot_output(amat_end <- checkSNLRules(asiaDAG,my_amat,0:7,0:7,as.character(1:8)))
  # g_end <- empty.graph(as.character(1:8))
  # amat(g_end) <- amat_end
  # graphviz.plot(g_end)
})

# Misc. -------------------------------------------------------------------

test_that("Testing data structure correctness",{
  dag_df <- data.frame(asiaDAG)
  expect_error(tmp <- snl(true_dag = dag_df,targets = t),NA)
})

