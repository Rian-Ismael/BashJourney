# Recursos do Shell Bash

## Objetivos de Aprendizagem:
- Listar exemplos de metacaracteres
- Utilizar *Quoting* para especificar o significado literal ou especial de caracteres especiais
- Implementar redirecionamento de entrada e saída
- Aplicar a substituição de comandos
- Descrever aplicações para argumentos de linha de comando

## Metacaracteres

Metacaracteres são caracteres com significado especial que o shell interpreta como instruções.

| Metacaractere | Significado                                  |
|---------------|----------------------------------------------|
| #             | Precede um comentário                        |
| ;             | Separador de comandos                        |
| *             | Caractere curinga para expansão de nomes de arquivos |
| ?             | Caractere curinga para um único caractere na expansão de nomes de arquivos |

## Jogo da velha #

O metacaractere jogo da velha **#** é utilizado para representar comentários em scripts de shell ou arquivos de configuração. Qualquer texto que apareça após um **#** em uma linha é tratado como um comentário e é ignorado pelo shell.

```bash
#!/bin/bash

# Esse é um comentário
echo "Hello, world!"  # Esse é outro comentário
```

Comentários são úteis para documentar seu código ou arquivos de configuração, fornecendo contexto e explicando o propósito do código para outros desenvolvedores que possam lê-lo. É uma prática recomendada incluir comentários em seu código ou arquivos de configuração sempre que necessário para torná-los mais legíveis e de fácil manutenção.

## Ponto e vírgula ;

O metacaractere ponto e vírgula **;** é utilizado para separar vários comandos em uma única linha de comando. Quando vários comandos são separados por um ponto e vírgula, eles são executados sequencialmente na ordem em que aparecem na linha de comando.

```bash
$ echo "Hello, "; echo "world!"
Hello,
world!
```

Conforme pode ser observado no exemplo acima, a saída de cada comando **echo** é impressa em linhas separadas e segue a mesma sequência na qual os comandos foram especificados.

O metacaractere ponto e vírgula é útil quando você precisa executar vários comandos sequencialmente em uma única linha de comando.

## Asterisco *

O metacaractere asterisco **'*'** é utilizado como um caractere curinga para representar qualquer sequência de caracteres, incluindo nenhum.

```bash
ls *.txt
```

Neste exemplo, ***.txt** é um padrão de caractere curinga que corresponde a qualquer arquivo no diretório atual com a extensão **.txt**. O comando **ls** lista os nomes de todos os arquivos que correspondem a esse padrão.

## Ponto de interrogação ?

O metacaractere ponto de interrogação **?** é utilizado como um caractere curinga para representar qualquer caractere único.

```bash
ls file?.txt
```

Neste exemplo, **file?.txt** é um padrão de caractere curinga que corresponde a qualquer **arquivo** no diretório atual com um nome que começa com "file", seguido por qualquer caractere único, e terminando com a extensão **.txt**.

## Quoting

*Quoting* é um mecanismo que permite remover o significado especial de caracteres, espaços ou outros metacaracteres em um argumento de comando ou script de shell. Você utiliza as aspas quando deseja que o shell interprete os caracteres literalmente.

| Símbolo| Significado                            |
|--------|----------------------------------------|
| \      | Escapa a interpretação de metacaracteres |
| " "    | Interpreta metacaracteres dentro da string |
| ' '    | Ignora todos os metacaracteres dentro da string |

## Contrabarra \

O caractere de barra invertida é usado como um caractere de escape. Ele instrui o shell a preservar a interpretação literal de caracteres especiais, como espaço, tab e **$**. Por exemplo, se você tem um arquivo com espaços em seu nome, você pode usar barras invertidas seguidas por um espaço para lidar com esses espaços de forma literal:

```bash
touch file\ with\ space.txt
```

## Aspas duplas " "

Quando uma string é envolvida em aspas duplas, a maioria dos caracteres é interpretada literalmente, mas os metacaracteres são interpretados de acordo com seu significado especial. Por exemplo, você pode acessar os valores de variáveis usando o caractere cifrão **$**:

```bash
$ echo "Hello $USER"
Hello <username>
```

## Aspas simples ' '

Quando uma string é envolvida em aspas simples, todos os caracteres e metacaracteres contidos dentro das aspas são interpretados literalmente. As aspas simples alteram o exemplo anterior para produzir a seguinte saída:

```bash
$ echo 'Hello $USER'
Hello $USER
```

Observe que, em vez de imprimir o valor de **$USER**, as aspas simples fazem com que o terminal imprima a string **"$USER"** literalmente.

## Redirecionamento de Entrada/Saída

