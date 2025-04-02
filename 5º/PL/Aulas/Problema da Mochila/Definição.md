## **Definição**

O **Problema da Mochila (Knapsack Problem)** é um clássico da otimização combinatória. Ele pode ser descrito da seguinte forma:

    "Dado um conjunto de itens, cada um com um peso e um valor, determine quais itens devem ser colocados em uma mochila de capacidade limitada para maximizar o valor total."

## 📌 **Tipos de Problema da Mochila:**

### **Mochila 0/1** 🏋️‍♂️

Cada item pode ser incluído no máximo uma vez.
Exemplo: Escolher equipamentos para uma expedição.

### **Mochila Fracionária** 📦

Pode-se incluir uma fração de cada item.
Exemplo: Misturar combustíveis ou alimentos.

### **Mochila com Repetição** 🔄

Cada item pode ser incluído várias vezes.
Exemplo: Moedas para troco ou corte de materiais.

## 🔍 **Métodos de Solução:**

### **Força Bruta** 🏋️‍♂️

Testa todas as combinações, 𝑂(2^𝑛)

- Programação Dinâmica (Resolve eficientemente a mochila 0/1, 𝑂(𝑛\*𝑊) onde 𝑊 é a capacidade)
- Guloso (Greedy) (Bom para mochila fracionária, 𝑂(𝑛\*log 𝑛))
- Metaheurísticas (Algoritmos Genéticos, Simulated Annealing)

## 💡 **Aplicações do Problema:**

### Otimização de Recursos 🎯

Escolher quais projetos financiar dentro de um orçamento limitado.
Distribuir recursos computacionais em servidores para maximizar desempenho.

### Logística e Transporte 🚚

Selecionar cargas para um caminhão sem ultrapassar o peso máximo permitido.
Planejamento de bagagens em viagens espaciais, garantindo o melhor aproveitamento do espaço.

### Finanças e Investimentos 📊

Selecionar ações para um portfólio maximizando retorno com um orçamento fixo.
Alocação de orçamentos para campanhas publicitárias de maneira eficiente.

### Medicina e Saúde 🏥

Selecionar quais equipamentos médicos comprar com um orçamento hospitalar limitado.
Escolha de remédios e suprimentos em missões humanitárias com espaço restrito.

### Jogos e Inteligência Artificial 🎮

Balanceamento de personagens em jogos (atribuição de pontos de habilidade).
Planejamento de estratégias em RPGs (otimizar inventário de itens).

### Bioinformática e Ciência 🧬

Selecionar experimentos para maximizar conhecimento científico dentro de um orçamento.
Escolha de genes para análise em pesquisas genéticas.

[Implementação em Python](Implementação.py) 🚀
