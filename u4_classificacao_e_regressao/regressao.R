# Regressão

x <- c(40,30,30,25,50,60,65,10,15,20,55,40,35,30)
y <- c(1000,1500,1200,1800,800,1000,500,3000,2500,2000,800,1500,2000,2000)

# Criando o modelo
modelo <- lm(y ~ x) #Modelo de regressão linear


# Avaliando o modelo
summary(modelo)

str(modelo)

modelo$coefficients

# Fazendo a predição em novos dados
novos <- data.frame( x=c(10,20,30) )
predict(modelo, novos)

# Avaliando resíduos
resid(modelo)


# Criando uma função para facilitar a aplicação

venda <- function(v) {
  return(2933.597 - 38.555 * v)
}


venda(40)
venda(30)


# Plotando a reta encontrada (reta de regressão)

plot(x=x, y=y, xlab="Km", ylab="Euros")
abline(modelo, col="red")

# ----------------------------------------------------

# Regressão com pacote caret (regressão mais complexa/não pura estatística [que usa método dos mínimos quadrados para avaliação])
# Case - Mercado imobiliário

#Bibliotecas
install.packages("e1071")
install.packages("randomForest")
install.packages("kernlab")
install.packages("caret")
install.packages("RSNNS")

library(caret)
library(RSNNS)

set.seed(7)


# Obtendo dados
df <- read.csv("http://www.razer.net.br/datasets/real-state.csv", sep=";", dec=",")

# Removendo coluna desnecessárias
df$No <- NULL

# Particionando em treino e teste
indices <- createDataPartition(df$Y.house.price.of.unit.area, p=0.8, list=FALSE)
treino <- df[indices,]
teste <- df[-indices,]

# Utilizando Random Forest
rf <- caret::train(Y.house.price.of.unit.area~., data=treino, method="rf")
predicoes.rf <- predict(rf, teste)

# Utilizando Suport Vector Machine (SVM)
svm <- caret::train(Y.house.price.of.unit.area~., data=treino, method="svmRadial")
predicoes.svm <- predict(svm, teste)

# Utilizando RNA (NNET) 
rna <- caret::train(Y.house.price.of.unit.area~., data=treino, method="nnet")
predicoes.rna <- predict(rna, teste)

# Utilizando MLP - Multi Layer Perceptron (redes neurais)
model.mlp <- mlp(treino[,1:6], treino[,7], linOut=T) #x, y, linOut - saída linear
predicoes.mlp <- predict(model.mlp, teste[,1:6])


# Avaliando as métricas

rmse.rf <- RMSE(predicoes.rf, teste$Y.house.price.of.unit.area)
rmse.svm <- RMSE(predicoes.svm, teste$Y.house.price.of.unit.area)
rmse.rna <- RMSE(predicoes.rna, teste$Y.house.price.of.unit.area)
rmse.mlp <- RMSE(predicoes.mlp, teste$Y.house.price.of.unit.area)

cat("RMSE RF: ", rmse.rf, "\n")
cat("RMSE SVM: ", rmse.svm, "\n")
cat("RMSE RNA: ", rmse.rna, "\n")
cat("RMSE MLP: ", rmse.mlp, "\n")
