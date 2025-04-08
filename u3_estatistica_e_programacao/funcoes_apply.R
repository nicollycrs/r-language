# Funções Apply

# sapply()

x <- 10:20
sapply(x, sqrt)


## Usando sapply com função customizada
quadrado <- function(x) { # 
  return (x^2)
}

dados <- 10:20

sapply(dados, quadrado)

## Passando mais de um parâmetro na sapply()

potencia <- function(x, expoente) {
  return(x^expoente)
}

dados <- 10:20

sapply(dados, potencia, expoente=4)


# lapply() - retorna uma lista

x <- 10:20
lapply(x, sqrt)


# apply() - varre por linha ou por coluna (margem 1 - por linha, margem 2- por coluna)

matriz <- matrix(1:12, nrow=3, ncol=4)

apply(matriz, 1, sum)

apply(matriz, 2, sum)



# tapply() - agrupa por fatores (categorias)

tapply(iris$Sepal.Width, iris$Species, mean)



n_alunos <- 200
n_cursos <- 4
v_nome <- paste("Aluno", 1:n_alunos)
v_nota <- sample(0:100, n_alunos, replace=T)
v_cursos <- paste("Curso", 1:n_cursos)
v_curso <- v_cursos[sample(1:n_cursos, n_alunos, replace=T)]
df <- data.frame(nome=v_nome, nota=v_nota, curso=v_curso)
head(df)

tapply(df$nota, df$curso, mean) #média das notas por curso


