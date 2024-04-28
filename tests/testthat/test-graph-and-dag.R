# Setup -------------------------------------------------------------------

# Create an arbitrary graph
set.seed(123)
nodes <- 4
n_names <- letters[1:nodes]
adj <- matrix(sample(c(0,1),nodes^2,replace = TRUE),ncol = nodes)
diag(adj) <- 0
# Make a slight adjustment so we can check spousal recovery
adj[1,4] <- 0
adj[1,3] <- 1

amat <- matrix(c(
  0,1,0,0,1,
  0,0,1,0,0,
  0,0,0,1,1,
  0,0,0,0,0,
  0,1,0,0,0
),nrow = 5,ncol=5,byrow = TRUE)

amat_cycle <- matrix(c(
  0,1,0,0,1,
  0,0,1,0,0,
  0,0,0,1,1,
  0,0,0,0,0,
  0,1,0,0,0
),nrow = 5,ncol=5,byrow = TRUE)

library(bnlearn)
data("asiaDAG")
asia_nodes <- colnames(asiaDAG)
p <- ncol(asiaDAG)
asia_graph <- empty.graph(asia_nodes)
amat(asia_graph) <- asiaDAG
asia_cpdag <- cpdag(asia_graph)

# Test Graph Class --------------------------------------------------------

# In this section, we test the following functions:
# Graph: Constructor (3 args), Constructor (1 arg), getAmat, getNodeNames,
# parentheses operator, getAmatVal, setAmatVal, getAdjacent, 
# getNonAdjacent, getAmat(Row|Col)
# DAG: Constructor (4 args), getNeighbors, getNeighborsMultiTargets
test_that("Graph constructors, setters and getters",{
  
  # Constructors, Setters, Getters ------------------------------------------
  
  # Check to make sure that the adjacency matrix is properly saved
  expect_equal(check_amat_works(nodes,n_names,adj),adj)
  
  # Check to make sure that we are correctly setting the adj. mat
  expect_equal(check_set_amat(nodes,n_names,adj),adj)
  
  # Should give us a complete graph if we only supply the nodes
  complete_graph <- matrix(1,nrow = nodes,ncol = nodes)
  diag(complete_graph) <- 0
  # Check that the one parameter constructor works and creates a complete graph on the vertex set
  expect_equal(check_amat_works_onepar(nodes),complete_graph)
  
  # Check that the node names are correctly specified
  expect_equal(check_names_works(nodes,n_names,adj),n_names)
  
  # Check to make sure adj. mat. value "getter" is correct
  # Check also that row and col "getters" are correct
  # Check also that adjacent and nonadjacent nodes are correctly identified
  for (i in 1:nodes){
    expect_equal(check_amat_row_retrieval(nodes,n_names,adj,i-1),adj[i,])
    cat('\n')
    cat("Row",i,":",unlist(check_adjacent_non_adjacent(nodes,n_names,adj,i-1)['adj'],use.names = FALSE))
    expect_equal(unlist(check_adjacent_non_adjacent(nodes,n_names,adj,i-1)['adj'],use.names = FALSE),
                 sort(union(which(adj[i,]!=0)-1,which(adj[,i]!=0)-1)))
    expect_equal(unlist(check_adjacent_non_adjacent(nodes,n_names,adj,i-1)['nonadj'],use.names = FALSE),
                 sort(setdiff(intersect(which(adj[i,]==0)-1,which(adj[,i]==0)-1),i-1)))
    for (j in 1:nodes){
      expect_equal(check_amat_retrieval(nodes,n_names,adj,i-1,j-1),adj[i,j])
      expect_equal(check_amat_col_retrieval(nodes,n_names,adj,j-1),adj[,j])
    }
  }
  
  # Check to make sure adj. mat. "setter" works
  tmp <- rlang::duplicate(adj)
  adj_test <- rlang::duplicate(adj)
  expect_equal(adj_test,tmp)
  for (i in 1:nodes){
    for (j in 1:nodes){
      expect_equal(check_amat_retrieval_function(nodes,n_names,tmp,i-1,j-1),adj_test[i,j])
      val <- sample(2:6,1)
      adj_test[i,j] <- val
      expect_true(check_amat_retrieval_function(nodes,n_names,tmp,i-1,j-1)!=adj_test[i,j])
      expect_equal(check_amat_setval(nodes,n_names,tmp,i-1,j-1,val),adj_test[i,j])
      expect_equal(check_amat_setval_function(nodes,n_names,tmp,i-1,j-1,val),adj_test[i,j])
    }
  }
  
  # Check DAG constructor (1 arg)
  expect_equal(checkEmptyGraph(10),matrix(0,ncol = 10,nrow = 10))
  expect_snapshot(check_dag_object2(10))
})

