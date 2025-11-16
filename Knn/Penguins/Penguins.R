library(ggplot2)
library(palmerpenguins)
library(class)

data(penguins)
str(penguins)
penguins <- penguins[, -c(2,7,8)]
penguins <- na.omit(penguins)


n <- round(0.8 * nrow(penguins))
n

indices_treino <- sample(1:nrow(penguins), size = n, replace = FALSE)
indices_treino

treino <- penguins[indices_treino,]
teste <- penguins[-indices_treino,]

treino_padronizado <- scale(treino[,-1])

teste_padronizado <- scale(teste[,-1])

classe_treino <- treino$species
clase_teste <- teste$species

for (i in 1:10) {
  modelo1 <- knn(trai = treino_padronizado, test = teste_padronizado, cl = classe_treino, k = i)
  print(i)
  print(mean(modelo1 == teste$species))
}

modelo1 <- knn(trai = treino_padronizado, test = teste_padronizado, cl = classe_treino, k = 5)
print(i)
print(mean(modelo1 == teste$species))


cor(treino[,-1])

taxa_acerto <- c()

for (k in 1:100) {
  modelo1 <- knn(trai = treino_padronizado, test = teste_padronizado, cl = classe_treino, k = k)
  taxa_acerto[k] <- mean(modelo1 == teste$species)
}

df <- data.frame(k = 1:10, taxa_acerto)
ggplot(data = df, aes(x = k, y = taxa_acerto)) + 
  geom_line() +
  theme_minimal()

