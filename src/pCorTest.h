#ifndef PCORTEST_H
#define PCORTEST_H

#include<RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

double getPartialCorrelation(arma::mat C,size_t i,size_t j,arma::uvec k); // tested

double logPart(double r); // implicitly tested

double fisherZ(double pc,size_t n,size_t k_size); // implicitly tested

List condIndTest(arma::mat &C,const size_t &i,const size_t &j,
                 const arma::uvec &k,const size_t &n,
                 const double &signif_level=0.05); // tested

List condIndTestPop(NumericMatrix G,const size_t &i,const size_t &j,
                    const arma::uvec &k); // tested

#endif