test_that("Test Directed/Undirected",{
  adj <- matrix(c(
    0,0,
    1,0
  ),byrow = TRUE,nrow = 2)
  expect_equal(check_directed_undirected(2,letters[1:2],adj,0,1),
               list("directed"=FALSE,"undirected"=FALSE))
  expect_equal(check_directed_undirected(2,letters[1:2],adj,1,0),
               list("directed"=TRUE,"undirected"=FALSE))
  adj[1,2] <- 1
  expect_equal(check_directed_undirected(2,letters[1:2],adj,0,1),
               list("directed"=FALSE,"undirected"=TRUE))
  expect_equal(check_directed_undirected(2,letters[1:2],adj,1,0),
               list("directed"=FALSE,"undirected"=TRUE))
  
  expect_equal(check_sizes(2,letters[1:2],adj),
               list("ncol"=2,"nrow"=2))
  # Values are based on matrix
  expect_equal(check_sizes(20,letters[1:20],amat(asia_cpdag)),
               list("ncol"=8,"nrow"=8))
})

test_that("Test warnings",{
  
  # Fewer nodes specified than columns in matrix
  expect_warning(expect_warning(check_amat_works(1,paste0("V",1:5),amat)))
})


# Test Graph and DAG using `asia` data ------------------------------------

test_that("Testing Graph and DAG classes using asia data",{
  # Check Neighbors Retrieval -----------------------------------------------
  
  # Neighbor of "asia" should be "tub"
  target <- which(asia_nodes=="asia")-1
  result <- which(asia_nodes=="tub")-1
  expect_equal(check_neighbors_retrieval(p,asia_nodes,asiaDAG,target),result)
  expect_equal(check_neighbors_retrieval_multi(p,asia_nodes,asiaDAG,c(5,7),FALSE),c(1,3,4,6))
  expect_snapshot(check_neighbors_retrieval(p,asia_nodes,asiaDAG,5,TRUE))
  expect_warning(expect_warning(check_neighbors_retrieval(3,asia_nodes,asiaDAG,target)))
  
  expect_snapshot(res <- check_neighbors_retrieval_multi(p,asia_nodes,asiaDAG,c(0,1,2),TRUE))
  expect_equal(res,c(3,4,5))
  
})

# Check errors and warnings -----------------------------------------------

