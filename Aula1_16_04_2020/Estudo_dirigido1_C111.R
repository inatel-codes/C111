# Roteiro do Estudo Dirigido I de Analise de Dados (C111): Fatores,
# Estruturas de controle e Graficos basicos

# Este Estudo Dirigido tambem esta disponivel no Portal Academico
# Primeiramente, sete o seu diretorio de trabalho, onde voce colocou este Script.

# Caros(as) Alunos(as), SIGAM O ROTEIRO, sequencialmente!
  
# F A T O R E S
# Fatores sao variaveis (tipos de dados estatisticos) que sao muito uteis em
# sumarizacao de estatisticas, plots e regressoes.
# Eles representam uma maneira muito eficiente para armazenar valores de caracteres,
# porque cada caracter unico eh armazenado apenas uma vez e os dados sao
# armazenados como um vetor de inteiros.

# Eh uma maneira de otimizar o armazenamento e o processamento de textos, palavras e
# caracteres.
 
# Vamos criar um vetor de palavras
vec1 <- c("Masculino","Feminino","Feminino","Masculino","Masculino")
vec1

# Vamos converter esse vetor em fatores. Use o funcao factor()
fac_vec1 <- factor(vec1)
fac_vec1

# Ele dividiu o vetor em 2 niveis: Masculino e Feminino, e em ordem alfabetica dos
# niveis. Em fac_vec1 tem-se os elementos do vetor, mas internamente ele grava apenas
# os 2 niveis e um vetor de inteiros apontando para cada um dos elementos. Isso 
# economiza espaco de armazenamento, espaco de memoria e consequentemente agiliza e
# aumenta a performance

# Vamos verificar as classes de vec1 e de fac_vec1
class(vec1)
 
class(fac_vec1)
 
# Vamos imprimir os niveis de fac_vec1
levels(fac_vec1)

# Vamos ter uma visao geral sobre o conteudo da variavel: 2 elementos com Feminino
# e 3 com Masculino. A linguagem R divide o vetor em niveis (em ordem alfabetica
# crescente) e cria um vetor de inteiros apontando para a quantidade de cada um dos
# niveis
summary(fac_vec1)
 
# Podemos mudar os nomes dos niveis, se for necessario. Veja o resultado!
levels(fac_vec1) <- c("Femea", "Macho")
summary(fac_vec1)


# Fator ordenado: quando quiser definir uma ordem decrescente para os niveis 
# do fator, utilize outros parametros na funcao factor (order). Por exemplo....
form <- c("Fundamental", "Ensino Medio", "Maternal", "Fundamental", "Fundamental")
form
 
fac_form <- factor(form, order = TRUE, levels = c("Ensino Medio", "Fundamental",
            "Maternal")) # coloca os niveis desejados em ordem decrescente 
fac_form

summary(form) # vetor original, classe e modo: character e comprimento de 5
 
summary(fac_form) # fator, com a quantidade em cada nivel ordenado
 
# E S T R U T U R A S  D E  C O N T R O L E:
# Essas estruturas em R permitem que se faca validacoes, que se repita
# um bloco de codigo um numero de vezes e que se realize mudancas no
# comportamento do Script de acordo com determinadas regras. Sao elas:

# Condicional If-Else: sintaxes 
# if (condicao){
#   conjunto de tarefas} # se condicao verdadeira, executa este conjunto de tarefas
# else
#   {outro conjunto de tarefas} # se condicao falsa, executa este conj. de tarefas

# ifelse (condicao, tarefa1, tarefa2) # se condicao verdadeira, executa-se
#                                       tarefa1, se nao, executa-se tarefa2


# Repeticao Loop For: sintaxe
# for (i in 1:N) {       # para um determinado contador e dentro de um range de
#   conjunto de tarefas} # numeros (de 1 a N), se realiza o conjunto de tarefas

# Repeticao Loop While: sintaxe
# while (condicao satisfeita) { # enquanto a condicao for verdadeira, se
#   conjunto de tarefas}        # realiza o conjunto de tarefas, quando a
#                                 condicao deixa de ser verdadeira, o loop
#                                 eh encerrado e a operacao eh concluida

