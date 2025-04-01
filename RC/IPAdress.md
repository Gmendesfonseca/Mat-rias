Composto por 4 octetos

Primeiro endereço (\*.0) -> ID da Rede
Último endereço (\*.255) -> Broadcast

A notação /27 é uma forma de representar a máscara de sub-rede em notação CIDR (Classless Inter-Domain Routing). Ela indica quantos bits são usados para a parte da rede do endereço IP.

Máscara define o comportamento da rede, independente da classe da rede
IP/N -> N se refere ao número de bits da máscara

WAN -> Envia IP público -> NAT -> Gera IPs privados -> LAN

0.\_.\_.\_ -> 0 até 127 - Classe A

10.\_.\_.\_ -> 128 até 191 - Classe B

110.\_.\_.\_ -> 192 até 223 - Classe C

### CLASSE A

1º - octeto identifica a rede (1.0 - 127.255)
2º, 3º e 4º - identificam o host
Máscara de rede padrão: 255.0.0.0

Não recomendado para a LAN

### CLASSE B

1º e 2º - octetos identificam a rede (128.0 - 191.255)
3º e 4º - identificam o host
Máscara de rede padrão: 255.255.0.0

### CLASSE C

1º, 2º e 3º - octetos identificam a rede (192.0 - 223.255)
4º - identificam o host
Máscara de rede padrão: 255.255.255.0
