# Consideracoes gerais desta avaliacao:

# a) Os itens (de 1 a 8) desta avaliacao deverao ser desenvolvidos em dupla
# ou individual, nesse Script mesmo, mas renomeado com (nomealuno1_nomealuno2.R 
# , se em dupla ou nome_aluno.R, se individual) e enviado por e-mail para mim, 
# rosannas@inatel.br, ate o dia 29/abril/20, 4a.-feira, 23:59h. 

# b) A interpretacao dos itens faz parte da avaliacao.
# c) E necessario apresentar a saida dos comandos para validar as respostas dos itens.
# d) Avaliacoes entregues fora do prazo serao desconsideradas.
# e) Esta avaliacao corresponde a NP1 da disciplina

# Boa avaliacao!! Profa. Rosanna.


# Item 1) Pesquise e coloque aqui no Script, qual eh a funcao que:
#  a) permite listar todos os arquivos que estao no diretorio de trabalho

#  b) permite listar os tipos de dados criados (as variaveis de ambiente criadas)

#  c) permite listar os pacotes que ja estao carregados na memoria para utilizacao


# Item 2) Crie um vetor de strings com nome de 4 animais, repita o nome de um dos
# animais, portanto um vetor com 5 palavras:
#  a) imprima esse vetor

#  b) converta este vetor para fator e imprima na tela

#  c) apresente uma visao geral dos conteudos dele


# Item 3) Crie um vetor de strings com os nomes Bacharelado em 3 posicoes,
# Especializacao em uma posicao e Mestrado em 2 posicoes, portanto um vetor
# com 6 palavras:
# a) imprima esse vetor

# b) converta este vetor para um fator ordenado e o imprima na tela

# c) mostre a quantidade em cada nivel ordenado

# d) altere o nome dos niveis desse fator de Bacharelado para Graduacao,
#    Especializacao para Lato Sensu e Mestrado para Stricto Sensu


# Item 4) Crie um loop (use qualquer solucao de estrutura de loop) que verifique 
# se ha numeros maiores que 10 e que sao pares no vetor abaixo. Se houver, imprima esse(s)
# numero(s). Se nao houver, envie uma mensagem de que nao ha numeros com
# este adjetivo.

# Considere os 2 vetores abaixo para fazer o teste do codigo acima:
# vec1 <- c(12, 3, 14, 19, 34, 2, 25)
# Para o vetor vec1 acima devera sair os numeros: 12   14   34 (pares e maiores que 10)

# vec2 <- c(21, 3, 15, 19, 37, 2, 25)
# Para o vetor vec2 acima devera sair: numeros pares maiores que 10


# Item 5) Considere a lista abaixo. Crie um loop que imprima cada elemento desta lista.
#         Atencao para a disposicao da dimensao desta lista.
# list1 <- list(1, 1, 2, 3, 5, 8, 13, 21)


# Iremos utilizar alguns datasets disponibilizados pelo pacote 
# datasets. Coloque aqui a funÃ§Ã£o que carrega este pacote datasets.


# Item 6) Dataset airquality
# a) Coloque aqui a funcao que visualiza os dados em forma de planilha do
# dataset airquality que eh referente a medicoes de qualidade do ar em 
# Nova Iorque realizadas entre maio e setembro de 1973

# b) Faca um grafico "elegante/customizado" sobre este dataset, plotando vento x 
# temperatura, use as colunas vento e temperatura nos eixos x e y respectivamente
# e apresente neste grafico pelo menos 5 parametros descritos no final
# do Estudo Dirigido 1

# c) Elimine os valores NA existentes neste dataset, salvando-o com outo nome.

# d) Faca um histograma, "tambem elegante", a respeito da coluna Solar.R, com 
# no mÃ­nimo 5 parametros descritos no final do Estudo Dirigido 1


# Item 7) Prepare uma matriz (4x3) que represente algum conjunto de dados (livre escolha).
# Nomeie as linhas e colunas desta matriz de acordo com os dados criados. 
# Crie um barplot que represente essesdados em stacked bar, com representacao
# de cores, legendas e label no eixo y.


# Item 8) Dataset iris
# a) Faca um grafico de pizza para mostrar a distribuicao de especies do dataframe
# iris. Temos 3 especies: setosa, versicilor e virginica. 
# A especie esta na coluna $Species de dataframe
# Dica: para saber a quantidade de cada especie, gere um fator desta coluna e
# faca o summary dele. E para os labels, faÃ§a um vetor de nomes.

