# Single Target Node Estimation -------------------------------------------

#' Estimate Markov Blanket of Target Node
#' 
#' `getMB()` applies a Markov Blanket estimation algorithm to a target node
#' 
#' @param target An integer identifying the target node whose MB we are attempting to recover
#' @param dataset A dataset used for estimation
#' @param threshold A positive real number designating the threshold for conditional independence tests used in the algorithm
#' @param method The name of the Markov Blanket estimation algorithm to use. Valid algorithms include "MMPC", "SES", and "gOMP".
#' @param test The conditional independence test to use in the algorithm. Default is the Fisher Independence test.
#' @param verbose Whether to provide detailed output
#' 
#' @returns A list containing a vector of the target node's estimated Markov Blanket,
#' the elapsed time for completing the estimation procedure, and the number of conditional
#' independence tests used by the algorithm 
#' @export
getMB <- function(target,dataset,threshold=0.01,lmax=3,
                  method="MMPC",test="testIndFisher",
                  verbose=FALSE){
  if (verbose) {
    mbEstMessage(method,test,threshold)
  }
  
  # Validate inputted parameters
  validateThreshold(threshold)
  validateMethod(method)
  validateTarget(target,ncol(dataset))
  
  
  
  if (method=="MMPC"){
    
    mb <- MXM::MMPC(target=target,dataset=dataset,
                    threshold=threshold,test=test,
                    max_k=lmax,hash = FALSE,
                    backward = FALSE)
    
    mb_vars <- mb@selectedVars
    n_tests <- mb@n.tests # Must change if we include backward phase
    runtime <- mb@runtime[3]
  } else if (method=="SES"){
    mb <- MXM::SES(target=target,dataset=dataset,
                   threshold=threshold,test=test,
                   max_k=lmax,hash = TRUE,
                   backward = FALSE)
    mb_vars <- mb@selectedVars
    n_tests <- mb@n.tests
    runtime <- mb@runtime[3]
  } else if (method=="pc.sel"){
    mb <- MXM::pc.sel(target=dataset[,target],
                      dataset=dataset[,-target],
                      threshold=threshold)
    mb_vars <- mb$vars
    n_tests <- sum(mb$n.tests)
    runtime <- mb$runtime[3]
  }
  
  if (verbose) {
    cat("Results for target",
        target,":",
        paste(mb@selectedVars,collapse = ","),"\n")
  }
  
  return(list("mb"=sort(mb_vars),
              "time"=runtime,
              "n_tests"=n_tests))
}

# Convert MB Information --------------------------------------------------

# Takes input returned by the `getMB` function and returns only a vector of (unique) nodes
# included in the list
getAllMBNodes <- function(mbList){
  nodes <- unique(
    unlist(
      sapply(mbList,
             function(x) return(x[["mb"]])
      )
    )
  )
  names(nodes) <- NULL
  return(nodes)
}

# Obtain the total time taken for estimating the Markov Blankets as stored in the
# value returned by the `getMB` function
getTotalMBTime <- function(mbList){
  return(sum(sapply(mbList,function(mb){
    return(mb[["time"]])
  })))
}

# Obtain the total time taken for estimating the Markov Blankets as stored in the
# value returned by the `getMB` function
getTotalMBTests <- function(mbList){
  return(sum(sapply(mbList,function(mb){
    return(mb[["n_tests"]])
  })))
}

# Helper Functions (Mult. MBs) --------------------------------------------

# Removes duplicate target nodes
checkUniqueTargets <- function(targets){
  if (any(duplicated(targets))){
    warning("Duplicate targets inputted. Removing duplicates.")
    targets <- unique(targets)
  }
  return(targets)
}

# Creates a single list for relevant MB recovery parameters
createParamList <- function(targets,dataset,threshold,lmax,method,test,verbose){
  return(list(
    "targets"=targets,
    "data"=dataset,
    "threshold"=threshold,
    "lmax"=lmax,
    "method"=method,
    "test"=test,
    "verbose"=verbose
  ))
}