test_that("Check errors",{
  # different numbers of rows and columns
  expect_error(check_amat_works(5,paste0("V",1:5),matrix(0,nrow = 5,ncol = 4)))
  
  # Index for getNeighbors (DAG) is invalid
  expect_error(check_neighbors_retrieval(p,asia_nodes,asiaDAG,p))
  expect_error(check_neighbors_retrieval(p,asia_nodes,asiaDAG,-3))
  expect_error(check_neighbors_retrieval(p,asia_nodes,asiaDAG,p+1))
  expect_error(check_neighbors_retrieval(p,asia_nodes,asiaDAG,p-1),NA)
  
  # Index for getAdjacent (Graph) is invalid
  expect_error(check_adjacent_non_adjacent(p,asia_nodes,asiaDAG,p))
  expect_error(check_adjacent_non_adjacent(p,asia_nodes,asiaDAG,-2))
  expect_error(check_adjacent_non_adjacent(p,asia_nodes,asiaDAG,p+1))
  expect_error(check_adjacent_non_adjacent(p,asia_nodes,asiaDAG,p-1),NA)
  
  # Index for getAmatVal is invalid
  n_names <- colnames(asiaDAG)
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,p,0))
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,0,p))
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,p+1,0))
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,0,p+1))
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,p-1,0),NA)
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,0,p-1),NA)
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,-2,0))
  expect_error(check_amat_retrieval_function(p,n_names,asiaDAG,0,-1))
  
  # Index for getAmat(Col|Row) is invalid
  expect_error(check_amat_row_retrieval(p,n_names,asiaDAG,p))
  expect_error(check_amat_row_retrieval(p,n_names,asiaDAG,p-1),NA)
  expect_error(check_amat_row_retrieval(p,n_names,asiaDAG,p+1))
  expect_error(check_amat_row_retrieval(p,n_names,asiaDAG,-1))
  expect_error(check_amat_col_retrieval(p,n_names,asiaDAG,p))
  expect_error(check_amat_col_retrieval(p,n_names,asiaDAG,p-1),NA)
  expect_error(check_amat_col_retrieval(p,n_names,asiaDAG,p+1))
  expect_error(check_amat_col_retrieval(p,n_names,asiaDAG,-1))
  
  # Index for getNonAdjacent (Graph) is invalid
  expect_error(check_non_adjacent_solo(p,asia_nodes,asiaDAG,p))
  expect_error(check_non_adjacent_solo(p,asia_nodes,asiaDAG,-1))
  expect_error(check_non_adjacent_solo(p,asia_nodes,asiaDAG,p+1))
  expect_error(check_non_adjacent_solo(p,asia_nodes,asiaDAG,p-1),NA)
})

# Check Adjacency Detection -----------------------------------------------

test_that("Check adjacency in graphs",{
  expect_false(checkIfAdjacent(p,asia_nodes,asiaDAG,
                               which(asia_nodes=="asia")-1,
                               which(asia_nodes=="dysp")-1))
  expect_true(checkIfAdjacent(p,asia_nodes,asiaDAG,
                              which(asia_nodes=="asia")-1,
                              which(asia_nodes=="tub")-1))
  expect_false(checkIfAdjacent(p,asia_nodes,asiaDAG,
                               which(asia_nodes=="bronc")-1,
                               which(asia_nodes=="lung")-1))
  expect_true(checkIfAdjacent(p,asia_nodes,asiaDAG,
                              which(asia_nodes=="bronc")-1,
                              which(asia_nodes=="smoke")-1))
  
})

# Ancestry and Acyclicity -------------------------------------------------

test_that("Ancestry and Acyclicity",{
  # Check acyclicity --------------------------------------------------------
  # No cycles in graph `asia`
  expect_true(checkAcyclicity(p,asia_nodes,asiaDAG))
  
  # This graph has at least one cycle -> *not* acyclic
  g <- empty.graph(LETTERS[1:5])
  expect_error(amat(g) <- amat_cycle)
  expect_false(checkAcyclicity(5,LETTERS[1:5],amat_cycle))
  
  # Empty graph is acyclic
  expect_true(checkAcyclicity(0,asia_nodes,matrix(nrow = 0,ncol = 0)))
  
  
  # Check Ancestry ----------------------------------------------------------
  
  checkIsAncestor(p,asia_nodes,asiaDAG,7,0,TRUE)
  for (i in 1:p){
    for (j in 1:p){
      if (i!=j){
        expect_equal(checkIsAncestor(p,asia_nodes,asiaDAG,i-1,j-1),
                     asia_nodes[j] %in% bnlearn::ancestors(asia_graph,asia_nodes[i]))
        expect_equal(checkIsAncestor(p,asia_nodes,asiaDAG,j-1,i-1),
                     asia_nodes[i] %in% bnlearn::ancestors(asia_graph,asia_nodes[j]))
      } else {
        expect_warning(res <- checkIsAncestor(p,asia_nodes,asiaDAG,i-1,j-1),NA)
        expect_false(res)
      }
    }
  }
})

