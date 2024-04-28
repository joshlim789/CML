# Sample SNL (given true Markov Blankets)

    There is (are) 1 target(s).
    Targets: either
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
    Node: 5
    All nodes from neighborhoods:
    1, 3, 4, 6, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 3 4 5 6 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{3,1} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,1} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,1} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering:
    1 0
    3 1
    4 2
    5 3
    6 4
    7 5
    
    
    Finding skeleton for the neighborhood of target 5 (Name: either, Efficient Number: 3)
    Neighborhood nodes under consideration: 0 1 2 3 4 5 | (tub(1) lung(3) bronc(4) either(5) xray(6) dysp(7))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 2
    The p-value is 0.579122
    tub is separated from bronc (p-value>0.01)
    The value of j is 5
    The p-value is 0.0049716
    The value of j is 3
    The p-value is 2.96476e-07
    The value of j is 4
    The p-value is 0.000237354
    The value of i is 1
    The value of j is 2
    The p-value is 0.00672051
    The value of j is 5
    The p-value is 9.83333e-14
    The value of j is 3
    The p-value is 2.97187e-109
    The value of j is 4
    The p-value is 4.66386e-32
    The value of i is 2
    The value of j is 3
    The p-value is 0.0431059
    bronc is separated from either (p-value>0.01)
    The value of j is 4
    The p-value is 0.0911787
    bronc is separated from xray (p-value>0.01)
    The value of j is 5
    The p-value is 6.74668e-84
    The value of i is 3
    The value of j is 4
    The p-value is 1.61025e-56
    The value of j is 5
    The p-value is 9.48354e-32
    The value of i is 4
    The value of j is 5
    The p-value is 7.06056e-12
    The value of i is 5
    The value of l is 1
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 (asia)
    The p-value is 2.04304e-06
    tub is NOT separated from either by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 2.02399e-07
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0.000285486
    tub is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.75872e-05
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 0 3 5
    There are 3 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 0 (asia)
    The p-value is 0.000560692
    tub is NOT separated from xray by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 8.3008e-05
    tub is NOT separated from xray by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 0.464335
    tub is separated from xray by node(s): either  (p-value>0.01)
    The value of j is 5
    Potential separating nodes: 0 3 4 5
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 (asia)
    The p-value is 0.0155695
    tub is separated from dysp by node(s): asia  (p-value>0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0.00650387
    lung is NOT separated from bronc by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 5
    Potential separating nodes: 1 2 4 5
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 1.05708e-13
    lung is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 4.8985e-21
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 3.01325e-48
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.0810771
    lung is separated from dysp by node(s): either  (p-value>0.01)
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 7.07433e-108
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 7.13973e-73
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 1 2 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 1.80024e-32
    lung is NOT separated from xray by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 2 (smoke)
    The p-value is 4.66446e-30
    lung is NOT separated from xray by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 0.387146
    lung is separated from xray by node(s): either  (p-value>0.01)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 3.28744e-82
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1.86754e-176
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 3.72487e-53
    either is NOT separated from xray by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 2.75087e-24
    either is NOT separated from xray by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 (bronc)
    The p-value is 8.99546e-56
    either is NOT separated from xray by node(s): bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 7 (dysp)
    The p-value is 7.26492e-45
    either is NOT separated from xray by node(s): dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 7.29264e-30
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 1.21054e-19
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 8.04073e-114
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 6 (xray)
    The p-value is 8.06707e-21
    either is NOT separated from dysp by node(s): xray  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 4 5
    There are 2 neighbor(s).
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 1.55671e-33
    xray is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.910011
    xray is separated from dysp by node(s): either  (p-value>0.01)
    The value of i is 5
    The value of l is 2
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 1.47654e-12
    tub is NOT separated from either by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 (asia bronc)
    The p-value is 1.5435e-06
    tub is NOT separated from either by node(s): asia bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0.000863371
    tub is NOT separated from either by node(s): asia xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 4.49478e-05
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 (lung bronc)
    The p-value is 9.79205e-14
    tub is NOT separated from either by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 1.99198e-10
    tub is NOT separated from either by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0.000231813
    tub is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 5.99369e-05
    tub is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0.00156137
    tub is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.31928e-115
    lung is NOT separated from either by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 7.25594e-80
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 7.70358e-105
    lung is NOT separated from either by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 4.10318e-71
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 2.45256e-72
    lung is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.35293e-54
    lung is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 1.5714e-67
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 9.14632e-161
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 (tub lung)
    The p-value is 7.17702e-21
    either is NOT separated from xray by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 (tub bronc)
    The p-value is 2.49022e-52
    either is NOT separated from xray by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 7 (tub dysp)
    The p-value is 9.81323e-43
    either is NOT separated from xray by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 (lung bronc)
    The p-value is 2.94911e-24
    either is NOT separated from xray by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 7 (lung dysp)
    The p-value is 8.61051e-21
    either is NOT separated from xray by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.69334e-22
    either is NOT separated from xray by node(s): bronc dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 8.41815e-18
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.59159e-110
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 6 (tub xray)
    The p-value is 4.64532e-20
    either is NOT separated from dysp by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1.28527e-59
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 6 (lung xray)
    The p-value is 3.41996e-16
    either is NOT separated from dysp by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 6 (bronc xray)
    The p-value is 1.34733e-75
    either is NOT separated from dysp by node(s): bronc xray  (p-value<0.01)
    The value of i is 4
    The value of i is 5
    The value of l is 3
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 4 (asia lung bronc)
    The p-value is 1.51885e-12
    tub is NOT separated from either by node(s): asia lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 1.63002e-09
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 3.548e-11
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 6 (asia bronc xray)
    The p-value is 0.000733463
    tub is NOT separated from either by node(s): asia bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 7 (asia bronc dysp)
    The p-value is 0.000122697
    tub is NOT separated from either by node(s): asia bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0.00285872
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 2.14787e-10
    tub is NOT separated from either by node(s): lung bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 1.02418e-10
    tub is NOT separated from either by node(s): lung bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 2.54582e-09
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0.000856835
    tub is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 4 (tub smoke bronc)
    The p-value is 7.80299e-111
    lung is NOT separated from either by node(s): tub smoke bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 6.27627e-77
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 3.50039e-79
    lung is NOT separated from either by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 1.16445e-60
    lung is NOT separated from either by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 5.4123e-74
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 6 (smoke bronc xray)
    The p-value is 5.33318e-71
    lung is NOT separated from either by node(s): smoke bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 7 (smoke bronc dysp)
    The p-value is 4.21368e-54
    lung is NOT separated from either by node(s): smoke bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 1.8416e-59
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 1.00846e-44
    lung is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 7.9342e-21
    either is NOT separated from xray by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 7 (tub lung dysp)
    The p-value is 4.10887e-18
    either is NOT separated from xray by node(s): tub lung dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 4.13227e-21
    either is NOT separated from xray by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 1.96509e-13
    either is NOT separated from xray by node(s): lung bronc dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 3.62282e-56
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 6 (tub lung xray)
    The p-value is 4.56682e-15
    either is NOT separated from dysp by node(s): tub lung xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 8.18002e-75
    either is NOT separated from dysp by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 9.07913e-48
    either is NOT separated from dysp by node(s): lung bronc xray  (p-value<0.01)
    The value of i is 4
    The value of i is 5
    The final C matrix:
    0 0 0 1 0 0
    0 0 0 1 0 0
    0 0 0 0 0 1
    1 1 0 0 1 1
    0 0 0 1 0 0
    0 0 1 1 0 0
    Conclusion of algorithm.

# Check V-Structures

    There is (are) 1 target(s).
    Targets: either
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
    Node: 5
    All nodes from neighborhoods:
    1, 3, 4, 6, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 3 4 5 6 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{3,1} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,1} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,1} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering:
    1 0
    3 1
    4 2
    5 3
    6 4
    7 5
    
    
    Finding skeleton for the neighborhood of target 5 (Name: either, Efficient Number: 3)
    Neighborhood nodes under consideration: 0 1 2 3 4 5 | (tub(1) lung(3) bronc(4) either(5) xray(6) dysp(7))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.631592
    tub is separated from lung (p-value>0.02)
    The value of j is 2
    The p-value is 0.579122
    tub is separated from bronc (p-value>0.02)
    The value of j is 5
    The p-value is 0.0049716
    The value of j is 3
    The p-value is 2.96476e-07
    The value of j is 4
    The p-value is 0.000237354
    The value of i is 1
    The value of j is 2
    The p-value is 0.00672051
    The value of j is 5
    The p-value is 9.83333e-14
    The value of j is 3
    The p-value is 2.97187e-109
    The value of j is 4
    The p-value is 4.66386e-32
    The value of i is 2
    The value of j is 3
    The p-value is 0.0431059
    bronc is separated from either (p-value>0.02)
    The value of j is 4
    The p-value is 0.0911787
    bronc is separated from xray (p-value>0.02)
    The value of j is 5
    The p-value is 6.74668e-84
    The value of i is 3
    The value of j is 4
    The p-value is 1.61025e-56
    The value of j is 5
    The p-value is 9.48354e-32
    The value of i is 4
    The value of j is 5
    The p-value is 7.06056e-12
    The value of i is 5
    The value of l is 1
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 (asia)
    The p-value is 2.04304e-06
    tub is NOT separated from either by node(s): asia  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 2.02399e-07
    tub is NOT separated from either by node(s): bronc  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0.000285486
    tub is NOT separated from either by node(s): xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.75872e-05
    tub is NOT separated from either by node(s): dysp  (p-value<0.02)
    The value of j is 4
    Potential separating nodes: 0 3 5
    There are 3 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 0 (asia)
    The p-value is 0.000560692
    tub is NOT separated from xray by node(s): asia  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 8.3008e-05
    tub is NOT separated from xray by node(s): lung  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 0.464335
    tub is separated from xray by node(s): either  (p-value>0.02)
    The value of j is 5
    Potential separating nodes: 0 3 4 5
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 (asia)
    The p-value is 0.0155695
    tub is NOT separated from dysp by node(s): asia  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0.00509863
    tub is NOT separated from dysp by node(s): lung  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0.000676135
    tub is NOT separated from dysp by node(s): bronc  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.669315
    tub is separated from dysp by node(s): either  (p-value>0.02)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0.00650387
    lung is NOT separated from bronc by node(s): tub  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.02)
    The value of j is 5
    Potential separating nodes: 1 2 4 5
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 1.05708e-13
    lung is NOT separated from dysp by node(s): tub  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 4.8985e-21
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 3.01325e-48
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.0810771
    lung is separated from dysp by node(s): either  (p-value>0.02)
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 7.07433e-108
    lung is NOT separated from either by node(s): bronc  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 7.13973e-73
    lung is NOT separated from either by node(s): xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.02)
    The value of j is 4
    Potential separating nodes: 1 2 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 1.80024e-32
    lung is NOT separated from xray by node(s): tub  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 2 (smoke)
    The p-value is 4.66446e-30
    lung is NOT separated from xray by node(s): smoke  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 0.387146
    lung is separated from xray by node(s): either  (p-value>0.02)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 3.28744e-82
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.02)
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1.86754e-176
    bronc is NOT separated from dysp by node(s): either  (p-value<0.02)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 3.72487e-53
    either is NOT separated from xray by node(s): tub  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 2.75087e-24
    either is NOT separated from xray by node(s): lung  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 (bronc)
    The p-value is 8.99546e-56
    either is NOT separated from xray by node(s): bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 7 (dysp)
    The p-value is 7.26492e-45
    either is NOT separated from xray by node(s): dysp  (p-value<0.02)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 7.29264e-30
    either is NOT separated from dysp by node(s): tub  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 1.21054e-19
    either is NOT separated from dysp by node(s): lung  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 8.04073e-114
    either is NOT separated from dysp by node(s): bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 6 (xray)
    The p-value is 8.06707e-21
    either is NOT separated from dysp by node(s): xray  (p-value<0.02)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 4 5
    There are 2 neighbor(s).
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 1.55671e-33
    xray is NOT separated from dysp by node(s): bronc  (p-value<0.02)
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0.910011
    xray is separated from dysp by node(s): either  (p-value>0.02)
    The value of i is 5
    The value of l is 2
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 1.47654e-12
    tub is NOT separated from either by node(s): asia lung  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 (asia bronc)
    The p-value is 1.5435e-06
    tub is NOT separated from either by node(s): asia bronc  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0.000863371
    tub is NOT separated from either by node(s): asia xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 4.49478e-05
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 (lung bronc)
    The p-value is 9.79205e-14
    tub is NOT separated from either by node(s): lung bronc  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 1.99198e-10
    tub is NOT separated from either by node(s): lung xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0.000231813
    tub is NOT separated from either by node(s): bronc xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 5.99369e-05
    tub is NOT separated from either by node(s): bronc dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0.00156137
    tub is NOT separated from either by node(s): xray dysp  (p-value<0.02)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.31928e-115
    lung is NOT separated from either by node(s): tub bronc  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 7.25594e-80
    lung is NOT separated from either by node(s): tub xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 7.70358e-105
    lung is NOT separated from either by node(s): smoke bronc  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 4.10318e-71
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 2.45256e-72
    lung is NOT separated from either by node(s): bronc xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.35293e-54
    lung is NOT separated from either by node(s): bronc dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 1.5714e-67
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.02)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 9.14632e-161
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.02)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 (tub lung)
    The p-value is 7.17702e-21
    either is NOT separated from xray by node(s): tub lung  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 (tub bronc)
    The p-value is 2.49022e-52
    either is NOT separated from xray by node(s): tub bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 7 (tub dysp)
    The p-value is 9.81323e-43
    either is NOT separated from xray by node(s): tub dysp  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 (lung bronc)
    The p-value is 2.94911e-24
    either is NOT separated from xray by node(s): lung bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 7 (lung dysp)
    The p-value is 8.61051e-21
    either is NOT separated from xray by node(s): lung dysp  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 2.69334e-22
    either is NOT separated from xray by node(s): bronc dysp  (p-value<0.02)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 8.41815e-18
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 1.59159e-110
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 6 (tub xray)
    The p-value is 4.64532e-20
    either is NOT separated from dysp by node(s): tub xray  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 1.28527e-59
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 6 (lung xray)
    The p-value is 3.41996e-16
    either is NOT separated from dysp by node(s): lung xray  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 6 (bronc xray)
    The p-value is 1.34733e-75
    either is NOT separated from dysp by node(s): bronc xray  (p-value<0.02)
    The value of i is 4
    The value of i is 5
    The value of l is 3
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 4 (asia lung bronc)
    The p-value is 1.51885e-12
    tub is NOT separated from either by node(s): asia lung bronc  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 1.63002e-09
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 3.548e-11
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 6 (asia bronc xray)
    The p-value is 0.000733463
    tub is NOT separated from either by node(s): asia bronc xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 7 (asia bronc dysp)
    The p-value is 0.000122697
    tub is NOT separated from either by node(s): asia bronc dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0.00285872
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 2.14787e-10
    tub is NOT separated from either by node(s): lung bronc xray  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 1.02418e-10
    tub is NOT separated from either by node(s): lung bronc dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 2.54582e-09
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.02)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0.000856835
    tub is NOT separated from either by node(s): bronc xray dysp  (p-value<0.02)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 4 (tub smoke bronc)
    The p-value is 7.80299e-111
    lung is NOT separated from either by node(s): tub smoke bronc  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 6.27627e-77
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 3.50039e-79
    lung is NOT separated from either by node(s): tub bronc xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 1.16445e-60
    lung is NOT separated from either by node(s): tub bronc dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 5.4123e-74
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 6 (smoke bronc xray)
    The p-value is 5.33318e-71
    lung is NOT separated from either by node(s): smoke bronc xray  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 7 (smoke bronc dysp)
    The p-value is 4.21368e-54
    lung is NOT separated from either by node(s): smoke bronc dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 1.8416e-59
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.02)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 1.00846e-44
    lung is NOT separated from either by node(s): bronc xray dysp  (p-value<0.02)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 7.9342e-21
    either is NOT separated from xray by node(s): tub lung bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 7 (tub lung dysp)
    The p-value is 4.10887e-18
    either is NOT separated from xray by node(s): tub lung dysp  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 4.13227e-21
    either is NOT separated from xray by node(s): tub bronc dysp  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 1.96509e-13
    either is NOT separated from xray by node(s): lung bronc dysp  (p-value<0.02)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 3.62282e-56
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 6 (tub lung xray)
    The p-value is 4.56682e-15
    either is NOT separated from dysp by node(s): tub lung xray  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 8.18002e-75
    either is NOT separated from dysp by node(s): tub bronc xray  (p-value<0.02)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 9.07913e-48
    either is NOT separated from dysp by node(s): lung bronc xray  (p-value<0.02)
    The value of i is 4
    The value of i is 5
    The final C matrix:
    0 0 0 1 0 0
    0 0 0 1 0 0
    0 0 0 0 0 1
    1 1 0 0 1 1
    0 0 0 1 0 0
    0 0 1 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 1 (lung)
    Potential k values: either
    k: 3 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (lung)
    i: 2 (bronc)
    j: 3 (either)
    Potential k values: dysp
    k: 5 (dysp)
    Separation Set: -1 | V-Structure (True Numbering): 4*->7<-*5
    i: 3 (either)
    i: 4 (xray)
    Rules Used (0) 2

