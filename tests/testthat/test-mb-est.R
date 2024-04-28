
# Data Setup --------------------------------------------------------------

data("asiadf")
data("asiaDAG")
node_names <- colnames(asiaDAG)
asiaDAG <- matrix(asiaDAG,nrow = ncol(asiadf),ncol = ncol(asiadf))
asiadf <- as.matrix(asiadf)
p <- length(node_names)

# Test Neighborhood Estimation Functions ----------------------------------

test_that("Neighborhood Estimation",{
  # bronc and either are in dysp's Markov Blanket
  expect_equal(getMB(8,asiadf)$mb,c(5,6))
  expect_equal(getMB(8,asiadf,method = "SES")$mb,c(5,6))
  expect_equal(getMB(8,asiadf,method = "pc.sel")$mb,c(5,6))
  
  # Output should find MB for each target first
  # Then 3's non-target first-order neighbors: 4
  # Then 5's non-target first-order neighbors: none
  # Then 6's non-target first-order neighbors: 2, 7
  # Then 8's non-target first-order neighbors: none
  targets <- c(3,5,6,8)
  mbList <- getAllMBs(targets,asiadf)
  lapply(mbList$mb_list,function(mb){
    expect_snapshot_output(mb$mb)
  })
  expect_equal(mbList$num_tests,8)
  
  expect_snapshot_output(adj <- getEstInitialDAG(mbList$mb_list,p,verbose = TRUE))
  for (i in 1:length(targets)){
    target <- targets[i]
    neighbors <- mbList$mb_list[[i]][["mb"]]
    for (neighbor in neighbors){
      expect_equal(adj[target,neighbor]+adj[neighbor,target],2)
    }
  }
  
  times <- rep(NA,length(targets))
  for (i in 1:length(targets)){
    times[i] <- mbList$mb_list[[i]][["time"]]
  }
  expect_equal(getTotalMBTime(mbList$mb_list),sum(times),tolerance = 1e-01)
})

test_that("Verbose arguments",{
  targets <- c(3,5,6,8)
  mbList <- getAllMBs(targets,asiadf)
  
  expect_snapshot_output(adj <- getEstInitialDAG(mbList$mb_list,p,verbose = TRUE))
})


# Additional Setup --------------------------------------------------------

# List of first-order neighbors
connections <- list(
  "asia"=c("tub"),
  "tub"=c("asia","lung","either"),
  "either"=c("tub","lung","xray","dysp","bronc"),
  "lung"=c("either","tub","smoke"),
  "smoke"=c("lung","bronc"),
  "bronc"=c("smoke","dysp","either"),
  "dysp"=c("either","bronc"),
  "xray"=c("either")
)

# parent-child list
pc_set_names <- list(
  "asia"=c("tub"),
  "tub"=c("asia","either"),
  "either"=c("tub","lung","xray","dysp"),
  "lung"=c("either","smoke"),
  "smoke"=c("lung","bronc"),
  "bronc"=c("smoke","dysp"),
  "dysp"=c("either","bronc"),
  "xray"=c("either")
)

# List of second-order neighbors using P-C sets
order2neighbors <- list(
  "asia"=setdiff(pc_set_names[["tub"]],"asia"),
  "tub"=setdiff(unique(unlist(pc_set_names[pc_set_names[["tub"]]])),"tub"),
  "either"=setdiff(unique(unlist(pc_set_names[pc_set_names[["either"]]])),"either"),
  "lung"=setdiff(unique(unlist(pc_set_names[pc_set_names[["lung"]]])),"lung"),
  "smoke"=setdiff(unique(unlist(pc_set_names[pc_set_names[["smoke"]]])),"smoke"),
  "bronc"=setdiff(unique(unlist(pc_set_names[pc_set_names[["bronc"]]])),"bronc"),
  "dysp"=setdiff(unique(unlist(pc_set_names[pc_set_names[["dysp"]]])),"dysp"),
  "xray"=setdiff(unique(unlist(pc_set_names[pc_set_names[["xray"]]])),"xray")
)

# Numbered version of P-C set list
pc_set <- lapply(node_names,function(n){
  rm_names <- sapply(pc_set_names[[n]],function(nm){
    res <- which(nm==node_names)
    return(res)
  })
  names(rm_names) <- NULL
  new_pc_set_n <- list("mb"=rm_names)
  return(new_pc_set_n)
})
names(pc_set) <- as.character(1:8)


