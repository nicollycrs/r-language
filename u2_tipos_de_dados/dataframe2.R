lista <- list(x=c(1,2,3), y=c("a", "b", "c"))

df <- as.data.frame(lista)

str(df)

# Acessando elementos específicas

df[3,2]

df[3,1]

df[1]

df[2]

df[2,1] <- 999


# Retornando coluna como um vetor

df[,1]

df[,2]

df[[1]]

df[[2]]


# Retornando linha (como dataframe mesmo)

df[1,]

df[2,]

df[1, , drop=TRUE] #retornando como lista


# Acessando elementos

df$x

df$y

df$x[2]



# Cortando data frames

## Cortando linhas

df <- data.frame(letras=letters[1:10], numeros=21:30, valores=seq(1.5, by=.5, length.out=10))

teste <- df[3, ]

teste <- df[c(4:6), ]

teste <- df[c(2,5,8), ]


## Cortando colunas

teste <- df[, 2]

teste <- df[, 2, drop=FALSE] #Mantendo formato de data frame

df[, 2:3]

df[, c(1,3)]


## Cortando linhas E colunas

teste <- df[c(1,6,10), c("letras", "valores")]



# Excluindo linhas

teste <- df[ -c(2:9), ] #Obtém o df todo, MENOS as linhas de 2 a 9

teste <- df[ -c(1,3,5,7,9), ] 



# Excluindo colunas

teste <- df[, -c(1:2)]

teste <- df[, -c(1,3)]

teste <- df[, -c(1:2), drop=FALSE]


# Condicional

df[ df$numeros>=28, ] # Retornar todas as linhas com numeros maior ou igual a 28

df[ df$numeros>=28 & df$numero%%2==1, ]

df[df$letras %in% c("a", "h", "j"), ]



# Criação de dados

set.seed(10)

idade <- sample(14:102, 10)


set.seed(633)

n <- 10

naturalidade <- sample( c("brasileira", "estrangeira"), n, replace=TRUE)

idade <- sample(14:110, n, replace=FALSE)

peso <- sample(30:150, n, replace=TRUE)

menor <- idade<18

pessoas <- data.frame(naturalidade=naturalidade, idade=idade, peso=peso, menor=menor)


# Ordenação

sort(pessoas$idade)

sort(pessoas$idade, decreasing=TRUE)


order(pessoas$idade)

order(pessoas$idade, decreasing=TRUE)

pessoas[order(pessoas$idade), ]

pessoas[order(pessoas$naturalidade, pessoas$idade), ]

pessoas[order(pessoas$naturalidade, -pessoas$idade), ] #Decrescente -


####### EXERCÍCIOS #######
# Exercício 1

df <- data.frame(letras=letters[1:10], numeros=21:30, valores=rnorm(10))


df[5,] #a

df[,2] #b

df[,2, drop=FALSE] #b

df[,2:3] #c

df[6,c(1,3)] #d

df[ df$valores>0, ] #e

df [ df$numeros%%2!=0, ] #f

df[ df$valores>0 & df$numeros%%2==0, ] #g

df[df$letras %in% c("b", "g", "h"), ] #h




# Exercício 2

pessoas[order(pessoas$peso),]

pessoas[order(-pessoas$peso), ]

max(pessoas$idade)

mean(pessoas$peso)

pessoas[pessoas$naturalidade=='estrangeira',]

nrow(pessoas[pessoas$naturalidade=='brasileira',])
