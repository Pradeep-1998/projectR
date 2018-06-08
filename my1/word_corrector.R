
# word corrector

# for caliculating time
library(tictoc)

#start time
tic("t_time")

#path for text file 
data_1 <- "C:/Users/Rajana.Naidu/Documents/Rproject/data/big.txt"
#data_2 <- "C:/Users/Rajana.Naidu/Documents/Rproject/my1/big2.csv"
#sort the words for the given big text
sorted_words <- names(sort(table(strsplit(tolower(paste(readLines(file(data_1)),collapse = " ")),"[^a-z]+")),decreasing=TRUE))
# correction function for a given word
correct <- function(word){
    print("test1")
    c(sorted_words[adist(word,sorted_words) <= min(adist(word,sorted_words),2)],word)[1]
}
typeof(sorted_words)
length(sorted_words)
correct("turtl")
toc()