## Gráficos nativos ##

# Gráficos de dispersão

plot(Cars93$Price, Cars93$MPG.city) #MPG - Miles per galon


plot(Cars93$Price, Cars93$MPG.city, 
     main="Consumo x Preço",
     xlab="Preço (Mil U$)",
     ylab="Consumo (mpg)")


# Gráfico de barras

barplot(sort(Cars93$RPM))

barplot(table(Cars93$Type))


# Histograma

hist(Cars93$Price)


#Gráfico de setores (pizza)

pie(table(Cars93$Passengers))


t <- table(Cars93$Type) #calculando a frequência do tipo
porcentagens <- round(100*t/sum(t), 1)
cores=c("blue", "red", "green", "purple", "yellow", "cyan")
pie(table(Cars93$Type), labels=porcentagens, main="Quantidade por Tipo", col=cores)
legend("topright", legend=names(t), cex=0.7, fill=cores)


# Boxplot (ou gráfico de caixas e bigodes)

boxplot(Cars93$Horsepower ~ Cars93$Cylinders, 
        xlab="Cilindros",
        ylab="Potência")



## Gráficos no pacote ggplot2 ##
install.packages("ggplot2")
library(ggplot2)

install.packages("ggthemes")
library(ggthemes)

# Gráfico de barras

ggplot(data=Cars93, aes(x=Type)) +
  geom_bar()


ggplot(data=Cars93, aes(x=Type)) +
  geom_bar() +
  labs( title="Gráfico do Tipo do Automóvel",
        x="Tipo",
        y="Quantidade") +
  theme_economist()


# Gráfico de dispersão

ggplot(Cars93, aes(x=Horsepower, y=MPG.city)) +
  geom_point(shape=21, color="red", size=2) +
  labs(x="Potência", y="Consumo", title="Diagrama de Dispersão", subtitle="Consumo x Potência")


# Gráfico de linha

ggplot(Cars93, aes(x=Horsepower, y=Price)) +
  geom_line() +
  labs(x="Potência",
       y="Preço",
       title="Gráfico de Linhas",
       subtitle="Preço x Potência")


# Boxplot

ggplot(Cars93, aes(x=Cylinders, y=Horsepower)) +
  geom_boxplot() +
  labs(x="Cilindros",
       y="Potência",
       title="Boxplot",
       subtitle="Quantidade de Cilindros x Potência") +
  stat_boxplot(geom='errorbar')


# Gráfico de função

funcao_logistica <- function(x) { 1/(1+exp(-x+10)) }

ggplot(data.frame(x=c(0,20)), aes(x=x)) +
  stat_function(fun=funcao_logistica, geom="line")