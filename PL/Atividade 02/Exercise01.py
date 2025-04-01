"""
objetivo(max): 
    z = 50xA + 40xB + 60xC + 30xD

Sujeito às restrições:
   120.xA + 90.xB + 180.xC + 165.xD <= 6000
   180.xA + 120.xB + 60.xC + 120.xD <= 7200
   60.xA + 120.xB + 75.xC + 168.xD <= 4800
"""
from scipy.optimize import linprog

# **** Função objetivo
# Se o problema for de maximização, 
# os valores dos coeficientes 
# deverão ser multiplicados por (-1) 
z = [-50, -40, -60, -30]

# **** Restrições - inequações
# Se as inequações forem "maior ou igual", 
# os valores dos coeficientes 
# deverão ser multiplicados por (-1)
l_in = [
        [120, 90, 180, 165],
        [180, 120, 60, 120],
        [60, 120, 75, 168]
       ]
r_in =  [6000, 7200, 4800]

# ****  Restrições - equações
l_eq = None
r_eq = None

#  ****  Limites das variáveis (None para ilimitado)
x0 = (0, None)
x1 = (0, 40)
x2 = (0, None)
x3 = (0, 25)

# Chamada para o método simplex
result = linprog(z, A_ub=l_in, b_ub=r_in,
                 A_eq=l_eq, b_eq=r_eq,
                 bounds=[x0, x1, x2, x3], 
                 method='highs')

# Resultado
print(f'Lucro...............: R${-result.fun:.2f}')
print('Solução Simplex:', int(result.x[0]), int(result.x[1]), int(result.x[2]), int(result.x[3]))

