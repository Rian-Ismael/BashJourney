## Arquivamento e Compressão de Arquivos e Pastas
### 1.1. Criar e gerenciar arquivos de arquivamento
**tar**

O comando **tar** permite empacotar vários arquivos e diretórios em um único arquivo de arquivamento.

O seguinte comando cria um arquivamento de todo o diretório **/bin** e escreve o arquivamento em um único arquivo chamado **bin.tar**.

As opções usadas são as seguintes:
| Opção | Descrição                          |
|--------|-----------------------------------|
| -c     | Criar novo arquivo de arquivamento |
| -v     | Listar de forma detalhada os arquivos processados    |
| -f     | Nome do arquivo de arquivamento    |

```bash
tar -cvf bin.tar /bin
```

Para ver a lista de arquivos no arquivamento, use a opção **-t**:

```bash
tar -tvf bin.tar
```

Para descompactar o arquivamento ou extrair arquivos do arquivamento, use a opção **-x**:

```bash
tar -xvf bin.tar
```

Use o comando ls para verificar se a pasta bin foi extraída.

```bash
ls -l
```

## 1.2. Empacotar e compactar arquivos de arquivamento
**zip**

O comando **zip** permite compactar arquivos.

O seguinte comando cria um arquivo zip chamado **config.zip** consistindo de todos os arquivos com extensão **.conf** no diretório **/etc**.

```bash
zip config.zip /etc/*.conf
```

A opção **-r** pode ser usada para compactar um diretório inteiro.

O seguinte comando cria um arquivamento do diretório **/bin**.

```bash
zip -r bin.zip /bin
```

## 1.3. Extrair, listar ou testar arquivos compactados em um arquivo ZIP
**unzip**

O comando **unzip** permite extrair arquivos.

Para listar os arquivos do arquivamento **config.zip**, digite o seguinte:

```bash
unzip -l config.zip
```

O seguinte comando extrai todos os arquivos no arquivamento **bin.zip**.

```bash
unzip -o bin.zip
```

Adicionamos a opção **-o** para forçar a substituição caso você execute o comando mais de uma vez.

Você deverá ver uma pasta chamada bin criada em seu diretório.