# Get Second Order Neighbors ----------------------------------------------

test_that("Second-order neighbors",{
  target <- 6 # either
  pc_set1 <- pc_set[['6']][['mb']]
  target_mbs1 <- pc_set['6']
  first_order_mbs1 <- pc_set[pc_set[['6']][['mb']]]
  pairs_checked1 <- matrix(0,nrow = 8,ncol = 8)
  
  # target node: either
  # first-order neighbors: tub, lung, bronc, xray, dysp
  # second-order neighbors: asia, smoke
  order2nbrs <- sort(node_names[getSecondOrderNeighbors(target,
                                                        pc_set1,
                                                        target_mbs1,
                                                        first_order_mbs1,
                                                        pairs_checked1)])
  # bronc included b/c spouse not in p-c set
  expect_equal(order2nbrs,c("asia","bronc","smoke"))
  
  # Check pairs_checked
  # Mark that we have checked "smoke" as a spouse
  pairs_checked1[6,3] <- 1
  order2nbrs1 <- sort(node_names[getSecondOrderNeighbors(target,
                                                         pc_set1,
                                                         target_mbs1,
                                                         first_order_mbs1,
                                                         pairs_checked1)])
  expect_equal(order2nbrs1,c("asia","bronc"))
  
  pairs_checked1[6,3] <- 0
  
  # Check all second-order neighbors
  for (target in 1:8){
    pc_set1 <- pc_set[[as.character(target)]][['mb']]
    target_mbs1 <- pc_set[[as.character(target)]]
    first_order_mbs1 <- pc_set[pc_set[[as.character(target)]][['mb']]]
    order2nbrs <- sort(node_names[getSecondOrderNeighbors(target,
                                                          pc_set1,
                                                          target_mbs1,
                                                          first_order_mbs1,
                                                          pairs_checked1)])
    expect_equal(order2nbrs,sort(order2neighbors[[node_names[target]]]))
  }
})

test_that("Test spouse recovery function (one target)",{
  # should add bronc as a spouse
  targets <- 6
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- pc_set[targets]
  params$first_order_mbs <- pc_set[setdiff(unique(unlist(pc_set[targets])),targets)]
  expect_snapshot_output(res <- captureSpouses(params))
  vars <- setdiff(names(res),"data")
  expect_snapshot_output(res[vars])
})

test_that("Test spouse recovery function (two targets)",{
  # should add bronc as a spouse
  targets <- c(6,8)
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- pc_set[targets]
  params$first_order_mbs <- pc_set[setdiff(unique(unlist(pc_set[targets])),targets)]
  expect_snapshot_output(res <- captureSpouses(params))
  vars <- setdiff(names(res),"data")
  expect_snapshot_output(res[vars])
})

test_that("Test spouse recovery function (multiple targets)",{
  # tub and lung are spouses, as are either and bronc
  targets_names <- c("tub","lung","either","bronc")
  targets <- sapply(targets_names,function(t) which(t == node_names),USE.NAMES = FALSE)
  expect_false(4 %in% pc_set[['2']][['mb']])
  expect_false(2 %in% pc_set[['4']][['mb']])
  expect_false(6 %in% pc_set[['5']][['mb']])
  expect_false(5 %in% pc_set[['6']][['mb']])
  
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- pc_set[targets]
  params$first_order_mbs <- pc_set[setdiff(unique(unlist(pc_set[targets])),targets)]
  expect_snapshot_output(results_spouse <- captureSpouses(params))
  expect_true(4 %in% results_spouse$target_mbs[['2']][['mb']])
  expect_true(2 %in% results_spouse$target_mbs[['4']][['mb']])
  expect_true(6 %in% results_spouse$target_mbs[['5']][['mb']])
  expect_true(5 %in% results_spouse$target_mbs[['6']][['mb']])
  
  expect_equal(results_spouse$target_mbs[['2']][['mb']],sort(c(pc_set[['2']][['mb']],4)))
  expect_equal(results_spouse$target_mbs[['4']][['mb']],sort(c(pc_set[['4']][['mb']],2)))
  expect_equal(results_spouse$target_mbs[['5']][['mb']],sort(c(pc_set[['5']][['mb']],6)))
  expect_equal(results_spouse$target_mbs[['6']][['mb']],sort(c(pc_set[['6']][['mb']],5)))
  
  
})