#' This function is a helper for `constructFinalMBList` that obtains 
#' first-order neighbor Markov Blankets and the number of tests required to
#' obtain all the neighborhoods.
getFirstOrderNeighborMBs <- function(params){
  # Run `getMB` for each first-order neighbor of any target node
  first_order_mbs <- lapply(params$first_order_neighbors,
                            function(t) 
                              getMB(t,params$data,
                                    params$threshold,
                                    params$lmax,
                                    params$method,
                                    params$test,
                                    params$verbose))
  names(first_order_mbs) <- as.character(params$first_order_neighbors)
  # Number of tests required for previous step
  second_order_nbrs_tests <- sum(unlist(
    lapply(first_order_mbs,
           function(x) return(x[["n_tests"]]))
  ))
  return(list(
    "f_o_mbs"=first_order_mbs,
    "s_o_tests"=second_order_nbrs_tests
  ))
}

# This function provides us with the set of second-order neighbors of a
# target node, given a list with the target MBs and another list with 
# first-order neighbor MBs. Purpose of the function is to help identify spouses
# which is why there is the additional `pairs_checked` argument 
getSecondOrderNeighbors <- function(target, # integer of target node
                                    pc_set, # parents-children set of target
                                    target_mbs, # P-C sets of all targets
                                    first_order_mbs, # P-C sets of first-order neighbors
                                    pairs_checked){ # removes nodes which we have already checked as a spouse of target
  # The union of P-C sets of the parents and children of target
  second_order_neighbors <- unique(unlist(
    lapply(pc_set,function(x){
      if (as.character(x) %in% names(target_mbs)){
        return(target_mbs[[as.character(x)]][["mb"]])
      } else {
        return(first_order_mbs[[as.character(x)]][["mb"]])
      }
    })
  ))
  # To obtain second-order neighbors, remove target and its parents and children
  # from the set obtained in the previous step
  second_order_neighbors <- sort(setdiff(second_order_neighbors,
                                         c(target,pc_set)))
  # Remove any combinations of target and any of its second-order neighbors
  # which have already been checked for a spousal connection
  already_checked <- which(pairs_checked[target,]==1)
  second_order_neighbors <- setdiff(second_order_neighbors,already_checked)
  return(second_order_neighbors)
}


#' This is a helper function for `getAllMBs` to find all of the spouses
#' for algorithms such as MMPC and SES.
#' Any previously identified second-order neighbor could be a spouse of
#' a target node if they are conditionally dependent on the target node
#' given the P-C set
captureSpouses <- function(params){
  # Prepare the inputs for the conditional independence test
  C <- cor(params$data)
  n <- nrow(params$data)
  p <- ncol(params$data)
  params$spouses_num_tests <- 0
  params$spouses_added <- numeric(length = 0)
  params$spouse_mbs <- list()
  # Keep track of which pairs of nodes have been checked to avoid double checking
  pairs_checked <- matrix(0,nrow = p,ncol = p)
  
  # For each target, identify the P-C set and second-order nbrs
  for (target in params$targets){
    # All of the parent and children of target
    pc_set <- params$target_mbs[[as.character(target)]][["mb"]]
    second_order_neighbors <- getSecondOrderNeighbors(target,
                                                      pc_set,
                                                      params$target_mbs,
                                                      params$first_order_mbs,
                                                      pairs_checked)
    # Test conditional independence of target and second-order neighbor
    # given the P-C set. If there is dependence, then we have a spouse.
    if (length(second_order_neighbors>0)){
      lapply(second_order_neighbors,function(x){
        if (params$verbose){
          cat("Checking if node",x,"is a spouse of target",target,"...")
        }
        if (params$test == "testIndFisher")
        {
          test <- condIndTest(C,target-1,x-1,pc_set-1,n,params$threshold)
        }
        if (params$test == "gSquare")
        {
          test <- condInttestdis(params$data,target-1,x-1,pc_set-1,params$threshold)
        }
        
        params$spouses_num_tests <<- params$spouses_num_tests + 1
        pairs_checked[target,x] <<- pairs_checked[x,target] <<- 1
        if (!test$result){
          # We reject H_0, and conclude in favor of conditional dependence
          # Add x to the Markov Blanket set
          if (params$verbose){
            cat(" yes. Adding",x,"to MB of",target,". ")
          }
          params$target_mbs[[as.character(target)]][["mb"]] <<- sort(c(
            params$target_mbs[[as.character(target)]][["mb"]],x
          ))
          # Situation where x (the new spouse) is another target node
          if (x %in% params$targets){
            if (params$verbose){
              cat("Adding",target,"to MB of",
                  x,"(another target node).")
            }
            params$target_mbs[[as.character(x)]][["mb"]] <<- sort(c(
              params$target_mbs[[as.character(x)]][["mb"]],target
            ))
          } else if (as.character(x) %in% names(params$first_order_mbs)){
            # x is a first-order neighbor for another target
            if (params$verbose){
              cat("Adding",target,"to MB of",
                  x,"(first-order neighbor).")
            }
            params$first_order_mbs[[as.character(x)]][["mb"]] <<- sort(c(
              params$first_order_mbs[[as.character(x)]][["mb"]],target
            ))
          } else {
            # otherwise, x was previously identified as exclusively a second-order 
            # neighbor 
            if (params$verbose){
              cat(x,"is a newly discovered 1st-order neighbor",
                  "(was previously 2nd-order).")
            }
            # We have to track which spouses are newly added, because
            # we must estimate their Markov Blankets as well
            params$spouses_added <<- c(params$spouses_added,x)
            # Add target to MB set for node x in special spouse_mb list
            # Additional MB identification will take place later
            params$spouse_mbs[[as.character(x)]] <<- unique(c(
              target,params$first_order_mbs[[as.character(x)]]
            ))
          }
        } else { # Accept H_0
          if (params$verbose){
            cat(" no")
          }
        }
        if (params$verbose){
          cat("\n")
        }
      })
    }
  }
  return(params)
}

