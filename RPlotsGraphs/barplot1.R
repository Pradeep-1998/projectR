# Bar plots 

max_temp <- c(22, 27, 26, 24, 23, 26, 28)

M <- c("sun", "mon","tue","wed","thu","fri","sat")
barplot(max_temp,names.arg = M, xlab="day", ylab = "temp",col = "darkred")



