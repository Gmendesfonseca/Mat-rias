# **Questionário**

1. **Defina processo em Sistemas Operacionais**  
   Um processo é uma instância de um programa em execução, incluindo o código do programa, seus dados, pilha e contexto de execução.

2. **O que são sistemas de comunicação entre processos?**  
   São mecanismos que permitem que processos troquem informações e coordenem suas ações, como pipes, filas de mensagens, memória compartilhada e sockets.

3. **Como os processos em Sistemas Operacionais trocam informações?**  
   Usando mecanismos como memória compartilhada, pipes, filas de mensagens, sinais ou sockets.

4. **Explique como a comunicação entre processos remotos funciona em um sistema distribuído.**  
   A comunicação ocorre por meio de protocolos de rede, como TCP/IP, utilizando chamadas de procedimento remoto (RPC) ou troca de mensagens.

5. **O que são sistemas fortemente acoplados? Dê exemplos.**  
   São sistemas onde os componentes compartilham memória e relógio. Exemplo: sistemas multiprocessadores.

6. **O que são sistemas fracamente acoplados? Dê exemplos.**  
   São sistemas onde os componentes têm memória e relógios independentes, comunicando-se por rede. Exemplo: clusters.

7. **Compare as características de sistemas fortemente acoplados e fracamente acoplados.**

   - Fortemente acoplados: alta velocidade, memória compartilhada.
   - Fracamente acoplados: maior escalabilidade, comunicação por rede.

8. **Cite vantagens e desvantagens de sistemas fortemente acoplados.**

   - Vantagens: alta performance, comunicação rápida.
   - Desvantagens: custo elevado, menor escalabilidade.

9. **Cite vantagens e desvantagens de sistemas fracamente acoplados.**

   - Vantagens: escalabilidade, custo reduzido.
   - Desvantagens: maior latência, comunicação mais complexa.

10. **O que são sistemas fortemente acoplados simétricos? Exemplifique.**  
    Sistemas onde todos os processadores têm acesso igual à memória. Exemplo: multiprocessadores SMP.

11. **O que são sistemas fortemente acoplados assimétricos? Exemplifique.**  
    Sistemas onde um processador controla os outros. Exemplo: sistemas embarcados.

12. **Como os sistemas multiprocessados funcionam em ambientes de sistemas operacionais?**  
    Eles dividem tarefas entre múltiplos processadores para melhorar desempenho e confiabilidade.

13. **Quais são as vantagens e desvantagens da arquitetura multiprocessada?**

    - Vantagens: maior desempenho, tolerância a falhas.
    - Desvantagens: complexidade, custo elevado.

14. **Quais exemplos de sistemas multiprocessados você conhece?**  
    Servidores de banco de dados, supercomputadores.

15. **O que caracteriza um sistema centralizado? Dê exemplos.**  
    Um sistema onde o processamento ocorre em um único local. Exemplo: mainframes.

16. **Quais as vantagens e desvantagens dos sistemas centralizados em comparação com os distribuídos?**

    - Vantagens: simplicidade, controle centralizado.
    - Desvantagens: menor escalabilidade, ponto único de falha.

17. **O que são sistemas distribuídos? Dê exemplos práticos.**  
    Sistemas onde componentes estão em diferentes locais e se comunicam por rede. Exemplo: Google, Netflix.

18. **Compare a estrutura e os objetivos dos sistemas centralizados e distribuídos.**

    - Centralizados: foco em controle e simplicidade.
    - Distribuídos: foco em escalabilidade e tolerância a falhas.

19. **O que caracteriza a comunicação entre processos em sistemas distribuídos?**  
    Comunicação ocorre por troca de mensagens ou RPC, sem memória compartilhada.

20. **Qual é a finalidade da comunicação entre processos em sistemas distribuídos?**  
    Coordenar tarefas, compartilhar dados e garantir consistência.

21. **Quais são as principais vantagens de um sistema distribuído?**  
    Escalabilidade, tolerância a falhas, compartilhamento de recursos.

