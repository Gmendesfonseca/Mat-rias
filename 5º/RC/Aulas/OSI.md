## Mínimo necessário para que aconteça comunicação:

- Meio
- Receptor
- Mensagem
- Protocolo
- Transmissor

## Sistema Básico de Comunicação de Dados

- **Mensagem:** É a informação a ser transmitida. Pode ser constituída de texto, , um telefone, uma câmera de vídeo, entre outros.números, figuras, áudio e vídeo - ou qualquer combinação desses.
- **Transmissor:** é o dispositivo que envia a mensagem de dados. Pode ser um outro computador, um telefone, uma câmera de vídeo, entre outros.
- **Receptor:** é o dispositivo que recebe a mensagem. Pode ser um computador, um telefone, uma câmera de vídeo, entre outros.
- **Meio (canal):** é o caminho físico por onde viaja uma mensagem originada e dirigida ao receptor.
- **Protocolo:** é um conjunto de regras que governa (organiza, gerencia) a comunicação de dados. Ele representa um acordo entre os dispositivos que se comunicam.

## O que é Rede de Computadores?

- Sim

## Pilha de Protocolos (PDP)

- Protocolos são regras usadas na comunicação
- Diversos deles são usados para diferentes finalidades
- Conjunto de protocolos usados na comunicação (PDP)

- Protocolos: comunicação entre hosts
- Camadas:
- Interfaces:

## OSI (Open System Interconnection)

Dividido em 7 camadas (cada uma com a responsabilidade de um protocolo específico)

- **Aplicação**: utiliza protocolos de alto nível (HTTP → Web, SMTP → Email, FTP → Transferência de arquivos)
- **Apresentação**: como dado será apresentado pro usuário final, converte do formato da aplicação para o formato de protocolos (Criptografia, SSL → Secure Socket Layer)
- **Sessão**: permite que duas aplicações em computadores diferentes estabeleçam uma conexão, define como será feita a transmissão dos dados
- **Transporte**: verificação de erros, se houve perda de segmentos e se houve duplicação de seguimentos. Quando transmissor, pega os dados da sessão, segmenta e envia para camada de Rede. Quando receptor, recebe os segmentos vindo da camada de rede, remonta o dado de original e envia para camada de Apresentação
- **Rede**: endereçamento lógico, tradução de endereços lógicos em físicos, qualidade de serviço (QoS) e determinação de rota
- **Enlace**: converte pacotes da camada de rede em quadros, fornece informações sobre o endereço físico de origem e destino (MAC address do quadro)
- **Física**: pega os quadros enviados e os transforma em sinais compatíveis (óptico>: sinais luminosos e elétrico pulsos elétricos)

### Encapsulamento de dados

### Na transmissão de um dado

- Cada camada recebe informações nda camada imediatamente superior, acrescenta as informações pelas quais a camada é responsável e passa os dados as camadas imediatamente inferior
- Acrescenta as informações pelas quais ela é responsável.
- Passa os dados para a camada imediatamente inferior.

Esse processo é chamado de encapsulamento.

###
