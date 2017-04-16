# Presentations
Jan-Philipp Kolb  
7 Februar 2017  




## Cascading Style Files

- [Custom CSS](http://rmarkdown.rstudio.com/html_document_format.html#custom_css)

- [CSS](https://en.wikipedia.org/wiki/Cascading_Style_Sheets)

- [CSS pro tipps](https://github.com/AllThingsSmitty/css-protips#use-a-css-reset)

## knitr Engines

- [knitr Language Engines](http://rmarkdown.rstudio.com/authoring_knitr_engines.html)

- [slidify](http://slidify.org/)

## Tables


```r
library(knitr)
a <- data.frame(a=1:10,b=10:1)
kable(table(a))
```



  1    2    3    4    5    6    7    8    9   10
---  ---  ---  ---  ---  ---  ---  ---  ---  ---
  0    0    0    0    0    0    0    0    0    1
  0    0    0    0    0    0    0    0    1    0
  0    0    0    0    0    0    0    1    0    0
  0    0    0    0    0    0    1    0    0    0
  0    0    0    0    0    1    0    0    0    0
  0    0    0    0    1    0    0    0    0    0
  0    0    0    1    0    0    0    0    0    0
  0    0    1    0    0    0    0    0    0    0
  0    1    0    0    0    0    0    0    0    0
  1    0    0    0    0    0    0    0    0    0

- [R Studio, and Presentations, and Git! Oh my!](https://www.r-bloggers.com/r-studio-and-presentations-and-git-oh-my/)

## Das CSS ändern

- [Farbe in HTML](http://tomheller.de/html-farben.html)
- [Eine Schriftart wählen](https://www.mediaevent.de/css/font-family.html)
- [Schriftformatierung](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung)
- [Weitere CSS Beispiele](https://www.w3.org/TR/WCAG20-TECHS/C22.html)

<style type="text/css">
body {
  color: red;
  background: #fff8dc;
  font-family:"Verdana";
  font-size:"xx-large";
  text-transform:uppercase;
  line-height:2em;
}
</style>

## Links

- [CSS Eigenschaften](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung/font-size)

- [CSS Schrifteigenschaften](https://wiki.selfhtml.org/wiki/CSS/Eigenschaften/Schriftformatierung)

- [HTML5 Folien](http://bashooka.com/coding/html-css-based-presentation-slides/)
