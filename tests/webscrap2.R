library(magrittr)
library(rvest)
library(RCurl)

# Creating required url

wrd1 <- "clean"
url_start <- "https://www.rhymezone.com/r/rhyme.cgi?Word="
url_end <- "&typeofrhyme=sim&org1=syl&org2=l&org3=y"

vec_url <- c(url_start,wrd1,url_end)
url <- paste(vec_url,collapse = "")
url
read_html(url)
length(read_html(url))
rvest_table <- read_html(url) %>% html_nodes("table")%>% .[1:6] %>% html_table(fill=TRUE ,trim = TRUE,ncol=15) 
length(rvest_node)
rvest_node
