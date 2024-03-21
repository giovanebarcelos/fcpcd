# Lista 

# Cria Lista
lista <- list(1:13, c("Dick Vigarista", "Penélope"), c(TRUE, FALSE))
# Imprimir Lista
lista
# Estrutura da Lista
str(lista)

# Matriz = matrix()
matriz = matrix(data = 1:9, nrow = 3, ncol = 3, byrow = FALSE)
matriz1 = matrix(data = 1:9, nrow = 3, ncol = 3, byrow = TRUE)
matriz3 = matrix(1:9, 3, 3, FALSE)
?matrix


# Dim -> cria dimensões e pode-se jogar dados para dentro desta 
d1 <- 1:6 
dim(d1) <- c(2, 3)

# qual as dimensões da variável matriz1?
dim(matriz1)

# como alterar e imprimir valores de elementos?
matriz1[1,3] = matriz1[1,3] * matriz[3,3]
matriz1[1,3]

# cbind e rbind para criar matrizes a partir de vetores
nomes <- c("Muttley", "Medinho", "Penélope")
idades <- c(30, 25, 23)
contatos <- cbind(nomes, idades)

rbind(nomes, idades)

# como atribuir nomes as linhas e colunas, ou seja, renomear estas 
rownames(matriz) <- c("R1", "R2", "R3")
colnames(matriz) <- c("CA", "CB", "CC")
matriz
matriz["R2", "CB"]

# matriz1 + matriz
matriz
matriz1
matriz + matriz1

# Data Frame 
# data.frame() 

# Exemplo de Data Frame 
df <- data.frame(Id = 1:3, 
                 Nome = c("Dick Vigarista", "Penélope Charmosa", "Muttley"),
                 Idade = idades)
df

# Quais são o nome das colunas do df?
colnames(df)

# Estrutura do data frame
str(df)

# extrair Nome e Idade do data frame df
df[c("Nome", "Idade")]