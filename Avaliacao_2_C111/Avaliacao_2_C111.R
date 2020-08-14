#
# Avaliacao 2 de C111 (Analise de Dados)

# Consideracoes gerais desta avaliacao:

# a) As questoes desta avaliacao deverao ser desenvolvidas em dupla ou individual,
# nesse Script mesmo, mas renomeado com (nomealuno1_nomealuno2.R, se for feita
# em dupla ou nome_aluno.R, se for feita individualmente) e enviado por e-mail 
# para mim, rosannas@inatel.br, ate o dia 18/junho/20, 5a.-feira, 23:59h.

# b) A interpretacao das questoes faz parte da avaliacao.

# c) Coloque abaixo de cada questao os comandos adequados para resolucao da mesma,
#    de forma que quando eu executa-los, eu poderei verificar e validar as suas respostas.

# d) Avaliacoes entregues fora do prazo serao desconsideradas.

# e) Esta avaliacao ira corresponder a nota da NP2 da disciplina.

# Boa avaliacao!! Profa. Rosanna.
#-----------------------------------------------------------------------------------

# Questao 1) Faca a leitura da url abaixo, grave no objeto pagina1:
# http://forecast.weather.gov/MapClick.php?lat=42.31674913306716&lon=-71.42487878862437&site=all&smap=1#.VRsEpZPF84I
# Lembre de carregar os pacotes necessários para tal.
library(rvest)

pagina1 <- read_html("http://forecast.weather.gov/MapClick.php?lat=42.31674913306716&lon=-71.42487878862437&site=all&smap=1#.VRsEpZPF84I")
pagina1

# Questao 2) Da pagina coletada na questao anterior, extraia o texto que contenha 
# as tags: "#detailed-forecast-body b  e .forecast-text" e coloque no objeto previsao.
previsao <- pagina1 %>% html_nodes("#detailed-forecast-body") %>% html_nodes(".forecast-text")
previsao

# Questao 3) Transforme o resultado da questao anterior, objeto previsao (documento xml)
# em um objeto texto. Coloque espacos nele com a funcao paste para que ele fique legivel.
previsao_texto <- previsao %>% html_text(trim = TRUE)
texto <- ""
for(i in previsao_texto) {
  texto <- paste(texto, i)
}
texto

# Questao 4) Pesquisa sobre idade (em meses) e tempo de reacao de um 
# material radioativo (em horas):

# criacao dos dados desta pesquisa - coloquei aqui uma lista com idades e outra com tempos:
idade <- c(9,13,14,21,15,18,20,8,14,23,16,21,10,12,20,
           9,13,5,15,21)

tempo <- c(17.87,13.75,12.72,6.98,11.01,10.48,10.19,19.11,
           12.72,0.45,10.67,1.59,14.91,14.14,9.40,16.23,
           12.74,20.64,12.34,6.44)

# 4.a) Gere o dataframe pesquisa com estes 2 vetores.
pesquisa <- data.frame(idade = idade, tempo = tempo)
pesquisa

# 4.b) Crie um grafico de dispersao (ScatterPlot) e apresente neste grafico a linha de regressao.
# Lembre de carregar o pacote necessário para isto!
plot(x = idade, y = tempo,
     main = "Scatterplot - Idade x Tempo",
     xlab = "Idade (Meses)",
     ylab = "Tempo (Horas)")    
abline(lm(idade ~ tempo, data=df))

# Questao 5) - Relacao entre altura (cm) e peso(kg)

# criacao dos dados desta relacao - coloquei aqui uma lista de alturas e outra de pesos:
alturas = c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
pesos = c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)

# 5.a) Crie o modelo de regressao para esta relacao. A variavel alvo eh pesos.
modelo <- lm(pesos ~ alturas)
modelo

# 5.b) Esse modelo criado apresentou bastante acuracia (ou seja ele apresentou uma
# boa previsao)? Se sim ou não, justifique sua resposta!
summary(modelo)
# Resposta: Sim, pois o Multiple R-squared é ígual a 0.81 e assim mostra que o nível de precisão está relativamente alto, o que significa que o modelo errou menos. 

# 5.c) Faca a previsao de pesos com base neste novo conjunto de
# de alturas (alturas2), utilizando o modelo preditivo gerado em 5a):
alturas2 = data.frame(c(179, 152, 134, 197, 131, 178, 185, 162, 155, 172))
previsao <- predict(modelo, alturas2)
View(previsao)

# 5.d) Qual o valor de peso previsto para a altura 197cm?
previsao[[4]]

# Questao 6) Regressao Linear - Voces terao que contruir um modelo de machine
# learning para um problema de regressao com os seus 5 passos :

# O dataset com dados de estudantes que foi disponibilizado junto com esta
# avaliacao foi retirado de:
# https://archive.ics.uci.edu/ml/datasets/Student+Performance

# Leia no site sobre as informacoes deste dataset, seus 33 atributos. Sendo que a 
# variavel alvo (target) eh a nota final G3. G1 e G2 sao notas intermediarias.


# Etapa 6.1) Definicao do problema de negocio (ja feito por mim): que eh a previsao da
#            nota final (grade= G3) dos alunos com base em algumas metricas.

# Etapa 6.2) Carregue, no objeto df, o dataset 'estudantes.csv' disponibilizado junto
#            com esta avaliacao e visualize seus dados.
df <- read.csv("estudantes.csv", sep = ";")
View(df) 

# 6.2.a) Quais foram os tipos gerados para as variaveis deste dataframe?
str(df) 

# 6.2.b) Gere um histograma para a variavel G3 para voce ver a frequencia.
hist(df$G3, main = 'Histograma para a variavel G3', xlab = 'G3')


# Etapa 6.3) Construa e treine o modelo (versao 1) utilizando os 2 atributos: G1 e G2,
#            como variaveis preditoras e o G3, como variavel target e utilize o
#            o arquivo de treino gerado abaixo para fazer esta construcao do modelo:
treino <- df[1:275,]  # com aproximadamente 70% dos registros de estudantes.csv
modelo_v1 <- lm(G3 ~ G2 + G2, data = df)
modelo_v1
previsao <- predict(modelo_v1, treino)
View(previsao)

# Etapa 6.4) Avalie e interprete o modelo criado. Ele apresentou uma boa previsao? Justifique!
summary(modelo_v1)

# Resposta: Sim, pois o Multiple R-squared é ígual a 0.8188 e assim mostra que o nível de precisão está relativamente alto, o que significa que o modelo errou menos. 

# Etapa 6.5) Realize uma otimizacao desse modelo, criando uma versao 2 dele. Seja criativo!
#            O que você fez nesta otimizacao? Ela apresentou melhor previsao do que o modelo
#            anterior? Justifique!
modelo_v2 <- lm(G3 ~ G1 + G2 + studytime + failures + freetime + absences + activities + health, data=df)
modelo_v2

summary(modelo_v2)

# Resposta: 
# Foi adicionado alguns dados que interferem diramente no resultado das notas, como por exemplo o tempo de estudo, saúde, atividades, etc. 
# Sim, observou que aumentou de 0.8188 para 0.8312

# 6.6) Faca a previsao solicitada na Etapa 6.1 com esta 2a. versao do modelo, utilizando o 
#      arquivo de teste gerado abaixo para fazer a previsao no modelo (com a versao 2):
teste <- df[276:395,]  # com aproximadamente 30% dos registros de estudantes.csv

previsao <- predict(modelo_v2, teste)
View(previsao)






