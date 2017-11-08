library(NISTunits)

# Leemos los datos
df <- matrix(c(2.70,48,2,67,1.61,83,1.2,108,1.02,126),nrow = 5,byrow = TRUE)
# Transformamos los grados a radianes
df[,2] = NISTdegTOradian(df[,2])

# Calculamos la alpha = rcos(phi)
a = cos(df[,2])
alpha = df[,1]*a

# Transformamos los datos (r,alpha):
newdata = matrix(c(df[,1], alpha), nrow = 5, byrow = F )

# Calculamos la matriz phi
r = df[,1]
phi = matrix(c(1,1,1,1,1,alpha), nrow = 5, byrow = F )

# Resolvemos usando lineal model de R con mínimos cuadrados
(mostra <- data.frame(x=phi,t=r))

model1 <- glm (t ~ x.2 + x.1 - 1, data=mostra, family = gaussian)

# Lo resolvemos a lo burro usando la fórmula de Gauss
x <- solve(t(phi)%*%phi,t(phi)%*%r)