test_that("Go through each step of `getAllMBs`",{
  targets <- c(1,3,5,5)
  expect_warning(new_targets<-checkUniqueTargets(targets))
  expect_equal(new_targets,c(1,3,5))
  
  
  targets <- new_targets
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  expect_snapshot_output(params)
  
  params$target_mbs <- lapply(targets,function(t){
    getMB(t,dataset,threshold,lmax,method,test,verbose)
  })
  names(params$target_mbs) <- as.character(targets)
  expect_snapshot_output(
    for (i in names(params$target_mbs)){
      cat("MB(",i,"): ",paste(params$target_mbs[[i]]$mb,collapse = " "),"\n",sep = "")
    }
  )
  
  params$first_order_neighbors <- unique(setdiff(getAllMBNodes(params$target_mbs),targets))
  expect_equal(params$first_order_neighbors,c(2,4,8))
  
  first_order_mbs <- lapply(params$first_order_neighbors,
                            function(t) 
                              getMB(t,
                                    params$data,
                                    params$threshold,
                                    params$lmax,
                                    params$method,
                                    params$test,
                                    params$verbose))
  names(first_order_mbs) <- as.character(params$first_order_neighbors)
  expect_snapshot_output(
    for (i in names(first_order_mbs)){
      cat("MB(",i,"): ",paste(first_order_mbs[[i]]$mb,collapse = " "),"\n",sep = "")
    }
  )
  f_o_list <- list("f_o_mbs"=first_order_mbs)
  params$first_order_mbs <- first_order_mbs
  
  # check spouses for target "smoke"
  target <- targets[2]
  pc_set <- params$target_mbs[[as.character(target)]][['mb']]
  pairs_checked <- matrix(0,nrow = p,ncol = p)
  second_order_neighbors <- unique(unlist(
    lapply(pc_set,function(x){
      if (as.character(x) %in% names(params$target_mbs)){
        return(params$target_mbs[[as.character(x)]][["mb"]])
      } else {
        return(params$first_order_mbs[[as.character(x)]][["mb"]])
      }
    })
  ))
  second_order_neighbors <- sort(setdiff(second_order_neighbors,
                                         c(target,pc_set)))
  # 2-order nbrs are "either" and "dysp" (excluding tub as a spouse)
  expect_equal(second_order_neighbors,c(6,8))
  
  # target "bronc"
  target <- targets[3]
  pc_set <- params$target_mbs[[as.character(target)]][['mb']]
  second_order_neighbors <- unique(unlist(
    lapply(pc_set,function(x){
      if (as.character(x) %in% names(params$target_mbs)){
        return(params$target_mbs[[as.character(x)]][["mb"]])
      } else {
        return(params$first_order_mbs[[as.character(x)]][["mb"]])
      }
    })
  ))
  second_order_neighbors <- sort(setdiff(second_order_neighbors,
                                         c(target,pc_set)))
  expect_equal(second_order_neighbors,c(4,6))
  pairs_checked[target,4] <- 1
  already_checked <- which(pairs_checked[target,]==1)
  second_order_neighbors <- setdiff(second_order_neighbors,already_checked)
  expect_equal(second_order_neighbors,6)
  
  second_order_neighbors <- c(4,6)
  C <- cor(params$data)
  n <- nrow(params$data)
  num_tests <- 0
  target_mbs <- params$target_mbs
  expect_equal(target_mbs[["5"]][["mb"]],c(3,8))
  first_order_mbs <- params$first_order_mbs
  expect_equal(first_order_mbs[["4"]][["mb"]],c(3,6))
  spouses_added <- c()
  spouse_mbs <- list()
  lapply(second_order_neighbors,function(x){
    if (verbose){
      cat("Checking if node",x,"is a spouse of target",target,"...")
    }
    test <- condIndTest(C,target-1,x-1,pc_set-1,n,threshold)
    num_tests <<- num_tests + 1
    pairs_checked[target,x] <<- pairs_checked[x,target] <<- 1
    if (!test$result){
      # We reject H_0, and conclude in favor of conditional dependence
      # Add x to the Markov Blanket set
      if (verbose){
        cat(" yes. Adding",x,"to MB of",target,". ")
      }
      target_mbs[[as.character(target)]][["mb"]] <<- sort(c(
        target_mbs[[as.character(target)]][["mb"]],x
      ))
      # Situation where x (the new spouse) is another target node
      if (x %in% targets){
        if (verbose){
          cat("Adding",target,"to MB of",
              x,"(another target node).")
        }
        target_mbs[[as.character(x)]][["mb"]] <<- sort(c(
          target_mbs[[as.character(x)]][["mb"]],target
        ))
      } else if (as.character(x) %in% names(first_order_mbs)){
        # x is a first-order neighbor for another target
        if (verbose){
          cat("Adding",target,"to MB of",
              x,"(first-order neighbor of another target).")
        }
        first_order_mbs[[as.character(x)]][["mb"]] <<- sort(c(
          first_order_mbs[[as.character(x)]][["mb"]],target
        ))
      } else {
        # otherwise, x was previously identified as exclusively a second-order 
        # neighbor 
        if (verbose){
          cat(x,"is a newly discovered 1st-order neighbor",
              "(was previously 2nd-order only).")
        }
        # We have to track which spouses are newly added, because
        # we must estimate their Markov Blankets as well
        spouses_added <<- c(spouses_added,x)
        # Add target to MB set for node x in special spouse_mb list
        # Additional MB identification will take place later
        spouse_mbs[[as.character(x)]] <<- unique(c(
          target,first_order_mbs[[as.character(x)]]
        ))
      }
    } else { # Accept H_0
      if (verbose){
        cat(" no")
      }
    }
    if (verbose){
      cat("\n")
    }
  })
  expect_equal(target_mbs[["1"]][["mb"]],2)
  expect_equal(target_mbs[["3"]][["mb"]],c(4,5))
  expect_equal(target_mbs[["5"]][["mb"]],c(3,4,6,8))
  expect_equal(first_order_mbs[["4"]][["mb"]],c(3,5,6))
  expect_equal(spouses_added,6)
  expect_equal(spouse_mbs[["6"]],5)
})

