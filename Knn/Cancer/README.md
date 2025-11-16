## KNN aplicado ao Dataset de Câncer

Este projeto mostra a aplicação do algoritmo **K-Nearest Neighbors (KNN)** para classificar diagnósticos de câncer de mama usando variáveis numéricas extraídas de imagens de exames.

---

## Objetivo do Projeto

Avaliar se é possível prever se um tumor é benigno ou maligno utilizando KNN, comparando o diagnóstico previsto pelo modelo com o diagnóstico real.

---

## Sobre o Dataset

O dataset contém diversas medidas calculadas a partir das imagens, como:

* raio_medio
* textura_media  
* perimetro_medio
* area_media
* suavidade_media
* compactacao_media
* concavidade_media
* pontos_concavos_media
* simetria_media
* dimensao_fractal_media

A coluna que queremos prever é:

* **diagnosis** (B = benigno, M = maligno)

---

## Preparação dos Dados

**1. Divisão em treino e teste**

* 80% dos dados usados para treinar
* 20% para testar o modelo

**2. Padronização**

Como o KNN depende de distâncias, todas as variáveis são padronizadas.

---

## Modelo

O modelo foi treinado com:

* `k = 3`

---

## Resultados

O desempenho é avaliado por:

* **acurácia** (`mean(modelo == classe_teste)`)
* **matriz de confusão**

Essas métricas mostram quantas observações foram classificadas corretamente.

---

## Tecnologias Utilizadas
* `Knn`
* `scale`
* RStudio

---

## Como Executar

1. Coloque o arquivo `cancer.csv` na mesma pasta do script.
2. Coloque o caminho observado pelo script na mesma pasta que o dataset (pode-se usar `setwd(< caminho >)`)
3. Instale o pacote:
4. Execute o script.

---
