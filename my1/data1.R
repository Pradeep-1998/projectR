
library(csv)
getwd()

sheet1_data <- read.csv("csv_data1.csv",header=FALSE, sep=",",quote = "\"")

test_word <- "quit"
typeof(sheet1_data)
typeof(sheet1_data[1])
typeof(sheet1_data[2])
typeof(sheet1_data[3])
typeof(sheet1_data[4])


length(sheet1_data)
length(sheet1_data[1])
length(sheet1_data[2])
length(sheet1_data[3])
length(sheet1_data[4])


sheet1_data[1]
sheet1_data[2]
sheet1_data[3]
sheet1_data[4]

typeof(sheet1_data[1])
list_split <- function(){
  
  
}
