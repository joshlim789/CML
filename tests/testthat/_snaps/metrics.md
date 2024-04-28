# Test inTargetNeighborhood with verbose

    5 is in the neighborhood of target node 1
    [1] TRUE

# SharedNeighborhood with verbose (I)

    Nodes 5 and 4 don't share the same target neighborhood
    [1] FALSE

# SharedNeighborhood with verbose (II)

    5 and 4 are in the neighborhood of target 4
    [1] TRUE

# Additional pra tests (1)

    t: 2 | i: 0
    t: 2 | i: 1
    t: 2 | i: 3 | Est. Graph: Parent | True graph: Not a parent | Undirected edge in True Graph | Added: 1
    t: 2 | i: 4 | Est. Graph: Not a parent | True graph: Parent | Missing: 1
    t: 2 | i: 5
    t: 2 | i: 6
    t: 2 | i: 7
    t: 2 | i: 8
    t: 2 | i: 9
    t: 2 | i: 10
    t: 6 | i: 0
    t: 6 | i: 1
    t: 6 | i: 2
    t: 6 | i: 3
    t: 6 | i: 4
    t: 6 | i: 5
    t: 6 | i: 7
    t: 6 | i: 8
    t: 6 | i: 9 | Est. Graph: Not a parent | True graph: Parent | Missing: 2
    t: 6 | i: 10
    t: 10 | i: 0
    t: 10 | i: 1
    t: 10 | i: 2
    t: 10 | i: 3
    t: 10 | i: 4
    t: 10 | i: 5
    t: 10 | i: 6
    t: 10 | i: 7 | Est. Graph: Not a parent | True graph: Parent | Missing: 3
    t: 10 | i: 8 | Est. Graph: Parent | True graph: Parent | Correct: 1
    t: 10 | i: 9
    $missing
    [1] 3
    
    $added
    [1] 1
    
    $correct
    [1] 1
    
    $potential
    [1] 0
    

---

    t: 2 | i: 0
    t: 2 | i: 1
    t: 2 | i: 3 | Est. Graph: Parent | True graph: Not a parent | Undirected edge in True Graph | Added: 1
    t: 2 | i: 4 | Est. Graph: Not a parent | True graph: Parent | Missing: 1
    t: 2 | i: 5
    t: 2 | i: 6
    t: 2 | i: 7
    t: 2 | i: 8
    t: 2 | i: 9
    t: 2 | i: 10
    t: 6 | i: 0
    t: 6 | i: 1
    t: 6 | i: 2
    t: 6 | i: 3
    t: 6 | i: 4
    t: 6 | i: 5
    t: 6 | i: 7
    t: 6 | i: 8
    t: 6 | i: 9 | Est. Graph: Not a parent | True graph: Parent | Missing: 2
    t: 6 | i: 10
    t: 10 | i: 0
    t: 10 | i: 1
    t: 10 | i: 2
    t: 10 | i: 3
    t: 10 | i: 4
    t: 10 | i: 5
    t: 10 | i: 6
    t: 10 | i: 7 | Undirected edge in Est. Graph | Potential: 1
    t: 10 | i: 8 | Est. Graph: Parent | True graph: Parent | Correct: 1
    t: 10 | i: 9
    $missing
    [1] 2
    
    $added
    [1] 1
    
    $correct
    [1] 1
    
    $potential
    [1] 1
    

