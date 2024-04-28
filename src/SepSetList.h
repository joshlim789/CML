#ifndef SepSetList_H
#define SepSetList_H

#include "SharedFunctions.h"

class SepSetList {
public:
  SepSetList(NumericVector &neighbors);

  void changeList(size_t i,size_t j,
                  NumericVector sep=NumericVector::create(-1));

  NumericVector getSepSet(size_t i,size_t j);
  
  bool isPotentialVStruct(size_t i, size_t j,size_t k);
  bool isSepSetMember(size_t i,size_t j,size_t k); 
  
  void printSepSetList();
  List getS() { return S; };

private:
  size_t N; // Number of neighbors in the neighborhood
  NumericVector nodes; // Set of nodes being considered
  List S; // structure containing separating sets
};

#endif