augmentMBAlgo <- function(params){
  if (params$method %in% c("MMPC","SES")){
    # Find spouses using an additional cond. indep. test
    params <- captureSpouses(params)
    if (length(params$spouses_added)>0){
      # These are nodes for which we have not yet estimated MB
      spouses_mb_list <- lapply(params$spouses_added,function(t){
        mb_list <- getMB(t,params$data,
                         params$threshold,
                         params$lmax,
                         params$method,
                         params$test,
                         params$verbose)
        if (params$verbose){
          cat("Adding target nodes to spouse's MB List:",
              paste(params$spouse_mbs[[as.character(t)]],collapse = ", "),
              "\n")
        }
        mb_list$mb <- sort(unique(c(mb_list$mb,
                                    params$spouse_mbs[[as.character(t)]])))
        return(mb_list)
      })
      names(spouses_mb_list) <- as.character(params$spouses_added)
      # Add spouses to first-order neighbors
      params$first_order_mbs <- c(params$first_order_mbs,spouses_mb_list)
    }
  }
  # Combine first-order MBs and second-order MBs in one list
  params$final_mb_list <- c(params$target_mbs,params$first_order_mbs)
  return(params)
}


# This function takes the results from `getMB` being run on all of the targets
# and does the following:
# 1. Obtains the Markov Blankets for each first-order neighbor
# 2a. Captures spouse variables if necessary
# 2b. Finds Markov Blankets for any newly identified first-order neighbors
# 3. Combines all MBs into one list and returns it along with all the tests and the total time