# Population SNL

    Population Version (C++):
    There are 1 targets.
    Targets: either
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
    Node: 5
    All nodes from neighborhoods:
    1, 3, 4, 6, 7
    There are 8 nodes in the DAG.
    There are 6 nodes in the neighborhood.
    All nodes being considered: 1 3 4 5 6 7
    Our starting matrix is 6x6.
    0 1 1 1 1 1
    1 0 1 1 1 1
    1 1 0 1 1 1
    1 1 1 0 1 1
    1 1 1 1 0 1
    1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{3,1} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,1} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,1} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,1} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,1} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    3 1
    4 2
    5 3
    6 4
    7 5
    
    
    Finding skeleton for the neighborhood of target 5 (Name: either, Efficient Number: 3)
    Neighborhood nodes under consideration: 0 1 2 3 4 5 | (tub(1) lung(3) bronc(4) either(5) xray(6) dysp(7))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 1
    tub is separated from lung (p-value>0.01)
    The value of j is 2
    The p-value is 1
    tub is separated from bronc (p-value>0.01)
    The value of j is 5
    The p-value is 0
    The value of j is 3
    The p-value is 0
    The value of j is 4
    The p-value is 0
    The value of i is 1
    The value of j is 2
    The p-value is 0
    The value of j is 5
    The p-value is 0
    The value of j is 3
    The p-value is 0
    The value of j is 4
    The p-value is 0
    The value of i is 2
    The value of j is 3
    The p-value is 0
    The value of j is 4
    The p-value is 0
    The value of j is 5
    The p-value is 0
    The value of i is 3
    The value of j is 4
    The p-value is 0
    The value of j is 5
    The p-value is 0
    The value of i is 4
    The value of j is 5
    The p-value is 0
    The value of i is 5
    The value of l is 1
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 (asia)
    The p-value is 0
    tub is NOT separated from either by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0
    tub is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 0 3 5
    There are 3 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 0 (asia)
    The p-value is 0
    tub is NOT separated from xray by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from xray by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 1
    tub is separated from xray by node(s): either  (p-value>0.01)
    The value of j is 5
    Potential separating nodes: 0 3 4 5
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 (asia)
    The p-value is 0
    tub is NOT separated from dysp by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    tub is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from bronc by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 2 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 1
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 5
    Potential separating nodes: 1 2 4 5
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    lung is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 (bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 (xray)
    The p-value is 0
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 1 2 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from xray by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 2 (smoke)
    The p-value is 0
    lung is NOT separated from xray by node(s): smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 4 -> 6 | k (True Vals): 5 (either)
    The p-value is 1
    lung is separated from xray by node(s): either  (p-value>0.01)
    The value of i is 2
    The value of j is 3
    Potential separating nodes: 1 2 3 6 7
    There are 5 neighbor(s).
    Efficient Setup: 2 -> 4 | 3 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    bronc is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 4 | 3 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 1
    bronc is separated from either by node(s): smoke  (p-value>0.01)
    The value of j is 4
    Potential separating nodes: 2 5 7
    There are 3 neighbor(s).
    Efficient Setup: 2 -> 4 | 4 -> 6 | k (True Vals): 2 (smoke)
    The p-value is 1
    bronc is separated from xray by node(s): smoke  (p-value>0.01)
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 (smoke)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): either  (p-value<0.01)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 (tub)
    The p-value is 0
    either is NOT separated from xray by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 (lung)
    The p-value is 0
    either is NOT separated from xray by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 (bronc)
    The p-value is 0
    either is NOT separated from xray by node(s): bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 7 (dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 (tub)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 6 (xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): xray  (p-value<0.01)
    The value of i is 4
    The value of j is 5
    Potential separating nodes: 4 5
    There are 2 neighbor(s).
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0
    xray is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 4 -> 6 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 1
    xray is separated from dysp by node(s): either  (p-value>0.01)
    The value of i is 5
    The value of l is 2
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 (asia bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 0
    tub is NOT separated from either by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 0 3 4 5
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 3 (asia lung)
    The p-value is 0
    tub is NOT separated from dysp by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 4 (asia bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): asia bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 0 5 (asia either)
    The p-value is 0
    tub is NOT separated from dysp by node(s): asia either  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    tub is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 5 -> 7 | k (True Vals): 3 5 (lung either)
    The p-value is 1
    tub is separated from dysp by node(s): lung either  (p-value>0.01)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 2 4 5
    There are 4 neighbor(s).
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 2 (tub smoke)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 1 5 (tub either)
    The p-value is 0
    lung is NOT separated from dysp by node(s): tub either  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 2 4 (smoke bronc)
    The p-value is 0
    lung is NOT separated from dysp by node(s): smoke bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 1
    lung is separated from dysp by node(s): smoke either  (p-value>0.01)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    There are 2 neighbor(s).
    Efficient Setup: 2 -> 4 | 5 -> 7 | k (True Vals): 2 5 (smoke either)
    The p-value is 0
    bronc is NOT separated from dysp by node(s): smoke either  (p-value<0.01)
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 (tub lung)
    The p-value is 0
    either is NOT separated from xray by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    either is NOT separated from xray by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 7 (tub dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    either is NOT separated from xray by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 7 (lung dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): lung dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 4 7 (bronc dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): bronc dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 (tub lung)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 (tub bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 6 (tub xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 6 (lung xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 4 6 (bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): bronc xray  (p-value<0.01)
    The value of i is 4
    The value of i is 5
    The value of l is 3
    The value of i is 0
    The value of j is 3
    Potential separating nodes: 0 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 4 (asia lung bronc)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung bronc  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 6 (asia bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 4 7 (asia bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung bronc dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0
    tub is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 3
    Potential separating nodes: 1 2 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 4 (tub smoke bronc)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke bronc  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 6 (smoke bronc xray)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc xray  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 4 7 (smoke bronc dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke bronc dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    Efficient Setup: 1 -> 3 | 3 -> 5 | k (True Vals): 4 6 7 (bronc xray dysp)
    The p-value is 0
    lung is NOT separated from either by node(s): bronc xray dysp  (p-value<0.01)
    The value of i is 2
    The value of j is 5
    Potential separating nodes: 2 5
    The value of i is 3
    The value of j is 4
    Potential separating nodes: 1 3 4 7
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 0
    either is NOT separated from xray by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 3 7 (tub lung dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): tub lung dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 1 4 7 (tub bronc dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): tub bronc dysp  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 4 -> 6 | k (True Vals): 3 4 7 (lung bronc dysp)
    The p-value is 0
    either is NOT separated from xray by node(s): lung bronc dysp  (p-value<0.01)
    The value of j is 5
    Potential separating nodes: 1 3 4 6
    There are 4 neighbor(s).
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 4 (tub lung bronc)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung bronc  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 3 6 (tub lung xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub lung xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 1 4 6 (tub bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): tub bronc xray  (p-value<0.01)
    Efficient Setup: 3 -> 5 | 5 -> 7 | k (True Vals): 3 4 6 (lung bronc xray)
    The p-value is 0
    either is NOT separated from dysp by node(s): lung bronc xray  (p-value<0.01)
    The value of i is 4
    The value of i is 5
    The final C matrix:
    0 0 0 1 0 0
    0 0 0 1 0 0
    0 0 0 0 0 1
    1 1 0 0 1 1
    0 0 0 1 0 0
    0 0 1 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 1 (lung)
    Potential k values: either
    k: 3 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (lung)
    i: 2 (bronc)
    j: 3 (either)
    Potential k values: dysp
    k: 5 (dysp)
    Separation Set: 2 | V-Structure (True Numbering): 4*->7<-*5
    i: 3 (either)
    i: 4 (xray)
    Rules Used (0) 2

# Initializing for multiple targets

    Population Version (C++):
    There are 2 targets.
    Targets: asia dysp
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
    Node: 0
    Node: 7
    All nodes from neighborhoods:
    1, 4, 5
    There are 8 nodes in the DAG.
    There are 5 nodes in the neighborhood.
    All nodes being considered: 0 1 4 5 7
    Our starting matrix is 5x5.
    0 1 1 1 1
    1 0 1 1 1
    1 1 0 1 1
    1 1 1 0 1
    1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,4} = nan S_{0,5} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,4} = nan S_{1,5} = nan S_{1,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,4} = nan S_{4,5} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,4} = nan S_{5,5} = nan S_{5,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,4} = nan S_{7,5} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    4 2
    5 3
    7 4
    FUNCTION createInitialAmat
    Target: 0
    Target: 7
    Initial Adj. Matrix:
    0 1 0 0 0
    1 0 0 0 0
    0 0 0 1 1
    0 0 1 0 1
    0 0 1 1 0
    8
    [1] 8

# Multiple Targets

    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0

# Multiple Targets Population Version

    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0

# Additional Pop. Version test

    0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0

# Wrapper function (Population Version)

    The node value for the C++ function is 2,3 
    Population Version:
    Population Version (C++):
    There are 2 targets.
    Targets: smoke lung
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
    Node: 2
    Node: 3
    All nodes from neighborhoods:
    1, 2, 3, 4, 5
    There are 8 nodes in the DAG.
    There are 5 nodes in the neighborhood.
    All nodes being considered: 1 2 3 4 5
    Our starting matrix is 5x5.
    0 1 1 1 1
    1 0 1 1 1
    1 1 0 1 1
    1 1 1 0 1
    1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    1 0
    2 1
    3 2
    4 3
    5 4
    FUNCTION createInitialAmat
    Target: 2
    Target: 3
    Initial Adj. Matrix:
    0 1 1 0 1
    1 0 1 1 1
    1 1 0 1 1
    0 1 1 0 0
    1 1 1 0 0
    Beginning algorithm over all neighborhoods.
    Beginning the population Local PC algorithm over all neighborhoods.
    
    
    Finding skeleton for the neighborhood of target 2 (Name: smoke, Efficient Number: 1)
    Neighborhood nodes under consideration: 0 1 2 3 4 | (tub(1) smoke(2) lung(3) bronc(4) either(5))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 1
    tub is separated from smoke (p-value>0.01)
    The value of j is 2
    The p-value is 1
    tub is separated from lung (p-value>0.01)
    The value of j is 4
    The p-value is 0
    The value of i is 1
    The value of j is 2
    The p-value is 0
    The value of j is 3
    The p-value is 0
    The value of j is 4
    The p-value is 0
    The value of i is 2
    The value of j is 3
    The p-value is 0
    The value of j is 4
    The p-value is 0
    The value of i is 3
    The value of i is 4
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
    The value of j is 4
    Potential separating nodes: 1 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 0
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 1
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of i is 2
    The value of j is 3
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0
    lung is NOT separated from bronc by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 1
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
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
    The value of i is 3
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
    The value of i is 3
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
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 7 (lung either dysp)
    The p-value is 0
    smoke is NOT separated from bronc by node(s): lung either dysp  (p-value<0.01)
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
    The value of i is 3
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 3 (Name: lung, Efficient Number: 2)
    Neighborhood nodes under consideration: 1 2 4 | (smoke(2) lung(3) either(5))
    The value of l is 0
    The value of i is 1
    The value of j is 2
    The p-value is 0
    The value of i is 2
    The value of j is 4
    The p-value is 0
    The value of i is 4
    The value of l is 1
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
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (smoke)
    i: 2 (lung)
    i: 3 (bronc)
    Repeated application of Meek's Rules:
    Round 1:
    No rules applied.
    Completed application of Meek's Rules.

# Wrapper function (Semi-Sample Version)

    The node value for the C++ function is 2,3 
    Semi-Sample Version:
    There is (are) 2 target(s).
    Targets: smoke lung
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
    Node: 2
    Node: 3
    All nodes from neighborhoods:
    1, 2, 3, 4, 5
    There are 8 nodes in the DAG.
    There are 5 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 4 5
    Our starting matrix is 5x5.
    0 1 1 1 1
    1 0 1 1 1
    1 1 0 1 1
    1 1 1 0 1
    1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    FUNCTION createInitialAmat
    Target: 2
    Target: 3
    Initial Adj. Matrix:
    0 1 1 0 1
    1 0 1 1 1
    1 1 0 1 1
    0 1 1 0 0
    1 1 1 0 0
    Beginning the Local PC algorithm over all neighborhoods.
    
    
    Finding skeleton for the neighborhood of target 2 (Name: smoke, Efficient Number: 1)
    Neighborhood nodes under consideration: 0 1 2 3 4 | (tub(1) smoke(2) lung(3) bronc(4) either(5))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 4
    The p-value is 2.96476e-07
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of j is 3
    The p-value is 6.44217e-19
    The value of j is 4
    The p-value is 3.62121e-05
    The value of i is 2
    The value of j is 3
    The p-value is 0.00672051
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 3
    The value of i is 4
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
    The value of j is 4
    Potential separating nodes: 1 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of i is 2
    The value of j is 3
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0.00650387
    lung is NOT separated from bronc by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
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
    The value of i is 3
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
    The value of i is 3
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
    The value of j is 3
    Potential separating nodes: 3 5 7
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 5 7 (lung either dysp)
    The p-value is 5.76336e-07
    smoke is NOT separated from bronc by node(s): lung either dysp  (p-value<0.01)
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
    The value of i is 3
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 3 (Name: lung, Efficient Number: 2)
    Neighborhood nodes under consideration: 1 2 4 | (smoke(2) lung(3) either(5))
    The value of l is 0
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of i is 2
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 4
    The value of l is 1
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
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (smoke)
    i: 2 (lung)
    i: 3 (bronc)
    Repeated application of Meek's Rules:
    Round 1:
    No rules applied.
    Completed application of Meek's Rules.

# Wrapper function (Sample Version)

    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 3 : 4,5 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 4 : 3,6 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 5 : 3,8 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 6 : 2,4,7,8 
    Checking if node 6 is a spouse of target 3 ... no
    Checking if node 8 is a spouse of target 3 ... no
    Checking if node 2 is a spouse of target 4 ... yes. Adding 2 to MB of 4 . 2 is a newly discovered 1st-order neighbor (was previously 2nd-order).
    Checking if node 5 is a spouse of target 4 ... no
    Checking if node 7 is a spouse of target 4 ... no
    Checking if node 8 is a spouse of target 4 ... no
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 2 : 1,6 
    Adding target nodes to spouse's MB List: 4 
    Creating the reference DAG using Markov Blanket list.
    Nodes being considered: 1,2,3,4,5,6,7,8 
    
    The node value for the C++ function is 2,3 
    Sample Version:
    There is (are) 2 target(s).
    Targets: smoke lung
    Using estimated MB's to form list.
    MBList Size: 5
    Markov Blankets:
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 7
    5: 1 3 6 7
    Node: 2
    Node: 3
    All nodes from neighborhoods:
    1, 2, 3, 4, 5
    There are 8 nodes in the DAG.
    There are 5 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 4 5
    Our starting matrix is 5x5.
    0 1 1 1 1
    1 0 1 1 1
    1 1 0 1 1
    1 1 1 0 1
    1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    FUNCTION createInitialAmat
    Target: 2
    Target: 3
    Initial Adj. Matrix:
    0 1 1 0 1
    1 0 1 1 1
    1 1 0 1 1
    0 1 1 0 0
    1 1 1 0 0
    Beginning the Local PC algorithm over all neighborhoods.
    
    
    Finding skeleton for the neighborhood of target 2 (Name: smoke, Efficient Number: 1)
    Neighborhood nodes under consideration: 0 1 2 3 4 | (tub(1) smoke(2) lung(3) bronc(4) either(5))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 4
    The p-value is 2.96476e-07
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of j is 3
    The p-value is 6.44217e-19
    The value of j is 4
    The p-value is 3.62121e-05
    The value of i is 2
    The value of j is 3
    The p-value is 0.00672051
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 3
    The value of i is 4
    The value of l is 1
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 (asia)
    The p-value is 2.04304e-06
    tub is NOT separated from either by node(s): asia  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 9.35856e-14
    tub is NOT separated from either by node(s): lung  (p-value<0.01)
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
    The value of j is 3
    Potential separating nodes: 3 7
    There are 2 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (lung)
    The p-value is 3.36192e-17
    smoke is NOT separated from bronc by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (dysp)
    The p-value is 1.40787e-17
    smoke is NOT separated from bronc by node(s): dysp  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 1 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
    The value of i is 2
    The value of j is 3
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 1 (tub)
    The p-value is 0.00650387
    lung is NOT separated from bronc by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (smoke)
    The p-value is 0.868413
    lung is separated from bronc by node(s): smoke  (p-value>0.01)
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 7.13973e-73
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The value of l is 2
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 (asia lung)
    The p-value is 1.47654e-12
    tub is NOT separated from either by node(s): asia lung  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 (asia xray)
    The p-value is 0.000863371
    tub is NOT separated from either by node(s): asia xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 7 (asia dysp)
    The p-value is 4.49478e-05
    tub is NOT separated from either by node(s): asia dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 (lung xray)
    The p-value is 1.99198e-10
    tub is NOT separated from either by node(s): lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (lung dysp)
    The p-value is 6.06083e-12
    tub is NOT separated from either by node(s): lung dysp  (p-value<0.01)
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
    The value of j is 3
    Potential separating nodes: 3 7
    There are 2 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (lung dysp)
    The p-value is 1.66923e-06
    smoke is NOT separated from bronc by node(s): lung dysp  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 7.25594e-80
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 4.10318e-71
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 1.5714e-67
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The value of l is 3
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 6 (asia lung xray)
    The p-value is 1.63002e-09
    tub is NOT separated from either by node(s): asia lung xray  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 7 (asia lung dysp)
    The p-value is 3.548e-11
    tub is NOT separated from either by node(s): asia lung dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 7 (asia xray dysp)
    The p-value is 0.00285872
    tub is NOT separated from either by node(s): asia xray dysp  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 7 (lung xray dysp)
    The p-value is 2.54582e-09
    tub is NOT separated from either by node(s): lung xray dysp  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (tub bronc either)
    The p-value is 4.79431e-07
    smoke is NOT separated from lung by node(s): tub bronc either  (p-value<0.01)
    The value of j is 3
    Potential separating nodes: 3 7
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 6.27627e-77
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 5.4123e-74
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 1.8416e-59
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 3 (Name: lung, Efficient Number: 2)
    Neighborhood nodes under consideration: 1 2 4 | (smoke(2) lung(3) either(5))
    The value of l is 0
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of i is 2
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 4
    The value of l is 1
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
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 3.10595e-117
    lung is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (smoke)
    The p-value is 5.05153e-105
    lung is NOT separated from either by node(s): smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (xray)
    The p-value is 7.13973e-73
    lung is NOT separated from either by node(s): xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (dysp)
    The p-value is 1.21991e-94
    lung is NOT separated from either by node(s): dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 2
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
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (tub smoke)
    The p-value is 4.9879e-111
    lung is NOT separated from either by node(s): tub smoke  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (tub xray)
    The p-value is 7.25594e-80
    lung is NOT separated from either by node(s): tub xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (tub dysp)
    The p-value is 2.39758e-102
    lung is NOT separated from either by node(s): tub dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (smoke xray)
    The p-value is 4.10318e-71
    lung is NOT separated from either by node(s): smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (smoke dysp)
    The p-value is 3.88973e-81
    lung is NOT separated from either by node(s): smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (xray dysp)
    The p-value is 1.5714e-67
    lung is NOT separated from either by node(s): xray dysp  (p-value<0.01)
    The value of i is 4
    The value of l is 3
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (tub bronc either)
    The p-value is 4.79431e-07
    smoke is NOT separated from lung by node(s): tub bronc either  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (tub smoke xray)
    The p-value is 6.27627e-77
    lung is NOT separated from either by node(s): tub smoke xray  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (tub smoke dysp)
    The p-value is 3.4474e-87
    lung is NOT separated from either by node(s): tub smoke dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (tub xray dysp)
    The p-value is 5.4123e-74
    lung is NOT separated from either by node(s): tub xray dysp  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (smoke xray dysp)
    The p-value is 1.8416e-59
    lung is NOT separated from either by node(s): smoke xray dysp  (p-value<0.01)
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (tub)
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (smoke)
    i: 2 (lung)
    i: 3 (bronc)
    Repeated application of Meek's Rules:
    Round 1:
    No rules applied.
    Completed application of Meek's Rules.

---

    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 3 : 4,5 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 4 : 3,6 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 5 : 3,8 
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 6 : 2,4,7,8 
    Checking if node 6 is a spouse of target 3 ... no
    Checking if node 8 is a spouse of target 3 ... no
    Checking if node 2 is a spouse of target 4 ... yes. Adding 2 to MB of 4 . 2 is a newly discovered 1st-order neighbor (was previously 2nd-order).
    Checking if node 5 is a spouse of target 4 ... no
    Checking if node 7 is a spouse of target 4 ... no
    Checking if node 8 is a spouse of target 4 ... no
    Estimating Markov Blankets using
     Algorithm: MMPC 
     Test: testIndFisher 
     Tolerance: 0.05 
    Results for target 2 : 1,6 
    Adding target nodes to spouse's MB List: 4 
    Creating the reference DAG using Markov Blanket list.
    Nodes being considered: 1,2,3,4,5,6,7,8 
    
    The node value for the C++ function is 2,3 
    Sample Version:
    There is (are) 2 target(s).
    Targets: V2 V3
    Using estimated MB's to form list.
    MBList Size: 5
    Markov Blankets:
    1: 0 3 5
    2: 3 4
    3: 1 2 5
    4: 2 7
    5: 1 3 6 7
    Node: 2
    Node: 3
    All nodes from neighborhoods:
    1, 2, 3, 4, 5
    There are 8 nodes in the DAG.
    There are 5 nodes in the neighborhoods we are considering.
    All nodes being considered: 1 2 3 4 5
    Our starting matrix is 5x5.
    0 1 1 1 1
    1 0 1 1 1
    1 1 0 1 1
    1 1 1 0 1
    1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan 
    S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan 
    S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan 
    S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan 
    S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan 
    
    We are using test: testIndFisher
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    FUNCTION createInitialAmat
    Target: 2
    Target: 3
    Initial Adj. Matrix:
    0 1 1 0 1
    1 0 1 1 1
    1 1 0 1 1
    0 1 1 0 0
    1 1 1 0 0
    Beginning the Local PC algorithm over all neighborhoods.
    
    
    Finding skeleton for the neighborhood of target 2 (Name: V2, Efficient Number: 1)
    Neighborhood nodes under consideration: 0 1 2 3 4 | (V1(1) V2(2) V3(3) V4(4) V5(5))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.0664439
    V1 is separated from V2 (p-value>0.01)
    The value of j is 2
    The p-value is 0.631592
    V1 is separated from V3 (p-value>0.01)
    The value of j is 4
    The p-value is 2.96476e-07
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of j is 3
    The p-value is 6.44217e-19
    The value of j is 4
    The p-value is 3.62121e-05
    The value of i is 2
    The value of j is 3
    The p-value is 0.00672051
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 3
    The value of i is 4
    The value of l is 1
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 (V0)
    The p-value is 2.04304e-06
    V1 is NOT separated from V5 by node(s): V0  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 (V3)
    The p-value is 9.35856e-14
    V1 is NOT separated from V5 by node(s): V3  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 (V6)
    The p-value is 0.000285486
    V1 is NOT separated from V5 by node(s): V6  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 7 (V7)
    The p-value is 1.75872e-05
    V1 is NOT separated from V5 by node(s): V7  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 (V1)
    The p-value is 2.27427e-12
    V2 is NOT separated from V3 by node(s): V1  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (V4)
    The p-value is 1.73265e-10
    V2 is NOT separated from V3 by node(s): V4  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (V5)
    The p-value is 6.33935e-09
    V2 is NOT separated from V3 by node(s): V5  (p-value<0.01)
    The value of j is 3
    Potential separating nodes: 3 7
    There are 2 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 (V3)
    The p-value is 3.36192e-17
    V2 is NOT separated from V4 by node(s): V3  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 7 (V7)
    The p-value is 1.40787e-17
    V2 is NOT separated from V4 by node(s): V7  (p-value<0.01)
    The value of j is 4
    Potential separating nodes: 1 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (V1)
    The p-value is 2.64846e-06
    V2 is NOT separated from V5 by node(s): V1  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (V3)
    The p-value is 0.0944292
    V2 is separated from V5 by node(s): V3  (p-value>0.01)
    The value of i is 2
    The value of j is 3
    Potential separating nodes: 1 2 5 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 1 (V1)
    The p-value is 0.00650387
    V3 is NOT separated from V4 by node(s): V1  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 3 -> 4 | k (True Vals): 2 (V2)
    The p-value is 0.868413
    V3 is separated from V4 by node(s): V2  (p-value>0.01)
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (V1)
    The p-value is 3.10595e-117
    V3 is NOT separated from V5 by node(s): V1  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (V2)
    The p-value is 5.05153e-105
    V3 is NOT separated from V5 by node(s): V2  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (V6)
    The p-value is 7.13973e-73
    V3 is NOT separated from V5 by node(s): V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (V7)
    The p-value is 1.21991e-94
    V3 is NOT separated from V5 by node(s): V7  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The value of l is 2
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 (V0 V3)
    The p-value is 1.47654e-12
    V1 is NOT separated from V5 by node(s): V0 V3  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 (V0 V6)
    The p-value is 0.000863371
    V1 is NOT separated from V5 by node(s): V0 V6  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 7 (V0 V7)
    The p-value is 4.49478e-05
    V1 is NOT separated from V5 by node(s): V0 V7  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 (V3 V6)
    The p-value is 1.99198e-10
    V1 is NOT separated from V5 by node(s): V3 V6  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 7 (V3 V7)
    The p-value is 6.06083e-12
    V1 is NOT separated from V5 by node(s): V3 V7  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 6 7 (V6 V7)
    The p-value is 0.00156137
    V1 is NOT separated from V5 by node(s): V6 V7  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 (V1 V4)
    The p-value is 1.14143e-10
    V2 is NOT separated from V3 by node(s): V1 V4  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 5 (V1 V5)
    The p-value is 1.29347e-07
    V2 is NOT separated from V3 by node(s): V1 V5  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (V4 V5)
    The p-value is 3.38235e-08
    V2 is NOT separated from V3 by node(s): V4 V5  (p-value<0.01)
    The value of j is 3
    Potential separating nodes: 3 7
    There are 2 neighbor(s).
    Efficient Setup: 1 -> 2 | 3 -> 4 | k (True Vals): 3 7 (V3 V7)
    The p-value is 1.66923e-06
    V2 is NOT separated from V4 by node(s): V3 V7  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (V1 V2)
    The p-value is 4.9879e-111
    V3 is NOT separated from V5 by node(s): V1 V2  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (V1 V6)
    The p-value is 7.25594e-80
    V3 is NOT separated from V5 by node(s): V1 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (V1 V7)
    The p-value is 2.39758e-102
    V3 is NOT separated from V5 by node(s): V1 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (V2 V6)
    The p-value is 4.10318e-71
    V3 is NOT separated from V5 by node(s): V2 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (V2 V7)
    The p-value is 3.88973e-81
    V3 is NOT separated from V5 by node(s): V2 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (V6 V7)
    The p-value is 1.5714e-67
    V3 is NOT separated from V5 by node(s): V6 V7  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The value of l is 3
    The value of i is 0
    The value of j is 4
    Potential separating nodes: 0 3 6 7
    There are 4 neighbor(s).
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 6 (V0 V3 V6)
    The p-value is 1.63002e-09
    V1 is NOT separated from V5 by node(s): V0 V3 V6  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 3 7 (V0 V3 V7)
    The p-value is 3.548e-11
    V1 is NOT separated from V5 by node(s): V0 V3 V7  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 0 6 7 (V0 V6 V7)
    The p-value is 0.00285872
    V1 is NOT separated from V5 by node(s): V0 V6 V7  (p-value<0.01)
    Efficient Setup: 0 -> 1 | 4 -> 5 | k (True Vals): 3 6 7 (V3 V6 V7)
    The p-value is 2.54582e-09
    V1 is NOT separated from V5 by node(s): V3 V6 V7  (p-value<0.01)
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (V1 V4 V5)
    The p-value is 4.79431e-07
    V2 is NOT separated from V3 by node(s): V1 V4 V5  (p-value<0.01)
    The value of j is 3
    Potential separating nodes: 3 7
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (V1 V2 V6)
    The p-value is 6.27627e-77
    V3 is NOT separated from V5 by node(s): V1 V2 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (V1 V2 V7)
    The p-value is 3.4474e-87
    V3 is NOT separated from V5 by node(s): V1 V2 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (V1 V6 V7)
    The p-value is 5.4123e-74
    V3 is NOT separated from V5 by node(s): V1 V6 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (V2 V6 V7)
    The p-value is 1.8416e-59
    V3 is NOT separated from V5 by node(s): V2 V6 V7  (p-value<0.01)
    The value of i is 3
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 3 (Name: V3, Efficient Number: 2)
    Neighborhood nodes under consideration: 1 2 4 | (V2(2) V3(3) V5(5))
    The value of l is 0
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of i is 2
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 4
    The value of l is 1
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 (V1)
    The p-value is 2.27427e-12
    V2 is NOT separated from V3 by node(s): V1  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 (V4)
    The p-value is 1.73265e-10
    V2 is NOT separated from V3 by node(s): V4  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 5 (V5)
    The p-value is 6.33935e-09
    V2 is NOT separated from V3 by node(s): V5  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 (V1)
    The p-value is 3.10595e-117
    V3 is NOT separated from V5 by node(s): V1  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 (V2)
    The p-value is 5.05153e-105
    V3 is NOT separated from V5 by node(s): V2  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 (V6)
    The p-value is 7.13973e-73
    V3 is NOT separated from V5 by node(s): V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 7 (V7)
    The p-value is 1.21991e-94
    V3 is NOT separated from V5 by node(s): V7  (p-value<0.01)
    The value of i is 4
    The value of l is 2
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 (V1 V4)
    The p-value is 1.14143e-10
    V2 is NOT separated from V3 by node(s): V1 V4  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 5 (V1 V5)
    The p-value is 1.29347e-07
    V2 is NOT separated from V3 by node(s): V1 V5  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 4 5 (V4 V5)
    The p-value is 3.38235e-08
    V2 is NOT separated from V3 by node(s): V4 V5  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 (V1 V2)
    The p-value is 4.9879e-111
    V3 is NOT separated from V5 by node(s): V1 V2  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 (V1 V6)
    The p-value is 7.25594e-80
    V3 is NOT separated from V5 by node(s): V1 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 7 (V1 V7)
    The p-value is 2.39758e-102
    V3 is NOT separated from V5 by node(s): V1 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 (V2 V6)
    The p-value is 4.10318e-71
    V3 is NOT separated from V5 by node(s): V2 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 7 (V2 V7)
    The p-value is 3.88973e-81
    V3 is NOT separated from V5 by node(s): V2 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 6 7 (V6 V7)
    The p-value is 1.5714e-67
    V3 is NOT separated from V5 by node(s): V6 V7  (p-value<0.01)
    The value of i is 4
    The value of l is 3
    The value of i is 1
    The value of j is 2
    Potential separating nodes: 1 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 2 -> 3 | k (True Vals): 1 4 5 (V1 V4 V5)
    The p-value is 4.79431e-07
    V2 is NOT separated from V3 by node(s): V1 V4 V5  (p-value<0.01)
    The value of i is 2
    The value of j is 4
    Potential separating nodes: 1 2 6 7
    There are 4 neighbor(s).
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 6 (V1 V2 V6)
    The p-value is 6.27627e-77
    V3 is NOT separated from V5 by node(s): V1 V2 V6  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 2 7 (V1 V2 V7)
    The p-value is 3.4474e-87
    V3 is NOT separated from V5 by node(s): V1 V2 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 1 6 7 (V1 V6 V7)
    The p-value is 5.4123e-74
    V3 is NOT separated from V5 by node(s): V1 V6 V7  (p-value<0.01)
    Efficient Setup: 2 -> 3 | 4 -> 5 | k (True Vals): 2 6 7 (V2 V6 V7)
    The p-value is 1.8416e-59
    V3 is NOT separated from V5 by node(s): V2 V6 V7  (p-value<0.01)
    The value of i is 4
    The final C matrix:
    0 0 0 0 1
    0 0 1 1 0
    0 1 0 0 1
    0 1 0 0 0
    1 0 1 0 0
    Conclusion of algorithm.
    Beginning loops to find v-structures.
    i: 0 (V1)
    j: 2 (V3)
    Potential k values: V5
    k: 4 (V5)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (V2)
    i: 2 (V3)
    i: 3 (V4)
    Repeated application of Meek's Rules:
    Round 1:
    No rules applied.
    Completed application of Meek's Rules.

# Run function (Sample Version)

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
    Element mapping for efficient ordering:
    1 0
    2 1
    3 2
    4 3
    5 4
    7 5
    FUNCTION createInitialAmat
    Target: 3
    Target: 4
    Initial Adj. Matrix:
    0 1 1 0 1 0
    1 0 1 1 1 1
    1 1 0 0 1 0
    0 1 0 0 1 1
    1 1 1 1 0 1
    0 1 0 1 1 0
    Beginning the Local PC algorithm over all neighborhoods.
    
    
    Finding skeleton for the neighborhood of target 3 (Name: lung, Efficient Number: 2)
    Neighborhood nodes under consideration: 0 1 2 4 | (tub(1) smoke(2) lung(3) either(5))
    The value of l is 0
    The value of i is 0
    The value of j is 1
    The p-value is 0.0664439
    tub is separated from smoke (p-value>0.01)
    The value of j is 2
    The p-value is 0.631592
    tub is separated from lung (p-value>0.01)
    The value of j is 4
    The p-value is 2.96476e-07
    The value of i is 1
    The value of j is 2
    The p-value is 3.57115e-12
    The value of j is 4
    The p-value is 3.62121e-05
    The value of i is 2
    The value of j is 4
    The p-value is 2.97187e-109
    The value of i is 4
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
    The value of j is 4
    Potential separating nodes: 1 3 4 6 7
    There are 5 neighbor(s).
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 1 (tub)
    The p-value is 2.64846e-06
    smoke is NOT separated from either by node(s): tub  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 4 -> 5 | k (True Vals): 3 (lung)
    The p-value is 0.0944292
    smoke is separated from either by node(s): lung  (p-value>0.01)
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
    0 0 1 1 0 1
    0 1 0 0 1 0
    0 1 0 0 1 1
    1 0 1 1 0 1
    0 1 0 1 1 0
    Conclusion of algorithm.
    
    
    Finding skeleton for the neighborhood of target 4 (Name: bronc, Efficient Number: 3)
    Neighborhood nodes under consideration: 1 3 4 5 | (smoke(2) bronc(4) either(5) dysp(7))
    The value of l is 0
    The value of i is 1
    The value of j is 5
    The p-value is 8.722e-05
    The value of j is 3
    The p-value is 6.44217e-19
    The value of i is 3
    The value of j is 4
    The p-value is 0.0431059
    bronc is separated from either (p-value>0.01)
    The value of j is 5
    The p-value is 6.74668e-84
    The value of i is 4
    The value of j is 5
    The p-value is 9.48354e-32
    The value of i is 5
    The value of l is 1
    The value of i is 1
    The value of j is 5
    Potential separating nodes: 3 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 (lung)
    The p-value is 4.7219e-12
    smoke is NOT separated from dysp by node(s): lung  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 4 (bronc)
    The p-value is 0.0018733
    smoke is NOT separated from dysp by node(s): bronc  (p-value<0.01)
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 5 (either)
    The p-value is 2.3399e-12
    smoke is NOT separated from dysp by node(s): either  (p-value<0.01)
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
    The value of j is 5
    Potential separating nodes: 3 4 5
    There are 3 neighbor(s).
    Efficient Setup: 1 -> 2 | 5 -> 7 | k (True Vals): 3 4 (lung bronc)
    The p-value is 0.53713
    smoke is separated from dysp by node(s): lung bronc  (p-value>0.01)
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
    j: 2 (lung)
    Potential k values: either
    k: 4 (either)
    Separation Set: -1 | V-Structure (True Numbering): 1*->5<-*3
    i: 1 (smoke)
    i: 2 (lung)
    i: 3 (bronc)
    j: 4 (either)
    Potential k values: dysp
    k: 5 (dysp)
    Separation Set: -1 | V-Structure (True Numbering): 4*->7<-*5
    i: 4 (either)
    Repeated application of Meek's Rules:
    Round 1:
    No rules applied.
    Completed application of Meek's Rules.
    Rule 0: 2
    Rule 1: 0
    Rule 2: 0
    Rule 3: 0
    Rule 4: 0
         [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    [1,]    0    0    0    0    0    0    0    0
    [2,]    0    0    0    0    0    1    0    0
    [3,]    0    0    0    1    1    0    0    0
    [4,]    0    0    1    0    0    1    0    0
    [5,]    0    0    1    0    0    0    0    1
    [6,]    0    0    0    0    0    0    0    1
    [7,]    0    0    0    0    0    0    0    0
    [8,]    0    0    0    0    0    0    0    0

# Testing rule 1

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 1 1
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 1
    0 0 0 0 1 0 1 0
    Meek's Rule 1: 3 -> 7
    Meek's Rule 1: 8 -> 5
    There was a change
    Rules Used (1) 2

# Test rule 1 no change

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    There was no change
    Rules Used (1) 0
           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       0   0     0    0     0      1    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

# Testing rule 1 (2)

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 1 0 1 1
    0 0 0 0 0 1 0 0
    0 0 1 0 0 0 0 1
    0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 1
    0 0 0 0 1 0 1 0
    Meek's Rule 1: 3 -> 5
    Meek's Rule 1: 3 -> 7
    There was a change
    Rules Used (1) 2

# Testing rule 2

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 0 0 1 0 1
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 1 1
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    1 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 1
    1 0 0 0 1 0 1 0
    Meek's Rule 2: 1 -> 6
    Meek's Rule 2: 1 -> 8
    There was a change
    Rules Used (2) 2

# Test rule 2 no change

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    There was no change
    Rules Used (2) 0
           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       0   0     0    0     0      1    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

# Testing rule 3

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 1 0 0 0 0
    0 0 0 1 1 1 1 0
    1 0 0 1 0 0 0 0
    1 0 0 0 0 0 0 1
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Meek's Rule 3: 2 -> 7
    There was a change
    Rules Used (3) 1

# Test rule 3 no change

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    There was no change
    Rules Used (3) 0
           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       0   0     0    0     0      1    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

# Testing rule 4

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 0 0 0 0 0
    0 0 1 1 1 1 1 0
    1 0 0 1 0 0 0 0
    0 0 1 0 0 0 0 1
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    Meek's Rule 4: 3 -> 4
    There was a change
    Rules Used (4) 1

# Test rule 4 no change

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 1 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 1 1
    0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0
    There was no change
    Rules Used (4) 0
           asia tub smoke lung bronc either xray dysp
    asia      0   1     0    0     0      0    0    0
    tub       0   0     0    0     0      1    0    0
    smoke     0   0     0    1     1      0    0    0
    lung      0   0     0    0     0      1    0    0
    bronc     0   0     0    0     0      0    0    1
    either    0   0     0    0     0      0    1    1
    xray      0   0     0    0     0      0    0    0
    dysp      0   0     0    0     0      0    0    0

# Testing all rules together

    Population Version (C++):
    There are 8 targets.
    Targets: 1 2 3 4 5 6 7 8
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
    Node: 0
    Node: 1
    Node: 2
    Node: 3
    Node: 4
    Node: 5
    Node: 6
    Node: 7
    All nodes from neighborhoods:
    0, 1, 2, 3, 4, 5, 6, 7
    There are 8 nodes in the DAG.
    There are 8 nodes in the neighborhood.
    All nodes being considered: 0 1 2 3 4 5 6 7
    Our starting matrix is 8x8.
    0 1 1 1 1 1 1 1
    1 0 1 1 1 1 1 1
    1 1 0 1 1 1 1 1
    1 1 1 0 1 1 1 1
    1 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    1 1 1 1 1 1 0 1
    1 1 1 1 1 1 1 0
    
    
    
    Our initial separating sets:
    S_{0,0} = nan S_{0,1} = nan S_{0,2} = nan S_{0,3} = nan S_{0,4} = nan S_{0,5} = nan S_{0,6} = nan S_{0,7} = nan 
    S_{1,0} = nan S_{1,1} = nan S_{1,2} = nan S_{1,3} = nan S_{1,4} = nan S_{1,5} = nan S_{1,6} = nan S_{1,7} = nan 
    S_{2,0} = nan S_{2,1} = nan S_{2,2} = nan S_{2,3} = nan S_{2,4} = nan S_{2,5} = nan S_{2,6} = nan S_{2,7} = nan 
    S_{3,0} = nan S_{3,1} = nan S_{3,2} = nan S_{3,3} = nan S_{3,4} = nan S_{3,5} = nan S_{3,6} = nan S_{3,7} = nan 
    S_{4,0} = nan S_{4,1} = nan S_{4,2} = nan S_{4,3} = nan S_{4,4} = nan S_{4,5} = nan S_{4,6} = nan S_{4,7} = nan 
    S_{5,0} = nan S_{5,1} = nan S_{5,2} = nan S_{5,3} = nan S_{5,4} = nan S_{5,5} = nan S_{5,6} = nan S_{5,7} = nan 
    S_{6,0} = nan S_{6,1} = nan S_{6,2} = nan S_{6,3} = nan S_{6,4} = nan S_{6,5} = nan S_{6,6} = nan S_{6,7} = nan 
    S_{7,0} = nan S_{7,1} = nan S_{7,2} = nan S_{7,3} = nan S_{7,4} = nan S_{7,5} = nan S_{7,6} = nan S_{7,7} = nan 
    Element mapping for efficient ordering (True -> Efficient):
    0 0
    1 1
    2 2
    3 3
    4 4
    5 5
    6 6
    7 7
    FUNCTION createInitialAmat
    Target: 0
    Target: 1
    Target: 2
    Target: 3
    Target: 4
    Target: 5
    Target: 6
    Target: 7
    Initial Adj. Matrix:
    0 1 0 1 0 1 0 0
    1 0 1 1 1 1 1 1
    0 1 0 1 1 1 0 1
    1 1 1 0 1 1 1 1
    0 1 1 1 0 1 1 1
    1 1 1 1 1 0 1 1
    0 1 0 1 1 1 0 1
    0 1 1 1 1 1 1 0
    We are manually changing the current adjacency matrix.
    0 1 1 0 0 0 0 0
    0 0 1 1 1 1 1 1
    1 1 0 1 0 0 0 0
    0 0 1 0 0 0 0 1
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 1 0
    0 1 0 0 0 0 0 0
    0 1 0 1 0 0 0 0
    Repeated application of Meek's Rules:
    Round 1:
    Meek's Rule 1: 2 -> 5
    Meek's Rule 1: 2 -> 6
    Meek's Rule 1: 2 -> 7
    Meek's Rule 1: 2 -> 8
    Meek's Rule 4: 3 -> 4
    Round 2:
    Meek's Rule 1: 4 -> 8
    Round 3:
    No rules applied.
    Completed application of Meek's Rules.
    Rule 0: 0
    Rule 1: 5
    Rule 2: 0
    Rule 3: 0
    Rule 4: 1

