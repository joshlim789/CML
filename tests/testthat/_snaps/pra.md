# Testing Parent Recovery Accuracy Metrics

    t: 2 | i: 0 | Est. Graph: Not a parent | True graph: Parent | Missing: 1
    t: 2 | i: 1 | Est. Graph: Parent | True graph: Not a parent | Added: 1
    t: 2 | i: 3 | Est. Graph: Parent | True graph: Not a parent | Added: 2
    t: 2 | i: 4
    t: 2 | i: 5
    t: 4 | i: 0
    t: 4 | i: 1 | Est. Graph: Parent | True graph: Parent | Correct: 1
    t: 4 | i: 2
    t: 4 | i: 3 | Undirected edge in Est. Graph | Potential: 1
    t: 4 | i: 5 | Est. Graph: Parent | True graph: Not a parent | Undirected edge in True Graph | Added: 3
    $missing
    [1] 1
    
    $added
    [1] 3
    
    $correct
    [1] 1
    
    $potential
    [1] 1
    

---

      cml__skel_fp cml__skel_fn cml__skel_tp cml__v_fn cml__v_fp cml__v_tp
    1            1            0            5         1         2         0
      cml_pra_fn cml_pra_fp cml_pra_tp cml_pra_potential cml_ancestors_correct
    1          1          3          1                 1                     0
      cml_ancestors_incorrect cml_ancestors_total cml_overall_f1
    1                       0                   0      0.3333333

