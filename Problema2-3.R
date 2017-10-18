library(MASS)
mu <- c(0,5,2)
sigma <- matrix(c(25,-1,7,-1,4,-4,7,-4,10),nrow = 3)

X <- mvrnorm(1000,mu, sigma)

plot(X)
