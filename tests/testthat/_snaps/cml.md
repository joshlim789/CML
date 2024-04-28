# Change Separating Set

    There is (are) 1 target(s).
    Targets: lung
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    All nodes from neighborhoods:
    1, 2, 5
    There are 8 nodes in the DAG.
    There are 4 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 5
    Our starting matrix is 4x4.
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    5 3
    [[1]]
    [[1]][[1]]
    [1] NA
    
    [[1]][[2]]
    [1] 3 4
    
    [[1]][[3]]
    [1] NA
    
    [[1]][[4]]
    [1] NA
    
    
    [[2]]
    [[2]][[1]]
    [1] NA
    
    [[2]][[2]]
    [1] NA
    
    [[2]][[3]]
    [1] NA
    
    [[2]][[4]]
    [1] NA
    
    
    [[3]]
    [[3]][[1]]
    [1] NA
    
    [[3]][[2]]
    [1] NA
    
    [[3]][[3]]
    [1] NA
    
    [[3]][[4]]
    [1] NA
    
    
    [[4]]
    [[4]][[1]]
    [1] NA
    
    [[4]][[2]]
    [1] NA
    
    [[4]][[3]]
    [1] NA
    
    [[4]][[4]]
    [1] NA
    
    

# Test set verbose

    CML Verbose: 0
    CML Verbose: 1

# Testing the CML object

    There is (are) 1 target(s).
    Targets: lung
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    All nodes from neighborhoods:
    1, 2, 5
    There are 8 nodes in the DAG.
    There are 4 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 5
    Our starting matrix is 4x4.
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    5 3
    
    
    p: 8
    n: 500
    N: 4
    Number of Targets: 1
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 5
    Ctilde:
    Our Ctilde matrix is 4x4
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    Number of tests so far: 0
    First and last elements of the dataset: -0.641447 0.198884

# Testing the CML object (Population)

    Population Version (C++):
    There are 1 targets.
    Targets: lung
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    All nodes from neighborhoods:
    1, 2, 5
    There are 8 nodes in the DAG.
    There are 4 nodes in the neighborhood.
    All nodes being considered: 1 2 3 5
    Our starting matrix is 4x4.
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    5 3
    
    
    p: 8
    n: 0
    N: 4
    Number of Targets: 1
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 5
    Ctilde:
    Our Ctilde matrix is 4x4
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    Number of tests so far: 0

# Testing the total skeleton function (one target)

    There is (are) 1 target(s).
    Targets: lung
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    All nodes from neighborhoods:
    1, 2, 5
    There are 8 nodes in the DAG.
    There are 4 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 5
    Our starting matrix is 4x4.
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    5 3
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (either)
    The p-value is 2.96476e-07
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 3.57115e-12
    The value of j is 3 (either)
    The p-value is 3.62121e-05
    The value of i is 2 (lung)
    The value of j is 3 (either)
    The p-value is 2.97187e-109
    The value of i is 3 (either)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 2.23369e-08
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There is 1 neighbor.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 6.33935e-09
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    The value of i is 3 (either)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 3 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    The value of i is 3 (either)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 3 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    The value of i is 3 (either)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 500
    N: 4
    Number of Targets: 1
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 5
    Ctilde:
    Our Ctilde matrix is 4x4
    0 0 0 1
    0 0 1 0
    0 1 0 1
    1 0 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,5} = nan 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,5} = 3 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,5} = nan 
    Number of tests so far: 14
    First and last elements of the dataset: -0.641447 0.198884

