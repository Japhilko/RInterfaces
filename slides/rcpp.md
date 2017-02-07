# rcpp
Jan-Philipp Kolb  
7 Februar 2017  



## 

- [High performance functions with Rcpp](http://adv-r.had.co.nz/Rcpp.html)



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

