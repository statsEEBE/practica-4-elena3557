#MÉTODO DE POISSON

#x= NÚMERO DE LLAMADAS EN 1H

#si quiero calcular la probabilidad de tener 20 llamadas en una hora
dpois(20,25)


#Graficar nuestra función de Poisson; como es una variable discreta, su gráfica serán "chinchetas", no una línea continua
x<- 0:40 #el valor 40 es un número arbitrario
f <- dpois(x,25)
plot(x,f, type="h", col="red")

#Si quiero calcular la probaibilidad de tener como sumo/como mucho 20 llamadas P(X<=20) = F(20)
ppois(20,25) #me incluye el número que pongo

#Si quiero calcular la probabiliadad de tener como mínimo 18 llamadas y como máximo 22 llamadas P(18<=X<=22)
ppois(22,25)- ppois(17,25)
#le resto la probabilidad del 0 al 17, porque el 18 está dentro del intervalo que si incluyo

plot(x, ppois(x,25), type="s", col="red")
#la s del type es escalonado

#si me preguntan la mediana
#F(valor) = 0.5
#Valor = F^-1(0.5)
qpois(0.5,25) 

#si me preguntan el 1er quartil
qpois(0.25,25)

#en el ejercicio mi lambda= 0,033*25


#EJERCICIO 2
#P(T>=0.052)
#1-P(T<=0.052)

1-pexp(0.052,25)

#función de densidad
t <- seq(0,1,0.01)
plot(t, dexp(t,25), type="l", col="red")

#función de distribución
plot(t, pexp(t,25), type="l", col="red")

#EJERCICIO 3

mean(rexp(500000,25))
1/25
