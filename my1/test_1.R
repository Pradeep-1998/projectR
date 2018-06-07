
# word corrector
library(tictoc)
tic("t_time")
filename <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/big.txt"
sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(filename)),collapse = " ")),"[^a-z]+")),decreasing=TRUE))
correct <- function(word){
    c(sorted_words[adist(word,sorted_words) <= min(adist(word,sorted_words),1)],word)[1]
}
typeof(sorted_words)
length(sorted_words)
correct("piese")
toc()