"""
objetivo(min): 
    z = 100xA + 80xB + 90xC

Sujeito às restrições:
   2.xA + 1.xB + 1.xC >= 10
   1.xA + 2xB + 1.xC >= 8
   1.xA + 1.xB + 2.xC >= 6
"""
from scipy.optimize import linprog

# **** Função objetivo
# Se o problema for de maximização, 
# os valores dos coeficientes 
# deverão ser multiplicados por (-1) 
z = [100, 80, 90]

# **** Restrições - inequações
# Se as inequações forem "maior ou igual", 
# os valores dos coeficientes 
# deverão ser multiplicados por (-1)
l_in = [
        [-2, -1, -1],
        [-1, -2, -1],
        [-1, -1, -2]
       ]
r_in =  [-10, -8, -6]

# Restrições - equações
l_eq = None
r_eq = None

# Limites das variáveis (None para ilimitado)
x0 = (0, None)
x1 = (0, None)
x2 = (0, None)

# Chamada para o método simplex
result = linprog(z, A_ub=l_in, b_ub=r_in,
                 A_eq=l_eq, b_eq=r_eq,
                 bounds=[x0, x1, x2], 
                 method='highs')

# Resultado
print(f'Custo total...............: R${result.fun:.2f}')
print('Solução Simplex:', result.x[0], result.x[1], result.x[2])