# Outras Repeticoes: sintaxes
# rep (x, y) # rep (repita x, y vezes)
rep(3,10)

# repeat { }
j=1
repeat {
  print (j)
  j=j+1
  if (j > 10) break()
}

# Nos loops:
# next .....pula para o proximo valor dentro do range estabelecido para o loop
# break ....interrompe o loop

# G R A F I C O S  B A S I C O S
# Os graficos fazem parte de todo o processo de Data Science, desde a analise 
# exploratoria (eh mais facil analisar um grafico do que uma tabela com numeros)
# ate a apresentacao do resultado final

# Existem diversas ferramentas de visualizacao de dados (que eh representar os dados de
# forma grafica) para construcao de graficos:
# Linguagens R e Python, Tableau, Power BI, Qlik Sense .... e outras

# A Linguagem R ja vem com o pacote basico de plotagem:
# graphics: contem as funcoes graficas basicas, incluindo plot, hist, barplot e piechart
# grDevices: contem as implementacoes de dispositivos graficos como X11, pdf, 
#            PostScript, png, etc.
# Com este pacote basico conseguimos construir graficos basicos de:  Colunas / Barras 
# Linha / Dispersao / Area / Bolhas / Superficie / Cone e Pizza
#
# Para construir graficos mais completos e profissionais, podemos utilizar os pacotes
# ggplot2, lattice e outros.

# funcao Demo = demonstra como utilizar as funcoes de um determinado pacote,
# ela mostra todos os passos necessarios para se construir um plot
demo("graphics")

# aperte o <return> 12 vezes para voce ver 11 graficos
# e observe as sintaxes para se criar todos esses tipos de 11 graficos
# se aparecer a mensagem..... Error in plot.new() : figure margins too large
# eh porque a sua area para desenhar o grafico esta pequena. Amplie o painel
# inferior direito para melhor esta visualizacao (painel de Files / Plots / .....)

# Para se construir um plot generico, unir informacoes de 2 variaveis
# em um unico grafico, usa-se a funcao plot (na duvida de seus parametros
# consulte o help ?plot). Esta funcao plot pertence ao pacote graphics

# Plot basico de 2 vetores, grafico mais simples que se pode criar
# apenas para verificar como 2 variaveis estao relacionadas
altura <- c(155, 167, 176, 153, 170, 159, 164)
peso <- c(51, 63, 84, 77, 55, 65, 66)

plot(altura, peso)

# Vamos plotar o dataframe lynx que apresenta o numero de peles de linces 
# cacados no Canada de 1821 a 1934 com 114 registros
View(lynx)

# Vamos passar o dataframe inteiro como parametro do plot
# O dataframe tem que estar formatado para tal (para ser plotado)
plot(lynx)

# Posso ir montando as camadas desse grafico colocando alguns parametros
# Colocar Labels dos eixos y e x, titulo
# Colocar cor do grafico e alterar tamanho e cor do titulo
plot(lynx, main = "DataFrame lynx", col = 'red', col.main = 52, cex.main = 1.5,
     ylab = "Observacoes", xlab = "Anos")


plot(lynx)
# se quiser alterar alguns padroes, altera o type
plot(lynx, type="p", main="Type pontos") # grafico com pontos
plot(lynx, type="l", main="Type linha")  # grafico com linha (default)
plot(lynx, type="b", main="Type linha com alguns pontos") # com linha e pontos
plot(lynx, type="h", main="Type linhas verticais")# com linhas verticais
plot(lynx, type="s", main="Type preenchimento")   # com preenchimento

# Se você quiser ver os graficos gerados anteriormente, clique na setinha para
# a esquerda (em Plots no painel abaixo) para ver os anteriores gerados

# Para ver a distribuicao de frequencia de um conjunto de dados, onde cada barra
# demonstra a quantidade de ocorrencias desta variavel. Para se ver como os
# dados estao organizados, usa-se a funcao hist (na duvida de seus parametros
# consulte o help ?hist)
hist(lynx)

# Quero mudar este histograma, dividindo em mais classes, mais colunas
# para distribuir melhor a informacao, ter uma dist. mais espalhada
# um break com valor unico, usando o parametro breaks = 14
hist(lynx, breaks = 14, main = "Histograma do numero de peles")