# Testing the total skeleton function (two targets)

    There is (are) 2 target(s).
    Targets: lung bronc
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    Node: 4
    All nodes from neighborhoods:
    1, 2, 5, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 4 5 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,7} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,7} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    4 3
    5 4
    7 5
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (bronc)
    The p-value is 0.579122
    tub is separated from bronc (p-value>0.01)
    The value of j is 4 (either)
    The p-value is 2.96476e-07
    The value of j is 5 (dysp)
    The p-value is 0.0049716
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 3.57115e-12
    The value of j is 3 (bronc)
    The p-value is 6.44217e-19
    The value of j is 4 (either)
    The p-value is 3.62121e-05
    The value of j is 5 (dysp)
    The p-value is 8.722e-05
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    The p-value is 0.00672051
    The value of j is 4 (either)
    The p-value is 2.97187e-109
    The value of j is 5 (dysp)
    The p-value is 9.83333e-14
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    The p-value is 0.0431059
    bronc is separated from either (p-value>0.01)
    The value of j is 5 (dysp)
    The p-value is 6.74668e-84
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    The p-value is 9.48354e-32
    The value of i is 5 (dysp)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 2.23369e-08
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.75872e-05
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0.0113955
    tub is separated from dysp by node(s): smoke  (p-value>0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 1.73265e-10
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 6.33935e-09
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 7 (dysp)
    The p-value is 1.85744e-19
    smoke is NOT separated from lung by node(s): dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 3.36192e-17
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 5.30428e-18
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 1.40787e-17
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 4.7219e-12
    smoke is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0.0018733
    smoke is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 2.3399e-12
    smoke is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 7.07433e-108
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 4.8985e-21
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 3.01325e-48
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.0810771
    lung is separated from dysp by node(s): either  (p-value>0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 3.28744e-82
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1.86754e-176
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 7.29264e-30
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 1.15967e-39
    either is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 1.21054e-19
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 8.04073e-114
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 3.38235e-08
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.32256e-08
    smoke is NOT separated from lung by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 7 (either dysp)
    The p-value is 3.23618e-08
    smoke is NOT separated from lung by node(s): either dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 1.66923e-06
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0.53713
    smoke is separated from dysp by node(s): lung bronc  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 9.14632e-161
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 8.41815e-18
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.59159e-110
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1.28527e-59
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 4 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of j is 3 (bronc)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 3.62282e-56
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 500
    N: 6
    Number of Targets: 2
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 4 5 7
    Ctilde:
    Our Ctilde matrix is 6x6
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,4} = -1 S_{1,5} = nan S_{1,7} = 2 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = 3 S_{2,7} = 3 4 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,4} = 2 S_{3,5} = nan S_{3,7} = 5 
    S_{4,1} = -1 S_{4,2} = nan S_{4,3} = 2 S_{4,4} = nan S_{4,5} = -1 S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,4} = -1 S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = 2 S_{7,2} = 3 4 S_{7,3} = 5 S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Number of tests so far: 59
    First and last elements of the dataset: -0.641447 0.198884

# Testing the total skeleton function for population (one target)

    Population Version (C++):
    There are 1 targets.
    Targets: lung
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    All nodes from neighborhoods:
    1, 2, 5
    There are 8 nodes in the DAG.
    There are 4 nodes in the neighborhood.
    All nodes being considered: 1 2 3 5
    Our starting matrix is 4x4.
    0 1 1 1
    1 0 1 1
    1 1 0 1
    1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,5} = nan 
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    5 3
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 1
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 1
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (either)
    The p-value is 0
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 0
    The value of j is 3 (either)
    The p-value is 0
    The value of i is 2 (lung)
    The value of j is 3 (either)
    The p-value is 0
    The value of i is 3 (either)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There is 1 neighbor.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 1
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    The value of i is 3 (either)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 3 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    There are 2 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    The value of i is 3 (either)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 3 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of i is 2 (lung)
    The value of j is 3 (either)
    The value of i is 3 (either)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 0
    N: 4
    Number of Targets: 1
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 5
    Ctilde:
    Our Ctilde matrix is 4x4
    0 0 0 1
    0 0 1 0
    0 1 0 1
    1 0 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,5} = nan 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,5} = 3 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,5} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,5} = nan 
    Number of tests so far: 14

