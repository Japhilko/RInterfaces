# R Schnittstellen - Hochperfomanter Code
Jan-Philipp Kolb  
9 Mai 2017  



## C++ Integration - Überblick über das Paket `rcpp`





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

## Rcpp

![](figure/cppimages.jpg)

## Einleitung

- R ist in C geschrieben
- Die Nutzung der Schnittstelle zu C liegt nahe

![](https://cdn.worldvectorlogo.com/logos/c.svg)
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

## Resourcen

- [Youtube Video with Dirk Edelbuettel](https://www.youtube.com/watch?v=ZKx5duewv-0)

- Oliver Heidmann - [Programmieren in R - 
Rcpp](https://wr.informatik.uni-hamburg.de/_media/teaching/sommersemester_2016/pir-16-oliver_heidmann-report.pdf)


##	Überblick über Möglichkeiten des Parallel Computings - Paket parallel

