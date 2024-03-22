# Quiz
x <- 0:5
y <- sum(x[-6] + 2)

#➢ Qual é o valor de y? 20

# setar diretório 
setwd('~/fcpcd/aula05')

# Importar os dados
snail <- read.csv( file = "snail_feeding.csv", 
                   header = TRUE, 
                   strip.white = TRUE, 
                   na.strings = " ", 
                   stringsAsFactors = TRUE )

# Análise geral dos dados 
str(snail)
summary(snail)

# Remover colunas que não tem dados 
snail <- snail[ , 1:7]

# Verificar a unicidade e factors de uma coluna
factor(snail$Sex)
unique(snail$Sex)
levels(snail$Sex)

# Modificar dados com erro de digitação unificando os 
# do mesmo tipo 
# Levels: Male female male males
snail$Sex[which(snail$Sex == "Male" | 
          snail$Sex == "males")] = "male"
snail$Sex = factor(snail$Sex)
levels(snail$Sex)

# Modificar o máximo errado 
# 3 soluções equivalentes
snail$Depth[snail$Depth == max(snail$Depth)] <- 1.62
snail[which.max(snail$Depth), 6] <- 1.62
snail$Depth[which.max(snail$Depth)] <- 1.62