# Testing the total skeleton function for population (two targets)

    Population Version (C++):
    There are 2 targets.
    Targets: lung bronc
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    Node: 4
    All nodes from neighborhoods:
    1, 2, 5, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhood.
    All nodes being considered: 1 2 3 4 5 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,7} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,7} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    7 5
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 1
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 1
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (bronc)
    The p-value is 1
    tub is separated from bronc (p-value>0.01)
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 0
    The value of j is 3 (bronc)
    The p-value is 0
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    The p-value is 0
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 5 (dysp)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    tub is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 7 (dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 1
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 1
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    lung is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 3 -> 4 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    bronc is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 1
    bronc is separated from either by node(s): smoke  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    either is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 3 (smoke lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 1
    tub is separated from dysp by node(s): smoke either  (p-value>0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 7 (either dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1
    smoke is separated from dysp by node(s): lung bronc  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 1
    lung is separated from dysp by node(s): smoke either  (p-value>0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 4 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of j is 3 (bronc)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 0
    N: 6
    Number of Targets: 2
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 4 5 7
    Ctilde:
    Our Ctilde matrix is 6x6
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,4} = -1 S_{1,5} = nan S_{1,7} = 2 5 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = 3 S_{2,7} = 3 4 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,4} = 2 S_{3,5} = nan S_{3,7} = 2 5 
    S_{4,1} = -1 S_{4,2} = nan S_{4,3} = 2 S_{4,4} = nan S_{4,5} = 2 S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,4} = 2 S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = 2 5 S_{7,2} = 3 4 S_{7,3} = 2 5 S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Number of tests so far: 74

# Testing Skeleton Target function and V-Structure function (sample)

    There is (are) 2 target(s).
    Targets: lung bronc
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    Node: 4
    All nodes from neighborhoods:
    1, 2, 5, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 4 5 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,7} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,7} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    4 3
    5 4
    7 5
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (bronc)
    The p-value is 0.579122
    tub is separated from bronc (p-value>0.01)
    The value of j is 4 (either)
    The p-value is 2.96476e-07
    The value of j is 5 (dysp)
    The p-value is 0.0049716
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 3.57115e-12
    The value of j is 3 (bronc)
    The p-value is 6.44217e-19
    The value of j is 4 (either)
    The p-value is 3.62121e-05
    The value of j is 5 (dysp)
    The p-value is 8.722e-05
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    The p-value is 0.00672051
    The value of j is 4 (either)
    The p-value is 2.97187e-109
    The value of j is 5 (dysp)
    The p-value is 9.83333e-14
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    The p-value is 0.0431059
    bronc is separated from either (p-value>0.01)
    The value of j is 5 (dysp)
    The p-value is 6.74668e-84
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    The p-value is 9.48354e-32
    The value of i is 5 (dysp)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 2.23369e-08
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.75872e-05
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0.0113955
    tub is separated from dysp by node(s): smoke  (p-value>0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 1.73265e-10
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 6.33935e-09
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 7 (dysp)
    The p-value is 1.85744e-19
    smoke is NOT separated from lung by node(s): dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 3.36192e-17
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 5.30428e-18
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 1.40787e-17
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 4.7219e-12
    smoke is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0.0018733
    smoke is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 2.3399e-12
    smoke is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 7.07433e-108
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 4.8985e-21
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 3.01325e-48
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.0810771
    lung is separated from dysp by node(s): either  (p-value>0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 3.28744e-82
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1.86754e-176
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 7.29264e-30
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 1.15967e-39
    either is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 1.21054e-19
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 8.04073e-114
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 3.38235e-08
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.32256e-08
    smoke is NOT separated from lung by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 7 (either dysp)
    The p-value is 3.23618e-08
    smoke is NOT separated from lung by node(s): either dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 1.66923e-06
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0.53713
    smoke is separated from dysp by node(s): lung bronc  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 9.14632e-161
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 8.41815e-18
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.59159e-110
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1.28527e-59
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 4 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of j is 3 (bronc)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 3.62282e-56
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 500
    N: 6
    Number of Targets: 2
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 4 5 7
    Ctilde:
    Our Ctilde matrix is 6x6
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,4} = -1 S_{1,5} = nan S_{1,7} = 2 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = 3 S_{2,7} = 3 4 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,4} = 2 S_{3,5} = nan S_{3,7} = 5 
    S_{4,1} = -1 S_{4,2} = nan S_{4,3} = 2 S_{4,4} = nan S_{4,5} = -1 S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,4} = -1 S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = 2 S_{7,2} = 3 4 S_{7,3} = 5 S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Number of tests so far: 59
    First and last elements of the dataset: -0.641447 0.198884
    
    
    Finding skeleton for the neighborhood of target 3 (Efficient Number: 2)
    Neighborhood nodes under consideration: 0 1 2 4 | (tub(1) smoke(2) lung(3) either(5))
    The value of l is 1
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 (asia)
    The p-value is 2.04304e-06
    tub is NOT separated from either by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 2.02399e-07
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0.000285486
    tub is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.75872e-05
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 (tub)
    The p-value is 2.27427e-12
    smoke is NOT separated from lung by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 1.73265e-10
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 6.33935e-09
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 7.07433e-108
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 7.13973e-73
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 2
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 1.47654e-12
    tub is NOT separated from either by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 (asia bronc)
    The p-value is 1.5435e-06
    tub is NOT separated from either by node(s): asia bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0.000863371
    tub is NOT separated from either by node(s): asia xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 4.49478e-05
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 (lung bronc)
    The p-value is 9.79205e-14
    tub is NOT separated from either by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 1.99198e-10
    tub is NOT separated from either by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0.000231813
    tub is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 5.99369e-05
    tub is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0.00156137
    tub is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.14143e-10
    smoke is NOT separated from lung by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 5 (tub either)
    The p-value is 1.29347e-07
    smoke is NOT separated from lung by node(s): tub either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 3.38235e-08
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.31928e-115
    lung is NOT separated from either by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 7.25594e-80
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 7.70358e-105
    lung is NOT separated from either by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 4.10318e-71
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 2.45256e-72
    lung is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.35293e-54
    lung is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 1.5714e-67
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 3
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 4 (asia lung bronc)
    The p-value is 1.51885e-12
    tub is NOT separated from either by node(s): asia lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 1.63002e-09
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 3.548e-11
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 6 (asia bronc xray)
    The p-value is 0.000733463
    tub is NOT separated from either by node(s): asia bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 7 (asia bronc dysp)
    The p-value is 0.000122697
    tub is NOT separated from either by node(s): asia bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0.00285872
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 2.14787e-10
    tub is NOT separated from either by node(s): lung bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 1.02418e-10
    tub is NOT separated from either by node(s): lung bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 2.54582e-09
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0.000856835
    tub is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (tub bronc either)
    The p-value is 4.79431e-07
    smoke is NOT separated from lung by node(s): tub bronc either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 4 (tub smoke bronc)
    The p-value is 7.80299e-111
    lung is NOT separated from either by node(s): tub smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 6.27627e-77
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 3.50039e-79
    lung is NOT separated from either by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 1.16445e-60
    lung is NOT separated from either by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 5.4123e-74
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 6 (smoke bronc xray)
    The p-value is 5.33318e-71
    lung is NOT separated from either by node(s): smoke bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 7 (smoke bronc dysp)
    The p-value is 4.21368e-54
    lung is NOT separated from either by node(s): smoke bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 1.8416e-59
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 1.00846e-44
    lung is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 4
    The final C matrix:
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 4 (Efficient Number: 3)
    Neighborhood nodes under consideration: 1 3 4 5 | (smoke(2) bronc(4) either(5) dysp(7))
    The value of l is 1
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 3.36192e-17
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 5.30428e-18
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 1.40787e-17
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 3.28744e-82
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1.86754e-176
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 7.29264e-30
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 1.21054e-19
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 8.04073e-114
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 6 (xray)
    The p-value is 8.06707e-21
    either is NOT separated from dysp by node(s): xray  (p-value<0.01)
    The value of i is 5
    The value of l is 2
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 (lung either)
    The p-value is 3.00083e-17
    smoke is NOT separated from bronc by node(s): lung either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 1.66923e-06
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 7 (either dysp)
    The p-value is 5.75598e-07
    smoke is NOT separated from bronc by node(s): either dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 9.14632e-161
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 8.41815e-18
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.59159e-110
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 6 (tub xray)
    The p-value is 4.64532e-20
    either is NOT separated from dysp by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1.28527e-59
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 6 (lung xray)
    The p-value is 3.41996e-16
    either is NOT separated from dysp by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 6 (bronc xray)
    The p-value is 1.34733e-75
    either is NOT separated from dysp by node(s): bronc xray  (p-value<0.01)
    The value of i is 5
    The value of l is 3
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 7 (lung either dysp)
    The p-value is 5.76336e-07
    smoke is NOT separated from bronc by node(s): lung either dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 3.62282e-56
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 6 (tub lung xray)
    The p-value is 4.56682e-15
    either is NOT separated from dysp by node(s): tub lung xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 8.18002e-75
    either is NOT separated from dysp by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 9.07913e-48
    either is NOT separated from dysp by node(s): lung bronc xray  (p-value<0.01)
    The value of i is 5
    The final C matrix:
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 1 (smoke)
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    Rule 0 has been used 1 times.
    j: 3 (bronc)
    j: 5 (dysp)
    Potential k values: either
    k: 4 (either)
    Separation Set: 2 | V-Structure (True Numbering): 1*->5<-*7
    Rule 0 has been used 2 times.
    i: 1 (smoke)
    j: 4 (either)
    Potential k values: lung
    k: 2 (lung)
    j: 5 (dysp)
    Potential k values: bronc
    k: 3 (bronc)
    i: 2 (lung)
    j: 3 (bronc)
    Potential k values: smoke
    k: 1 (smoke)
    j: 5 (dysp)
    Potential k values: either
    k: 4 (either)
    i: 3 (bronc)
    j: 4 (either)
    Potential k values: dysp
    k: 5 (dysp)
    Separation Set: -1 | V-Structure (True Numbering): 4*->7<-*5
    Rule 0 has been used 3 times.
    i: 4 (either)
    i: 5 (dysp)