test_that("Test neighborhood recovery of Graph node",{
  # Check neighborhood recovery (DAG) -------------------------------------------------------------------
  
  # Test DAG Neighborhood identification
  # Node either
  # parents: tub (1), lung (3)
  # children: xray (6), dysp (7)
  # spouses: bronc (4)
  expect_equal(checkNeighborhoodId(p,asia_nodes,asiaDAG,5),
               list(
                 "parents"=c(1,3),
                 "children"=c(6,7),
                 "neighborhood"=c(1,3,4,6,7)
               )) 
  
  # Check to make sure neighbor detection functions work
  # Returns the neighbors of node 3, as well as the neighbors of 0 and 2, excluding those nodes even
  # though they are neighbors
  expect_equal(check_dag_object(nodes,n_names,adj),list("OneNeighbor"=c(0,1,2),"TwoNeighbors"=c(1,3)))
  expect_snapshot(check_dag_object(nodes,n_names,adj,TRUE))
})

# DAG: inNeighborhood
test_that("Testing inNeighborhood function",{
  suppressWarnings(library(dplyr))
  true_amat <- matrix(c(
    0,0,0,0,0,0,
    1,0,0,0,0,0,
    1,1,0,0,0,0,
    0,0,0,0,0,1,
    0,0,0,0,0,1,
    0,0,1,0,0,0
  ),byrow = TRUE,ncol = 6)
  correct_responses <- tibble::tibble(
    "i"=rep(0:5,each=6),
    "j"=rep(0:5,6),
    "result"=c(
      TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,
      TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,
      TRUE,TRUE,TRUE,FALSE,FALSE,TRUE,
      FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,
      FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,
      FALSE,FALSE,TRUE,TRUE,TRUE,TRUE
    )
  )
  nodes <- letters[1:6]
  p <- 6
  for (i in 0:5){
    for (j in setdiff(0:5,i)){
      true_val <- correct_responses %>% 
        filter(i==!!i) %>% filter(j==!!j) %>% 
        select(result) %>% unlist()
      names(true_val) <- NULL
      cat("i =",i,"|","j =",j,"| ")
      cat(checkInNeighborhood(p,nodes,true_amat,i,j),"|",
          true_val,
          "\n")
      expect_equal(checkInNeighborhood(p,nodes,true_amat,i,j),true_val)
    }
  }
  
  for (k in 0:5){
    expect_true(checkInNeighborhood(p,nodes,true_amat,k,k))
  }
})

test_that("Discriminating paths identified",{
  # Simple example
  p <- 5
  adj <- matrix(c(
    0,2,0,0,0,
    1,0,2,0,2,
    0,1,0,2,2,
    0,0,2,0,1,
    0,3,3,1,0
  ),ncol = p,byrow = TRUE)
  expect_equal(check_disc_path(p,letters[1:p],adj,2,3,4),-1)
  
  # Make node 2 a collider 
  adj[3,2] <- 2
  expect_equal(check_disc_path(p,letters[1:p],adj,2,3,4),0:4)
  
  # Add an edge from a to e (should return no path)
  adj[1,5] <- 2
  adj[5,1] <- 3
  expect_equal(check_disc_path(p,letters[1:p],adj,2,3,4),-1)
  
  # More complicated example
  p <- 9
  adj2 <- matrix(c(
    0,2,0,0,2,0,0,0,0,
    2,0,2,0,2,0,0,0,0,
    0,2,0,2,2,2,0,0,0,
    0,0,2,0,2,0,0,0,0,
    3,3,3,2,0,3,3,3,0,
    0,0,2,0,2,0,1,1,0,
    0,0,0,0,2,2,0,3,0,
    0,0,0,0,2,1,2,0,2,
    0,0,0,0,0,0,0,2,0
  ),ncol = p,byrow = TRUE)
  expect_equal(check_disc_path(p,letters[1:p],adj2,2,3,4),-1)
  
  # Make nodes 7 and 8 colliders
  adj2[6,7] <- 2
  adj2[7,8] <- 2
  expect_equal(check_disc_path(p,letters[1:p],adj2,2,3,4),c(8,7,6,5,2,3,4))
  
  # Change last node to ensure it still works
  adj2[8,9] <- 1
  expect_equal(check_disc_path(p,letters[1:p],adj2,2,3,4),c(8,7,6,5,2,3,4))
  
  # Remove last collider
  adj2[9,8] <- 1
  expect_equal(check_disc_path(p,letters[1:p],adj2,2,3,4),-1)
})

