library(RCurl)
library(XML)

library(stringr)

url <- "http://elections.maryland.gov/elections/2012/election_data/index.html"
#links <- getHTMLLinks(url)
link <- getURL(url)

filenames <- links[str_detect(links,"_General.csv")]
filenames_list <- as.list(filenames) 
length(filenames_list)
filenames_list[1:3]
