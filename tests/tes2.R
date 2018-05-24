a <- c(a = "132",b="243",c="354")
a

b <- seq(4,10)
b

c<- seq(4,10,2)
c

# rep() used for representing grouped codes

d <- rep(1:2, c(5,10))
d

e <- c(1:6)
e

m <- matrix(1:9,3,3)
m

t(m)  #transpose of matrix

m %*% t(m)  # product of matrix with its transpose  

a <- matrix(c(1,0,2,3),2,2)
solve(a)  # Inverse of a matrix

A <- c(1:4)
B <- c(5:8)
C <- c(9:12)
cbind(A,B,C)
rbind(A,B,C)

