# Warning and Message Functions -------------------------------------------

# A function which provides information about the MB estimation procedure
mbEstMessage <- function(method,test,threshold){
  cat("Estimating Markov Blankets using\n",
      "Algorithm:",method,"\n",
      "Test:",test,"\n",
      "Tolerance:",threshold,"\n")
}
# Validates the input conditional independence test threshold
validateThreshold <- function(threshold){
  if (threshold<=0 | threshold > 1){
    stop("MB Estimation threshold is invalid. Threshold must be in (0,1]")
  }
}
# Validates the input MB estimation algorithm name
validateMethod <- function(method){
  if (!(method %in% c("MMPC","SES","gOMP","pc.sel","MMMB"))){
    stop("Invalid MB estimation algorithm")
  }
}
# Validates the input target
validateTarget <- function(target,p){
  if (!(target %in% seq(p))){
    stop(paste0("Invalid target index (t=",target,")"))
  }
}

# d-separation conversion function ----------------------------------------

my_dsep <- function(true_dag,x,y,z){
  tmp <- bnlearn::empty.graph(nodes=as.character(1:ncol(true_dag)))
  if (!is.null(colnames(true_dag))){
    colnames(true_dag) <- NULL
  }
  if (!is.null(rownames(true_dag))){
    rownames(true_dag) <- NULL
  }
  bnlearn::amat(tmp) <- true_dag
  
  if (nrow(z)==0){
    res <- as.numeric(bnlearn::dsep(tmp,as.character(x+1),as.character(y+1)))
  } else {
    res <- as.numeric(bnlearn::dsep(tmp,as.character(x+1),as.character(y+1),as.character(z[,1]+1)))
  }
  return(res)
}
