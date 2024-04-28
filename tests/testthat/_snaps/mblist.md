# Initialization of Markov Blanket Object works (Sample)

    Using estimated MB's to form list.
    MBList Size: 7
    Markov Blankets:
    0: 3
    1: 2 5
    2: 1 5 6
    3: 0 4 6
    4: 3
    5: 1 2
    6: 2 3

# Initialization for Population Version works

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

# Initialization for Population Version with fewer nodes

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

# Test silencer

    Code
      testSilencer(c(0, 1, 3, 5), asiaDAG, 0, 5)
    Output
      Using estimated MB's to form list.
      MBList Size: 4
      Markov Blankets:
      0: 1
      1: 0 5
      3: 2 5
      5: 1 3 6 7
      Round 1:
      Node: 0
      Node: 5
      All nodes from neighborhoods:
      1, 3, 6, 7
      Round 2:
      Round 3:
      Node: 5
      Node: 0
      All nodes from neighborhoods:
      1, 3, 6, 7

