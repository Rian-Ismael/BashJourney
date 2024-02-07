# Redes de Computadores

Uma rede de computadores é um conjunto de computadores capazes de se comunicar entre si e compartilhar recursos fornecidos por nós de rede.

Exemplos de redes de computadores incluem Redes Locais (LANs), Redes de Longa Distância (WANs) e toda a Internet. A Internet, ou World Wide Web, é essencialmente uma gigantesca rede de redes de computadores.

Um **recurso de rede** é qualquer objeto, como um arquivo ou documento, que pode ser identificado pela rede.

Um objeto é identificável se puder ser atribuído um nome único e um endereço que a rede possa usar para identificá-lo e acessá-lo.

Um **nó de rede** é qualquer dispositivo que participe de uma rede.

Uma rede pode incluir qualquer dispositivo que não seja necessariamente um computador, mas faça parte da infraestrutura da rede. Exemplos de nós de rede incluem modems, switches de rede, hubs e pontos de acesso wi-fi.

## Hospedeiros, Clientes e Servidores

Um **hospedeiro** é um tipo especial de nó em uma rede de computadores - é um computador que pode funcionar como servidor ou cliente em uma rede.

Um **servidor** é um computador hospedeiro que é capaz de aceitar uma conexão de um hospedeiro cliente e atender a determinadas solicitações de recursos feitas pelo cliente.

Muitos hospedeiros podem desempenhar qualquer papel, atuando como cliente e servidor.

## Pacotes e Pings

Um **pacote de rede** é um fragmento de dados formatado que pode ser transmitido por uma rede.

As redes de computadores atuais geralmente usam protocolos de comunicação baseados em tais pacotes de informação. Cada pacote consiste em dois tipos de dados:
1. As informações de controle
2. A carga útil

As informações de controle são dados sobre como e onde entregar a carga útil, como os endereços de rede de origem e destino, enquanto a carga útil é a mensagem enviada.

O comando `ping` funciona enviando pacotes especiais de "solicitação de eco" para um hospedeiro e aguardando uma resposta do hospedeiro.

O `ping` é um utilitário disponível na maioria dos sistemas operacionais que possuem capacidade de rede. O Linux tem sua própria implementação do comando `ping` que é usada para testar e solucionar problemas de conectividade com outros hospedeiros de rede.

## URLs e Endereços IP

**IP** significa "Protocolo da Internet", que define o formato dos dados transmitidos pela internet ou por uma rede local.

Um **endereço IP** é um código usado para identificar unicamente qualquer hospedeiro em uma rede.

Um endereço IP pode ser usado para estabelecer uma conexão com um hospedeiro e trocar pacotes com ele, por exemplo, usando o comando `ping`. Além de sua carga útil, os pacotes IP - um tipo de pacote de rede que se conforma ao Protocolo da Internet - contêm os endereços IP dos hospedeiros de origem e destino.

Uma **URL**, mais comumente conhecida como endereço da web, significa Localizador Uniforme de Recursos.

Uma URL identifica exclusivamente um recurso da web e permite o acesso a esse recurso. Normalmente, o recurso ao qual uma URL aponta é uma página da web, mas também pode ser usado para tarefas como transferência de arquivos, envio de e-mails e acesso a bancos de dados.

Por exemplo, a URL da página da Wikipedia para URL é [https://en.wikipedia.org/wiki/URL](https://en.wikipedia.org/wiki/URL). Assim como para uma URL típica, seu formato indica um protocolo (https), um nome de host (en.wikipedia.org) e um nome de arquivo (/wiki/URL).

## Resumo

Nesta leitura, você aprendeu que:

- Uma rede de computadores é um conjunto de computadores capazes de se comunicar entre si e compartilhar recursos.
- Um recurso de rede é qualquer objeto, como um arquivo ou documento, que pode ser identificado pela rede.
- Um nó de rede é qualquer dispositivo que participe de uma rede.
- Um hospedeiro é um computador que pode funcionar como servidor ou cliente em uma rede.
- Um servidor é um computador hospedeiro que é capaz de aceitar uma conexão de um hospedeiro cliente e atender a determinadas solicitações de recursos feitas pelo cliente.
- Um pacote de rede é um fragmento de dados formatado que pode ser transmitido por uma rede.
- O comando `ping` funciona enviando pacotes especiais de 'solicitação de eco' para um hospedeiro e aguardando uma resposta do hospedeiro.
- Um endereço IP é um código usado para identificar unicamente qualquer hospedeiro em uma rede.
- Uma URL identifica um recurso da web e permite o acesso a esse recurso.