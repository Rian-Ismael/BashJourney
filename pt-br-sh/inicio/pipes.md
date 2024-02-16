# Pipes

## O que são pipes?

Simplesmente falando, pipes são comandos no Linux que permitem que você use a saída de um comando como entrada de outro.

Os pipes **|** seguem o seguinte formato:

```bash
[comando 1] | [comando 2] | [comando 3] ... | [comando n]

```

Não há limite para o número de vezes que você pode encadear pipes em sequência!

Neste laboratório, você dará uma olhada mais de perto em como você pode usar pipes e filtros para resolver problemas básicos de processamento de dados.

## Combinando comandos

Vamos começar com um exemplo comumente utilizado. Lembre-se dos seguintes comandos:

- sort - ordena as linhas de texto em um arquivo e exibe o resultado
- uniq - imprime um arquivo de texto com quaisquer linhas consecutivas e repetidas colapsadas em uma única linha

Com a ajuda do operador de pipe, você pode combinar esses comandos para imprimir todas as linhas únicas em um arquivo.

Suponha que você tenha o arquivo pets.txt com o seguinte conteúdo:

```bash
$ cat pets.txt
goldfish
dog
cat
parrot
dog
goldfish
goldfish
```

Se você usar apenas **sort** no **pets.txt**, você obtém:

```bash
$ sort pets.txt
cat
dog
dog
goldfish
goldfish
goldfish
parrot
```

O arquivo está ordenado, mas há linhas duplicadas de "dog" e "goldfish".

Por outro lado, se você usar apenas **uniq**, você obtém:

```bash
$ uniq pets.txt
goldfish
dog
cat
parrot
dog
goldfish
```

Desta vez, você removeu duplicatas consecutivas, mas as duplicatas não consecutivas de "dog" e "goldfish" permanecem.

Mas ao combinar os dois comandos na ordem correta - primeiro usando **sort** e depois **uniq** - você recupera:

```bash
$ sort pets.txt | uniq
cat
dog
goldfish
parrot
```

Como **sort** classifica todos os itens idênticos consecutivamente e **uniq** remove todas as duplicatas consecutivas, a combinação dos comandos imprime apenas as linhas únicas de **pets.txt**!

## Aplicando um comando a strings e arquivos

Alguns comandos como **tr** aceitam apenas entrada padrão - normalmente texto digitado a partir do seu teclado - mas não strings ou nomes de arquivos.

- tr (translate) - substitui caracteres no texto de entrada

```bash
tr [OPÇÕES] [caracteres alvo] [caracteres de substituição]
```

Em casos como este, você pode usar piping para aplicar o comando a strings e conteúdos de arquivo.

Com strings, você pode usar echo em combinação com **tr** para substituir todas as vogais em uma string por underscores **_**:

```bash
$ echo "Linux and shell scripting are awesome\!" | tr "aeiou" "_"
L_n_x _nd sh_ll scr_pt_ng _r_ _w_s_m_!
```

Para realizar o complemento da operação do exemplo anterior - ou substituir todas as consoantes (qualquer letra que não seja uma vogal) por um sublinhado - você pode usar a opção **-c**:

```bash
$ echo "Linux and shell scripting are awesome\!" | tr -c "aeiou" "_"
_i_u__a_____e______i__i___a_e_a_e_o_e_
```

Com arquivos, você pode usar **cat** em combinação com **tr** para alterar todo o texto em um arquivo para maiúsculas da seguinte forma:

```bash
$ cat pets.txt | tr "[a-z]" "[A-Z]"
GOLDFISH
DOG
CAT
PARROT
DOG
GOLDFISH
GOLDFISH
```

As possibilidades são infinitas! Por exemplo, você poderia adicionar **uniq** ao pipeline acima para retornar apenas linhas únicas no arquivo, assim:

```bash
$ sort pets.txt | uniq | tr "[a-z]" "[A-Z]"
CAT
DOG
GOLDFISH
PARROT
```

## Extraindo informações de arquivos JSON:

Vamos ver como você pode usar este arquivo json para obter o preço atual do Bitcoin (BTC) em USD, usando o comando grep.

```bash
{
  "coin": {
    "id": "bitcoin",
    "icon": "https://static.coinstats.app/coins/Bitcoin6l39t.png",
    "name": "Bitcoin",
    "symbol": "BTC",
    "rank": 1,
    "price": 57907.78008618953,
    "priceBtc": 1,
    "volume": 48430621052.9856,
    "marketCap": 1093175428640.1146,
    "availableSupply": 18877868,
    "totalSupply": 21000000,
    "priceChange1h": -0.19,
    "priceChange1d": -0.4,
    "priceChange1w": -9.36,
    "websiteUrl": "http://www.bitcoin.org",
    "twitterUrl": "https://twitter.com/bitcoin",
    "exp": [
      "https://blockchair.com/bitcoin/",
      "https://btc.com/",
      "https://btc.tokenview.com/"
    ]
  }
}
```

Copie a saída acima em um arquivo e nomeie-o como **Bitcoinprice.txt**.

O campo JSON que você deseja pegar aqui é **"price": [números].[números]"**. Para obter isso, você pode usar o seguinte comando grep para extrair do texto JSON:

```bash
grep -oE "\"price\"\s*:\s*[0-9]*?\.[0-9]*"
```

- -o indica ao grep para retornar apenas a parte correspondente
- -E indica ao grep para ser capaz de usar símbolos de regex estendidos, como ?
- \"price\" corresponde à string "price"
- \s* corresponde a qualquer número (incluindo 0) de caracteres de espaço em branco (\s)
- : corresponde a :
- [0-9]* corresponde a qualquer número de dígitos (de 0 a 9)
- ?\. corresponde opcionalmente a um .

Use o comando cat para obter a saída do arquivo JSON e encadeie-o com o comando grep para obter a saída requerida.

```bash
cat Bitcoinprice.txt | grep -oE "\"price\"\s*:\s*[0-9]*?\.[0-9]*"
```