tabuada = int(input("Digite a tabuada a ser calculada: "))

for numero in range(1,11):
    print("%2d X %2d = %2d" % (tabuada, numero, (numero*tabuada)))

numerow = 1

while numerow <= 10:
    print("%2d X %2d = %2d" % (tabuada, numerow, (numerow*tabuada)))
    numerow += 1
