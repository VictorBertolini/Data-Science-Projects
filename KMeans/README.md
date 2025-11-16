## K-Means Clustering em Espécies de Baleias

Este projeto demonstra a aplicação do algoritmo **K-Means** em um dataset contendo medidas de baleias de diferentes espécies.
O objetivo é verificar se as características físicas são capazes de separar as espécies naturalmente em grupos.

## Objetivo do Projeto

O propósito da análise é verificar se características como:

* comprimento
* peso
* volume do crânio
* profundidade máxima

permitem agrupar as baleias de forma coerente com suas espécies reais usando **K-Means**, um algoritmo **não supervisionado**.

---

## Sobre o Dataset

O dataset contém medidas físicas de 4 espécies:

* *Baleia Azul*
* *Baleia Fin*
* *Cachalote*
* *Jubarte*

---

## Número de Clusters

Foram escolhidos **4 clusters**, pois o dataset contém **4 espécies diferentes**.
Dessa forma, avaliamos se o algoritmo K-Means consegue aproximar-se dessa divisão natural.

---

## Visualizações

### **Distribuição das espécies em cada cluster**

> *Este gráfico mostra como o K-Means agrupou os dados e como esses clusters se relacionam com as espécies reais.*

![Gráfico dos Clusters de Baleias Formados com KMeans](https://github.com/VictorBertolini/Data-Science-Projects/blob/main/KMeans/Images/Baleias_Cluster_KMeans.png)

---

### **Relações entre variáveis por espécie**

Gráficos como:

* Comprimento × Peso
![Gráfico Comprimento x Peso](https://github.com/VictorBertolini/Data-Science-Projects/blob/main/KMeans/Images/Comprimento%20x%20Peso.png)

* Volume do crânio × Profundidade máxima
![Gráfico Volume do Crânio x Profundidade Máxima](https://github.com/VictorBertolini/Data-Science-Projects/blob/main/KMeans/Images/Volume%20Cr%C3%A2nio%20x%20Profundidade%20M%C3%A1xima.png)

* Peso × Volume do crânio
![Gráfico Peso x Volume do Crânio](https://github.com/VictorBertolini/Data-Science-Projects/blob/main/KMeans/Images/Peso%20x%20Volume%20Cr%C3%A2nio.png)

---

### **Clusters no espaço das variáveis**
![Distribuição Pós Clusterização](https://github.com/VictorBertolini/Data-Science-Projects/blob/main/KMeans/Images/Distribui%C3%A7%C3%A3o%20dos%20Clusters.png)


---

## Conclusões

* O K-Means conseguiu formar grupos coerentes para algumas espécies, especialmente aquelas com características físicas bem distintas.
* Alguns clusters podem ter mistura de espécies, o que é esperado quando as medidas físicas não diferenciam tão bem certos tipos de baleias.

---

## Tecnologias Utilizadas

* **R**
* `ggplot2`
* `kmeans`
* RStudio

---

## Como Executar

1. Coloque o arquivo `baleias.txt` na mesma pasta do script.
2. Instale os pacotes:

```r
install.packages("ggplot2")
```

3. Execute o script
---

