# rcpp
Jan-Philipp Kolb  
9 Mai 2017  



<!-- 
folgendes stammt aus dem EMBL Kurs
--> 

## Warum die Integration von c++

Robert Gentleman, in R Programming for Bioinformatics, 2008,
about R's built-in C interfaces:

> Since R is not compiled, in some situations its performance can be substantially improved by writing code in a compiled language. There are also reasons not to write code in other languages, and in particular we caution against premature optimization, prototyping in R
is often cost effective. And in our experience very few routines need to be implemented in other languages for effiiency reasons. Another substantial reason not to use an implementation in some other language is increased complexity. The use of another language almost always
results in higher maintenance costs and less stability. In addition, any extensions or enhancements of the code will require someone that is proficient in both R and the other language.


- Rcpp does make some of the above caution statements slightly less
critical.


## Warum und wann?

- Warum? - R wird langsam oder hat Probleme bei der  Speicherverwaltung: zum Beispiel bei Schleifen, die nicht vektorisiert werden können.

- Wann? - wenn man es mit Rcode nicht besser hinbekommt und man den langsamen Code identifiziert hat.

## Voraussetzung Compiler

Für Windows, Rtools

1. http://cran.r-project.org/bin/windows/Rtools/
2. http://cran.r-project.org/doc/manuals/R-admin.html#The-Windows-toolset

Für Mac, Xcode

3. http://cran.r-project.org/doc/manuals/R-admin.html#Installing-R-under-_0028Mac_0029-OS-X
4. http://cran.r-project.org/doc/manuals/R-admin.html#Mac-OS-X

## Was wir nutzen werden

Wir werden die folgenden beiden Pakete nutzen:

- `inline` und die `cfunction` um Inline C code zu schreiben, der on-the-fly kompiliert wird (Es gibt auch eine `cxxfunction` für
C++ Code).

- `Rcpp`, und die Nutzung der Funktion `cppFunction` 

## [`Rcpp` ist das am meisten heruntergeladene Paket](http://www.kdnuggets.com/2015/06/top-20-r-packages.html)

![](http://www.kdnuggets.com/wp-content/uploads/top-20-r-packages-downloads.jpg)



## Das Paket `inline`


```r
install.packages("inline")
```


```r
library(inline)
citation("inline")
```

```
## 
## To cite package 'inline' in publications use:
## 
##   Oleg Sklyar, Duncan Murdoch, Mike Smith, Dirk Eddelbuettel,
##   Romain Francois and Karline Soetaert (2015). inline: Functions
##   to Inline C, C++, Fortran Function Calls from R. R package
##   version 0.3.14. https://CRAN.R-project.org/package=inline
## 
## A BibTeX entry for LaTeX users is
## 
##   @Manual{,
##     title = {inline: Functions to Inline C, C++, Fortran Function Calls from R},
##     author = {Oleg Sklyar and Duncan Murdoch and Mike Smith and Dirk Eddelbuettel and Romain Francois and Karline Soetaert},
##     year = {2015},
##     note = {R package version 0.3.14},
##     url = {https://CRAN.R-project.org/package=inline},
##   }
## 
## ATTENTION: This citation information has been auto-generated from
## the package DESCRIPTION file and may need manual editing, see
## 'help("citation")'.
```




## Rcpp

![](figure/cppimages.jpg)

## Einleitung

- R ist in C geschrieben
- Die Nutzung der Schnittstelle zu C liegt nahe
<!--
![](https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTXmGIhv5uLPOs2czuAQZ5lQaTepoiuROC2SVgMHPw1zv3_6ggqmzwZoEL8rA)
-->
![](http://www.rcpp.org/book/seamless.png)

## Das R-Paket CPP 

- [R Simulationsmodelle bis zu 20 mal schneller](https://www.r-bloggers.com/make-your-r-simulation-models-20-times-faster/)

- [Hohe Performanz mit Rcpp](http://adv-r.had.co.nz/Rcpp.html)



```r
install.packages("Rcpp")
```


```r
library(Rcpp)
cppFunction('int add(int x, int y, int z) {
  int sum = x + y + z;
  return sum;
}')
# add works like a regular R function
add
```


```r
add(1, 2, 3)
```


## [Rcpp](http://dirk.eddelbuettel.com/code/rcpp/Rcpp-introduction.pdf)

[Tutorial on Rcpp by Hadley Wickham](http://adv-r.had.co.nz/Rcpp.html#rcpp-intro)


```r
library(Rcpp)
```

```
## 
## Attaching package: 'Rcpp'
```

```
## The following object is masked from 'package:inline':
## 
##     registerPlugin
```

![](figure/BuildTools.PNG)


```r
cppFunction('int add(int x, int y, int z) {
  int sum = x + y + z;
  return sum;
}')
```



```r
add(1, 2, 3)
```

## Benchmarking


```r
install.packages("microbenchmark")
```



```r
library(microbenchmark)
```

- [R-bloggers Artikel zu dem Paket `microbenchmark` ](https://www.r-bloggers.com/microbenchmarking-with-r/)

## Das Paket `rbenchmark`


```r
install.packages("rbenchmark")
```



```r
library(rbenchmark)
```

## Eine cpp Funktion zum aufsummieren 


```r
library(Rcpp)
cppFunction('
  double sumC(NumericVector x) {
    int n = x.size();
    double total = 0;
    for(int i = 0; i < n; ++i) {
      total += x[i];
    }
    return total;
  }
')
```

## [Ein erster Vergleich](http://www.quantide.com/ramarro-chapter-10/)


```r
y <- rnorm(1000000)
microbenchmark(
  sumC(y),
  sum(y)
)
```


## Resourcen

Youtube Videos

- [... mit Dirk Edelbuettel](https://www.youtube.com/watch?v=ZKx5duewv-0)

- [... R mit C++: Rcpp, RInside, und RProtobuf](https://www.youtube.com/watch?v=UZkaZhsOfT4#t=232)

- Oliver Heidmann - [Programmieren in R - 
Rcpp](https://wr.informatik.uni-hamburg.de/_media/teaching/sommersemester_2016/pir-16-oliver_heidmann-report.pdf)

- [Das Paket `cxxfunplus`](https://cran.r-project.org/web/packages/cxxfunplus/cxxfunplus.pdf)


```r
install.packages("cxxfunplus")
```

- [Rcpp: Seamless R and C++ Integration](www.quantide.com/R/ramarro-chapter-10/)

- [Rcpp Honig](https://www.r-bloggers.com/rcpphoney-introduction/)

