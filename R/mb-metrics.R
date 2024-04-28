# Measurement Functions ----------------------------------------------------

getConnections <- function(g,target){
  # Get all target children or parents or undirected
  return(which(g[target,]==1 | g[,target]==1))
}

calcParentRecovery <- function(ref,est,target){
  # Get all the parent nodes in both graphs
  parent_ref <- which(ref[,target]==1 & ref[target,]!=1) 
  parent_est <- which(est[,target]==1 & est[target,]!=1) 
  
  # If a node is in both vectors, then it is a true positive
  # If it is in the reference but not in the estimated, then it is a false negative
  # If it is in the estimated but not the reference, then it is a false positive
  return(c(
    "tp"=length(intersect(parent_ref,parent_est)),
    "fn"=length(setdiff(parent_ref,parent_est)),
    "fp"=length(setdiff(parent_est,parent_ref))
  ))
}

calcChildRecovery <- function(ref,est,target){
  # Get all the child nodes in both graphs
  child_ref <- which(ref[target,]==1) 
  child_est <- which(est[target,]==1) 
  # If a node is in both vectors, then it is a true positive
  # If it is in the reference but not in the estimated, then it is a false negative
  # If it is in the estimated but not the reference, then it is a false positive
  return(c(
    "tp"=length(intersect(child_ref,child_est)),
    "fn"=length(setdiff(child_ref,child_est)),
    "fp"=length(setdiff(child_est,child_ref))
  ))
}

getSpouses <- function(g,children,target){
  
  return(
    sort(
      unique(
        unlist(
          lapply(children,function(child){
            # Find parents of the child that are not connected to target
            child_parents <- which(g[,child]==1 & g[child,]==0 & g[target,]==0 & g[,target]==0)
            return(setdiff(child_parents,target))
          }))
      )
    )
  )
}

calcSpouseRecovery <- function(ref,est,target){
  # Get all the child nodes in both graphs
  child_ref <- which(ref[target,]==1 & ref[,target]==0) 
  child_est <- which(est[target,]==1 & est[,target]==0) 
  
  spouses_ref <- getSpouses(ref,child_ref,target)
  spouses_est <- getSpouses(est,child_est,target)
  
  # If a node is in both vectors, then it is a true positive
  # If it is in the reference but not in the estimated, then it is a false negative
  # If it is in the estimated but not the reference, then it is a false positive
  return(c(
    "tp"=length(intersect(spouses_ref,spouses_est)),
    "fn"=length(setdiff(spouses_ref,spouses_est)),
    "fp"=length(setdiff(spouses_est,spouses_ref))
  ))
}



### Input the initial matrix from the MB estimation algorithm
# and determine which MB nodes were correctly identified
mbRecoveryMetricsList <- function(ref,est,targets){
  return(lapply(targets,function(target){
    # cat("Target:",target,"\n")
    # Get estimated MB nodes
    mb_nodes <- getConnections(est,target)
    # cat("Estimated Markov Blanket:",paste(mb_nodes,collapse = " "),"\n")
    children <- which(ref[target,]==1 & ref[,target]==0)
    # cat("True Children:",paste(children,collapse = " "),"\n")
    parents <- which(ref[,target]==1 & ref[target,]==0) 
    # cat("True Parents:",paste(parents,collapse = " "),"\n")
    spouses <- getSpouses(ref,children,target)
    # cat("True Spouses:",paste(spouses,collapse = " "),"\n")
    return(data.frame(
      "mb_children_fn"=sum(!(children %in% mb_nodes)),
      "mb_children_tp"=sum(children %in% mb_nodes),
      "mb_parents_fn"=sum(!(parents %in% mb_nodes)),
      "mb_parents_tp"=sum(parents %in% mb_nodes),
      "mb_spouses_fn"=sum(!(spouses %in% mb_nodes)),
      "mb_spouses_tp"=sum(spouses %in% mb_nodes),
      "mb_total_fp"=sum(!(mb_nodes %in% c(children,parents,spouses)))
    ))
  }))
}

mbRecoveryMetrics <- function(ref,est,targets){
  metrics_list <- mbRecoveryMetricsList(ref,est,targets)
  df <- as.data.frame(do.call(rbind,metrics_list))
  if (nrow(df)==1){
    return(df)
  } else {
    df <- apply(df,2,unlist)
    combined_results <- data.frame(t(colSums(df)))
    return(combined_results)
  }
}

spouseRecovery <- function(g,target){
  # First, obtain children
  children <- which(g[target,]==1 & g[,target]==0)
  # obtain reference spouses
  spouse <- getSpouses(g,children,target)
  return(spouse)
}

mbRecoveryTarget <- function(ref,est,target){
  # Obtain all children and parents from Reference and Target Graphs
  ref_nodes <- getConnections(ref,target)
  est_nodes <- getConnections(est,target)
  
  # Add spouse nodes from reference graph
  ref_nodes <- c(ref_nodes,spouseRecovery(ref,target))
  
  # Compare MB recovery
  return(
    c("mb_tp"=length(intersect(ref_nodes,est_nodes)),
      "mb_fn"=length(setdiff(ref_nodes,est_nodes)),
      "mb_fp"=length(setdiff(est_nodes,ref_nodes)))
  )
}

mbRecovery <- function(ref,est,targets){
  recovery_list <- lapply(targets,function(t) mbRecoveryTarget(ref,est,t))
  recovery_vec <- Reduce("+",recovery_list)
  return(data.frame(t(recovery_vec)))
}


