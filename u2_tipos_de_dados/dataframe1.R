lista <- list(x=c(1,2,3), y=c("a", "b", "c"))

#Transformando lista em data frame
df <- as.data.frame(lista)


#Adicionando colunas
df <- data.frame()

df$x <- integer()
df$nome <- character()

# Adicionando linhas

df[nrow(df)+1, ] <- c(10, "razer") #nrow(df) - retorna o número da últma linha



#Criando o data frame com as colunas e valores

df <- data.frame(x=integer(), nome=character())

df <- data.frame(id=letters[1:10], x=1:10, y=11:20)

df <- data.frame(nome=c("Fulano", "Ciclano", "De Tal"), idade=c(20, 18, 32))

#Mostrando a estrutura de um objeto

str(df)


# Leitura de arquivo CSV
df <- read.csv("exemplo.csv", fileEncoding="UTF-8")


# Funções úteis
df <- data.frame(id=letters[1:10], x=1:10, y=11:20)

dim(df) #número de linhas e colunas

nrow(df) #número de linhas

ncol(df) #número de colunas

head(df, 3) #primeras n linhas

tail(df, 2) #últimas n linhas

names(df) #mostra o nome das colunas

rownames(df) #mostra o nome das linhas (index)


# Concatenando data frames

df2 <- data.frame(z=111:120)

cbind(df, df2) #concatenando por colunas


df3 <- data.frame(id="r", x=200, y=300)

rbind(df, df3) #concatenando por linhas


# Convertendo lista em data frame e vice versa

lista <- list(nome=c("TADS", "TGQ", "TCI"), alunos=c(45,50,40))

as.data.frame(lista)

as.list(df)
