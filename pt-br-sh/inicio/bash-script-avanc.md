# Bash scripting avançado

## Objetivos de aprendizado:

- Utilizar declarações condicionais para executar um conjunto de comandos apenas se uma condição especificada for verdadeira.
- Aplicar operadores lógicos para criar comparações verdadeiro/falso.
- Realizar cálculos aritméticos básicos.
- Criar arrays semelhantes a listas e acessar seus elementos.
- Implementar loops for para executar operações repetidamente, com base em um índice de looping.

## Condicionais

Condicionais, ou declarações if, são uma maneira de instruir um script a realizar uma ação apenas sob uma condição específica.

As condicionais em scripts Bash utilizam a seguinte sintaxe if-then-else:

```bash
if [ condition ]
then
    statement_block_1  
else
    statement_block_2  
fi
```

Se a **condição** for **verdadeira**, o Bash executa as instruções em **bloco_comandos_1** antes de sair do bloco condicional de código. Após sair, continuará a executar quaisquer comandos após a instrução **fi**.

Alternativamente, se a **condição** for **falsa**, o Bash executa as instruções em **bloco_comandos_2** sob a linha **else**, e então sai do bloco condicional, continuando a executar comandos após a instrução **fi**.

Espaços em Torno das Condições: É essencial incluir espaços em torno de suas condições dentro dos colchetes [ ]. Isso garante uma análise correta pelo Bash.

Uso do fi: Cada bloco de condição if deve ser seguido por uma instrução fi correspondente para indicar o fim do bloco de condição.

Bloco Else Opcional: Embora o bloco else seja opcional, é recomendado para clareza. Se a condição for avaliada como falsa sem um bloco else, considere incluir um comentário ou ação dentro do bloco if para indicar esse resultado.

No exemplo a seguir, a condição verifica se o número de argumentos da linha de comando lidos por algum script Bash, **$#**, é igual a 2.

```bash
if [[ $# == 2 ]]
then
  echo "number of arguments is equal to 2"
else
  echo "number of arguments is not equal to 2"
fi
```

