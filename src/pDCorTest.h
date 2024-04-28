#ifndef PDCORTEST_H
#define PDCORTEST_H

#include<RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

using namespace Rcpp;

arma::vec matrix_to_string (arma::mat sep_vectors);

double get_G2_one(arma::vec A, arma::vec B, int tot_Au_size, int tot_Bu_size);

double get_G2_all(arma::vec A, arma::vec B, arma::vec S);

List condInttestdis(arma::mat df, const size_t &i,const size_t &j,
                    const arma::uvec &k, const double &signif_level);

#endif