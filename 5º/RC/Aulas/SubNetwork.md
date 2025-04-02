### Network-SubNetwork-Hosts

## Exemplo 1:

**IP** - 10.130.156.20 (10.\* = Classe A)
**Máscara** - 255.255.128.0

**Máscara em binário**: 11111111.11111111.10000000.00000000

- **Rede**: 1º octeto (classe A)
- **SubRede**: 2⁹ = 512 (9 -> quantidade de 1 que não é a rede)
- **Hosts/SubRede**: 2^15 = 32766 (15 -> quantidade de 0)

- **IP da rede**:

  - IP ----------- 010.10000010.10011100.00010100
  - Máscara ------ 255.11111111.10000000.00000000
  - Resultado AND: 010.10000010.10000000.00000000

- **IP do broadcast**:

  - IP ---------- 010.10000010.10011100.00010100
  - NOT Máscara -
  - Resultado OR:

## Exemplo 2

192.168.22.0 -> IP da Rede
192.168.22.255 -> IP do Broadcast

8 sub-redes e 25 hosts pra cada

Máscara de Rede: 255.255.255.224 (/27)

### **1ª Sub-rede**

192.168.22.0 -> **IP da Sub-rede**

192.168.22.1 - 192.168.22.30 -> **Hosts**

192.168.22.31 -> **IP do Broadcast**

### **2ª Sub-rede**

192.168.22.32 -> **IP da Sub-rede**

192.168.22.33 - 192.168.22.62 -> **Hosts**

192.168.22.63 -> **IP do Broadcast**

### **3ª Sub-rede**

192.168.22.64 -> **IP da Sub-rede**

192.168.22.65 - 192.168.22.94 -> **Hosts**

192.168.22.95 -> **IP do Broadcast**

### **4ª Sub-rede**

192.168.22.96 -> **IP da Sub-rede**

192.168.22.97 - 192.168.22.126 -> **Hosts**

192.168.22.127 -> **IP do Broadcast**

### **5ª Sub-rede**

192.168.22.128 -> **IP da Sub-rede**

192.168.22.129 - 192.168.22.158 -> **Hosts**

192.168.22.159 -> **IP do Broadcast**

### **6ª Sub-rede**

192.168.22.160 -> **IP da Sub-rede**

192.168.22.161 - 192.168.22.190 -> **Hosts**

192.168.22.191 -> **IP do Broadcast**

### **7ª Sub-rede**

192.168.22.192 -> **IP da Sub-rede**

192.168.22.193 - 192.168.22.222 -> **Hosts**

192.168.22.223 -> **IP do Broadcast**

### **8ª Sub-rede**

192.168.22.224 -> **IP da Sub-rede**

192.168.22.225 - 192.168.22.254 -> **Hosts**

192.168.22.255 -> **IP do Broadcast**

| Sub-rede    | Valor binário emprestado dos bits da sub-rede | Valores binários possíveis dos bits de host (intervalo) (5 bits) | Intervalo decimal de sub-rede/host |
| ----------- | --------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------- |
| Sub-rede 0  | 000                                           | 00000 - 11110                                                    | 192.168.22.1 - 192.168.22.30       |
| 1ª Sub-rede | 001                                           | 00000 - 11110                                                    | 192.168.22.33 - 192.168.22.62      |
| 2ª Sub-rede | 010                                           | 00000 - 11110                                                    | 192.168.22.65 - 192.168.22.94      |
| 3ª Sub-rede | 011                                           | 00000 - 11110                                                    | 192.168.22.97 - 192.168.22.126     |
| 4ª Sub-rede | 100                                           | 00000 - 11110                                                    | 192.168.22.129 - 192.168.22.158    |
| 5ª Sub-rede | 101                                           | 00000 - 11110                                                    | 192.168.22.161 - 192.168.22.190    |
| 6ª Sub-rede | 110                                           | 00000 - 11110                                                    | 192.168.22.193 - 192.168.22.222    |
| 7ª Sub-rede | 111                                           | 00000 - 11110                                                    | 192.168.22.225 - 192.168.22.254    |

**1)** 3 primeiros octetos

**2)** 4º e último octeto

**3)** 11111111.11111111.11111111.00000000

**4)** 3 bits

**5)** Decimal: 255.255.255.224 e Binário: 11111111.11111111.11111111.11100000

**6)** 8 sub-redes

**7)** 5 bits

**8)** 32 hosts

**9)** 30 hosts desconsiderando o maior e o menor

**10)** Não

**11)** Pois é o IP de Broadcast da 2ª sub-rede

**12)** Não

**13)** Pois é o IP de Rede da 6ª sub-rede

**14)** Não, pois o IP 192.168.22.126 está na 4ª sub-rede e o IP 192.168.22.129 está na 5ª sub-rede
