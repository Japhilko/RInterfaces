## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,message=F,warning=F,eval=T)

## ----eval=F--------------------------------------------------------------
## install.packages("ggvis")

## ------------------------------------------------------------------------
library("ggvis")
library(dplyr)

## ------------------------------------------------------------------------
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points()

## ------------------------------------------------------------------------
mtcars %>% 
  ggvis(~wt, ~mpg, fill = ~factor(cyl)) %>% 
  layer_points() %>% 
  group_by(cyl) %>% 
  layer_model_predictions(model = "lm")

## ----eval=F--------------------------------------------------------------
## mtcars %>%
##   ggvis(~wt, ~mpg) %>%
##   layer_smooths(span = input_slider(0.5, 1, value = 1)) %>%
##   layer_points(size := input_slider(100, 1000, value = 100))

## ----eval=F--------------------------------------------------------------
## install.packages("googleVis")

## ------------------------------------------------------------------------
library(googleVis)

## ------------------------------------------------------------------------
library(DT)
datatable(Fruits)

## ----eval=F--------------------------------------------------------------
## plot(gvisMotionChart(Fruits, "Fruit", "Year", options = list(width = 600, height = 400)))

## ------------------------------------------------------------------------
df <- data.frame(year=1:11, x=1:11,
                 x.scope=c(rep(TRUE, 8), rep(FALSE, 3)),
                 y=11:1, y.html.tooltip=LETTERS[11:1],                 
                 y.certainty=c(rep(TRUE, 5), rep(FALSE, 6)),
                 y.emphasis=c(rep(FALSE, 4), rep(TRUE, 7)))

## ----eval=F--------------------------------------------------------------
## plot(gvisScatterChart(df,options=list(lineWidth=2)))

## ----eval=F--------------------------------------------------------------
## install.packages("devtools")
## library(devtools)
## 
## install_github("clickme", "nachocab")

## ----eval=F--------------------------------------------------------------
## library(clickme)
## clickme("points", 1:10)

## ----eval=F--------------------------------------------------------------
## n <- 500
## clickme("points",
##     x = rbeta(n, 1, 10), y = rbeta(n, 1, 10),
##     names = sample(letters, n, r = T),
##     color_groups = sample(LETTERS[1:3], n, r = T),
##     title = "Zoom Search Hover Click")

## ----eval=F--------------------------------------------------------------
## install.packages("networkD3")

## ------------------------------------------------------------------------
library(networkD3)
src <- c("A", "A", "A", "A","B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J","E", "F", "G", "H", "I")
networkData <- data.frame(src, target)
simpleNetwork(networkData)

## ------------------------------------------------------------------------
library(dygraphs)
dygraph(nhtemp, main = "New Haven Temperatures") %>% 
  dyRangeSelector(dateWindow = c("1920-01-01", "1960-01-01"))

## ----eval=F--------------------------------------------------------------
## install.packages("threejs")

## ----results='asis'------------------------------------------------------
library(threejs)
z <- seq(-10, 10, 0.01)
x <- cos(z)
y <- sin(z)
scatterplot3js(x,y,z, color=rainbow(length(z)))

## ----eval=F--------------------------------------------------------------
## install.packages("Rook")

