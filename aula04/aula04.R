system('free -m')
system('ls -alt')
installed.packages()
??ggplot2
install.packages("ggplot2")
data(iris)
iris
data(mtcars)
7*5
7/3
plot(sin, from = -2*pi, to = 2*pi)
plot(dnorm, from = -3, to = 3)
numero <- 13 
numero = 13
numeros = c(1:13)
numerosM = numeros * 5
numerosM
df <- data.frame(nome = c("Dick Vigarista", "Penélope", "Muttley"),
                 idade = c(23, 41, 32))
df

idade = readline("Qual a sua idade?")
idade
menu(c("Sim", "Não"), title="Continuar")

rm(list = ls())

getwd()
setwd("/home/giovane.barcelos/fcpcd")

as.integer(TRUE)
as.integer(FALSE)

is.integer(TRUE)
is.double(5)

x <- 13 
is.double(x)

x <- 13L
is.double(x)

numeros <- c(2,7,8,12,3)
numeros_seq <- c(10:20)

alunos <- c(mestre="Penélope Charmosa",
            bacharel="Muttley",
            phd="Dick Vigarista")
alunos['mestre']

x <- c(5, "b")
x

x <- c(12, 15, 13, 17, 11)
x[4]
x[3:5]
x[-2]
x[-(3:5)]

x <- 1:5

x <- c(1,1,2,2,3,3,4)
x <- unique(x)
x

tamanhos <- c("pequeno", "grande", "pequeno", "médio")
tamanhos <- factor(tamanhos, levels =
                       c("pequeno", "médio", "grande"))
tamanhos

