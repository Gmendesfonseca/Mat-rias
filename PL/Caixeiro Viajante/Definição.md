## **Definição:**

O **Problema do Caixeiro Viajante (PCV)** é um problema clássico da **otimização combinatória** e da **teoria dos grafos**. Ele pode ser descrito da seguinte forma:

    "Dado um conjunto de cidades e as distâncias entre cada par delas, qual é o caminho mais curto que passa por todas as cidades exatamente uma vez e retorna à cidade de origem?"

## 📌 **Características do Problema:**

É um problema NP-difícil, ou seja, não há um algoritmo eficiente conhecido que sempre encontre a melhor solução em tempo polinomial para grandes instâncias.
Modelado como um grafo completo, onde os nós representam cidades e as arestas representam as distâncias entre elas.
Muito usado na logística e otimização de rotas, como entregas, planejamento de circuitos eletrônicos e até bioinformática.

## 🔍 **Métodos de Solução:**

### **Força Bruta** (Enumerar todas as permutações) – Viável apenas para poucas cidades.

### **Algoritmos Exatos**, como:

- **Programação Dinâmica** (Algoritmo de Held-Karp) – Complexidade 𝑂(𝑛^2\*2^𝑛)
- **Branch and Bound** – Explora soluções podadas para evitar cálculos desnecessários.

### **Algoritmos Heurísticos**, como:

- **Algoritmo do Vizinho Mais Próximo** – Escolhe sempre a cidade mais próxima disponível.
- **Algoritmos Genéticos** – Simula evolução biológica para encontrar boas soluções.
- **Simulated Annealing** – Inspira-se no resfriamento de metais para evitar mínimos locais.

## ⚡ **Aplicações Reais:**

- **Logística e transporte** (exemplo: roteamento de entregas).
- **Planejamento de circuitos eletrônicos** (minimizar conexões entre componentes).
- **Bioinformática** (sequenciamento de DNA e proteínas).
- **Astronomia** (otimizar observações de telescópios).

[Implementação em Python](Implementação.py) 🚀