test_that("Check Capture Spouses",{
  targets <- c(1,3,5)
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- lapply(targets,
                              function(t) 
                                getMB(t,dataset,threshold,lmax,
                                      method,test,verbose)
  )
  names(params$target_mbs) <- as.character(targets)
  params$first_order_neighbors <- unique(
    setdiff(
      getAllMBNodes(params$target_mbs),targets
    )
  )
  f_o_list <- getFirstOrderNeighborMBs(params)
  params$first_order_mbs <- f_o_list$f_o_mbs
  expect_snapshot_output(params <- captureSpouses(params))
})

test_that("Check augment MB Algo",{
  targets <- c(1,3,5)
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- lapply(targets,
                              function(t) 
                                getMB(t,dataset,threshold,lmax,
                                      method,test,verbose)
  )
  names(params$target_mbs) <- as.character(targets)
  params$first_order_neighbors <- unique(
    setdiff(
      getAllMBNodes(params$target_mbs),targets
    )
  )
  f_o_list <- getFirstOrderNeighborMBs(params)
  params$first_order_mbs <- f_o_list$f_o_mbs
  params <- augmentMBAlgo(params)
  expect_snapshot_output(
    for (i in names(params$final_mb_list)){
      cat("MB(",i,"): ",paste(params$final_mb_list[[i]]$mb,collapse = " "),"\n",sep = "")
    }
  )
})

test_that("Markov Blanket Estimation",{
  for (algo in c("MMPC","SES")){
    cat("\nAlgorithm:",algo,"\n\n")
    for (i in 1:p){
      cat("\nNode",node_names[i],"\n")
      res <- getMB(i,asiadf,threshold = 0.01,method = algo,test = "testIndFisher",verbose = FALSE)
      mb <- node_names[res$mb]
      cat("# True Positives / # Total Est =",mean(mb %in% connections[[node_names[i]]]),"\n")
      cat("# True positives / # Total =",mean(connections[[node_names[i]]] %in% mb))
      expect_snapshot_output(mean(mb %in% connections[[node_names[i]]]))
      expect_snapshot_output(mean(connections[[node_names[i]]] %in% mb))
    }
  }
})

