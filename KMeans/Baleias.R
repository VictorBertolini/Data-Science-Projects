library(ggplot2)

setwd("< Caminho para a Base de Dados >")

baleia <- read.table(file = "baleias.txt", header = TRUE, sep = ",")
View(baleia)


# Limpeza dos dados
baleia$especie <- as.factor(baleia$especie)

summary(baleia)

baleia <- na.omit(baleia)

baleia_normalizada <- scale(baleia[,-1])

clusterizacao <- kmeans(x = baleia_normalizada, centers = 4, nstart = 20)

cluster <- clusterizacao$cluster

baleia$cluster <- cluster


ggplot(baleia, aes(x = cluster, fill = especie)) +
  geom_bar() + 
  theme_minimal()

# ======================================================================================================================

baleia_normalizada$specie <- baleia$especie


ggplot(baleia, aes(x = comprimento, y = peso, color = especie)) +
  geom_point() +
  theme_minimal()


ggplot(baleia, aes(x = volume_cranio, y = profundidade_maxima, color = especie)) +
  geom_point() +
  theme_minimal()


ggplot(baleia, aes(x = peso, y = volume_cranio, color = especie)) +
  geom_point() +
  theme_minimal()








