## ---- include=FALSE------------------------------------------------------
pdfP <- F
knitr::opts_chunk$set(echo = TRUE,eval=T,message=F,warning = F)

## ----eval=F--------------------------------------------------------------
## install.packages("jsonlite")

## ------------------------------------------------------------------------
library(jsonlite)
citation("jsonlite")

## ------------------------------------------------------------------------
library("jsonlite")
DRINKWATER <- fromJSON("data/RomDrinkingWater.geojson")

## ------------------------------------------------------------------------
names(DRINKWATER)[1:3]
names(DRINKWATER)[4:5]

## ----eval=F--------------------------------------------------------------
## head(DRINKWATER$features)

## ----echo=F--------------------------------------------------------------
library(knitr)
head(DRINKWATER$features)

## ------------------------------------------------------------------------
my_repos <- fromJSON("https://api.github.com/users/japhilko/repos")

## ------------------------------------------------------------------------
head(my_repos)

## ----eval=pdfP,echo=F----------------------------------------------------
library(jsonlite)
res <- fromJSON('http://ergast.com/api/f1/2004/1/results.json')
drivers <- res$MRData$RaceTable$Races$Results[[1]]$Driver
library(DT)
datatable(drivers)

## ------------------------------------------------------------------------
library(knitr)
library(jsonlite)
res <- fromJSON('http://ergast.com/api/f1/2004/1/results.json')
drivers <- res$MRData$RaceTable$Races$Results[[1]]$Driver
kable(head(drivers))

## ------------------------------------------------------------------------
article_key <- "&api-key=c2fede7bd9aea57c898f538e5ec0a1ee:6:68700045"
url <- "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=obamacare+socialism"
req <- fromJSON(paste0(url, article_key))
articles <- req$response$docs
# kable(head(articles))

## ----eval=F--------------------------------------------------------------
## install.packages("XML")

## ------------------------------------------------------------------------
library(XML)
citation("XML")

## ------------------------------------------------------------------------
library("XML")

## ----echo=F,eval=T-------------------------------------------------------
names <- c("xmlName()","name of the node","xmlSize()","number of subnodes","xmlAttrs()","named character vector of all attributes","xmlGetAttr()","value of a single attribute","xmlValue()","contents of a leaf node","xmlParent()","name of parent node","xmlAncestors()","name of ancestor nodes","getSibling()","siblings to the right or to the left","xmlNamespace()","the namespace (if there’s one)")
tab <- data.frame(t(array(names,dim=c(2,length(names)/2))))
colnames(tab) <- c("Function","Description")
kable(tab)

## ----eval=F--------------------------------------------------------------
## install.packages("xml2")

## ------------------------------------------------------------------------
library(xml2)
citation("xml2")

## ----eval=F--------------------------------------------------------------
## url <- "http://api.openstreetmap.org/api/0.6/
## relation/62422"

## ----echo=F--------------------------------------------------------------
url <- "http://api.openstreetmap.org/api/0.6/relation/62422"

## ------------------------------------------------------------------------
library(xml2)
BE <- xmlParse(url)

## ------------------------------------------------------------------------
xmltop = xmlRoot(BE)
class(xmltop)
xmlSize(xmltop)
xmlSize(xmltop[[1]])

## ------------------------------------------------------------------------
xpathApply(BE,"//tag[@k = 'source:population']")

## ----echo=F--------------------------------------------------------------
library("knitr")

## ----echo=T--------------------------------------------------------------
url <- "http://api.openstreetmap.org/api/0.6/relation/62422"

## ----echo=F--------------------------------------------------------------
# library(xml2)
# BE <- read_xml.raw(url)

## ------------------------------------------------------------------------
BE <- xmlParse(url)

## ------------------------------------------------------------------------
xpathApply(BE,"//tag[@k = 'source:population']")

## ------------------------------------------------------------------------
xpathApply(BE,"//tag[@k = 'name:ta']")

## ------------------------------------------------------------------------
region <- xpathApply(BE,
  "//tag[@k = 'geographical_region']")
# regular expressions
region[[1]]

## ------------------------------------------------------------------------
url2<-"http://api.openstreetmap.org/api/0.6/node/25113879"
obj2<-xmlParse(url2)
obj_amenity<-xpathApply(obj2,"//tag[@k = 'amenity']")[[1]]
obj_amenity

## ------------------------------------------------------------------------
xpathApply(obj2,"//tag[@k = 'wikipedia']")[[1]]

## ------------------------------------------------------------------------
xpathApply(obj2,"//tag[@k = 'wheelchair']")[[1]]

## ------------------------------------------------------------------------
xpathApply(obj2,"//tag[@k = 'name']")[[1]]

## ------------------------------------------------------------------------
url3<-"http://api.openstreetmap.org/api/0.6/node/303550876"
obj3 <- xmlParse(url3)
xpathApply(obj3,"//tag[@k = 'opening_hours']")[[1]]

## ------------------------------------------------------------------------
url5<-"http://api.openstreetmap.org/api/0.6/way/162149882"
obj5<-xmlParse(url5)
xpathApply(obj5,"//tag[@k = 'name']")[[1]]

## ------------------------------------------------------------------------
xpathApply(obj5,"//tag[@k = 'website']")[[1]]

## ------------------------------------------------------------------------
xpathApply(obj5,"//tag[@k = 'iata']")[[1]]

## ----parseNode-----------------------------------------------------------
url2 <- "http://api.openstreetmap.org/api/0.6/node/2923760808"
RennesBa <- xmlParse(url2)
RennesBa

## ----MadCalle------------------------------------------------------------
url3 <- "http://api.openstreetmap.org/api/0.6/way/72799743"
MadCalle <- xmlParse(url3)
MadCalle

## ----echo=F--------------------------------------------------------------
Link1 <- "http://www.overpass-api.de/api/interpreter?data=[maxsize:1073741824][timeout:900];area[name=\""

## ------------------------------------------------------------------------
library(XML)
place <- "Mannheim"
type_obj <- "node"
object <- "leisure=playground"

InfoList <- xmlParse(paste(Link1,place,"\"];",
type_obj,"(area)[",object,"];out;",sep=""))

## ----echo=F,eval=F-------------------------------------------------------
## saveXML(InfoList,file="../data/saveXML.xml")

## ----eval=F--------------------------------------------------------------
## node_id <- xpathApply(InfoList,
## "//tag[@v= 'playground']/parent::node/@ id")
## ## node_id[[1]]

## ----eval=F--------------------------------------------------------------
## lat_x <- xpathApply(InfoList,
## "//tag[@v= 'playground']/parent::node/@ lat")
## # lat_x[[1]];lat_x[[2]]

## ----eval=F--------------------------------------------------------------
## lat_x <- xpathApply(InfoList,
## "//tag[@v= 'playground']/parent::node/@ lon")

## ----eval=F--------------------------------------------------------------
## library(devtools)
## install_github("Japhilko/gosmd")

## ----getplaygrounds,eval=T-----------------------------------------------
library(gosmd)
pg_MA <- get_osm_nodes(object="leisure=playground",
                       "Mannheim")
info <- extract_osm_nodes(OSM.Data=pg_MA,
                          value="playground")

## ----produceinttable,echo=F----------------------------------------------
library(knitr)
kable(head(info[,c("leisure","lat","lon","note")]))

