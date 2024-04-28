# Graph constructors, setters and getters

    Code
      check_dag_object2(10)
    Output
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0

# Testing Graph and DAG classes using asia data

    Code
      check_neighbors_retrieval(p, asia_nodes, asiaDAG, 5, TRUE)
    Output
      FUNCTION DAG::getNeighbors. Node 5
      Call from DAG::getNeighbors. Node 1 is a parent.
      Call from DAG::getNeighbors. Node 3 is a parent.
      Call from DAG::getNeighbors. Node 6 is a child.
      Call from DAG::getNeighbors. Node 7 is a child.
      Call from DAG::getNeighbors. We are evaluating the following child: 6
      Call from DAG::getNeighbors. We are evaluating the following child: 7
      Call from DAG::getNeighbors. Node 4 is a potential spouse of node 5.
      Neighbors of node 5: 1, 3, 4, 6, 7
      
      [1] 1 3 4 6 7

---

    Code
      res <- check_neighbors_retrieval_multi(p, asia_nodes, asiaDAG, c(0, 1, 2), TRUE)
    Output
      Target: 0
      FUNCTION DAG::getNeighbors. Node 0
      Call from DAG::getNeighbors. Node 1 is a child.
      Call from DAG::getNeighbors. We are evaluating the following child: 1
      Neighbors of node 0: 1
      
      Target: 1
      FUNCTION DAG::getNeighbors. Node 1
      Call from DAG::getNeighbors. Node 0 is a parent.
      Call from DAG::getNeighbors. Node 5 is a child.
      Call from DAG::getNeighbors. We are evaluating the following child: 5
      Call from DAG::getNeighbors. Node 3 is a potential spouse of node 1.
      Neighbors of node 1: 0, 3, 5
      
      Target: 2
      FUNCTION DAG::getNeighbors. Node 2
      Call from DAG::getNeighbors. Node 3 is a child.
      Call from DAG::getNeighbors. Node 4 is a child.
      Call from DAG::getNeighbors. We are evaluating the following child: 3
      Call from DAG::getNeighbors. We are evaluating the following child: 4
      Neighbors of node 2: 3, 4
      
      Total Neighborhood:
      3, 4, 5

# Test neighborhood recovery of Graph node

    Code
      check_dag_object(nodes, n_names, adj, TRUE)
    Output
      Adjacency Matrix:
      0 0 1 0
      0 0 0 0
      0 1 0 1
      1 1 1 0
      The neighbors of node 3 are FUNCTION DAG::getNeighbors. Node 3
      Call from DAG::getNeighbors. Node 0 is a child.
      Call from DAG::getNeighbors. Node 1 is a child.
      Call from DAG::getNeighbors. Node 2 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 0
      Call from DAG::getNeighbors. We are evaluating the following child: 1
      Call from DAG::getNeighbors. Node 2 is a potential spouse of node 3.
      Neighbors of node 3: 0, 1, 2
      
      0 1 2
      The neighbors of nodes 0 2 are Target: 0
      FUNCTION DAG::getNeighbors. Node 0
      Call from DAG::getNeighbors. Node 2 is a child.
      Call from DAG::getNeighbors. Node 3 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 2
      Call from DAG::getNeighbors. Node 3 is a potential spouse of node 0.
      Neighbors of node 0: 2, 3
      
      Target: 2
      FUNCTION DAG::getNeighbors. Node 2
      Call from DAG::getNeighbors. Node 0 is a parent.
      Call from DAG::getNeighbors. Node 1 is a child.
      Call from DAG::getNeighbors. Node 3 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 1
      Call from DAG::getNeighbors. Node 3 is a potential spouse of node 2.
      Neighbors of node 2: 0, 1, 3
      
      Total Neighborhood:
      1, 3
      1 3
      FUNCTION DAG::getNeighbors. Node 3
      Call from DAG::getNeighbors. Node 0 is a child.
      Call from DAG::getNeighbors. Node 1 is a child.
      Call from DAG::getNeighbors. Node 2 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 0
      Call from DAG::getNeighbors. We are evaluating the following child: 1
      Call from DAG::getNeighbors. Node 2 is a potential spouse of node 3.
      Neighbors of node 3: 0, 1, 2
      
      Target: 0
      FUNCTION DAG::getNeighbors. Node 0
      Call from DAG::getNeighbors. Node 2 is a child.
      Call from DAG::getNeighbors. Node 3 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 2
      Call from DAG::getNeighbors. Node 3 is a potential spouse of node 0.
      Neighbors of node 0: 2, 3
      
      Target: 2
      FUNCTION DAG::getNeighbors. Node 2
      Call from DAG::getNeighbors. Node 0 is a parent.
      Call from DAG::getNeighbors. Node 1 is a child.
      Call from DAG::getNeighbors. Node 3 is a parent.
      Call from DAG::getNeighbors. We are evaluating the following child: 1
      Call from DAG::getNeighbors. Node 3 is a potential spouse of node 2.
      Neighbors of node 2: 0, 1, 3
      
      Total Neighborhood:
      1, 3
      $OneNeighbor
      [1] 0 1 2
      
      $TwoNeighbors
      [1] 1 3
      

