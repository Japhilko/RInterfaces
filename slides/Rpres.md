<style>
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}
.small-code pre code {
  font-size: 1em;
}
.footer {
    color: black; background: #E8E8E8;
    position: fixed; top: 90%;
    text-align:center; width:100%;
}
</style>

R presentations
========================================================
author: Jan-Philipp Kolb
date: 11.04.2017
autosize: true

First Slide
========================================================

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

- Bullet 1
- Bullet 2
- Bullet 3

<div class="footer" style="margin-top:-150px;font-size:80%;">
This text is my footer text<br>
Normally, the top of the text block would appear 90% of the way down the slide (i.e., at the bottom), because that is how the 'top' property is defined in the 'footer' style. However this particular footer wraps onto multiple lines, so we shift it up by specifying a negative value for the 'margin-top' property.</div>

Slide With Code
========================================================


```r
summary(cars)
```

```
     speed           dist       
 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](Rpres-figure/unnamed-chunk-2-1.png)