# param includes:
# targets,dataset,threshold,lmax,method,test,verbose
# AND the mbs of the targets
constructFinalMBList <- function(params){
  
  ### SETUP ###
  
  # Capture number of conditional independence tests for second-order neighbors
  second_order_nbrs_tests <- 0
  # Capture number of conditional independence tests for capturing spouses
  spouse_num_tests <- 0
  # A vector to identify only the first-order neighbors
  params$first_order_neighbors <- unique(
    setdiff(
      getAllMBNodes(params$target_mbs),params$targets
    )
  )
  # Number of tests for first-order neighbor identification
  first_order_nbrs_tests <- getTotalMBTests(params$target_mbs)
  
  ### MB RECOVERY FOR FIRST-ORDER NEIGHBORS ### 
  
  # Apply MB algorithm again to obtain MBs of first-order neighbors
  if (length(params$first_order_neighbors)>0){
    f_o_list <- getFirstOrderNeighborMBs(params)
    params$first_order_mbs <- f_o_list$f_o_mbs
    second_order_nbrs_tests <- f_o_list$s_o_tests
    # For certain algorithms, obtain spouses using additional independence test
    params <- augmentMBAlgo(params)
  } else {
    params$final_mb_list <- params$target_mbs
    names(params$final_mb_list) <- as.character(params$targets)
    second_order_nbrs_tests <- 0
    params$spouse_num_tests <- 0
  }
  mb_time <- sum(unlist(
    lapply(params$final_mb_list,function(x) return(x[["time"]]))
  ))
  return(list(
    "mb_list"=params$final_mb_list,
    "num_tests"=params$spouses_num_tests+first_order_nbrs_tests+second_order_nbrs_tests, # NEED TO FIX
    "mb_time"=getTotalMBTime(params$final_mb_list)))
}


# Multiple Target MB Recovery ---------------------------------------------

#' Estimate Markov Blankets of a vector of target nodes
#' 
#' `getAllMBs()` applies Markov Blanket algorithms to a vector of target nodes and
#' their first-order neighbors to obtain the full list of neighborhoods necessary to run the 
#' local FCI algorithm.
#' 
#' @param targets a vector of integers which will identify the target nodes of our algorithm
#' @inheritParams getMB
#' @export
getAllMBs <- function(targets,dataset,threshold=0.01,lmax=3,
                      method="MMPC",test="testIndFisher",
                      verbose=TRUE){
  start <- Sys.time()
  # Ensure target vector is without duplicates
  targets <- checkUniqueTargets(targets)
  params <- createParamList(targets,dataset,threshold,lmax,method,test,verbose)
  
  # Find the MBs for the target nodes
  params$target_mbs <- lapply(targets,
                              function(t) 
                                getMB(t,dataset,threshold,lmax,
                                      method,test,verbose)
  )
  names(params$target_mbs) <- as.character(targets)
  # Find the MBs for first-order neighbors and identify spouses 
  # (along with their neighborhoods if necessary)
  result <- constructFinalMBList(params)
  stop <- Sys.time()
  diff <- stop - start
  units(diff) <- "secs"
  result$time <- as.numeric(diff)
  
  return(result)
}


# MB Recovery Storage -----------------------------------------------------

#' Generate Markov Blanket Inclusion Matrix from List
#' 
#' `getEstInitialDAG()` prepares the estimated neighborhoods for use in our local algorithms by storing them
#' in an "inclusion matrix". This will be used in the Rcpp implementation as what determines neighborhoods.
#' It is a symmetric matrix where M[i,j] = M[j,i] = 1 if nodes i or j are identified to be in either one's neighborhood
#' 
#' @param mbList is a named list containing the estimated Markov Blankets for the targets and their first-order neighbors
#' @param p is the number of nodes in the graph
#' @param verbose 
getEstInitialDAG <- function(mbList,p,verbose=FALSE){
  if (verbose) {
    cat("Creating the reference DAG using Markov Blanket list.\n")
  }
  
  if (p <= 0){
    stop("Invalid network size p")
  }
  
  if (length(mbList)==0){
    stop("MB List is empty")
  }
  # Matrix to store neighborhood information
  adj <- matrix(0,nrow = p,ncol = p)
  all_nodes <- as.numeric(names(mbList))
  nodes_seq <- all_nodes
  lapply(1:length(nodes_seq),function(i){
    node <- nodes_seq[i]
    mb <- mbList[[as.character(node)]][["mb"]]
    if (length(mb)>0){
      sapply(mb,function(x){
        if (node > p | x > p){
          stop("Invalid index. The value for p is too small.\n")
        }
        # Add node and x to one another's neighborhood
        if (adj[node,x]==0){
          adj[node,x] <<- 1
          adj[x,node] <<- 1
        }
      })
      all_nodes <<- union(all_nodes,mb)
    }
  })
  if (verbose) {
    cat("Nodes being considered:",
        paste(sort(all_nodes),collapse = ","),
        "\n\n")
  }
  return(adj)
}
