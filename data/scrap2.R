library(rvest)

scraping_wiki <- read_html("https://en.wikipedia.org/wiki/Web_scraping")
#scraping_wiki %>% html_nodes("h1")
scraping_wiki %>% html_nodes("h2") %>% html_text()
#scraping_wiki %>% html_nodes("h2") %>% html_name() # gives "h2"

