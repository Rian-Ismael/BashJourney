# Funcionalidades do Bash Shell

## Objetivos de Aprendizado
- Listar exemplos de metacaracteres
- Utilizar aspas para especificar significados literais ou de caracteres especiais
- Implementar redirecionamento de entrada e saída
- Aplicar substituição de comando
- Descrever aplicações para argumentos de linha de comando

## Metacaracteres

Metacaracteres são caracteres que têm um significado especial interpretado pelo shell como instruções.

| Metacaractere | Significado                                  |
|---------------|----------------------------------------------|
| #             | Antecede um comentário                       |
| ;             | Separador de comandos                        |
| *             | Curinga de expansão de nomes de arquivos     |
| ?             | Curinga de caractere único na expansão de nomes de arquivos |

## Sustenido #

O metacaractere de sustenido **#** é usado para representar comentários em scripts de shell ou arquivos de configuração. Qualquer texto que apareça após um **#** em uma linha é tratado como um comentário e é ignorado pelo shell.

```bash
#!/bin/bash

# Este é um comentário
echo "Olá, mundo!"  # Este é outro comentário
```

Comments are useful for documenting your code or configuration files, providing context, and explaining the purpose of the code to other developers who may read it. It's a best practice to include comments in your code or configuration files wherever necessary to make them more readable and maintainable.

## Ponto e Vírgula ;

O metacaractere ponto e vírgula **;** é utilizado para separar múltiplos comandos em uma única linha de comando. Quando vários comandos são separados por um ponto e vírgula, eles são executados sequencialmente na ordem em que aparecem na linha de comando.

```bash
$ echo "Olá, "; echo "mundo!"
Olá,
mundo!
```

Como pode ser visto no exemplo acima, a saída de cada comando **echo** é impressa em linhas separadas e segue a mesma sequência em que os comandos foram especificados.

O metacaractere ponto e vírgula é útil quando é necessário executar múltiplos comandos sequencialmente em uma única linha de comando.

## Asterisco *

O metacaractere asterisco **'*'** é utilizado como um caractere curinga para representar qualquer sequência de caracteres, incluindo nenhuma.

```bash
ls *.txt
```

Neste exemplo, ***.txt** é um padrão curinga que corresponde a qualquer arquivo no diretório atual com a extensão **.txt**. O comando **ls** lista os nomes de todos os arquivos que correspondem ao padrão.

## Ponto de Interrogação ?

O metacaractere ponto de interrogação **?** é utilizado como um caractere curinga para representar qualquer caractere único.

```bash
ls file?.txt
```

Neste exemplo, **file?.txt** é um padrão curinga que corresponde a qualquer **file** no diretório atual com um nome que começa com "file", seguido por qualquer caractere único e terminando com a extensão **.txt**.

## Aspas

*Aspas* é um mecanismo que permite remover o significado especial de caracteres, espaços ou outros metacaracteres em um argumento de comando ou script de shell. As aspas são utilizadas quando se deseja que o shell interprete os caracteres literalmente.

| Símbolo | Significado                                 |
|---------|--------------------------------------------|
| \       | Escapa a interpretação de metacaracteres    |
| " "     | Interpreta metacaracteres dentro da string |
| ' '     | Escapa todos os metacaracteres dentro da string|

## Barra Invertida \

O caractere de barra invertida é usado como um caractere de escape. Ele instrui o shell a preservar a interpretação literal de caracteres especiais, como espaço, tabulação e **$**. Por exemplo, se você tem um arquivo com espaços em seu nome, você pode usar barras invertidas seguidas por um espaço para lidar com esses espaços de forma literal:

```bash
touch file\ with\ space.txt
```

## Aspas Duplas " "

Quando uma string é envolvida por aspas duplas, a maioria dos caracteres é interpretada literalmente, mas os metacaracteres são interpretados de acordo com seu significado especial. Por exemplo, é possível acessar os valores de variáveis usando o caractere cifrão **$**:

```bash
$ echo "Hello $USER"
Hello <username>
```

## Aspas Simples ' '

Quando uma string é envolvida por aspas simples, todos os caracteres e metacaracteres contidos dentro das aspas são interpretados literalmente. As aspas simples alteram o exemplo acima para produzir a seguinte saída:

```bash
$ echo 'Hello $USER'
Hello $USER
```

Observe que, em vez de imprimir o valor de **$USER**, as aspas simples fazem com que o terminal imprima a string **"$USER"**.

## Redirecionamento de Entrada/Saída

