library(rvest)
library(stringr)

Sys.time()
#web_scrap <- read_html("https://shopee.sg/Kitty-Ladies-Steel-Watch-Korean-Fashion-High-end-Girls-Watch-i.10915894.416576486")

item_name <- web_scrap %>% html_nodes(".shopee-product-info__header__text") %>% html_text()
item_name

