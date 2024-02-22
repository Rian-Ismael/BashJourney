# Usando uma linha de shebang

Isso é feito para garantir que o nome do script possa ser usado como um comando. Adicionar essa linha de shebang especial permite que você especifique o caminho para o interpretador do script - neste caso, o shell Bash.

Siga os passos abaixo para aprender como adicionar uma shebang ao seu script.

## Encontre o caminho para o interpretador
O comando which ajuda você a descobrir o caminho do comando bash.

```bash
which bash
```

Neste caso, ele retorna o caminho **/bin/bash**.

## Edite o script greet.sh e adicione a linha de shebang ao script

Abra o arquivo e adicione a seguinte linha no início do script:

```bash
#! /bin/bash
```
O script deve parecer agora como o seguinte:

<p align="center">
  <img src="/resources\greet.sh.png" alt="code.sh">
</p>

## Verifique as permissões do script

Mais um passo precisa ser concluído para tornar greet.sh completamente executável pelo nome.

Para adicionar permissão de execução para o usuário no greet.sh, digite o seguinte:

```bash
chmod +x greet.sh
```

Verifique se a permissão de execução foi concedida.

Para alterar as permissões para greet.sh e tornar o arquivo executável para o usuário, execute o comando abaixo:

```bash
chmod u+x greet.sh
```

Verifique as permissões usando o comando abaixo:

```bash
ls -l greet.sh
```

Se desejar conceder permissão de execução para todos, você precisa executar o comando **chmod +x greet.sh**.

## Execute o script
Digite o comando abaixo para executar o script shell.

```bash
./greet.sh
```

O **.** aqui se refere ao diretório atual. Você está instruindo o Linux a executar o script **greet.sh** e que ele pode ser encontrado no diretório atual.
