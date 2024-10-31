
#PREGUNTA 1
#el valor esperado de una exponencial E(t) = 1/lambda
#lambda= 1/10000
#P(T>=13000) 
1- pexp(13000,1/10000) #si es continua la variable puede ser >= 0 >, que da lo mismo


#PREGUNTA 2
#F(t)=0.8
#F^-(0.8)=t
qexp(0.8,1/10000)


#PREGUNTA 3
set.seed(85)
simulacion <- rexp(100,1/10000)
mean(simulacion)
median(simulacion)
var(simulacion)
