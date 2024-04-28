#' CML Algorithm
#' 
#' `cml()` applies the CML algorithm to a dataset over 
#' certain target neighborhoods, which may be provided by the user 
#' through the true DAG or may be estimated by a 
#' Markov Blanket estimation algorithm 
#' 
#' @param data A dataframe or matrix containing network data
#' @param true_dag An optional parameter used primarily for simulations 
#' in order to obtain the Markov Blankets of certain target nodes
#' @param targets A numeric vector specifying the target nodes
#' @param node_names A string vector with the node names, useful for tracking output
#' @param lmax The maximum size of separating set considered in the algorithm. Default is 3
#' @param tol The significance level of our conditional independence tests. Default is 0.01
#' @param mb_tol The significance level of our Markov Blanket estimation algorithms. Default is 0.05
#' @param method Algorithm used for Markov Blanket estimation. Default is MMPC.
#' @param test The conditional independence test used for all algorithms.
#' @param verbose A boolean which determines whether or not to print a trace of the output.
#' 
#' @return A list containing various elements computed from or during the algorithm
#' including the estimated adjacency matrix, timing calculations, 
#' the number of conditional independence tests, 
#' a matrix providing Markov Blanket information, a list containing 
#' separating sets, and statistics about the original dataset
#' 
#' @export

cml <- function(data=NULL,true_dag=NULL,targets,
                node_names=NULL,lmax=3,tol=0.01,
                mb_tol=0.05,method="MMPC",
                test="testIndFisher",verbose = TRUE){
  if (lmax < 0){
    stop("Invalid lmax value")
  }
  # Create node names if they aren't given
  p <- ifelse(is.null(data),ncol(true_dag),ncol(data))
  if (is.null(node_names)){
    node_names <- paste0("V",0:(p-1))
  }
  # Find the sample means of each variable and the covariance matrix of the 
  # inputted dataset
  data_means <- NA
  data_cov <- NA
  if (!is.null(data)){
    
    if (is.data.frame(data)){
      data <- as.matrix(data)
    }
    # Store data statistics
    data_means <- colMeans(data)
    data_cov <- stats::cov(data)
    
    # Standardize the data (for only continuous data - Josh)
    if(test == "testIndFisher")
    {
      data <- scale(data)
    }
    else if (test == "gSquare")
    {
      data <- data - min(data)
    }
    
  }
  mb_num_tests <- 0
  mb_time_track <- NA
  if (is.null(true_dag)){

    
    # Find Markov Blankets (mbEst.R)
    mb_start <- Sys.time()
    result <- getAllMBs(targets,data,mb_tol,lmax,method,test,verbose)
    mb_end <- Sys.time()
    mb_diff <- mb_end - mb_start
    units(mb_diff) <- "secs"
    
    # Track the time needed to estimate MB's
    mb_time_track <- as.numeric(mb_diff)
    mbList <- result$mb_list
    
    # Store all of the nodes estimated to be needed (targets and first-order neighbors)
    # Subtract 1 for conversion from C++ numbering scheme
    nodes_interest <- as.numeric(names(mbList))-1
    mb_num_tests <- result$num_tests
    
    # Create adjacency matrix based on Markov Blankets (mbEst.R)
    true_dag <- getEstInitialDAG(mbList,p,verbose)
    # We are using a DAG with estimated Markov Blankets encoded
    estDAG <- TRUE
  } else {
    mbList <- list()
    nodes_interest <- seq(0,p-1)
    estDAG <- FALSE
  }
  
  # Convert any data.frame to a matrix
  if (is.data.frame(true_dag)){
    true_dag <- as.matrix(true_dag)
  }
  
  # To account for zero-indexing in C++
  cpp_targets <- targets-1
  if (verbose){
    cat("The node value for the C++ function is",
        paste(cpp_targets,collapse = ","),
        "\n")
  }
  if (is.null(data)){
    if (verbose){
      cat("Population Version:\n")
    }
    results <- popCML(true_dag,cpp_targets,nodes_interest,
                      node_names,lmax,verbose)
  } else {
    results <- sampleCML(true_dag,data,cpp_targets,nodes_interest,
                         node_names,lmax,tol,verbose,test,estDAG)
  }
  
  # We change the target to target - 1 in order to accommodate change to C++
  return(list(
    "amat"=results$G,
    "S"=results$S,
    "NumTests"=results$NumTests,
    "MBNumTests"=mb_num_tests,
    "RulesUsed"=results$RulesUsed,
    "Nodes"=results$allNodes+1, # to convert to R numbering
    "mbEstTime"=mb_time_track,
    "totalSkeletonTime"=results$totalSkeletonTime,
    "targetSkeletonTimes"=results$targetSkeletonTimes,
    "totalTime"=results$totalTime,
    "referenceDAG"=true_dag,
    "mbList"=mbList,
    "data_means"=data_means,
    "data_cov"=data_cov)
  )
}





