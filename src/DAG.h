#ifndef DAG_H
#define DAG_H

#include "Graph.h"
#include <algorithm>

class DAG : public Graph {
public:
  // Need to make a warning if there is a cycle or any undirected edges when constructing
  // Need to make a warning (or stop) if there are adj. mat entries not equal to 1 or 0
  DAG(size_t nodes,bool verbose=false); // tested
  DAG(size_t nodes,StringVector node_names,
      NumericMatrix adj,bool verbose=false); // tested

  bool isAcyclic(); // tested
  
  // Obtain the neighbors of a (multiple) target node(s)
  // where a neighbor is either adjacent or a spouse
  NumericVector getParents(const size_t &i); // tested
  NumericVector getChildren(const size_t &i); // tested
  NumericVector getNeighbors(const size_t &i,bool verbose=false); //tested
  NumericVector getNeighborsMultiTargets(const NumericVector &targets,
                                         bool verbose); // tested
  
  bool inNeighborhood(const size_t &i,const size_t &j); // tested
  
  bool isAncestor(const size_t &desc,const size_t &anc); // tested
};

#endif
