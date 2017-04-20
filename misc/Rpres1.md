Meine Erste Präsentation mit Markdown
========================================================
author: Jan-Philipp Kolb
date: Thu Apr 20 09:06:19 2017
autosize: true
transition: zoom
transition-speed: slow
font-family: 'Impact'
width: 1440
height: 900

Erste Folie
========================================================

Im folgenden werde ich mal diese Website durchgehen:
 <https://support.rstudio.com/hc/en-us/articles/200486468>.

- Erster Punkt
- Zweiter Punkt
- Dritter Punkt

Folie mit Code
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

Folie mit Graphik
========================================================

![plot of chunk unnamed-chunk-2](Rpres1-figure/unnamed-chunk-2-1.png)

Folie mit LaTeX Code
========================================================

$$
\begin{equation}\label{eq2}
t_{i} =\sum\limits_{k=1}^{M_{i} } {y_{ik} } =M_{i} \bar{Y}_{i} . 
\end{equation}
$$


Eine Folie mit zwei Spelten
====================================
Erste Spalte
***
Zweite Spalte


Mehr Platz auf der linken Seite
====================================
left: 70%

Erste Spalte
***
Zweite Spalte


Ein neues Kapitel einfügen
====================================
type: section


Anderer Folientyp
====================================
type: prompt

Noch ein anderer Folientyp
====================================
type: alert

Meine Folie
====================================
incremental: true

Zum Beispiel LaTeX code:
$$
\begin{equation}\label{eq2}
t_{i} =\sum\limits_{k=1}^{M_{i} } {y_{ik} } 
\end{equation}
$$

Kleinere Schriftgröße
====================================


<small>This sentence will appear smaller.</small>


My Slide
===================================
class: illustration

- Was taucht hier auf?

- Das Ergebnis ist hier zu sehen:

<http://rpubs.com/Japhilko82/FirstRpubs>
