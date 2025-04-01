
# 1
T = [-10, -8, 0, 1, 2, 5, -2, -4]
print('Mínimo: ',{min(T)})
print('Máximo: ',{max(T)})
print('Média: ',{sum(T)/len(T)})

# 2
def check_parenthesis(expression):
  stack = []
  for char in expression:
    if char == '(':
      stack.append(char)
    elif char == ')':
      if not stack:
        return False
      stack.pop()
  return not stack

print('Insira a expressão:')
expression = input()
if check_parenthesis(expression):
  print('Expressão válida')
else:
  print('Expressão inválida')