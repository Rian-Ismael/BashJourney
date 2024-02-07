## Objetivos

- Visualizar a configuração da sua rede usando os comandos hostname e ifconfig
- Testar uma conexão de rede usando o comando ping
- Transferir dados usando os comandos curl e wget

### Visualizar informações de configuração sobre sua rede
#### 1.1. Exibir o nome do sistema e o endereço IP
**hostname**

Um hostname é um nome atribuído a um computador ou dispositivo em uma rede, e é usado para identificar e comunicar-se com esse dispositivo.

Para visualizar o hostname atual, execute o seguinte comando:

```bash
hostname
```

Um *endereço IP* (Internet Protocol address) é um rótulo numérico atribuído a cada dispositivo conectado a uma rede de computadores que utiliza o Protocolo de Internet para comunicação.

Você pode usar a opção **-i** para visualizar o endereço IP do host:
```bash
hostname -i
```

#### 1.2. Exibir a configuração da interface de rede
**ifconfig**

O comando **ifconfig** é usado para configurar ou exibir parâmetros da interface de rede para uma rede.

Para exibir a configuração de todas as interfaces de rede do seu sistema, digite:

```bash
ifconfig
```

Para exibir a configuração de um dispositivo específico, como o adaptador ethernet **eth0**, digite:

```bash
ifconfig eth0
```
**eth0** é geralmente a interface de rede primária que conecta seu servidor à rede.

Você pode ver o endereço IP do seu servidor na linha 2 após a palavra **inet**.

### Testar a conectividade de rede
#### 2.1. Testar a conectividade com um host
**ping**

Use o comando **ping** para verificar se o **www.google.com** é alcançável. O comando mantém o envio de pacotes de dados para o servidor em **www.google.com** e imprime a resposta que recebe de volta. (Pressione **Ctrl**+**c** para parar de pingar.)

```bash
ping www.google.com
```
Se você quiser pingar apenas um número limitado de vezes, use a opção **-c**.

```bash
ping -c 5 www.google.com
```

### Visualizar ou baixar dados de um servidor
#### 3.1. Transferir dados de um servidor
**curl**

Você pode usar **curl** para acessar o arquivo no seguinte URL e exibir o conteúdo do arquivo na sua tela:

```bash
curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
Para acessar o arquivo no URL fornecido e também salvá-lo no seu diretório de trabalho atual, use a opção **-O**:

```bash
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
Você também pode usar **curl** para visualizar o código HTML de qualquer página da web se souber seu URL.

#### 3.2. Baixar arquivo(s) de uma URL
**wget**

O comando **wget** é semelhante ao **curl**, no entanto, seu uso principal é para download de arquivos. Uma característica única do **wget** é que ele pode baixar arquivos recursivamente em um URL.

Para ver o wget em ação, primeiro remova **usdoi.txt** do seu diretório atual:

```bash
rm usdoi.txt
```

Então, baixe-o novamente usando **wget** da seguinte forma:

```bash
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
