#Raquel apartado 5
N <-  8
X <-  c(1,2,3,3,3,5,5,4,5,6,6,5,8,7,9,8)
X <- matrix(X,nrow=2,ncol=8,byrow=FALSE)

X <- t(X)
x <- X[,1]
y <- X[,2]
mu <- c(mean(x),mean(y))
plot(X)
grid()

cov <- cov(X)
