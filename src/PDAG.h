#ifndef PDAG_H
#define PDAG_H

#include "Graph.h"
#include <algorithm>

class PDAG : public Graph {
public:
  // Need to make a warning if there is a cycle or any undirected edges when constructing
  // Need to make a warning (or stop) if there are adj. mat entries not equal to 1 or 0
  PDAG(size_t nodes,bool verbose=false); 
  PDAG(size_t nodes,StringVector node_names,
        NumericMatrix adj,bool verbose=false); 
  
  // Obtain the neighbors of a (multiple) target node(s)
  // where a neighbor is either adjacent or a spouse
  NumericVector getNeighbors(const size_t &i,bool verbose=false);
  NumericVector getNeighborsMultiTargets(const NumericVector &targets,
                                         bool verbose); 
  
  bool inNeighborhood(const size_t &i,const size_t &j); 
  
  bool isAncestor(const size_t &desc,const size_t &anc); 
};

#endif
