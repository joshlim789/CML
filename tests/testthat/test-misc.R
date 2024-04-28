test_that("Testing Miscellaneous Functions Used in Package Functions",{
  a <- c(1,5,7,10,42)
  b <- c(14,19,20,1,5)
  expect_equal(sort(test_union(a,b)),sort(union(a,b)))
  d <- union(a,b)
  
  expect_equal(test_sort(d),sort(d))
  
  expect_equal(test_fill(3,5,10),matrix(10,nrow = 3,ncol = 5))
  expect_equal(test_fill_diag(test_fill(6,6,0),1),diag(nrow = 6,ncol = 6))
  
  v <- c(3.5,9.1)
  expect_equal(test_create(3.5,9.1),v)

  v1 <- c(8,10,12,19,24)
  v2 <- c(12,24,0,9)
  expect_equal(sort(test_setdiff(v1,v2)),setdiff(v1,v2))
  expect_equal(sort(test_setdiff(v2,v1)),setdiff(v2,v1))
  expect_equal(sort(test_intersect(v1,v2)),intersect(v1,v2))
  expect_equal(test_setdiff(v1,v1),numeric(0))
  
  expect_equal(test_sep_arma(),matrix(0,nrow=0,ncol=1))
  
  df <- matrix(rnorm(500),nrow = 100)
  ind <- c(0,2,4)
  expect_equal(test_subset_mat(df,ind),cor(df[,ind+1]))
  
  # NumericMatrix passes by reference
  g <- matrix(c(1,1,1,1),nrow = 2)
  g1 <- test_NumMat_value(g)
  expect_equal(g[1,1],25)
  expect_equal(g1[1,1],10)
  
  g <- matrix(rep(1,4),nrow = 2)
  test_decrement_matrix(g)
  expect_equal(g[1,1],0)
  expect_equal(g[2,2],2)
})

test_that("Testing Map Data Structure",{
  set.seed(111)
  v1 <- sample(1:10,5)
  v2 <- sample(40:50,5)
  ind <- order(v1)
  (m <- test_map_insert(v1,v2))
  
  expect_output(test_map_find(v1,v2,3))
})

test_that("Testing combn",{
  #microbenchmark::microbenchmark(combn(1:30,4),combn_cpp(1:30,4))
  for (i in 1:4){
    expect_equal(combn_cpp(1:30,i),combn(1:30,i))
  }
  
  expect_error(combn_cpp(1:3,4))
  res <- matrix(1.1,nrow = 1,ncol=1)
  res[1,1] <- NA
  expect_equal(combn_cpp(1:3,0),res)
  expect_equal(combn_cpp(c(1,3,8),1),combn(c(1,3,8),1))
  expect_error(combn_cpp(2,-1))
  
  for (i in 1:10){
    expect_equal(combn_cpp(i,1),matrix(i,nrow = 1,ncol=1))
  }
})

test_that("Testing membership identification function",{
  set.seed(123)
  x <- sample(1:100,10)
  for (i in 1:100){
    expect_equal(as.numeric(isMember(x,i)),length(intersect(x,i)))
  }
})

