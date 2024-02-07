# Referência de Comandos do Shell

Um shell é uma interface de usuário interativa. Você usa comandos de shell para navegar e trabalhar com arquivos e diretórios.

## Operações de Arquivos e Diretórios

- **Listar arquivos e diretórios:**
  - `ls`: Lista todos os arquivos e diretórios dentro de uma árvore de diretórios especificada.

- **Navegar entre diretórios:**
  - `cd`: Navega entre diretórios.

- **Criar arquivos e diretórios:**
  - `touch`: Cria arquivos.
  - `mkdir`: Cria diretórios.

- **Excluir arquivos e diretórios:**
  - `rm`: Exclui arquivos.
  - `rmdir`: Exclui diretórios.

- **Copiar e mover arquivos e diretórios:**
  - `cp`: Copia arquivos e diretórios.
  - `mv`: Move arquivos e diretórios.

- **Encontrar arquivos:**
  - `find`: Encontra arquivos nos seus diretórios.

## Visualização e Manipulação de Arquivos

- **Exibir conteúdo de arquivos:**
  - `cat`: Exibe o conteúdo de arquivos.

- **Visualizar linhas específicas de um arquivo:**
  - `more`, `head`, `tail`: Permitem classificar e visualizar o conteúdo do arquivo.

- **Contar linhas, palavras e caracteres em um arquivo:**
  - `wc`: Determina contagens de linhas, palavras e caracteres.

- **Ordenar e filtrar conteúdo de arquivos:**
  - `sort`: Exibe linhas de um arquivo alfanumericamente.
  - `uniq`: Remove linhas repetidas da visualização.
  - `grep`: Obtém linhas de um arquivo que correspondem a critérios específicos.
  - `cut`: Extrai fatias e campos de linhas.
  - `paste`: Funde linhas de diferentes arquivos.

## Informações do Sistema e Monitoramento

- **Informações do usuário e do sistema:**
  - `whoami`, `id`: Obtêm informações do usuário.
  - `uname`: Obtêm informações do sistema operacional.

- **Monitoramento de recursos do sistema:**
  - `df`: Verifica o uso do disco do sistema.
  - `ps`, `top`: Monitora processos e uso de recursos.

- **Imprimir e extrair informações:**
  - `echo`: Imprime valores de string ou variável.
  - `date`: Imprime e extrai informações sobre a data.

- **Ler manuais de comando:**
  - `man`: Lê o manual para qualquer comando.

## Operações de Rede

- **Visualizar configuração de rede:**
  - `hostname`, `ifconfig`: Visualizam a configuração de rede.

- **Testar conexão de rede:**
  - `ping`: Testa uma conexão de rede.

- **Enviar e receber dados:**
  - `curl`, `wget`: Envia e recebe dados.

## Compressão e Arquivamento

A compressão preserva espaço de armazenamento, acelera a transferência de dados e reduz a carga do sistema.

- **Comprimir arquivos e pastas:**
  - `zip`: Comprime arquivos e pastas antes de arquivá-los.
  - `tar`: Arquiva e comprime arquivos e diretórios em um tarball.

- **Descompactar e desempacotar arquivos:**
  - `unzip`: Desempacota e descomprime um arquivo zipado.
  - `tar`: Também pode descomprimir e desempacotar um arquivo tar.gz. archive.