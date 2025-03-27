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






# Operações e funções

A <- matrix(c(7,2,-5,9,1,0),3,2)
B <- matrix(c(5,1,8,0,-2,1),3,2)


## Concatenação

C <- cbind(A, B) #por coluna cbind = column bind

C <- rbind(A, B) #por linha rbind = row bind


vals <- sample(1:50, size=12, replace=FALSE)
m <- matrix(vals, nrow=4, ncol=3)


m[, 2] <- m[, 1] + m[, 3] # criando uma coluna com base na soma das duas outras


m[4,] <- m[1,] - m[3,] # criando linha com base na subtração de outras duas


m * 10 # multiplica todos os elementos

m + 10 # adiciona 10 em todos os elementos



# Multiplicação entre matrizes

m <- matrix(5:10, nrow=2, ncol=3)
n <- matrix(7:12, nrow=3, ncol=2)

m %*% n


# Diagonal principal

m <- matrix(c(2,3,-2,1,2,2,4,2,3),3,3)

diag(m)

diag(diag(m))


# Matriz transposta

t(m)

# Matriz inversa

m <- matrix(c(4,4,-2,2,6,2,2,8,4),3,3)

invm <- solve(m)

m %*% invm # Matriz identidade


# Determinante de uma matriz

det(m)


# Soma, Soma de Colunas e Soma e Linhas

sum(m)

colSums(m)

rowSums(m)


# Média, Média de Colunas e Média de Linhas

mean(m)

colMeans(m)

rowMeans(m)