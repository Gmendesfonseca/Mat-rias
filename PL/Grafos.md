- **Vetores**: alocação de memória sequencial de com unidades de mesmo tamanho
- **Lista**: alocação de memória dinâmica, aceita diferentes tipos de dados
- **Matriz**: vetor de vetores

#

### Tipos de Grafos

- **Grafo de Similaridade** - padrões de similaridade entre grupos
- **Grafo de Exceções** - escassez de recursos, por meio dele avalia proibições

#

### Notação de Grafos

- **Grafo dirigido**: existe um caminho de ida e de volta (existe seta, ele dá a direção e tem linhas diferentes das colunas)
- **Grafo não dirigido**: não existe um caminho direcionado (linhas iguais as colunas)

- **Grafo ponderado**: existe os valores de cada aresta
- **Grafo não ponderado**: não existem os valores de cada aresta

- **Grafo Completo**
- **Grafo Denso**

#

### Tipos de Matriz: representação de grafos no código

- **Matriz de adjacência** (n²): `M[n][n]` (n -> número de nós). Armazena na memória a ligação entre nós:

  | -   | A   | B   | C   |
  | --- | --- | --- | --- |
  | A   | 0   | 1   | 2   |
  | B   | 1   | 0   | 1   |
  | C   | 2   | 1   | 0   |

- **Matriz de incidência** : `M[a][a]` (a -> números de arestas)

  | -   | A   | B   | C   |
  | --- | --- | --- | --- |
  | A   | 0   | 1   | 1   |
  | B   | 1   | 0   | 1   |
  | C   | 1   | 1   | 0   |

#

**Problemas**: Caixeiro Viajante

**Notação**: Grande Big O
