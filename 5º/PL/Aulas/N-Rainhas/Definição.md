## **Definição:**

O **Problema das N-Rainhas** é um problema clássico de inteligência artificial e otimização combinatória. Ele pode ser descrito assim:

    "Coloque 𝑁 rainhas em um tabuleiro de 𝑁×𝑁 de forma que nenhuma delas possa atacar outra."

## 📌 **Regras:**

Cada rainha pode se mover horizontalmente, verticalmente e diagonalmente.
Nenhuma rainha pode estar na mesma linha, coluna ou diagonal que outra.

## 🔍 **Métodos de Solução:**

### **Força Bruta** 🏋️‍♂️

Testa todas as permutações possíveis.
Custo exponencial, inviável para valores altos de 𝑁.

### **Backtracking (Retrospectiva)** 🔄

Explora o espaço de soluções de forma inteligente, eliminando caminhos impossíveis cedo.
Efetivo até 𝑁≈25.

### **Algoritmos Heurísticos** 🤖

Algoritmo Genético, Simulated Annealing, Colônia de Formigas.
Não garantem solução ótima, mas são eficientes para valores altos de 𝑁.

### **Programação Inteira** 📊

Usa métodos de otimização matemática para encontrar soluções.

### **Hill Climbing (Subida de Encosta)** ⛰️

Boa abordagem para encontrar uma solução válida rapidamente.

## 💡 **Aplicações do Problema:**

- Alocação de recursos.
- Redes de comunicação sem interferências.
- Solução de puzzles e jogos.

[Implementação em Python](Implementação.py) 🚀