| Símbolo | Significado                                    |
|---------|------------------------------------------------|
| >       | Redireciona a saída para um arquivo, sobrescreve |
| >>      | Redireciona a saída para um arquivo, acrescenta  |
| 2>      | Redireciona o erro padrão para um arquivo, sobrescreve  |
| 2>>     | Redireciona o erro padrão para um arquivo, acrescenta     |
| <       | Redireciona o conteúdo de um arquivo para a entrada padrão |

O redirecionamento de *entrada/saída (IO)* é o processo de direcionar o fluxo de dados entre um programa e suas fontes de entrada/saída.

Por padrão, um programa lê a entrada do teclado (entrada padrão) e escreve a saída no terminal (saída padrão). No entanto, usando o redirecionamento de IO, é possível redirecionar a entrada ou saída de um programa para/de um arquivo ou outro programa.

## Redirecionar Saída >

Este símbolo é utilizado para redirecionar a saída padrão de um comando para um arquivo especificado.

- **ls > files.txt** criará um arquivo chamado files.txt se não existir e escreverá a saída do comando ls nele.

- Atenção: Quando o arquivo já existe, a saída sobrescreve todo o conteúdo do arquivo!

## Redirecionar e Acrescentar Saída >>

Esta notação é utilizada para redirecionar e acrescentar a saída de um comando ao final de um arquivo. Por exemplo,

- **ls >> files.txt** acrescenta a saída do comando **ls** ao final do arquivo **files.txt** e preserva qualquer conteúdo que já existia no arquivo.

## Redirecionar Saída de Erro Padrão 2>

Esta notação é utilizada para redirecionar a saída de erro padrão de um comando para um arquivo. Por exemplo, se você executar o comando ls em um diretório inexistente da seguinte forma,

- **ls diretório-inexistente 2> erro.txt** o shell criará um arquivo chamado **erro.txt** se não existir e redirecionará a saída de erro do comando **ls** para o arquivo.

- Atenção: Quando o arquivo já existe, a mensagem de erro sobrescreve todo o conteúdo do arquivo!

## Acrescentar Saída de Erro Padrão 2>>

Este símbolo redireciona a saída de erro padrão de um comando e acrescenta a mensagem de erro ao final de um arquivo sem sobrescrever seu conteúdo.

- **ls diretório-inexistente 2>> erro.txt** acrescentará a saída de erro do comando ls ao final do arquivo **erro.txt**.

## Redirecionar Entrada <

Este símbolo é utilizado para redirecionar a entrada padrão de um comando de um arquivo ou outro comando. Por exemplo,

- **sort < data.txt** irá **ordenar** o conteúdo do arquivo **data.txt**.

## Substituição de Comando

A *substituição de comando* permite que você execute um comando e use sua saída como um componente do argumento de outro comando. A substituição de comando é indicada por envolver um comando em acentos graves (*`comando`*) ou usando a sintaxe **$()**. Quando o comando encapsulado é executado, sua saída é substituída no local e pode ser usada como um argumento dentro de outro comando. Isso é particularmente útil para automatizar tarefas que requerem o uso da saída de um comando como entrada para outro comando.

Por exemplo, você pode armazenar o caminho do diretório atual em uma variável aplicando a substituição de comando no comando **pwd**, em seguida, mover-se para outro diretório e, finalmente, retornar ao seu diretório original invocando o comando **cd** na variável que você armazenou, da seguinte forma:

```bash
$ here=$(pwd)
$ cd caminho_para_outro_diretório
$ cd $here
```

## Argumentos da Linha de Comando

*Argumentos da linha de comando* são entradas adicionais que podem ser passadas para um programa quando o programa é executado a partir de uma interface de linha de comando. Esses argumentos são especificados após o nome do programa e podem ser usados para modificar o comportamento do programa, fornecer dados de entrada ou indicar locais de saída. Argumentos da linha de comando são utilizados para passar argumentos para um script de shell.

Por exemplo, o seguinte comando fornece dois argumentos, arg1 e arg2, que podem ser acessados de dentro do seu script Bash:

```bash
$ ./MeuScriptBash.sh arg1 arg2
```

## Resumo

Nesta leitura, você aprendeu sobre os seguintes conceitos:

- **Metacaracteres**: Caracteres como #, ;, *, e ? que têm significados especiais na interpretação do shell.
- **Aspas**: As aspas permitem garantir que caracteres especiais, espaços ou outros metacaracteres sejam interpretados literalmente pelo shell.
- **Redirecionamento de Entrada/Saída**: Redireciona a entrada ou saída de um programa para/de um arquivo.
- **Substituição de Comando**: Permite usar a saída de um comando como argumento para outro comando.
- **Argumentos da Linha de Comando**: Informações passadas para um script de shell a partir da linha de comando.