# Additional pra tests (2)

    t: 2 | i: 0
    t: 2 | i: 1
    t: 2 | i: 3
    t: 2 | i: 4 | Est. Graph: Not a parent | True graph: Parent | Missing: 1
    t: 2 | i: 5
    t: 2 | i: 6 | Est. Graph: Parent | True graph: Not a parent | Added: 1
    t: 2 | i: 7
    t: 2 | i: 8
    t: 2 | i: 9
    t: 2 | i: 10
    t: 6 | i: 0
    t: 6 | i: 1
    t: 6 | i: 2
    t: 6 | i: 3
    t: 6 | i: 4
    t: 6 | i: 5
    t: 6 | i: 7
    t: 6 | i: 8
    t: 6 | i: 9 | Est. Graph: Not a parent | True graph: Parent | Missing: 2
    t: 6 | i: 10
    t: 10 | i: 0
    t: 10 | i: 1
    t: 10 | i: 2
    t: 10 | i: 3
    t: 10 | i: 4
    t: 10 | i: 5
    t: 10 | i: 6
    t: 10 | i: 7 | Est. Graph: Not a parent | True graph: Parent | Missing: 3
    t: 10 | i: 8 | Est. Graph: Parent | True graph: Parent | Correct: 1
    t: 10 | i: 9
    $missing
    [1] 3
    
    $added
    [1] 1
    
    $correct
    [1] 1
    
    $potential
    [1] 0
    

# Additional pra tests (3)

    t: 2 | i: 0
    t: 2 | i: 1
    t: 2 | i: 3 | Est. Graph: Parent | True graph: Not a parent | Undirected edge in True Graph | Added: 1
    t: 2 | i: 4 | Est. Graph: Not a parent | True graph: Parent | Missing: 1
    t: 2 | i: 5
    t: 2 | i: 6
    t: 2 | i: 7
    t: 2 | i: 8
    t: 2 | i: 9
    t: 2 | i: 10
    t: 6 | i: 0
    t: 6 | i: 1
    t: 6 | i: 2
    t: 6 | i: 3
    t: 6 | i: 4
    t: 6 | i: 5
    t: 6 | i: 7
    t: 6 | i: 8
    t: 6 | i: 9 | Est. Graph: Not a parent | True graph: Parent | Missing: 2
    t: 6 | i: 10
    t: 10 | i: 0
    t: 10 | i: 1
    t: 10 | i: 2
    t: 10 | i: 3
    t: 10 | i: 4
    t: 10 | i: 5
    t: 10 | i: 6
    t: 10 | i: 7 | Undirected edge in Est. Graph | Potential: 1
    t: 10 | i: 8 | Est. Graph: Parent | True graph: Parent | Correct: 1
    t: 10 | i: 9
    $missing
    [1] 2
    
    $added
    [1] 1
    
    $correct
    [1] 1
    
    $potential
    [1] 1
    

# Ancestral Relations

    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 0
    

# Ancestral checks for cml on asia

    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 0
    

# Ancestral checks for cml on asia (2)

    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 0
    

# Testing ancestral relations (1)

    Looking at nodes 1 and 13...incorrect ancestor
    Looking at nodes 4 and 13...nothing
    Looking at nodes 8 and 12...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 1
    
    $TotalAncestralEdges
    [1] 3
    

# Testing ancestral relations (2)

    Looking at nodes 0 and 11...nothing
    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Testing ancestral relations (3)

    Looking at nodes 0 and 11...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

---

    Looking at nodes 4 and 6...nothing
    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Testing ancestral relations (4)

    Looking at nodes 4 and 6...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Testing ancestral relations (5)

    Looking at nodes 4 and 5...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Testing ancestral relations (6)

    Looking at nodes 0 and 3...incorrect ancestor
    Looking at nodes 4 and 5...nothing
    $CorrectAncestors
    [1] 0
    
    $IncorrectAncestors
    [1] 1
    
    $TotalAncestralEdges
    [1] 2
    

# Completing ancestral checks

    Looking at nodes 2 and 3...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Completing ancestral checks (2)

    Looking at nodes 2 and 3...true ancestor
    $CorrectAncestors
    [1] 1
    
    $IncorrectAncestors
    [1] 0
    
    $TotalAncestralEdges
    [1] 1
    

# Testing Overall F1 Score Function

    Edge between 0 and 1 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=1
    Edge between 2 and 3 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=2
    Edge between 3 and 4 match. TP=1
    Edge between 5 and 6 appears in true graph but not in the estimated graph. FN=1
    Edge between 6 and 7 match. TP=2
    [1] 0.5714286

