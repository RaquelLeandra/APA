#Apliqueu-lo a una seqüència de 1000 nombres independents Gaussians de mitjana zero i desviació tipus 2. 
#Useu una ponderació basada en nombres independents uniformes en (0,1).

X <- rnorm(1000,mean = 0,sd = 2)
hist(X)
p <- runif(1000, min=0, max=1) 
hist(p)

xmin <- sum(X*p)/sum(p)
 
f <- function(x){
  sum(p *(x - X)^2)
}

q <- runif(1000, min = -1,max = 1)
fq <- c()
for (i in q){
  fq <-c(fq,f(i))
} 
plot(q,fq)
