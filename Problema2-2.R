#Raquel apartado 5
N <-  8
X <-  c(1,2,3,3,3,5,5,4,5,6,6,5,8,7,9,8)
X <- matrix(X,nrow=2,ncol=8,byrow=FALSE)

X <- t(X)
x <- (X[,1] - mean(X[,1]))/sd(X[,1])
y <- (X[,2] - mean(X[,2]))/sd(X[,2])
X[,1] <- x
X[,2] <- y
mu <- c(mean(x),mean(y))
plot(X,col='red')
grid()

cov <- cov(X)

vaps <- eigen (cov, only.values=TRUE)$values
veps <- eigen(cov)

myPCA <- prcomp(X,scale=FALSE)

d1PCA <- myPCA$X[,1]
PCAslope1 <- myPCA$rotation[2,1]/myPCA$rotation[1,1]

abline(0,PCAslope1,col='black',lwd=2)

d2PCA <- myPCA$X[,2]
PCAslope2 <- myPCA$rotation[2,2]/myPCA$rotation[1,2]

abline(0,PCAslope2,col='blue',lwd=2)

varianza.explicada = vaps[1]/sum(vaps)


## Plot
### Data
plot(X,col='red',lwd=2,ann=FALSE)

## plot details
grid()
title(xlab="X")
mtext("Y",side=2,las=1,line=3)

### principal components
abline(0,PCAslope1,col='blue',lwd=2)
abline(0,PCAslope2,col='green',lwd=2)

##Parte de Martí

data <- matrix(data=c(1, 2, 3, 3, 3, 5, 5, 4, 5, 6, 6, 5, 8, 7, 9, 8),nrow=2,ncol=8,byrow=FALSE)
dataNorm <- (data-rowMeans(data))/c(sd(data[1,]),sd(data[2,]))
(dataNorm %*% t(dataNorm)/(8-1))#sigma calculada a mano
(sigma<-cov(t(dataNorm)))#sigma calculada con r

eigen(sigma)



