# Variáveis de Shell

## O que é uma variável de shell?
Variáveis de shell oferecem uma maneira poderosa de armazenar e posteriormente acessar ou modificar informações, como números, strings de caracteres e outras estruturas de dados, pelo nome. Vamos dar uma olhada em alguns exemplos básicos para ter uma ideia.

Considere o seguinte exemplo.

```bash
$ firstname=Jeff
$ echo $firstname
Jeff
```

A primeira linha atribui o valor **Jeff** a uma nova variável chamada **firstname**. A próxima linha acessa e exibe o valor da variável, usando o comando **echo** junto com o caractere especial **$** na frente do nome da variável para extrair seu valor, que é a string **Jeff**.

Assim, criamos uma nova variável de shell chamada **firstname** para a qual o valor é **Jeff**.

Esta é a maneira mais básica de criar uma variável de shell e atribuí-la a um valor em um único passo.

## Lendo a entrada do usuário em uma variável de shell na linha de comando
Aqui está outra maneira de criar uma variável de shell, usando o comando read.
Após inserir

```bash
$ read lastname
```

na linha de comando, o shell espera que você insira algum texto:

```bash
$ read lastname  
Grossman  
$ 
```

Agora podemos ver que o valor **Grossman** acabou de ser armazenado na variável **lastname** pelo comando **read**:

```bash
$ read lastname  
Grossman  
$ echo $lastname  
Grossman
```

Aliás, observe que você pode exibir os valores de várias variáveis de uma vez.

```bash
$ echo $firstname $lastname  
Jeff Grossman
```

Como você verá em breve, o comando **read** é particularmente útil em scripts de shell. Você pode usá-lo dentro de um script de shell para solicitar aos usuários que insiram informações, que são então armazenadas em uma variável de shell e disponíveis para uso pelo script de shell enquanto ele estiver em execução. Você também aprenderá sobre argumentos de linha de comando, que são valores que podem ser passados para um script e atribuídos automaticamente a variáveis de shell.