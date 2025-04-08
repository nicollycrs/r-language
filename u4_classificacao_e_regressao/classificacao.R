# Pacotes necessários
install.packages("e1071")
install.packages("randomForest")
install.packages("kernlab")
install.packages("caret")

library(caret)


# Separando em treino e teste

set.seed(7)

indices <- createDataPartition(iris$Species, p=0.8, list=FALSE)
treino <- iris[indices,]
teste <- iris[-indices,]


# Criando o modelo
rf <- train(Species~., data=treino, method="rf") #Species ~(depende) .(de todo o resto)


# Fazendo as predições
predicoes.rf <- predict(rf, teste)


# Avaliando o modelo
confusionMatrix(predicoes.rf, teste$Species)


# Testando outros modelos

## SVM

svm <- train(Species~., data=treino, method="svmRadial")
predicoes.svm <- predict(svm, teste)
confusionMatrix(predicoes.svm, teste$Species)


# Fazendo a inferência com dados novos

predict(rf, data.frame(Sepal.Length=4.2, 
                       Sepal.Width=3.2,
                       Petal.Length=1.1,
                       Petal.Width=0.3))

# Salvar o modelo para uso posterior

save(rf, file="rf.RData")
save(svm, file="svm.RData")

load("rf.RData") # carregar para usar novamente


# -------------------------------------------------------------

# Case - Winsconsin Breast Cancer Database

install.packages("caret")
install.packages("e1071")
install.packages("mlbench")
install.packages("mice")

library(mlbench)
library(caret)
library(mice)

data(BreastCancer)
summary(BreastCancer)

# Removendo coluna ID e tratando NAs

temp_dados <- BreastCancer
set.seed(7)
temp_dados$Id <- NULL #Remove a coluna Id
imp <- mice(temp_dados) #Gera dados plausíveis a serem colocados nos NAs
dados <- complete(imp, 1) #Completa os dados com o 1o conjunto plausível de dados


# Dividindo entre treino e teste
indices <- createDataPartition(dados$Class, p=0.8, list=FALSE)
treino <- dados[indices,]
teste <- dados[-indices,]

# Treinando modelos
rf <- train(Class~., data=treino, method="rf")
svm <- train(Class~., data=treino, method="svmRadial")
rna <- train(Class~., data=treino, method="nnet") #Redes neurais

# Realizando predições
predict.rf <- predict(rf, teste)
predict.svm <- predict(svm, teste)
predict.rna <- predict(rna, teste)

# Comparando resultados
confusionMatrix(predict.rf, teste$Class)
confusionMatrix(predict.svm, teste$Class)
confusionMatrix(predict.rna, teste$Class)




# -------------------------------------------------------------

# Case - Pima Indians Diabetes

#Bibliotecas
install.packages("e1071")
install.packages("randomForest")
install.packages("kernlab")
install.packages("mlbench")
install.packages("caret")

library("caret")
library("mlbench")

# Estrutura dos dados
data("PimaIndiansDiabetes")
str(PimaIndiansDiabetes)

set.seed(7)


# Separando em treino e teste

indices <- createDataPartition(PimaIndiansDiabetes$diabetes, p=0.8, list=FALSE)
treino <- PimaIndiansDiabetes[indices,]
teste <- PimaIndiansDiabetes[-indices,]

# Treinando modelos
rf <- caret::train(diabetes~., data=treino, method="rf")
svm <- caret::train(diabetes~., data=treino, method="svmRadial")

# Realizando predições
predicoes.rf <- predict(rf, teste)
predicoes.svm <- predict(svm, teste)

# Avaliando as métricas
confusionMatrix(predicoes.rf, teste$diabetes)
confusionMatrix(predicoes.svm, teste$diabetes)