# Testing Skeleton Target function and V-Structure function (population)

    Population Version (C++):
    There are 2 targets.
    Targets: lung bronc
    Using the true DAG for the MB List.
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Node: 3
    Node: 4
    All nodes from neighborhoods:
    1, 2, 5, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhood.
    All nodes being considered: 1 2 3 4 5 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,7} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,7} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    7 5
    
    
    The value of l is 0
    The value of i is 0 (tub)
    The value of j is 1 (smoke)
    The p-value is 1
    tub is separated from smoke (p-value>0.01)
    The value of j is 2 (lung)
    The p-value is 1
    tub is separated from lung (p-value>0.01)
    The value of j is 3 (bronc)
    The p-value is 1
    tub is separated from bronc (p-value>0.01)
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The p-value is 0
    The value of j is 3 (bronc)
    The p-value is 0
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    The p-value is 0
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    The p-value is 0
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    The p-value is 0
    The value of i is 5 (dysp)
    The value of l is 1
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    tub is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    tub is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 7 (dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 1
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 2 (lung)
    The value of j is 3 (bronc)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 1
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    lung is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 4 (either)
    There are 4 neighbors.
    Efficient Setup: 3 -> 4 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    bronc is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 1
    bronc is separated from either by node(s): smoke  (p-value>0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    either is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 2
    The value of i is 0 (tub)
    The value of j is 4 (either)
    There are 2 neighbors.
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 4 neighbors.
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 3 (smoke lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 1
    tub is separated from dysp by node(s): smoke either  (p-value>0.01)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 7 (either dysp)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either dysp  (p-value<0.01)
    The value of j is 3 (bronc)
    There are 2 neighbors.
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1
    smoke is separated from dysp by node(s): lung bronc  (p-value>0.01)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 1
    lung is separated from dysp by node(s): smoke either  (p-value>0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    There are 2 neighbors.
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    The value of l is 3
    The value of i is 0 (tub)
    The value of j is 4 (either)
    The value of i is 1 (smoke)
    The value of j is 2 (lung)
    The value of j is 3 (bronc)
    The value of i is 2 (lung)
    The value of j is 4 (either)
    There are 3 neighbors.
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    The value of i is 3 (bronc)
    The value of j is 5 (dysp)
    The value of i is 4 (either)
    The value of j is 5 (dysp)
    There are 3 neighbors.
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    The value of i is 5 (dysp)
    
    
    Values after Total Skeleton Run
    
    p: 8
    n: 0
    N: 6
    Number of Targets: 2
    Node names: asia tub smoke lung bronc either xray dysp 
    lmax: 3
    verbose: 1
    Nodes under consideration: 1 2 3 4 5 7
    Ctilde:
    Our Ctilde matrix is 6x6
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Our DAG matrix is 
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Our Markov Blankets are
    MBList Size: 8
    Markov Blankets:
    0: 1
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 5 7
    5: 1 3 4 6 7
    6: 5
    7: 4 5
    Separating Set Values:
    S_{1,1} = nan S_{1,2} = -1 S_{1,3} = -1 S_{1,4} = -1 S_{1,5} = nan S_{1,7} = 2 5 
    S_{2,1} = -1 S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = 3 S_{2,7} = 3 4 
    S_{3,1} = -1 S_{3,2} = nan S_{3,3} = nan S_{3,4} = 2 S_{3,5} = nan S_{3,7} = 2 5 
    S_{4,1} = -1 S_{4,2} = nan S_{4,3} = 2 S_{4,4} = nan S_{4,5} = 2 S_{4,7} = nan 
    S_{5,1} = nan S_{5,2} = 3 S_{5,3} = nan S_{5,4} = 2 S_{5,5} = nan S_{5,7} = nan 
    S_{7,1} = 2 5 S_{7,2} = 3 4 S_{7,3} = 2 5 S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Number of tests so far: 74
    
    
    Finding skeleton for the neighborhood of target 3 (Efficient Number: 2)
    Neighborhood nodes under consideration: 0 1 2 4 | (tub(1) smoke(2) lung(3) either(5))
    The value of l is 1
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 (asia)
    The p-value is 0
    tub is NOT separated from either by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0
    tub is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from lung by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (bronc)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 2
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 (asia bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 0
    tub is NOT separated from either by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    smoke is NOT separated from lung by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 5 (tub either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): tub either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (bronc either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): bronc either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 3
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 4 (asia lung bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 6 (asia bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 4 7 (asia bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (tub bronc either)
    The p-value is 0
    smoke is NOT separated from lung by node(s): tub bronc either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 4 (tub smoke bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke bronc  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 6 (smoke bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 4 7 (smoke bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 4
    The final C matrix:
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 4 (Efficient Number: 3)
    Neighborhood nodes under consideration: 1 3 4 5 | (smoke(2) bronc(4) either(5) dysp(7))
    The value of l is 1
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 (either)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 6 (xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): xray  (p-value<0.01)
    The value of i is 5
    The value of l is 2
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 (lung either)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung either  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 5 7 (either dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): either dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 3 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 6 (tub xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 6 (lung xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc xray  (p-value<0.01)
    The value of i is 5
    The value of l is 3
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 7 (lung either dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung either dysp  (p-value<0.01)
    The value of i is 3
    The value of j is 5
    Potential separating nodes: 2 5
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 3 6 (tub lung xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 4 -> 5 | 5 -> 7 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc xray  (p-value<0.01)
    The value of i is 5
    The final C matrix:
    0 0 0 0 1 0
    0 0 1 1 0 0
    0 1 0 0 1 0
    0 1 0 0 0 1
    1 0 1 0 0 1
    0 0 0 1 1 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 1 (smoke)
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    Rule 0 has been used 1 times.
    j: 3 (bronc)
    j: 5 (dysp)
    Potential k values: either
    k: 4 (either)
    i: 1 (smoke)
    j: 4 (either)
    Potential k values: lung
    k: 2 (lung)
    j: 5 (dysp)
    Potential k values: bronc
    k: 3 (bronc)
    i: 2 (lung)
    j: 3 (bronc)
    Potential k values: smoke
    k: 1 (smoke)
    j: 5 (dysp)
    Potential k values: either
    k: 4 (either)
    i: 3 (bronc)
    j: 4 (either)
    Potential k values: dysp
    k: 5 (dysp)
    Separation Set: 2 | V-Structure (True Numbering): 4*->7<-*5
    Rule 0 has been used 2 times.
    i: 4 (either)
    i: 5 (dysp)

# Testing Adjacency Matrix Conversion

         [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    [1,]    0    0    0    0    0    0    0    0
    [2,]    0    0    0    0    0    0    0    0
    [3,]    0    0    0    0    0    0    0    0
    [4,]    0    0    0    0    0    0    0    0
    [5,]    0    0    0    0    0    1    0    1
    [6,]    0    0    0    0    1    0    1    1
    [7,]    0    0    0    0    0    1    0    0
    [8,]    0    0    0    0    0    0    0    0

# CML (Putting it all together, sample)

           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       1   0     0    0     0      1    0    0
    smoke     0   0     0    0     0      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

# CML (Putting it all together, population)

           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       1   0     0    0     0      1    0    0
    smoke     0   0     0    0     0      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

---

           asia tub smoke lung bronc either xray dysp
    asia      0   0     0    0     0      0    0    0
    tub       0   0     0    0     0      0    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     1    0     0      1    0    0
    bronc     0   0     1    0     0      0    0    1
    either    0   0     0    1     0      0    0    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

---

           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       1   0     0    0     0      1    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     1    0     0      1    0    0
    bronc     0   0     1    0     0      0    0    1
    either    0   0     0    0     0      0    0    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

---

           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       1   0     0    0     0      1    0    0
    smoke     0   0     0    0     0      0    0    0
    lung      0   0     0    0     0      0    0    0
    bronc     0   0     0    0     0      0    0    0
    either    0   1     0    0     0      0    1    0
    xray      0   0     0    0     0      1    0    0
    dysp      0   0     0    0     0      0    0    0

