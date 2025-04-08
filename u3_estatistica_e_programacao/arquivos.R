# Arquivos

setwd("Users/Caminho/Projeto") # Seta o diretório de trabalho

getwd() # Retorna o diretório de trabalho atual


# Leitura de arquivos

dados <- read.table("arquivo.dat")

dados <- read.table("arquivo.dat", header=T)


dados <- read.csv("fruitohms.csv")

dados <- read.csv("http://www.razer.net.br/datasets/fruitohms.csv")


# Escrita de arquivos

df <- data.frame(nome=c("Fulano", "De Tal", "Ciclano", "Beltrano"), idade=c(25,30,18,15))

write.table(df, "idades.txt")

write.table(df, "idades2.txt", row.names=F, sep="/")

write.table(df, "idades3.txt", quote=F, row.names=F, sep="-")


            
df <- data.frame(nome=c("Fulano", "De Tal", "Ciclano", "Beltrano"), salario=c(50000.00,85439.33,123987.654,18698.10))

write.csv(df, "salario.csv")

write.csv2(df, "salario2.csv")

write.csv2(df, "salario3.csv", row.names=F, quote=F)



