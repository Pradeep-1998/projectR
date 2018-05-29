library(rvest)
library(XML)
library(RCurl)
library(magrittr)

# Creating required url

wrd1 <- "clean"
url_start <- "https://www.rhymezone.com/r/rhyme.cgi?Word="
url_end <- "&typeofrhyme=sim&org1=syl&org2=l&org3=y"

vec_url <- c(url_start,wrd1,url_end)
url <- paste(vec_url,collapse = "")
url

# downloading & parsing the url

rvest_doc <- read_html(url)
xml_doc <- htmlParse(getURL(url),asText = TRUE)

all.equal(class(rvest_doc),class(xml_doc))

# searching for html table

rvest_table_node <- html_nodes(rvest_doc,"table.display compact dataTable no-footer")
xml_table_node <- getNodeSet(xml_doc,'//table[@class="display compact dataTable no-footer"]')

all.equal(class(rvest_table_node),class(xml_table_node))
class(rvest_table_node)

#from html table to data frame
rvest_table <- html_table(rvest_table_node)
#xml_table <- readHTMLTable(xml_table_node)
readHTMLTable(url)
#rvest_table2 <- html(url) %>% html_node("table.display compact dataTable no-footer") %>% html_table()
text(rvest_table())
#class(rvest_table2())
