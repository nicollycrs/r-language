x <- list(1:5, "Z", TRUE, c("a", "b"))

#Criando lista com nome dos campos
fulano <- list(nome="Fulano", cpf="1010", celular="9876-5432", endereco="Rua X")

#Criando os nomes dos campos depois da criação da lista
names(x) <- c("numeros", "letra", "lógico", "vetor")

#Acessando elementos
fulano$cpf
fulano[[3]]
fulano$`cpf` #se houver algum elemento especial, usar `, " ou '
fulano[1] #retorna uma lista, não o elemento em si

#Fatiando a lista
fulano[c("nome", "celular")]

#Diferença entre [[i]] e [i]
class(fulano[1])
class(fulano[[1]])

x[1]

x[[1]]

x[1]$numeros

x[[1]]$numeros #erro

x[1][1]

x[[1]][1]


# Alterando elementos

fulano[[1]] <- "Fulano de Tal"

fulano$`numero endereco` <- 200

# Adicionando elementos

fulano[["numero endereco"]] <- 500

# Removendo elementos

fulano$cpf <- NULL



# Concatenando listas

a <- list(1:5, "Z")

names(a) <- c("numeros", "letra")

b <- list(nome="Fulano", sobrenome="De Tal")

lista <- c(a, b)


# Converter em vetor

unlist(x)


# Converter para lista

vet <- 1:3

as.list(vet)


###### EXERCÍCIOS ######
# Exercício 1

v1 <- c(2005:2016)
v2 <- c(1:12)
v3 <- c(1:31)

datas <- list(anos=v1, meses=v2, dias=v3)

#Exercício 2
v <- c(1,3,4,7,11,18,29)

operacoes <- list(`x*2`=v*2, `x/2`=v/2, `sqrt(x)`=sqrt(v))

operacoes[[3]][3:5]