22. **O que são as metas principais para o desenvolvimento de sistemas distribuídos?**  
    Transparência, escalabilidade, confiabilidade, eficiência.

23. **Defina escalabilidade em sistemas distribuídos e sistemas computacionais.**  
    Capacidade de um sistema de lidar com aumento de carga ou expansão de recursos.

24. **O que é escalabilidade horizontal? Dê exemplos práticos.**  
    Adicionar mais máquinas ao sistema. Exemplo: adicionar servidores a um cluster.

25. **O que é escalabilidade vertical? Dê exemplos práticos.**  
    Aumentar os recursos de uma máquina. Exemplo: adicionar mais memória ou CPU.

26. **Qual a diferença entre escalabilidade vertical e horizontal? Exemplifique.**

    - Vertical: melhora uma máquina. Exemplo: upgrade de hardware.
    - Horizontal: adiciona máquinas. Exemplo: adicionar servidores.

27. **O que é sincronismo entre processos em sistemas operacionais?**  
    Coordenação entre processos para acessar recursos compartilhados sem conflitos.

28. **O que é sincronismo entre processos distribuídos?**  
    Coordenação entre processos em diferentes máquinas para garantir consistência.

29. **Qual a importância da sincronização de relógios em sistemas distribuídos?**  
    Garantir ordem e consistência em eventos distribuídos.

30. **O que são relógios físicos e lógicos em sistemas distribuídos?**

    - Físicos: baseados no tempo real.
    - Lógicos: baseados na ordem de eventos.

31. **Explique como funciona o protocolo NTP (Network Time Protocol).**  
    Sincroniza relógios de dispositivos em uma rede usando servidores de tempo.

32. **Qual é a finalidade do protocolo NTP em sistemas distribuídos?**  
    Garantir que todos os dispositivos tenham o mesmo horário.

33. **O que é uma arquitetura Thin Client? Quais são suas vantagens?**  
    Arquitetura onde o cliente depende do servidor para processamento. Vantagens: custo reduzido, fácil manutenção.

34. **O que é middleware e qual sua função em sistemas distribuídos?**  
    Software que facilita a comunicação entre componentes distribuídos.

35. **Quais são os principais tipos de middleware? Dê exemplos.**

    - RPC (Exemplo: gRPC).
    - Mensageria (Exemplo: RabbitMQ).
    - Middleware orientado a objetos (Exemplo: CORBA).

36. **Como o middleware facilita a comunicação em sistemas distribuídos?**  
    Abstrai a complexidade da comunicação, fornecendo APIs e protocolos padronizados.

37. **O que é a arquitetura cliente/servidor e como ela funciona em sistemas distribuídos?**  
    Modelo onde o cliente solicita serviços e o servidor os fornece.

38. **O que é um cliente em um sistema distribuído? Exemplifique.**  
    Dispositivo ou software que solicita serviços. Exemplo: navegador web.

39. **O que é um servidor em um sistema distribuído? Exemplifique.**  
    Dispositivo ou software que fornece serviços. Exemplo: servidor web.
40. **O que é middleware e qual sua função em sistemas distribuídos?**  
    Middleware é um software que atua como intermediário, facilitando a comunicação e integração entre diferentes componentes de sistemas distribuídos.

41. **Quais são os principais tipos de middleware? Dê exemplos.**

    - RPC (Exemplo: gRPC).
    - Mensageria (Exemplo: RabbitMQ).
    - Middleware orientado a objetos (Exemplo: CORBA).

42. **Como o middleware facilita a comunicação em sistemas distribuídos?**  
    Ele abstrai a complexidade da comunicação, fornecendo APIs e protocolos padronizados para que os componentes possam interagir de forma transparente.

43. **O que é a arquitetura cliente/servidor e como ela funciona em sistemas distribuídos?**  
    É um modelo onde o cliente solicita serviços e o servidor os fornece. O cliente envia requisições, e o servidor processa e retorna as respostas.

