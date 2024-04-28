### A function to plot output from the learning algorithm
#' Compare the outputs from the estimated and true plots
#' @param local_output A list of the output from one of the local learning algorithms
#' @param true_dag A matrix containing the adjacency matrix for the true DAG
#' @export

plotOutput <- function(local_output,true_dag){
  # Setup
  nodes_used <- local_output$Nodes
  node_names <- colnames(true_dag)[nodes_used]
  
  # Estimated graph
  g_est <- bnlearn::empty.graph(node_names)
  bnlearn::amat(g_est) <- local_output$amat[nodes_used,nodes_used]
  
  # True DAG
  g_true <- bnlearn::empty.graph(node_names)
  bnlearn::amat(g_true) <- true_dag[nodes_used,nodes_used]
  
  # Plot them side-by-side (estimated | true)
  par(mfrow=c(1,2))
  bnlearn::graphviz.plot(g_est)
  bnlearn::graphviz.plot(g_true)
}
