# Criação de matriz

## Usando matrix()
x <- matrix() #vazia

x <- matrix(1:6, nrow=2, ncol=3)

x <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)


## Usando dim()
x <- 1:12

dim(x) <- c(4, 3)

## Matrizes especiais

m <- matrix(0,3,3) #Matriz de zeros

m <- matrix(1,3,3) #Matriz de um's

diag( rep(1,3) ) #Matriz identidade

diag( c(10,20,30) ) #Matriz diagonal





# Alterando nome de linhas e colunas

## rownames() e colnames()

m <- matrix(1:6, 2, 3)

rownames(m) <- c("Linha 1", "Linha 2")
colnames(m) <- c("Coluna 1", "Coluna 2", "Coluna 3")

## Alterando já na criação da matriz com parâmetros dimnames=list(c(linhas), c(colunas))

x <- matrix(1:6, nrow=2, ncol=3, dimnames = list(c("A", "B"), c("D", "E", "F")))





# Conferindo o tipo

x <- matrix(1:6, nrow=2, ncol=3)

typeof(x)
class(x)
is.matrix(x)




# Funções auxiliares

m <- matrix(1:6, nrow=2, ncol=3)

## Função dim() retorna as dimensões da matriz

dim(m)

## Obter o número de linhas

nrow(m)

## Obter o número de colunas

ncol(m)




# Acessando elementos

m[2,3]

m[5]

m[2, ]

m[ ,2]

m["A", "E"]

m["B", ]

m[, "E"]




# Alterando elementos

m[2,2] <- 44

m[2, ] <- c(200,400,600)

m[ , 3] <- c(50,60)