44. **O que é um cliente em um sistema distribuído? Exemplifique.**  
    Um cliente é um dispositivo ou software que solicita serviços. Exemplo: um navegador web acessando um site.

45. **O que é um servidor em um sistema distribuído? Exemplifique.**  
    Um servidor é um dispositivo ou software que fornece serviços. Exemplo: um servidor web que hospeda um site.

46. **O que é um servidor web e qual sua função em sistemas distribuídos?**  
    Um servidor web é um software que processa requisições HTTP e entrega conteúdo, como páginas HTML, para os clientes.

47. **Defina o protocolo HTTP e sua importância em sistemas distribuídos.**  
    HTTP (Hypertext Transfer Protocol) é um protocolo de comunicação usado para transferir dados na web. Ele é essencial para a comunicação entre clientes e servidores.

48. **Quais são os métodos HTTP mais comuns e o que eles significam?**

    - GET: Recuperar dados.
    - POST: Enviar dados para o servidor.
    - PUT: Atualizar dados.
    - DELETE: Remover dados.

49. **O que é um documento baseado em hipertexto? Como ele é usado na web?**  
    É um documento que contém links para outros documentos. Ele é usado na web para navegar entre páginas.

50. **O que são cabeçalhos HTTP e qual sua importância na comunicação web?**  
    Cabeçalhos HTTP são metadados enviados em requisições e respostas HTTP, contendo informações como tipo de conteúdo, status e autenticação.

51. **O que é uma RFC (Request For Comments)? Qual sua importância?**  
    RFCs são documentos que definem padrões e protocolos da internet. Elas são importantes para garantir interoperabilidade.

52. **Quando e como uma RFC deve ser alterada? Explique o processo.**  
    Uma RFC é alterada quando há necessidade de atualizar ou corrigir um padrão. O processo envolve propostas, revisões e aprovação pela IETF.

53. **O que é um Web Service e como ele facilita a comunicação entre sistemas distribuídos?**  
    Um Web Service é uma interface que permite a comunicação entre sistemas por meio de protocolos como HTTP, SOAP ou REST.

54. **Qual é a principal finalidade de um Web Service em sistemas distribuídos?**  
    Facilitar a integração e troca de dados entre sistemas heterogêneos.

55. **Onde e como os Web Services são aplicados na indústria de TI?**  
    São usados em aplicações como integração de sistemas corporativos, APIs públicas e serviços na nuvem.

56. **O que é interoperabilidade e qual sua importância em sistemas distribuídos?**  
    Interoperabilidade é a capacidade de diferentes sistemas trabalharem juntos. É essencial para integração e comunicação eficiente.

57. **Compare Web Services SOAP e REST em termos de funcionalidade e desempenho.**

    - SOAP: Mais robusto, mas mais lento e complexo.
    - REST: Mais leve, rápido e fácil de implementar.

58. **Quais são as diferenças entre os Web Services SOAP e REST em termos de protocolos e padrões?**

    - SOAP usa XML e padrões rígidos.
    - REST usa HTTP e formatos flexíveis como JSON e XML.

59. **Como a arquitetura de Web Services influencia a integração de sistemas em empresas?**  
    Ela permite que sistemas diferentes se comuniquem de forma padronizada, facilitando a automação e a troca de dados.

60. **Defina NFS (Network File System) e explique como ele funciona em redes de sistemas distribuídos.**  
    NFS é um sistema de arquivos distribuído que permite que arquivos sejam acessados remotamente como se estivessem em um sistema local.

61. **Quais são as principais aplicações e casos de uso do NFS em sistemas distribuídos?**  
    Compartilhamento de arquivos em redes corporativas e armazenamento centralizado.

62. **O que é SNMP (Simple Network Management Protocol) e como ele é usado em redes?**  
    SNMP é um protocolo usado para monitorar e gerenciar dispositivos de rede, como roteadores e switches.

