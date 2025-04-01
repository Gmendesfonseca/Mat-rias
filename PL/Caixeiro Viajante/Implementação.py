import itertools
import random

def distance_matrix(n, max_dist=100):
    """Gera uma matriz de distâncias aleatórias para n cidades."""
    matrix = [[0 if i == j else random.randint(10, max_dist) for j in range(n)] for i in range(n)]
    return matrix

def tsp_brute_force(matrix):
    """Resolve o TSP usando força bruta (permutações)."""
    n = len(matrix)
    cities = list(range(n))
    min_path = None
    min_cost = float('inf')
    
    for perm in itertools.permutations(cities[1:]):
        path = [0] + list(perm) + [0]
        cost = sum(matrix[path[i]][path[i+1]] for i in range(n))
        
        if cost < min_cost:
            min_cost = cost
            min_path = path
    
    return min_path, min_cost

def tsp_nearest_neighbor(matrix):
    """Resolve o TSP usando o algoritmo do vizinho mais próximo."""
    n = len(matrix)
    unvisited = set(range(1, n))
    path = [0]  # Começa na cidade 0
    
    while unvisited:
        last = path[-1]
        next_city = min(unvisited, key=lambda city: matrix[last][city])
        path.append(next_city)
        unvisited.remove(next_city)
    
    path.append(0)  # Retorna à cidade inicial
    cost = sum(matrix[path[i]][path[i+1]] for i in range(n))
    
    return path, cost

# Testando com 5 cidades
random.seed(42)
n = 5
matrix = distance_matrix(n)

print("Matriz de Distâncias:")
for row in matrix:
    print(row)

# Testando força bruta
tour, cost = tsp_brute_force(matrix)
print("\nForça Bruta:", tour, "Custo:", cost)

# Testando vizinho mais próximo
tour, cost = tsp_nearest_neighbor(matrix)
print("\nVizinho Mais Próximo:", tour, "Custo:", cost)