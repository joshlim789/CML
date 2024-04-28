### Testing Markov Blanket List class

nodes <- seq(0,6)
mb_mat <- matrix(c(
  0,0,0,1,0,0,0, # MB(0) = {3}
  0,0,1,0,0,1,0, # MB(1) = {2,5}
  0,1,0,0,0,1,1, # MB(2) = {1,5,6}
  1,0,0,0,1,0,1, # MB(3) = {0,4,6}
  0,0,0,1,0,0,0, # MB(4) = {3}
  0,1,1,0,0,0,0, # MB(5) = {1,2}
  0,0,1,1,0,0,0  # MB(6) = {2,3}
),byrow = TRUE,nrow = 7)
data(asiaDAG)

test_that("Initialization of Markov Blanket Object works (Sample)",{
  expect_snapshot_output(testInitializeMBList(nodes,mb_mat))
})

test_that("Access Markov Blanket for a node",{
  expect_equal(testAccessMB(nodes,mb_mat,0),c(3))
  expect_equal(testAccessMB(nodes,mb_mat,2),c(1,5,6))
  expect_equal(testAccessMB(nodes,mb_mat,1),c(2,5))
  expect_error(testAccessMB(nodes,mb_mat,50))
})

test_that("Access Markov Blanket for multiple nodes",{
  expect_equal(testAccessMultipleMB(nodes,mb_mat,c(0,1,2)),c(1,2,3,5,6))
  expect_equal(testAccessMultipleMB(nodes,mb_mat,c(0,2,1)),c(1,2,3,5,6))
  expect_equal(testAccessMultipleMB(nodes,mb_mat,numeric()),numeric())
  
  expect_warning(testAccessMultipleMB(nodes,mb_mat,c(0,2,1),TRUE,TRUE))
  expect_equal(testAccessMultipleMB(nodes,mb_mat,c(0,2,1),TRUE,FALSE,TRUE),c(0,1,2,3,5,6))
  expect_equal(testAccessMultipleMB(nodes,mb_mat,c(0,2,1),FALSE,TRUE,TRUE),c(3,5,6))
})

test_that("Membership in MB function is correct",{
  # We should find 5 in MB(1) and 6 in MB(3)
  expect_true(testIsMBMember(nodes,mb_mat,1,5))
  expect_true(testIsMBMember(nodes,mb_mat,3,6))
  # 0 not in MB(4) and 2 not in MB(3)
  expect_false(testIsMBMember(nodes,mb_mat,4,0))
  expect_false(testIsMBMember(nodes,mb_mat,3,2))
  
  expect_error(testIsMBMember(nodes,mb_mat,3,15))
})

nodes <- seq(0,7)
node_names <- colnames(asiaDAG)
test_that("Initialization for Population Version works",{
  expect_snapshot_output(testInitializeMBListPop(nodes,asiaDAG))
})

test_that("Initialization for Population Version with fewer nodes",{
  expect_snapshot_output(testInitializeMBListPop(c(0,3,5),asiaDAG))
})

test_that("Test silencer",{
  expect_snapshot(testSilencer(c(0,1,3,5),asiaDAG,0,5))
})
