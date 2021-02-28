#INTRODUÇÃO AO R#
#Por: Amanda Vieira e Stefania Ventura
#Sigam o nosso insta de divulgação científica @lasexia
#27/02/2021
#Rladies Gyn @rladiesgyn

#EXERCÍCIO SOBRE OBJETOS
# São 12 pessoas para escutar e cada depoimento demora, em média, 1h30. Um único delegado e escrivão devem colher todos os depoimentos e ambos trabalham 6 horas por dia.
# Crie objetos para guardar as quantidades mais importantes nesse problema. Quantos objetos são? Quais são?
#   
# Calcule o tempo necessário para interrogar todas as testemunhas
# A) em horas
# B) em minutos
# C) em dias de trabalho da dupla delegado/escrivão

testemunhas <- 12
tempo_inter <- 1.5
tempo_trab_deleg <- 6

(tempo_inter_horas <- testemunhas * tempo_inter)

(tempo_inter_min <- tempo_inter_horas * 60)

(dias_trab_deleg <- tempo_inter_horas/tempo_trab_deleg)

#EXERCÍCIO SOBRE VETORES

# Crie dois vetores:
# v1 com valores 2 3 5 10 9 15 51 5 
# v2 com valores 16 17.7 20 23.1 27 16.2 18 22
v1<- c(2, 3, 5, 10, 9, 15, 51, 5) 
v2<-c(16, 17.7, 20, 23.1, 27, 16.2, 18, 22)

# Obtenha a soma dos valores de cada vetor
sum(v1)
sum(v2)
# Crie um novo vetor que seja a união de v1 e v2
v3<-c(v1,v2)
v3
# Multiplique por 100 o vetor anterior resguardando os valores em outro vetor 
v4<-v3*100
v4

#EXERCÍCIOS SOBRE MATRIZES

#1) Crie uma matriz 1 a 6 com 3 colunas. Salve num objeto chamado matriz
matriz <- matrix(1:6, ncol =3)

#2) Multiplique a matriz acima por 5 e salve em matriz2
matriz2 <- matriz * 5

#3) Multiplique a matriz acima por uma matriz3 de que vai de 2 a 12 de 2 em 2 (3 col)
matriz3 <- matrix(seq(2, 12, by = 2), ncol = 3)
matriz2 * matriz3

#4) Pegue a matriz e adicione uma linha com os seguintes elementos 0,1,2 no começo e 8, 10, 12 no final da matriz
rbind(c(0,1,2), matriz, c(8, 10, 12)) #CUIDADO AO NÃO USAR O c()

#5) Faça as seguintes operações e diga o que essas funções retornam
#matriz > 4 
matriz > 4

#matriz == 5
matriz == 5      

#EXERCICIOS SOBRE DATAFRAMES
#IRIS

#Solicite a primeira coluna do IRIS
iris$Sepal.Length
iris[,1]

#Solicite a ultima coluna do IRIS
iris$Species
iris[,5]  

#Solicite as 5 primeiras linhas do IRIS
head(iris, 5)
iris[1:5,]

#Solicite as linhas de 3 a 7 e de 12 a 19
iris[c(3:7, 12:19),]

#MTCARS

#Selecione as 3 primeiras colunas
mtcars[,1:3]

#Selecione os valores de mpg acima de 15
mtcars[mtcars$mpg > 15,]

#Selecione os valores de cyl>=5 e carb>2
mtcars[mtcars$cyl >= 5 & mtcars$carb > 2,]

#FUNCOES

#Crie uma função que calcule o quadrado de um número
quadrado <- function(x){
  operacao = x * x
  return(operacao)
}

#Testando a função
quadrado(2)
quadrado(3)

#Crie uma função que retorne o máximo e o mínimo de um vetor
maxmin <- function(y){
  maximo = max(y)
  minimo = min(y)
  lista = list(maximo = maximo, minimo = minimo)
  return(lista)
}

#Testando a função
vetor <- seq(from = 10, to = 200, by = 10)
maxmin(vetor)
