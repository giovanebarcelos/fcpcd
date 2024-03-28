# Quiz
x <- 0:5
y <- sum(x[-6] + 2)

#➢ Qual é o valor de y? 20

# setar diretório 
setwd('~/fcpcd/aula06')

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

# Verificar resumo dos dados
summary(snail)

# primeiros 10 itens 
head(snail, n = 10)
tail(snail, n = 10)

# Gravar snail_feeding corrigido para snail_feeding_new.csv
write.csv(snail, file = "snail_feeding_new.csv", 
          row.names = FALSE )

# Carregar snail_feeding_new.csv 
snail_new <- read.csv( file = "snail_feeding_new.csv", 
                       header = TRUE, 
                       strip.white = TRUE, 
                       na.strings = " ", 
                       stringsAsFactors = TRUE )
summary(snail_new)
str(snail_new)
sum(duplicated(snail_new))

# Corrigindo linhas duplicadas
snail_new <- unique(snail_new)
write.csv(snail_new, file = "snail_feeding_new.csv", 
          row.names = FALSE )
head(snail_new)
row.names(snail_new) <- 1:nrow(snail_new)
