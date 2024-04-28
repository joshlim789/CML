true_amat <- matrix(c(
  0,0,1,0,0,0,
  0,0,0,0,1,0,
  0,0,0,1,0,0,
  0,0,0,0,1,0,
  0,0,0,0,0,1,
  0,0,0,0,1,0
),nrow = 6,byrow = TRUE)

est_amat <- matrix(c(
  0,0,0,0,0,0,
  0,0,1,0,1,0,
  1,0,0,0,0,0,
  0,0,1,0,1,0,
  0,0,0,1,0,0,
  0,0,0,0,1,0
),nrow = 6,byrow = TRUE)

# g_t <- empty.graph(as.character(0:5))
# amat(g_t) <- true_amat
# g_est <- empty.graph(as.character(0:5))
# amat(g_est) <- est_amat
# par(mfrow=c(1,2))
# graphviz.plot(g_t)
# graphviz.plot(g_est)

# Nodes 2 and 4 are the targets
# TP: 1->4
# FP: 3->2, 1->2, and 5->4
# FN: 0->2
# Potential: 3->4
test_that("Testing Parent Recovery Accuracy Metrics",{
  expect_snapshot_output(parentRecoveryAccuracy(est_amat,true_amat,c(2,4),TRUE))
  
  expect_snapshot_output(allMetrics(est_amat,true_amat,c(2,4),true_amat,
                                    seq(0,ncol(est_amat)),algo = "cml",verbose = TRUE))
})

