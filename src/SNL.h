#ifndef SNL_H
#define SNL_H

#include "ConstrainedAlgo.h"
// for tracking time
using namespace std::chrono;

class SNL : public ConstrainedAlgo {
public:
  SNL(NumericMatrix true_dag,arma::mat df,
           NumericVector targets,
           NumericVector nodes_interest,
           StringVector names,
           int lmax,
           double signif_level,
           bool verbose,
           std::string test="testIndFisher",
           bool estDAG=false); // tested
  
  SNL(NumericMatrix true_dag, // population version
           NumericVector targets,
           NumericVector nodes_interest,
           StringVector names,
           int lmax,
           bool verbose); // tested
  
  void getSkeletonTarget(const size_t &t); // tested
  
  using ConstrainedAlgo::getVStructures; // tested
  void rule1(bool &no_changes); // tested
  void rule2(bool &no_changes); // tested
  void rule3(bool &no_changes); // tested
  void rule4(bool &no_changes); // tested
  void meeksRules();
  
  void convertFinalGraph(); // tested
  
  void run(); // tested
  
  // Accessors
  std::vector<double> getTargetSkeletonTimes() { return target_skeleton_times; };
  NumericVector getRulesUsed() {return rules_used; };

  
private:
  std::map<int,int> node_numbering;
  std::vector<double> target_skeleton_times;
  NumericVector rules_used = NumericVector(5);
};

#endif
