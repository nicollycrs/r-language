### Aula 1.5

# Exercício R - 1
# Efetue as seguintes operações:
# a) (1 + 2 + 3 + 4) / 4
(1+2+3+4) / 4
# b) 7 / 2 + 8 * (5 – 3)
7/2+8*(5-3)
# c) Divisão entre 7 e 3
7/3
# d) Resto da divisão entre 7 e 3
7%%3
# e) Parte inteira da divisão entre 7 e 3
7%/%3
# f) Volume de um tubo: pi * raio2 * altura
#   - Calcular o volume de um tubo de raio 10 e altura 70
raio <- 10
altura <- 70
pi * (raio^2) * altura




# Exercício R - 2
1 < 10
5 <= 2
10 > 20
10 >= 10
5 == 5
5 != 5

# Operadores lógicos
## NÃO(!)
!FALSE
!(4!=7)
!(10<5)

## E(& ou &&)
TRUE && FALSE

## OU(| ou ||)
TRUE || FALSE



### Exemplo
a <- TRUE
b <- FALSE
a && b
a || b
!a


#&& e || só funcionam para não vetores
# & e | calculam todos os elementos do vetor
# Exemplo
x <- c(TRUE, TRUE, FALSE, FALSE)
y <- c(TRUE, FALSE, TRUE, FALSE)
x | y
x || y
x & y
x && y
!x



# Exemplo - Relacionais
a <- 1:5
b <- 8:4
a > b


# Exemplo - Aritméticos
a <- 1:5
b <- 8:4
a + b





# FUNÇÕES MATEMÁTICAS
abs(-10)
abs(10)

sqrt(144)

factorial(100)

trunc(3.54)

round(3.54)


## Fórmula de Bhaskara
a <- 2
b <- -16
c <- -18

x1 <- (-b + sqrt( b*b-4*a*c)) / (2*a)
x2 <- (-b - sqrt( b*b-4*a*c)) / (2*a)

### Fórmula de Bhaskara - números complexos
a <- 1
b <- -6
c <- 10

(-b + sqrt( as.complex( b*b-4*a*c) )) / (2*a)
#ou, sendo i=raiz de -1
(-b + sqrt( sqrt( b*b-4*a*c)+0i )) / (2*a)