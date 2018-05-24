library(rvest)
webpage <- read_html("https://shopee.sg/Men's-Wear-cat.2")
webpage

results <- webpage %>% html_nodes(".short_desc")
results


# code 2
#library(readtext)

filepath <- "https://shopee.sg/"
rt <- readtext(filepath)
rt