63. **Explique como o protocolo SNMP é utilizado para gerenciar dispositivos em sistemas distribuídos.**  
    Ele coleta informações de dispositivos por meio de agentes e as envia para um gerente central.

64. **O que é um Agente em sistemas SNMP e qual sua função?**  
    Um agente é um software que coleta informações de um dispositivo e as disponibiliza para o gerente.

65. **O que é uma MIB (Management Information Base) e qual sua função em SNMP?**  
    MIB é uma base de dados que define os objetos gerenciados por SNMP.

66. **O que é um Gerente em sistemas SNMP e qual a sua responsabilidade?**  
    O gerente é responsável por coletar e analisar dados dos agentes para monitorar a rede.

67. **Qual a diferença entre Agentes e Gerentes no contexto de SNMP?**

    - Agentes coletam dados dos dispositivos.
    - Gerentes analisam e gerenciam os dados coletados.

68. **Quais são os tipos de dados que podem ser manipulados por um MIB?**  
    Dados como status de dispositivos, uso de CPU, memória e tráfego de rede.

69. **Como um sistema SNMP coleta informações sobre o status de dispositivos de rede?**  
    Por meio de requisições do gerente aos agentes, que respondem com os dados solicitados.

70. **O que são sistemas de monitoramento em tempo real em ambientes distribuídos?**  
    Sistemas que coletam e analisam dados continuamente para detectar problemas e tomar ações imediatas.

71. **Quais as implicações de segurança no uso de sistemas distribuídos?**  
    Riscos como interceptação de dados, ataques DDoS e falhas de autenticação.

72. **Como as falhas são gerenciadas em sistemas distribuídos? Dê exemplos.**  
    Por meio de replicação, tolerância a falhas e detecção de erros. Exemplo: replicação de dados em bancos de dados distribuídos.

73. **O que é replicação de dados em sistemas distribuídos e qual sua importância?**  
    É a cópia de dados em múltiplos locais para garantir disponibilidade e tolerância a falhas.

74. **Como a tolerância a falhas é implementada em sistemas distribuídos?**  
    Usando técnicas como replicação, checkpoints e algoritmos de consenso.

75. **Quais são os desafios de escalabilidade em sistemas distribuídos de larga escala?**  
    Latência, consistência de dados e gerenciamento de recursos.

76. **O que é um sistema de cache em um sistema distribuído e qual a sua importância?**  
    Um sistema de cache armazena dados frequentemente acessados para reduzir latência e melhorar o desempenho.

77. **Como a segurança é garantida em sistemas distribuídos? Quais técnicas são usadas?**  
    Criptografia, autenticação, firewalls e controle de acesso.

78. **O que são sistemas de arquivos distribuídos e quais são suas vantagens?**  
    Sistemas que permitem acesso remoto a arquivos. Vantagens: compartilhamento de dados e alta disponibilidade.

79. **O que são sistemas tolerantes a falhas em computação distribuída?**  
    Sistemas projetados para continuar funcionando mesmo em caso de falhas.

80. **Como os protocolos de comunicação em sistemas distribuídos afetam a latência e o desempenho?**  
    Protocolos eficientes reduzem latência e melhoram o desempenho, enquanto protocolos complexos podem introduzir overhead.

81. **Quais técnicas são usadas para melhorar a confiabilidade de sistemas distribuídos em ambientes críticos?**  
    Replicação, algoritmos de consenso e redundância.

82. **O que são protocolos de consenso e como eles são usados em sistemas distribuídos?**  
    Protocolos que garantem que todos os nós concordem em um estado comum. Exemplo: Paxos e Raft.

83. **Como a computação em nuvem se integra com sistemas distribuídos?**  
    A nuvem fornece infraestrutura escalável e serviços distribuídos para armazenamento, processamento e comunicação.

84. **O que são arquiteturas distribuídas em tempo real e quais os desafios que elas enfrentam?**  
    Arquiteturas que processam dados em tempo real. Desafios: baixa latência, alta disponibilidade e consistência.