# Testing Overall F1 (2)

    Edge between 0 and 1 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=1
    Edge between 2 and 3 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=2
    Edge between 3 and 4 match. TP=1
    Edge between 5 and 6 match. TP=2
    Edge between 6 and 7 match. TP=3
    [1] 0.75

# Testing Overall F1 (3)

    Edge between 0 and 1 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=1
    Edge between 2 and 3 appears in true graph and in the estimated graph, but they have different orientations. Incorrect Orientation=2
    Edge between 3 and 4 match. TP=1
    Edge between 5 and 6 appears in true graph but not in the estimated graph. FN=1
    Edge between 5 and 7 appears in estimated graph but not in the true graph. FP=1
    Edge between 6 and 7 appears in true graph but not in the estimated graph. FN=2
    [1] 0.2857143

# checking metric functions for cml

      cml__skel_fp cml__skel_fn cml__skel_tp cml__v_fn cml__v_fp cml__v_tp
    1            0            0            6         2         0         0
      cml_pra_fn cml_pra_fp cml_pra_tp cml_pra_potential cml_ancestors_correct
    1          0          0          3                 2                     0
      cml_ancestors_incorrect cml_ancestors_total cml_overall_f1
    1                       0                   0            0.8

# checking metric functions for pc

      pc__skel_fp pc__skel_fn pc__skel_tp pc__v_fn pc__v_fp pc__v_tp pc_pra_fn
    1           0           0           6        2        1        0         5
      pc_pra_fp pc_pra_tp pc_pra_potential pc_ancestors_correct
    1         2         0                0                    0
      pc_ancestors_incorrect pc_ancestors_total pc_overall_f1
    1                      0                  0             0

# Check allMetrics (1)

      pc__skel_fp pc__skel_fn pc__skel_tp pc__v_fn pc__v_fp pc__v_tp pc_pra_fn
    1           2           0           2        0        0        0         0
      pc_pra_fp pc_pra_tp pc_pra_potential pc_ancestors_correct
    1         2         0                0                    2
      pc_ancestors_incorrect pc_ancestors_total pc_overall_f1
    1                      0                  2             0

# Check allMetrics (2)

      pc__skel_fp pc__skel_fn pc__skel_tp pc__v_fn pc__v_fp pc__v_tp pc_pra_fn
    1           2           0           2        0        0        0         0
      pc_pra_fp pc_pra_tp pc_pra_potential pc_ancestors_correct
    1         2         0                0                    1
      pc_ancestors_incorrect pc_ancestors_total pc_overall_f1
    1                      1                  2             0

# Check allMetrics (3)

      pc__skel_fp pc__skel_fn pc__skel_tp pc__v_fn pc__v_fp pc__v_tp pc_pra_fn
    1           2           0           2        0        0        0         0
      pc_pra_fp pc_pra_tp pc_pra_potential pc_ancestors_correct
    1         2         0                0                    0
      pc_ancestors_incorrect pc_ancestors_total pc_overall_f1
    1                      1                  2             0

# Detailed MB Recovery Stats

    [[1]]
      mb_children_fn mb_children_tp mb_parents_fn mb_parents_tp mb_spouses_fn
    1              0              1             0             0             1
      mb_spouses_tp mb_total_fp
    1             0           0
    

# Detailed MB Recovery Stats (2)

    [[1]]
      mb_children_fn mb_children_tp mb_parents_fn mb_parents_tp mb_spouses_fn
    1              0              1             0             0             1
      mb_spouses_tp mb_total_fp
    1             0           0
    
    [[2]]
      mb_children_fn mb_children_tp mb_parents_fn mb_parents_tp mb_spouses_fn
    1              1              0             0             0             1
      mb_spouses_tp mb_total_fp
    1             0           1
    
    [[3]]
      mb_children_fn mb_children_tp mb_parents_fn mb_parents_tp mb_spouses_fn
    1              0              0             0             3             0
      mb_spouses_tp mb_total_fp
    1             0           0
    