# Uncovered p.d. paths identified

    Code
      check_upd_path(p, letters[1:p], adj, 0, 1, 2)
    Output
      Inputted values already form an uncovered p.d. path
      [1] 0 1 2

# Test PDAG class

    Code
      check_pdag_object2(8)
    Output
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0

# Test PDAG Multiple Neighbors

    Code
      res <- check_pdag_object(8, asia_nodes, amat(asia_cpdag), TRUE)
    Output
      Adjacency Matrix:
      0 1 0 0 0 0 0 0
      1 0 0 0 0 1 0 0
      0 0 0 1 1 0 0 0
      0 0 1 0 0 1 0 0
      0 0 1 0 0 0 0 1
      0 0 0 0 0 0 1 1
      0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0
      The neighbors of node 3 are FUNCTION PDAG::getNeighbors. Node 3
      Call from PDAG::getNeighbors. Node 2 is a neighbor (undirected).
      Call from PDAG::getNeighbors. Node 5 is a child.
      Call from PDAG::getNeighbors. We are evaluating the following child: 5
      Call from PDAG::getNeighbors. Node 1 is a spouse of node 3.
      Neighbors of node 3: 1, 2, 5
      
      1 2 5
      The neighbors of nodes 0 2 7 are Target: 0
      FUNCTION PDAG::getNeighbors. Node 0
      Call from PDAG::getNeighbors. Node 1 is a neighbor (undirected).
      Neighbors of node 0: 1
      
      Target: 2
      FUNCTION PDAG::getNeighbors. Node 2
      Call from PDAG::getNeighbors. Node 3 is a neighbor (undirected).
      Call from PDAG::getNeighbors. Node 4 is a neighbor (undirected).
      Neighbors of node 2: 3, 4
      
      Target: 7
      FUNCTION PDAG::getNeighbors. Node 7
      Call from PDAG::getNeighbors. Node 4 is a parent.
      Call from PDAG::getNeighbors. Node 5 is a parent.
      Neighbors of node 7: 4, 5
      
      Total Neighborhood:
      1, 3, 4, 5
      1 3 4 5
      FUNCTION PDAG::getNeighbors. Node 3
      Call from PDAG::getNeighbors. Node 2 is a neighbor (undirected).
      Call from PDAG::getNeighbors. Node 5 is a child.
      Call from PDAG::getNeighbors. We are evaluating the following child: 5
      Call from PDAG::getNeighbors. Node 1 is a spouse of node 3.
      Neighbors of node 3: 1, 2, 5
      
      Target: 0
      FUNCTION PDAG::getNeighbors. Node 0
      Call from PDAG::getNeighbors. Node 1 is a neighbor (undirected).
      Neighbors of node 0: 1
      
      Target: 2
      FUNCTION PDAG::getNeighbors. Node 2
      Call from PDAG::getNeighbors. Node 3 is a neighbor (undirected).
      Call from PDAG::getNeighbors. Node 4 is a neighbor (undirected).
      Neighbors of node 2: 3, 4
      
      Target: 7
      FUNCTION PDAG::getNeighbors. Node 7
      Call from PDAG::getNeighbors. Node 4 is a parent.
      Call from PDAG::getNeighbors. Node 5 is a parent.
      Neighbors of node 7: 4, 5
      
      Total Neighborhood:
      1, 3, 4, 5

