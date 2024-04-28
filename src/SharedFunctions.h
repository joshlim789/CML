#ifndef SHAREDFUNCTIONS_H
#define SHAREDFUNCTIONS_H

#include<RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

NumericMatrix combn_cpp(NumericVector x,size_t l); // tested

void printVecElements(NumericVector v,StringVector names, 
                      String opening="",String closing="");

void printVecElementsNoNames(NumericVector v,String opening="",
                             String closing="",String sep=" ");

void printMatrix(NumericMatrix m);

bool isMember(NumericVector x,const size_t &i); // tested

void makeNodeNames(int p,StringVector &node_names);
#endif