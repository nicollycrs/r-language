# Sempre cria um vetor atômico
x <- 10
x[1]

# Cria um vetor vazio
x <- vector()


#Definindo o tipo e tamanho do vetor
x <- vector("integer", length=5)

# Cria vetor de inteiros (vazio)
x <- integer

# Cria vetor de caracteres (vazio)
x <- character(10)

# Concatena os elementos (c)
vetor1 <- c(1,2,3,4)
class(vetor1)
typeof(vetor1)


# Forçando inteiros
vetor1 <- c(1L, 2L, 3L, 4L)
class(vetor1)
typeof


# Vetor de caracteres
vetor2 <- c("a", "b", "c", "d")
vetor2


# Operador  : 

vet <- 1:10 #Acrescenta

vet <- 7:10 #Decrementa

vet <- -3:1

vet <- 1.5:10.5

vet <- 1.7:8.3



# Função seq()

vet <- seq(10)

vet <- seq(-5)

vet <- seq(2, 7)

vet <- seq(-5, 2)

vet <- seq(-2, 2)


seq(1.5, 3.5, 0.5) #Num inicial, num final, passo
seq(4.5, 2.0, -0.5) #Num inicial, num final, passo


vet <- seq(1, 10, 2)

vet <- seq(1, 4, 0.5)


## Função seq() com parâmetro length.out (dita o tamanho do vetor)

vet <- seq(1, 4, length.out=10)

## Função seq() com parâmetro along.with (usa o tamanho de outro vetor como referência)

vetor <- c(4, 1, 19, 3, 15)
vet <- seq(1, 10, along.with=vetor)

### Função seq_along() - também usa outro vetor de referência
# (nesse caso, por exemplo, geramos os índices do vetor)

seq_along(vetor)


# Função rep() - repete valores ou vetores

rep(10,3)

rep(5:8, 4)

rep(5:6, length.out=7)

rep(c(10,20), each=3)

rep(c(1,2,3), each=2)

rep(c(10,20), times=c(2,4))

rep(c(1,2), times=c(5,3))


# Função scan() - recebe valores do teclado

x <- scan()



# ********** OPERAÇÕES E MANIPULAÇÃO ***********

# Tamanho
vetor <- 20:40
length(vetor)


# Index
vetor[5]

# NÃO FUNCIONA
vetor[0]

# Acessando o último elemento (com base no tamanho do vetor)
vetor[length(vetor)]

# Retornando mais de um elemento
vetor[ c(1,3) ]

vetor[ 5:10 ]

# Condicionais

vetor [ vetor>29 ]

vetor [ vetor>29 & vetor<=35 ]

# Alterando elementos

vetor[6] <- 0909

# Alterando valor de uma posição que não existe

vetor[24] <- 333


# Adicionar um novo elemento ou um novo vetor ao vetor

x <- 1:3
y <- 4:6

append(x,y)

# Removendo um elemento do vetor

vetor[-4]

vetor[ -(5:10) ]

vetor[ vetor!=33 ]

vetor[ !vetor %in% c(37,38,39) ]


# Operações

vetor1 <- c(1,2,3,4)
vetor1 - 1

x <- vetor1 * 10

vetor1 * vetor1

vetor2 <- c(10,10,10,10)

vetor1 + vetor2

vetor2 <- 1:8 
vetor1 + vetor2 # Somando vetores que possuem tamanhos diferentes, mas múltiplos

# Funções úteis

rev(vetor1) # Reverso do vetor

tail(vetor1, 3) # Final do vetor, qtd de elementos

head(vetor1, 3) # Início do vetor, qtd de elementos

range(vetor1)

any( vetor2 > 5)

all( vetor2>= 15 )

all( vetor2 < 100 )

sort(vetor)

sort(vetor, decreasing = TRUE)

order(vetor)

order(vetor, decreasing = TRUE)