test_that("All Markov Blankets (multiple targets)",{
  expect_snapshot_output(res <- getAllMBs(targets = c(4,8),asiadf))
})

test_that("Obtaining Markov Blanket Nodes from List",{
  res <- getAllMBs(targets = c(4,8),asiadf,verbose = FALSE)
  node_list <- getAllMBNodes(res$mb_list)
  true_res <- list(
    "4"=c(2,3,6),
    "8"=c(5,6),
    "3"=c(4,5),
    "6"=c(2,4,7,8),
    "5"=c(3,8),
    "2"=c(1,4,6)
  )
  expect_setequal(node_list,unique(unlist(true_res)))
})


# Check Matrix Storage for MB ---------------------------------------------

test_that("Create adjacency matrix from MB List",{
  res <- getAllMBs(targets = c(4,8),asiadf,verbose = FALSE)
  node_list <- getAllMBNodes(res$mb_list)
  true_res <- list(
    "4"=c(2,3,6),
    "8"=c(5,6),
    "3"=c(4,5),
    "6"=c(2,4,7,8),
    "5"=c(3,8)
  )
  adj <- getEstInitialDAG(res$mb_list,p)
  for (i in names(true_res)){
    n <- as.numeric(i)
    expect_equal(which(adj[n,]==1),true_res[[i]])
  }
  
  remaining_nodes <- setdiff(1:p,node_list)
  for (i in remaining_nodes){
    for (j in remaining_nodes){
      expect_equal(adj[i,j],0)
    }
  }
})

# Misc. Tests -------------------------------------------------------------

test_that("Testing error and warning conditions",{
  # Error for invalid target index
  expect_error(getMB(8,asiadf),NA)
  expect_error(getMB(0,asiadf))
  expect_error(getMB(9,asiadf))
  expect_error(getMB(10,asiadf))
  expect_error(getMB(-1,asiadf))
  
  expect_error(getAllMBs(c(1,0,3),asiadf))
  expect_error(getAllMBs(c(1,8,9),asiadf))
  expect_error(getAllMBs(c(-1,1,3),asiadf))
  
  expect_warning(getAllMBs(c(1,4,5,5,7),asiadf))
  expect_warning(getAllMBs(c(1,4,5,7),asiadf),NA)
  
  # Invalid estimation algorithm
  expect_error(getMB(5,asiadf,method = "abc"))
  
  # Invalid testing threshold
  expect_error(getMB(5,asiadf,threshold = -0.1))
  expect_error(getMB(5,asiadf,threshold = 0))
  expect_error(getMB(5,asiadf,threshold = 1.4))
  
  # Invalid entries to construct reference graph
  expect_error(getEstInitialDAG(list(),1))
  targets <- c(3,5,6,8)
  mbList <- getAllMBs(targets,asiadf)$mb_list
  expect_error(getEstInitialDAG(mbList,0))
  expect_error(getEstInitialDAG(mbList,-1))
  targets <- c(3,5)
  mbList <- getAllMBs(targets,asiadf)
  expect_error(getEstInitialDAG(mbList$mb_list,6))
})

test_that("Misc. Tests for MB Functions",{
  targets <- c(1,3)
  target_mbs <- list(
    list(
      "mb"=c(3),
      "time"=0.1,
      "n_tests"=3
    ),
    list(
      "mb"=1,
      "time"=0.3,
      "n_tests"=10
    )
  )
  dataset <- asiadf
  threshold <- 0.01
  lmax <- 3
  method <- "MMPC"
  test <- "testIndFisher"
  verbose <- TRUE
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  params$target_mbs <- target_mbs
  constructFinalMBList(params)
  
  targets <- c(3,5,6,8)
  mbList <- getAllMBs(targets,asiadf)$mb_list
  expect_equal(getTotalMBTime(mbList),
               sum(unlist(lapply(mbList,
                                 function(x) {return(x$time)}))))
  expect_equal(getTotalMBTests(mbList),0)
  
  targets <- c(1,3,5,5,6)
  expect_warning(new_targets <- checkUniqueTargets(targets))
  expect_equal(new_targets,c(1,3,5,6))
})
