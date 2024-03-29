# Limpea de memória 
rm(list = ls())

# Carregar sparrows.csv
sparrows <- read.csv(file = "sparrows.csv", header = TRUE)

# Analisar dados 
summary(sparrows)

# Histograma 
hist(sparrows$Wing, col = "green", breaks = 50, main = "Titulo",
     ylab = "Frequência", xlab = "Wing", freq = FALSE)
lines(density(sparrows$Wing), col = "red", lwd = 2)

summary(sparrows)

# Cores possíveis
colours()

# Scatterplots / Dispersão 
plot(sparrows$Wing, sparrows$Tarsus)
plot(Wing ~ Tarsus, sparrows)

plot(sparrows$Wing, sparrows$Tarsus, 
     xlim = c(52,68), 
     pch = 13, 
     col = "green")

# Boxplots 
boxplot(Wing ~ Sex, sparrows, 
        xlab = 'Sexo', ylab = 'Tamanho Asa',
        col = c("green", "blue"),
        ylim = c(52, 68),
        main = "Boxplot de Wing ~ Sex")

# Dividir gráficos na mesma página 
par(mfrow = c(1,3))

hist(sparrows$Wing, col = "green", breaks = 50, main = "Titulo",
     ylab = "Frequência", xlab = "Wing", freq = FALSE)
plot(sparrows$Wing, sparrows$Tarsus, 
     xlim = c(52,68), 
     pch = 13, 
     col = "green")
boxplot(Wing ~ Sex, sparrows, 
        xlab = 'Sexo', ylab = 'Tamanho Asa',
        col = c("green", "blue"),
        ylim = c(52, 68),
        main = "Boxplot de Wing ~ Sex")
dev.print(device = pdf, file = "Sparrows.pdf")
dev.off()

# Outra forma de imprimir
png("Boxplot.png")
boxplot(Wing ~ Sex, sparrows, 
        xlab = 'Sexo', ylab = 'Tamanho Asa',
        col = c("green", "blue"),
        ylim = c(52, 68),
        main = "Boxplot de Wing ~ Sex")
dev.off()

# SavePlot precisa do X11 Cairo instalado
savePlot(filename = "Boxplot.jpeg", type = "jpeg")

# Continuaremos com GGPLOT2
