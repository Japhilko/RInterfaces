# DiagrammeR
Jan-Philipp Kolb  
7 Februar 2017  



## Um was geht es?

- [Getting started](http://rich-iannone.github.io/DiagrammeR/docs.html)

- [Das R-Paket DiagrammeR](http://rich-iannone.github.io/DiagrammeR/index.html)


```r
install.packages('DiagrammeR')
```




```r
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

<!--html_preserve--><div id="htmlwidget-e965ce2222b47b2002dd" style="width:672px;height:480px;" class="DiagrammeR html-widget"></div>
<script type="application/json" data-for="htmlwidget-e965ce2222b47b2002dd">{"x":{"diagram":"\n  graph LR\n    A-->B\n    A-->C\n    C-->E\n    B-->D\n    C-->D\n    D-->F\n    E-->F\n"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## [Creating a GANTT diagramm](https://knsv.github.io/mermaid/#mermaid)


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

<!--html_preserve--><div id="htmlwidget-a01586bf5966c03e4ca2" style="width:672px;height:480px;" class="DiagrammeR html-widget"></div>
<script type="application/json" data-for="htmlwidget-a01586bf5966c03e4ca2">{"x":{"diagram":"\ngantt\n        dateFormat  YYYY-MM-DD\n        title Adding GANTT diagram functionality to mermaid\n        section A section\n        Completed task            :done,    des1, 2014-01-06,2014-01-08\n        Active task               :active,  des2, 2014-01-09, 3d\n        Future task               :         des3, after des2, 5d\n        Future task2               :         des4, after des3, 5d\n        section Critical tasks\n        Completed task in the critical line :crit, done, 2014-01-06,24h\n        Implement parser and jison          :crit, done, after des1, 2d\n        Create tests for parser             :crit, active, 3d\n        Future task in critical line        :crit, 5d\n        Create tests for renderer           :2d\n        Add to mermaid                      :1d\n"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## Ein weiteres Gantt Diagramm


```r
library(DiagrammeR)
mermaid("
gantt
dateFormat  YYYY-MM-DD
title A Very Nice Gantt Diagram

section Basic Tasks
This is completed             :done,          first_1,    2014-01-06, 2014-01-08
This is active                :active,        first_2,    2014-01-09, 3d
Do this later                 :               first_3,    after first_2, 5d
Do this after that            :               first_4,    after first_3, 5d

section Important Things
Completed, critical task      :crit, done,    import_1,   2014-01-06,24h
Also done, also critical      :crit, done,    import_2,   after import_1, 2d
Doing this important task now :crit, active,  import_3,   after import_2, 3d
Next critical task            :crit,          import_4,   after import_3, 5d

section The Extras
First extras                  :active,        extras_1,   after import_4,  3d
Second helping                :               extras_2,   after extras_1, 20h
More of the extras            :               extras_3,   after extras_1, 48h
")
```

<!--html_preserve--><div id="htmlwidget-7d1117d03e1510c66987" style="width:672px;height:480px;" class="DiagrammeR html-widget"></div>
<script type="application/json" data-for="htmlwidget-7d1117d03e1510c66987">{"x":{"diagram":"\ngantt\ndateFormat  YYYY-MM-DD\ntitle A Very Nice Gantt Diagram\n\nsection Basic Tasks\nThis is completed             :done,          first_1,    2014-01-06, 2014-01-08\nThis is active                :active,        first_2,    2014-01-09, 3d\nDo this later                 :               first_3,    after first_2, 5d\nDo this after that            :               first_4,    after first_3, 5d\n\nsection Important Things\nCompleted, critical task      :crit, done,    import_1,   2014-01-06,24h\nAlso done, also critical      :crit, done,    import_2,   after import_1, 2d\nDoing this important task now :crit, active,  import_3,   after import_2, 3d\nNext critical task            :crit,          import_4,   after import_3, 5d\n\nsection The Extras\nFirst extras                  :active,        extras_1,   after import_4,  3d\nSecond helping                :               extras_2,   after extras_1, 20h\nMore of the extras            :               extras_3,   after extras_1, 48h\n"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->



## Links

- [Github repo](https://github.com/knsv/mermaid)

- [Gantt chart](http://stackoverflow.com/questions/3550341/gantt-charts-with-r)

- [Javascript Bibliothek mermaid](https://knsv.github.io/mermaid/)

- [viz.js](https://github.com/mdaines/viz.js)
