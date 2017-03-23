
# http://stackoverflow.com/questions/38932982/google-search-links-obtain-by-webscraping-in-r-are-not-in-required-format
ht <- read_html('https://www.google.de/search?q=Odenwald+Lebensmittel')

links <- ht %>% html_nodes(xpath='//h3/a') %>% html_attr('href')
gsub('/url\\?q=','',sapply(strsplit(links[as.vector(grep('url',links))],split='&'),'[',1))




# https://www.r-bloggers.com/web-scraping-google-urls/
# load packages
library(RCurl)
library(XML)

get_google_page_urls <- function(u) {
  # read in page contents
  html <- getURL(u)
  
  # parse HTML into tree structure
  doc <- htmlParse(html)
  
  # extract url nodes using XPath. Originally I had used "//a[@href][@class='l']" until the google code change.
  attrs <- xpathApply(doc, "//h3//a[@href]", xmlAttrs)
  
  # extract urls
  links <- sapply(attrs, function(x) x[[1]])
  
  # free doc from memory
  free(doc)
  
  # ensure urls start with "http" to avoid google references to the search page
  links <- grep("http://", links, fixed = TRUE, value=TRUE)
  return(links)
}

u <- "http://www.google.co.uk/search?aq=f&gcx=w&sourceid=chrome&ie=UTF-8&q=r+project"
get_google_page_urls(u)

u <- "http://www.google.de/search?aq=f&gcx=w&sourceid=chrome&ie=UTF-8&q=r+project"
get_google_page_urls(u)
