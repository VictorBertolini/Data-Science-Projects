dados <- read.csv(file = "cancer.csv", header = TRUE)
summary(dados)

n <- round(0.8 * nrow(dados))

indices_treino <- sample(1:nrow(dados), size = n, replace = FALSE)

treino <- dados[indices_treino,]
teste <- dados[-indices_treino,]

treino_padronizado <- scale(treino[,-1])

teste_padronizado <- scale(teste[,-1])

classe_treino <- treino$diagnosis
classe_teste <- teste$diagnosis


modelo_cancer <- knn(train = treino_padronizado, test = teste_padronizado, k = 3, cl = classe_treino)

mean(modelo_cancer == classe_teste)

table(modelo_cancer, classe_teste)