Note o uso dos colchetes duplos, que é a sintaxe necessária para realizar comparações de números inteiros na condição **[[ $# == 2 ]]**.

Você também pode realizar comparações de strings. Por exemplo, suponha que você tenha uma variável chamada **string_var** com o valor **"Yes"** atribuído a ela. Então, a seguinte afirmação é avaliada como **verdadeira**:

```bash
`[ $string_var == "Yes" ]`
```

Note que você só precisa de colchetes simples ao realizar comparações de strings.

Você também pode incluir várias condições a serem satisfeitas usando o operador "e" **&&** ou o operador "ou" **||**. Por exemplo:

```bash
if [ condition1 ] && [ condition2 ]
then
    echo "conditions 1 and 2 are both true"
else
    echo "one or both conditions are false"
fi
```

```bash
if [ condition1 ] || [ condition2 ]
then
    echo "conditions 1 or 2 are true"
else
    echo "both conditions are false"
fi
```

## Operadores Lógicos

Os seguintes operadores lógicos podem ser usados para comparar números inteiros dentro de uma condição em um bloco de **if**.

**==** : é igual a

Se uma variável **a** tiver um valor de 2, a seguinte condição é avaliada como **verdadeira**; caso contrário, é avaliada como **falsa**.

```bash
$a == 2
```

**!=** : não é igual a

Se uma variável **a** tiver um valor diferente de 2, a seguinte afirmação é avaliada como **verdadeira**. Se o valor for 2, então é avaliada como **falsa**.

```bash
a != 2
```

- O operador de negação lógica ! altera verdadeiro para falso e falso para verdadeiro.

**<=** : é menor ou igual a

Se uma variável **a** tiver um valor de 2, então a seguinte afirmação é avaliada como **verdadeira**:

```bash
a <= 3
```

e a seguinte afirmação é avaliada como **falsa**:

```bash
a <= 1
```

Alternativamente, você pode usar a notação equivalente **-le** no lugar de **<=**:

```bash
a=1
b=2
if [ $a -le $b ]
then
   echo "a is less than or equal to b"
else
   echo "a is not less than or equal to b"
fi
```

[Guia de bash scripting avançado](https://tldp.org/LDP/abs/html/comparison-ops.html)

## Cálculos aritméticos

Você pode realizar adição, subtração, multiplicação e divisão de números inteiros usando a notação **$(())**.
Por exemplo, os dois conjuntos de comandos a seguir exibem o resultado da adição de 3 e 2.

```bash
echo $((3+2))
```

ou

```bash
a=3
b=2
c=$(($a+$b))
echo $c
```

O Bash lida nativamente com aritmética de números inteiros, mas não trata aritmética de ponto flutuante. Como resultado, ele sempre truncará a parte decimal do resultado de uma operação.

Por exemplo:

```bash
echo $((3/2))
```

imprime o resultado inteiro truncado, **1**, não o número de ponto flutuante, **1.5**.

A tabela a seguir resume os operadores aritméticos básicos:

| Símbolo | Operação     |
|--------|---------------|
| +      | adição        |
| -      | subtração     |
| *      | multiplicação |
| /      | divisão       |

## Arrays

A *array* é uma estrutura de dados incorporada no Bash. Um array é uma lista delimitada por espaços contida entre parênteses. Para criar um array, declare seu nome e conteúdo:

```bash
my_array=(1 2 "three" "four" 5)
```

Esta declaração cria e preenche o array **my_array** com os itens entre parênteses: 1, 2, "three", "four" e 5.

Você também pode criar um array vazio usando:

```bash
declare -a empty_array
```

Se você quiser adicionar itens ao seu array após criá-lo, pode fazê-lo acrescentando um elemento de cada vez:

```bash
my_array+=("six")
my_array+=(7)
```

Isso adiciona os elementos **"six"** e **7** ao array **my_array**.

Usando indexação, você pode acessar elementos individuais ou múltiplos de um array:

```bash
# printa o primeiro item do array:
echo ${my_array[0]}

# printa o terceiro item do array:
echo ${my_array[2]}

# printa todos os elementos do array:
echo ${my_array[@]}
```
- A indexação de arrays começa em 0, não em 1.

## Loops for

Você pode usar uma construção chamada loop **for** junto com indexação para iterar sobre todos os elementos de um array.

Por exemplo, os seguintes loops **for** continuarão a ser executados repetidamente até que cada elemento seja impresso:

```bash
for item in ${my_array[@]}; do
  echo $item
done
```

ou

```bash
for i in ${!my_array[@]}; do
  echo ${my_array[$i]}
done
```

O loop **for** requer um componente **; do** para iterar pelo loop. Além disso, você precisa encerrar o bloco do loop **for** com uma instrução **done**.

Outra maneira de implementar um loop **for** quando você sabe quantas iterações deseja é a seguinte. Por exemplo, o seguinte código imprime os números de 0 a 6.

```bash
N=6
for (( i=0; i<=$N; i++ )) ; do
  echo $i
done
```

Você pode usar loops **for** para realizar todo tipo de tarefas. Por exemplo, você poderia contar o número de itens em um array ou somar seus elementos, como o seguinte script Bash faz:

```bash
#!/usr/bin/env bash
# inicializa o array, conta e soma
my_array=(1 2 3)
count=0
sum=0
for i in ${!my_array[@]}; do
  # printa o elemento atual do array
  echo ${my_array[$i]}
  # incrementa o contador com 1
  count=$(($count+1))
  # soma o elemento atual do array em sum
  sum=$(($sum+${my_array[$i]}))
done
echo $count
echo $sum
```

## Resumo

- Declarações condicionais permitem a execução de comandos com base em condições especificadas. Elas são essenciais para controlar o fluxo do seu script.
- Operadores lógicos, como E (&&), OU (||) e NÃO (!), são usados para realizar comparações verdadeiro/falso e combinar condições.
- Operadores aritméticos (+, -, *, /, %) são fundamentais para realizar cálculos matemáticos básicos dentro dos seus scripts.
- Você pode criar arrays, que são como listas, para armazenar múltiplos valores em uma única variável. Esses arrays podem então ser acessados por seus elementos individuais usando indexação.
- Os loops for fornecem uma maneira conveniente de executar uma série de comandos repetidamente, com base em um índice de looping ou lista de valores.