| Símbolo| Significado                                                 |
|--------|-------------------------------------------------------------|
| >      | Redireciona a saída para um arquivo, sobrescreve            |
| >>     | Redireciona a saída para um arquivo, anexa                  |
| 2>     | Redireciona o erro padrão para um arquivo, sobrescreve      |
| 2>>    | Redireciona o erro padrão para um arquivo, anexa            |
| <      | Redireciona o conteúdo de um arquivo para a entrada padrão  |

O redirecionamento de *Entrada/Saída(ES)* é o processo de direcionar o fluxo de dados entre um programa e suas fontes de entrada/saída.

Por padrão, um programa lê a entrada do teclado (entrada padrão) e escreve a saída no terminal (saída padrão). No entanto, utilizando o redirecionamento de ES, é possível redirecionar a entrada ou saída de um programa para ou de um arquivo ou outro programa.

## Redirecionar saída >

Esse símbolo é usado para redirecionar a saída padrão de um comando para um arquivo especificado.

- **ls > files.txt** criará um arquivo chamado **files.txt** se não existir e escreverá a saída do comando **ls** nele.

- Aviso: Quando o arquivo já existe, a saída sobrescreve todo o conteúdo do arquivo!

## Redirecionar e anexar saída >>

Esta notação é utilizada para redirecionar e acrescentar a saída de um comando ao final de um arquivo. Por exemplo,

- **ls >> files.txt** acrescenta a saída do comando **ls** ao final do arquivo **files.txt**, preservando qualquer conteúdo que já existia no arquivo.

## Redirecionar erro padrão 2>

Esta notação é usada para redirecionar a saída de erro padrão de um comando para um arquivo. Por exemplo, se você executar o comando ls em um diretório que não existe da seguinte maneira,

- **ls diretório-inexistente 2> erro.txt** o shell criará um arquivo chamado **erro.txt** se não existir e redirecionará a saída de erro do comando **ls** para o arquivo.

- Aviso: Quando o arquivo já existe, a mensagem de erro sobrescreve todo o conteúdo do arquivo!

## Anexar erro padrão 2>>

Este símbolo redireciona a saída de erro padrão de um comando e acrescenta a mensagem de erro ao final de um arquivo sem sobrescrever seu conteúdo.

- **ls diretório-inexistente 2>> erro.txt** irá acrescentar a saída de erro do comando ls ao final do arquivo **erro.txt**.

## Redirecionar entrada <

Este símbolo é usado para redirecionar a entrada padrão de um comando a partir de um arquivo ou outro comando. Por exemplo,

- **sort < data.txt** irá ordenar o conteúdo do arquivo **data.txt**.

## Substituição de comandos

A *substituição de comandos* permite que você execute um comando e use sua saída como um componente do argumento de outro comando. A substituição de comando é indicada ao envolver um comando em crases (*`comando`*) ou usando a sintaxe **$()**. Quando o comando encapsulado é executado, sua saída é substituída no local, e pode ser usada como um argumento dentro de outro comando. Isso é particularmente útil para automatizar tarefas que exigem o uso da saída de um comando como entrada para outro comando.

Por exemplo, você poderia armazenar o caminho do seu diretório atual em uma variável aplicando a substituição de comando no comando **pwd**, depois mudar para outro diretório e, finalmente, retornar ao seu diretório original invocando o comando **cd** na variável que você armazenou, como segue:

```bash
$ here=$(pwd)
$ cd caminho_para_outro_diretório
$ cd $here
```

## Argumentos de linha de comando

*Argumentos da linha de comando* são entradas adicionais que podem ser passadas a um programa quando o programa é executado a partir de uma interface de linha de comando. Esses argumentos são especificados após o nome do programa e podem ser usados para modificar o comportamento do programa, fornecer dados de entrada ou indicar locais de saída. Argumentos da linha de comando são usados para passar argumentos a um script shell.

Por exemplo, o seguinte comando fornece dois argumentos, arg1 e arg2, que podem ser acessados de dentro do seu script Bash:

```bash
$ ./MyBashScript.sh arg1 arg2
```

## Resumo

Nesta leitura, você aprendeu sobre os seguintes conceitos:

- **Metacaracteres**: Caracteres como #, ;, *, e ? que têm significados especiais na interpretação do shell.
- **Quoting**: Quoting permite garantir que caracteres especiais, espaços ou outros metacaracteres sejam interpretados literalmente pelo shell.
- **Redirecionamento de Entrada/Saída**: Redireciona a entrada ou saída de um programa para/de um arquivo.
- **Substituição de Comando**: Permite que você use a saída de um comando como argumento para outro comando.
- **Argumentos da Linha de Comando**: Informações passadas a um script de shell a partir da linha de comando.
