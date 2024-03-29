setwd("~/fcpcd/aula06")

# Carregar csv
fish_survey <- read.csv("fish_survey.csv", header=TRUE)
str(fish_survey)

# Carregar water_data e gps_data 
water_data <- read.csv("water_data.csv", header = TRUE)
gps_data <- read.csv("gps_data.csv", header = TRUE)

head(fish_survey)
head(water_data)

# Instalar dplyr para joins e tidyr com utilitário
install.packages("dplyr")
library(dplyr)
install.packages("tidyr")
library(tidyr)

# Fazer join de fish e water por Site e Month 
fish_water <- inner_join(fish_survey, water_data, 
                         by = c("Site", "Month"))
head(fish_water)
head(gps_data)

# Fazer join fish_water com gps_data 
fish_water_gps <- inner_join(fish_water, gps_data,
                             by = c("Site", "Transect"))

# Carregar bird_behaviour
bird_behaviour <- read.csv("bird_behaviour.csv", 
                           header = TRUE)
str(bird_behaviour)
head(bird_behaviour)


# Criar coluna nova
bird_behaviour$FID_N <- bird_behaviour$FID * 3
# Formas alternativas de fazer inclusão de nova coluna
# bird_behaviour[, "FID_N" ] <- bird_behaviour$FID * 3
# bird_behaviour <- mutate(bird_behaviour, FID_N = bird_behaviour$FID * 3)

# Criar duas colunas a partir de Species separando 
# Gender e Species 
bird_behaviour <- separate( bird_behaviour, 
                            Species, 
                            c("Gender", "Species"),
                            sep = "_", 
                            remove = TRUE)

# Unir colunas novamente 
bird_behaviour <- unite( bird_behaviour, 
                         "Species", 
                         c(Gender, Species),
                         sep = "_", 
                         remove = TRUE)

# Obter subsets de dados 
str(bird_behaviour)
subset(bird_behaviour, Sex == "female")
bird_behaviour[bird_behaviour$Sex == "female",]

# Selecionar intervalo de linhas
slice(bird_behaviour, 13:20)

# Filtrar 
filter(bird_behaviour, FID < 20)

# Sumarização 
summarize(bird_behaviour,
          mean.Disturbance = mean(Disturbance),
          desviopadrao = sd(Disturbance))

# Selecionar 5 linhas de bird_behaviour de forma aleatório 
sample_n(bird_behaviour, 5)

# 29) Como usar a função group_by para agrupar um data frame 
# por uma ou mais variáveis?
# Suponha que temos um data frame df com informações sobre vendas
# de produtos, incluindo o produto, o mês e o valor da venda. 
# Queremos agrupar as informações por produto e mês. 
# Podemos usar a função group_by para isso.
df <- data.frame( produto = c("A", "B", "C", "A", "B", "C"),
                  mes = c(3,3,3,9,9,9),
                  valor = c(300,330,390,900,990,930))
df_grp <- df %>% group_by(produto, mes)
df_grp

df_grp <- df %>% group_by(produto, mes) %>% summarize(total = sum(valor))
df_grp