test_that("Uncovered p.d. paths identified",{
  # Simple example
  p <- 5
  adj <- matrix(c(
    0,1,0,1,0,
    1,0,2,0,0,
    0,1,0,2,0,
    1,0,3,0,1,
    0,0,0,1,0
  ),ncol = p,byrow = TRUE)
  expect_equal(check_upd_path(p,letters[1:p],adj,0,1,4),0:4)
  expect_equal(check_upd_path(p,letters[1:p],adj,1,0,3),c(1,0,3))
  
  # Remove uncovered condition from the graph. Should return empty vector.
  adj[5,3] <- 2
  adj[3,5] <- 3
  expect_equal(check_upd_path(p,letters[1:p],adj,0,1,4),numeric(0))
  
  # Longer example
  p <- 6
  adj <- matrix(c(
    0,1,0,0,0,0,
    1,0,1,0,0,0,
    0,1,0,1,0,0,
    0,0,1,0,1,1,
    0,0,0,1,0,1,
    0,0,0,0,1,1
  ),nrow = p,byrow = TRUE)
  expect_equal(check_upd_path(p,letters[1:p],adj,0,1,5),numeric(0))
  
  # This path is covered and should return false
  adj <- matrix(c(
    0,1,0,0,0,
    0,0,0,1,0,
    0,0,0,0,0,
    1,0,1,0,1,
    0,0,0,0,0
  ),byrow = TRUE,nrow = 5)
  p <- 5
  expect_error(test_checkWronglyCovered(p,letters[1:p],adj,0:4))
  
  # This path is potentially directed and should return c(0,1,2)
  p <- 3
  adj <- matrix(c(
    0,1,0,
    3,0,2,
    0,1,0
  ),nrow = p,byrow = TRUE)
  expect_snapshot(check_upd_path(p,letters[1:p],adj,0,1,2))
  adj[2,1] <- 2
  expect_equal(check_upd_path(p,letters[1:p],adj,0,1,2),numeric(0))
})

test_that("Test non-uncovered p.d. path",{
  p <- 3
  adj <- matrix(c(
    0,1,0,
    2,0,2,
    0,1,0
  ),nrow = p,byrow = TRUE)
  
  expect_equal(check_upd_path(p,letters[1:p],adj,0,1,2),numeric(0))
})

# Check PDAG class --------------------------------------------------------

test_that("Test PDAG class",{
  expect_snapshot(check_pdag_object2(8))
})

test_that("Test PDAG Multiple Neighbors",{
  expect_snapshot(res <- check_pdag_object(8,asia_nodes,amat(asia_cpdag),TRUE))
  expect_equal(res,
               list(
                 "OneNeighbor"=c(1,2,5),
                 "TwoNeighbors"=c(1,3,4,5)
               )
  )
})

test_that("Test PDAG in Neighborhood function",{
  expect_equal(check_pdag_neighbors_retrieval(8,asia_nodes,amat(asia_cpdag),4),
               c(2,5,7))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),3,2))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),4,5))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),2,3))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),5,4))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),5,5))
  
  # Here, we see why we need the PDAG class. In the CPDAG, we have 
  # lung - smoke - bronc
  # The DAG class will mistakenly classify lung and bronc as being in the
  # same neighborhood, but the PDAG will correctly identify that they are
  # not in the same neighborhood.
  expect_false(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),3,4))
  expect_true(checkInNeighborhood(8,asia_nodes,amat(asia_cpdag),3,4))
  expect_true(check_pdag_inNeighborhood(8,asia_nodes,amat(asia_cpdag),0,1)) 
})


