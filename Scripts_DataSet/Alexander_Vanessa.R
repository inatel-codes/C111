setwd("C:/Users/Alexander/Documents/Projects/Academico/C111")
getwd()

# Questao 1
rest = 10 %% 4
rest

# Questao 2
vector = rep(0:29)
vector

# Questao 3
vector_for_create = seq(10, 100, 10)
matrix = matrix(data = vector_for_create, nrow = 5, ncol = 2, byrow = T)
matrix

# Questao 4
vector_tranformed = as.vector(matrix)
vector_tranformed

# Questao 5
list = list(matrix, vector)
list

# Questao 6
matrix1 = matrix(0:5, nrow = 2)
matrix1
matrix2 = matrix(6:11, nrow = 2)
matrix2
matrix_bind = cbind(matrix1, matrix2)
matrix_bind

# Questao 7 
iris
dim(iris)
summary(iris)

# Questao 8 
plot(iris[1:2])

# Questao 9
data = read.table("http://data.princeton.edu/wws509/datasets/effort.dat")
data

# Questao 10
colnames(data) <- c("Configuração", "Esforço", "Mudança")
data

# Questao 11
newDataframe = subset(iris, Sepal.Length > 7)
newDataframe