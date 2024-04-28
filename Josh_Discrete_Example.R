library(bnlearn)
library(CML)

#Need to convert to integer
asia_mat <- data.matrix(asia)

asia_d_cml <- cml(asia_mat, targets = c(2,5,6), test = "gSquare")


#Graphing
data("asiadf")
asiadf_mat <- asiadf
data("asiaDAG")
node_names <- colnames(asiaDAG)
p <- ncol(asiadf)
asiaDAG <- matrix(asiaDAG,nrow = p,ncol = p)
asiadf <- as.matrix(asiadf)

asia_g <- empty.graph(node_names)
amat(asia_g) <- asia_d_cml$amat
graphviz.plot(asia_g)


#True discrete structure
# load the data.
data(asia)
# create and plot the network structure.
dag = model2network("[A][S][T|A][L|S][B|S][D|B:E][E|T:L][X|E]")
graphviz.plot(dag)


#Comparison to continuous
asia_f_cml <- cml(asiadf, targets = c(2,3,5))
asia_f <- empty.graph(node_names)
amat(asia_f) <- asia_f_cml$amat
graphviz.plot(asia_f)
