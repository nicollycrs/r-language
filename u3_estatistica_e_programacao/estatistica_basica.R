# Funções básicas

lista <- rnorm(10)

mean(lista)

median(lista)

weighted.mean(lista, c(1:10))

sd(lista)

min(lista)

max(lista)

quantile(lista)

summary(lista)


# Medidas de dispersão

x <- c(22,7,19,8,9,19,10)
range(x)
diff(range(x)) # Cálculo da amplitude

sd(x) #Desvio padrão

var(x) #Variância

sd(x)/mean(x)*100 #Coeficiente de Variação (CV) - em porcentagem


# Tabela de frequência

x <- c(543,1078,930,3529,322)

prop.table(x)

prop.table(x)*100



grupoA <- rep("Grupo A", sample(1:100, 1))
grupoB <- rep("Grupo B", sample(1:100, 1))
grupoC <- rep("Grupo C", sample(1:100, 1))
grupos <- sample(c(grupoA, grupoB, grupoC))

table(grupos)

as.vector(table(grupos))

f <- prop.table( table(grupos) )

f*100
