1. Classe B e 255.255.0.0

2. a) /22 -> Empresta 6 bits (1024 hosts)

   b) /21 -> Empresta 5 bits (2048 hosts)

   c) /20 -> Empresta 4 bits (4096 hosts)

   **OBS**: 2^n onde n é igual ou maior que o número de sub-redes e é equivalente ao número de bits emprestados.

3. a) 255.255.252.0 (255.255.11111100.0)

   b) 255.255.248.0

   c) 255.255.240.0

4. a) 60 sub redes com 1000 hosts

| ID           | Range           | Broadcast      |
| ------------ | --------------- | -------------- |
| 172.16.0.0   | 0.1 - 3.254     | 172.16.3.255   |
| 172.16.4.0   | 4.1 - 7.254     | 172.16.7.255   |
| 172.16.8.0   | 8.1 - 11.254    | 172.16.11.255  |
| 172.16.240.0 | 240.1 - 243.254 | 172.16.243.255 |
| 172.16.244.0 | 244.1 - 247.254 | 172.16.247.255 |
| 172.16.248.0 | 248.1 - 251.254 | 172.16.251.255 |
| 172.16.252.0 | 252.1 - 255.254 | 172.16.255.255 |

172.16.000000|00.00000000 - 172.16.000000|11.11111111
172.16.000001|00.00000000 -
172.16.000010|00.00000000
172.16.000011|00.00000000

b) 28 sub redes com 2000 hosts

| ID           | Range           | Broadcast      |
| ------------ | --------------- | -------------- |
| 172.16.0.0   | 0.1 - 7.254     | 172.16.7.255   |
| 172.16.8.0   | 8.1 - 15.254    | 172.16.15.255  |
| 172.16.16.0  | 16.1 - 23.254   | 172.16.23.255  |
| 172.16.226.0 | 226.1 - 231.254 | 172.16.231.255 |
| 172.16.232.0 | 232.1 - 239.254 | 172.16.239.255 |
| 172.16.240.0 | 240.1 - 247.254 | 172.16.247.255 |
| 172.16.248.0 | 248.1 - 255.254 | 172.16.255.255 |

172.16.00000|000.00000000 - 172.16.00000|111.11111111
172.16.00001|000.00000000 -
172.16.00010|000.00000000
172.16.00011|000.00000000

c) 13 sub redes com 4050 hosts

| ID           | Range           | Broadcast      |
| ------------ | --------------- | -------------- |
| 172.16.0.0   | 0.1 - 15.254    | 172.16.15.255  |
| 172.16.16.0  | 16.1 - 31.254   | 172.16.31.255  |
| 172.16.32.0  | 32.1 - 47.254   | 172.16.47.255  |
| 172.16.207.0 | 207.1 - 223.254 | 172.16.223.255 |
| 172.16.223.0 | 223.1 - 238.254 | 172.16.238.255 |
| 172.16.239.0 | 239.1 - 255.254 | 172.16.255.255 |

172.16.0000|0000.00000000 - 172.16.0000|1111.11111111

| 128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1   | 1   | 1   | 1   | 1   | 1   | 0   | 0   |

1.  a) 172.16.96.10

    1. 96 % 4 = 0
       Máscara: /22
       IP da rede é 172.16.96.0
       Broadcast é 172.16.99.254

    2. 96 % 8 = 0
       Máscara: /21
       IP da rede é 172.16.96.0
       Broadcast é 172.16.103.255

    3. 96 % 16 = 0
       Máscara: /20
       IP da rede é 172.16.96.0
       Broadcast é 172.16.111.255

    b) 172.16.144.28

    4. Máscara: /22

    144 % 4 = 0
    IP da rede: 172.16.144.0
    Broadcast: 172.16.147.255

    Classe B

    - IP da rede (em binário): 10101100.00010000.10010000.00011100
    - Máscara: 11111111.11111111.11111100.00000000
    - Máscara invertida: 00000000.00000000.00000011.11111111

             - ID: 10101100.00010000.10010000.00000000 = 172.16.144.0
             - Broadcast: 10101100.10101100.00010011.11111111 = 172.16.147.255

2.  Olha la em cima (corno)
3.
