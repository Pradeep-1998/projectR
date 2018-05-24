age <- c(17,18,18,17,18,19,18,16,18,18)

print (table(age))
barplot(table(age), main="count of students with same age", ylab= "count", xlab="age",col = "blue") 
