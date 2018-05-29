library(rvest)
#library(XML)

web_scrap1 <- read_html("https://shopee.sg/Kitty-Ladies-Steel-Watch-Korean-Fashion-High-end-Girls-Watch-i.10915894.416576486")

# Getting h1,...,h6 ,ul,ol,li,div,tables

h1_data <- web_scrap1 %>% html_nodes("h1") %>% html_text()
length(h1_data)

h2_data <- web_scrap1 %>% html_nodes("h2") %>% html_text()
length(h2_data)

div_data <- web_scrap1 %>% html_nodes("div") %>% html_head()
length(div_data)

table_data <- web_scrap1 %>% html_nodes("table") %>% html_text()
length(table_data)

div_data[1:3]

# getting all h1,...,h6 ,ul,ol,li,div,tables
