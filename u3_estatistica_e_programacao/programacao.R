# Programação

# Script

# isso é um comentário
x <- 1:10

# Para mostrar, usar, print
print(x)

#Mostra a soma dos elementos do vetor
print(sum(x))



# Condicionais

## If else padrão
x <- 1

if (x<0) {
  sinal <- "negativo"
} else if (x==0) {
  sinal <- "neutro"
} else if (x>0){
  sinal <- "positivo"
}

print(sinal)


## If else vetorizado

ifelse(c(TRUE, FALSE, FALSE, TRUE), 1, -1) #estrutura: ifelse(vetor, valor_se_TRUE, valor_se_FALSE)

vet <- 1:10

ifelse(vet%%2==0, "par", "ímpar")




# Laços de repetição

#estrutura
for (variavel in conjunto) {
  comandos
}

#exemplos
for (i in 1:5) {
  print(i)
}


for (i in letters[1:5]){
  print(i)
}


for (i in seq(10,20,2)){
  print(i)
}

for (i in seq(1,6,0.5)){
  print(i)
}

for (i in seq(10,1,-1)){
  print(i)
}

## varrendo elementos de vetores
vet <- c(10,15,20)
for (i in vet) {
  print(i)
}

## varrendo elementos de uma lista
lista <- as.list(1:10)
for(i in lista) {
  print(i)
}


lista_diversa <- list(primeiro="oi mundo", segundo=list(a=10, b=20), terceiro=c(111,222))

for (x in lista_diversa) { #mostra cada lista
  cat("---------------\n")
  print(x)
}

for (x in lista_diversa) { # imprimir as sublistas
  for (valor in x) {
    cat("---------------\n")
    print(valor)
  }
}

## varrendo elementos de uma matriz

matriz <- matrix(data=1:12, nrow=6, ncol=2)

for (l in 1:nrow(matriz)) { # Vai de 1 até o número de linhas da matriz
  for (c in 1:ncol(matriz)) { # Vai de 1 até o número de colunas da matriz
    print( matriz[l, c]*10)
  }
}


# Alternativas ao laço for

## Um laço como este:
x <- 10:20

for (i in seq_along(x)){
  x[i] <- x[i]/10
}

print(x)


## Pode ser trocador por:

x <- 10:20
x <- x/10
print(x)




# Comando WHILE

i <- 1
while (i <= 10){
  print(i)
  i <- i + 1
}



# Comando REPEAT

i <- 1
repeat {
  print(i)
  i <- i+1
  if (i>10){ break }
}


# While com NEXT

i <- 1
while (i <= 10) {
  if (i%%2==0) {
    i <- i+1
    next
  }
  print(i)
  i <- i+1
}


# UDF (User-Defined Functions)

potencia <- function(x,n) {return (x^n)}
potencia(2, 3)


potencia <- function(x, y=2) { #parâmetro default
  return (x^y)
}

res <- potencia(10)

res <- potencia(10, 3)


## Verificando se parametro foi passado

potencia <- function(x, y=2) {
  if (missing(x)) {
    x <- 50
  }
  return (x^y)
}


###### EXERCÍCIOS ######

# Usando laços, varra uma lista de números aleatórios gerados por rnorm(),
# mas pare se o número encontrado for mais que 1.
lista <- rnorm(10)

for (i in lista) {
  print(i)
  if (i > 1){
    break
  }
}


# Usando laços, varra uma lista de números aleatórios gerados por rnorm(),
# mas use o comando next para pular os números negativos
for (i in lista) {
  if (i < 0){
    next
  }
  print(i)
}



# Use laços aninhados para criar a matriz abaixo.
# Faça a alocação prévia da matriz com valores NA.
matriz[l][c] <- abs(l-c)
matriz <- matrix(data=NA, nrow=5, ncol=5)

for (l in 1:nrow(matriz)) {
  for (c in 1:ncol(matriz)){
    matriz[l, c] <- abs(l-c)
  }
}


# Usando um comando ifelse(), crie uma coluna chamada teen,
# que indica se a pessoa possui menos de 18 anos
# com as strings "maior" e "menor"

alunos.df <- data.frame(
  name = c("Maria", "Mário", "Joana", "João"),
  state = c("PR", "PR", "SC", "RS"),
  years = c(21,31,29,19)
)

alunos.df$teen <- ifelse(alunos.df$years, "maior", "menor")

# Crie uma matriz com 10 colunas contendo 100.000 números,
# sendo os números de 1:100000. Faça um laço for que
# calcula a soma de cada linha desta matriz.

matriz <- matrix(1:100000, ncol=10)

for (l in 1:nrow(matriz)) {
  print(sum(matriz[l,]))
}


# Crie o seguinte data frame
# Faça um laço genérico sobre as colunas desse data frame
# efetuando o seguinte cálculo:
#   Se a coluna for númerica, calcula sua média
#   Se a coluna for de texto, calcula a soma dos caracteres na coluna (nchar())

vector1 <- 1:10
vector2 <- c("Odd", "Loop", letters[1:8])
vector3 <- rnorm(10, sd=10)
df1 <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE)

for (c in 1:ncol(df1)){
  if (is.numeric(df1[[c]])) {
    print(mean(df1[[c]]))
  } else if (is.character(df1[[c]])) {
    print(sum(nchar(df1[[c]])))
  }
}