# Posso tambem usar um vetor de tamanho para os breaks
hist(lynx, breaks = c(0,1000,3000,5000,7000), main = "Hist. do no. de peles")

# Posso mostrar o total de frequencias para cada uma das classes no histograma
# usando o parametro labels = True e definir os limites do eixo y, para delimitar
# um tamanho para as caixinhas (classes)
# 
hist(lynx, labels = T, ylim = c(0,50), breaks = 14, main = "Hist. do no. de peles")

# Grafico de barras, que nao eh o histograma
?barplot

# Preparando os dados - numero de casamentos civis no cartorio de Santa 
# Rita durante os 4 trimestres do ano de 2019
dados <- matrix(c(15,6,37,12,58,6,16,3,4,18,27,10), nrow = 3, byrow = T)
dados

# Nomeando linhas e colunas desta matriz.
colnames(dados) <- c("1o.Tri","2o.Tri","3o.Tri","4o.Tri")
rownames(dados) <- c("Jovem","Adulto","Idoso")
dados

# Construindo um Barplot.
# Grafico de barras empilhado (Stacked Bar), onde cada barra 
# contem mais de uma informacao, varias faixas em cada uma das barras
# e uma barra por trimestre
barplot(dados)

# Grafico de barras utilizando uma barra para cada faixa de idade
# e um grupo de 3 barras para cada trimestre. 
barplot(dados, beside = T)

# Vamos dar uma customizada neste grafico, a cor muda bem o aspecto.
# A combinacao de cores eh determinante para o sucesso de um grafico.
# Veja como a cor deu mais vida ao grafico!
barplot(dados, col = c("steelblue1", "tan3", "seagreen3"), beside = T,
        ylab = "no. de casamentos")

# Vamos criar uma legenda no canto superior direito para o grafico anterior
# colocando as cores para os titulos das faixas etarias 

# Para escolher cores, temos uma infinidade de opcoes. Veja!
colors()

# Legenda no superior direito "topright" com pch = 15 para simbolo de quadradinho, 
# vetor de cores usado nas barras do grafico e os labels com o vetor de legendas

legend("topright", pch = 15, col = c("steelblue1", "tan3", "seagreen3"), 
       legend = c("Jovem","Adulto","Idoso"))

# Para se construir um grafico de pizza usa-se a funcao pie
?pie

# Criando as fatias da pizza
fatias = c(40, 20, 40)

# Nomeando os labels para cada fatia
paises = c("Brasil", "Argentina", "Chile")
paises

# Unindo paises e fatias
paises = paste(paises, fatias)
paises

# Incluindo mais detalhes no label, colocar o % apos o numero da fatia sem espaco
paises = paste(paises, "%", sep = "")
paises

# Construindo o grafico de pizza
pie(fatias, labels = paises,
    col = c("darksalmon", "gainsboro", "lemonchiffon4"), 
    main ="Distribuicao de Vendas")

# Para fazer o grafico de pizza em 3D eh preciso instalar e carregar o pacote plotrix
install.packages("plotrix")
library(plotrix)

pie3D(fatias, labels = paises, explode = 0.05,  
      # explode eh o quanto as fatias irao ficar separadas
      # separacao entre elas, mais proximas ou nao
      col = c("steelblue1", "tomato2", "tan3"), 
      main = "Distribuicao de Vendas")

pie3D(fatias, labels = paises, explode = 0.55,  
      # aumentando o explode para 0.55
      col = c("steelblue1", "tomato2", "tan3"), 
      main = "Distribuicao de Vendas")

 
# Especificacao dos parametros para as funcoes plot, hist, barplot e piechart...

# col - cor do plot (nome da cor entre aspas ou codigo da cor)
# lty - tipo de linha
# lwd - largura de linha
# type - ponto, linha, ponto e linha, linha vertical...
# pch - simbolo no plot, tipo de ponto (de 0 a 25)
# xlab - label do eixo x
# ylab - label do eixo y
# las - como os labels dos eixos sao orientados (vertical / horizontal)
# bg - background color (cor de fundo)




