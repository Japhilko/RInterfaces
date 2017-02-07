# mermaids
Jan-Philipp Kolb  
7 Februar 2017  



## Was ist Mermaid

- [](https://knsv.github.io/mermaid/)

## 

- [Getting started](http://rich-iannone.github.io/DiagrammeR/docs.html)



```r
# install.packages('DiagrammeR')
library('DiagrammeR')
```

## Creating a simple graph


```r
DiagrammeR("
  graph LR
    A-->B
    A-->C
    C-->E
    B-->D
    C-->D
    D-->F
    E-->F
")
```

<!--html_preserve--><div id="htmlwidget-3fa1014049dd26b9d0e1" style="width:672px;height:480px;" class="DiagrammeR html-widget"></div>
<script type="application/json" data-for="htmlwidget-3fa1014049dd26b9d0e1">{"x":{"diagram":"\n  graph LR\n    A-->B\n    A-->C\n    C-->E\n    B-->D\n    C-->D\n    D-->F\n    E-->F\n"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Creating a GANTT diagramm


```r
DiagrammeR("
gantt
        dateFormat  YYYY-MM-DD
        title Adding GANTT diagram functionality to mermaid
        section A section
        Completed task            :done,    des1, 2014-01-06,2014-01-08
        Active task               :active,  des2, 2014-01-09, 3d
        Future task               :         des3, after des2, 5d
        Future task2               :         des4, after des3, 5d
        section Critical tasks
        Completed task in the critical line :crit, done, 2014-01-06,24h
        Implement parser and jison          :crit, done, after des1, 2d
        Create tests for parser             :crit, active, 3d
        Future task in critical line        :crit, 5d
        Create tests for renderer           :2d
        Add to mermaid                      :1d
")
```

<!--html_preserve--><div id="htmlwidget-ff63d32dc294e112ccad" style="width:672px;height:480px;" class="DiagrammeR html-widget"></div>
<script type="application/json" data-for="htmlwidget-ff63d32dc294e112ccad">{"x":{"diagram":"\ngantt\n        dateFormat  YYYY-MM-DD\n        title Adding GANTT diagram functionality to mermaid\n        section A section\n        Completed task            :done,    des1, 2014-01-06,2014-01-08\n        Active task               :active,  des2, 2014-01-09, 3d\n        Future task               :         des3, after des2, 5d\n        Future task2               :         des4, after des3, 5d\n        section Critical tasks\n        Completed task in the critical line :crit, done, 2014-01-06,24h\n        Implement parser and jison          :crit, done, after des1, 2d\n        Create tests for parser             :crit, active, 3d\n        Future task in critical line        :crit, 5d\n        Create tests for renderer           :2d\n        Add to mermaid                      :1d\n"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

