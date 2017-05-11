## ---- include=FALSE------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE,eval=F)

## ----eval=F--------------------------------------------------------------
## install.packages("RPostgreSQL")

## ----background='#FA58F4'------------------------------------------------
library("RPostgreSQL")

## ------------------------------------------------------------------------
citation("RPostgreSQL")

## ----eval=F--------------------------------------------------------------
## pw <- {"1234"}
## drv <- dbDriver("PostgreSQL")
## con <- dbConnect(drv, dbname = "BeispielDB",
##                  host = "localhost", port = 5432,
##                  user = "postgres", password = pw)
## rm(pw) # removes the password
## 
## dbExistsTable(con, "BeispielDB")

## ----eval=F--------------------------------------------------------------
## data(mtcars)
## df <- data.frame(carname = rownames(mtcars),
##                  mtcars,
##                  row.names = NULL)
## df$carname <- as.character(df$carname)
## rm(mtcars)
## 
## dbWriteTable(con, "cartable",
##              value = df, append = TRUE, row.names = FALSE)

## ----eval=F--------------------------------------------------------------
## df_postgres <- dbGetQuery(con, "SELECT * from cartable")

## ----eval=F--------------------------------------------------------------
## identical(df, df_postgres)

## ----eval=F--------------------------------------------------------------
## df_postgres <- dbGetQuery(con, "SELECT name, admin_level FROM planet_osm_polygon WHERE boundary='administrative'")

## ----eval=F--------------------------------------------------------------
## df_adm8 <- dbGetQuery(con, "SELECT name, admin_level FROM planet_osm_polygon WHERE boundary='administrative' AND admin_level='8'")

## ----eval=F--------------------------------------------------------------
## df_hnr <- dbGetQuery(con, "SELECT * FROM planet_osm_line, planet_osm_point
## WHERE planet_osm_line.name='Nordring' AND planet_osm_line.highway IN ('motorway','trunk','primary')
## AND planet_osm_point.name='Ludwigshafen' AND planet_osm_point.place IN ('city', 'town')
## ORDER BY ST_Distance(planet_osm_line.way, planet_osm_point.way)")

## ----eval=F--------------------------------------------------------------
## df_hnr <- dbGetQuery(con, "SELECT * FROM planet_osm_line, planet_osm_point
## WHERE planet_osm_line.name='Nordring' AND planet_osm_point.name='Ludwigshafen'
## ORDER BY ST_Distance(planet_osm_line.way, planet_osm_point.way)")
## head(df_hnr)

## ----eval=F--------------------------------------------------------------
## df_ <- dbGetQuery(con, "SELECT * FROM planet_osm_line, planet_osm_point
## WHERE planet_osm_line.name='Nordring' AND planet_osm_point.name='Ludwigshafen'
## ORDER BY ST_Distance(planet_osm_line.way, planet_osm_point.way)")
## head(df_hnr)

## ----eval=F--------------------------------------------------------------
## colnames(df_)

## ----eval=F--------------------------------------------------------------
## table(df_$name)

## ----eval=F--------------------------------------------------------------
## df_sipp <- dbGetQuery(con, "SELECT * FROM planet_osm_line, planet_osm_point
## WHERE planet_osm_line.name='Rechweg' AND planet_osm_point.name='Sippersfeld'
## ORDER BY ST_Distance(planet_osm_line.way, planet_osm_point.way)")
## head(df_sipp)

## ----eval=F--------------------------------------------------------------
## install.packages("plot3D")

## ------------------------------------------------------------------------
library(plot3D)
library(RPostgreSQL)

