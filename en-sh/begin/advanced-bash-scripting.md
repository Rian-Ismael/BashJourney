# Advanced Bash Scripting

## Learning Objectives:

- use conditional statements to run a set of commands only if a specified condition is true
- apply logical operators to create true/false comparisons
- perform basic arithmetic calculations
- create list-like arrays and access their elements
- implement for loops to execute operations repeatedly, based on a looping index

## Conditionals

Conditionals, or **if** statements, are a way of telling a script to do something only under a specific condition.

Bash script conditionals use the following `if`-`then`-`else` syntax:

```bash
if [ condition ]
then
    statement_block_1  
else
    statement_block_2  
fi
```

If the **condition** is **true**, then Bash executes the statements in **statement_block_1** before exiting the conditional block of code. After exiting, it will continue to run any commands after the closing **fi**.

Alternatively, if the **condition** is **false**, Bash instead runs the statements in **statement_block_2** under the **else** line, then exits the conditional block and continues to run commands after the closing **fi**.

- Spaces Around Conditions: It's essential to include spaces around your conditions within the square brackets [ ]. This ensures proper parsing by Bash.

- Use of fi: Every if condition block should be followed by a corresponding fi statement to indicate the end of the condition block.

- Optional Else Block: While the else block is optional, it's recommended for clarity. If the condition evaluates to false without an else block, consider including a comment or action within the if block to indicate this outcome.

In the following example, the condition is checking whether the number of command-line arguments read by some Bash script, **$#**, is equal to 2.

```bash
if [[ $# == 2 ]]
then
  echo "number of arguments is equal to 2"
else
  echo "number of arguments is not equal to 2"
fi
```

Notice the use of the double square brackets, which is the syntax required for making integer comparisons in the condition **[[ $# == 2 ]]**.

You can also make string comparisons. For example, assume you have a variable called **string_var** that has the value **"Yes"** assigned to it. Then the following statement evaluates to **true**:

```bash
`[ $string_var == "Yes" ]`
```

Notice you only need single square brackets when making string comparisons.

You can also include multiple conditions to be satified by using the "and" operator **&&** or the "or" operator **||**. For example:

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

## Logical operators

The following logical operators can be used to compare integers within a condition in an **if** condition block.

**==** : is equal to

If a variable **a** has a value of 2, the following condition evaluates to **true**; otherwise it evalutes to **false**.

```bash
$a == 2
```

**!=** : is not equal to

If a variable **a** has a value different from 2, the following statement evaluates to **true**. If its value is 2, then it evalutes to **false**.

```bash
a != 2
```

- The ! logical negation operator changes true to false and false to true.

**<=** : is less than or equal to

If a variable **a** has a value of 2, then the following statement evaluates to **true**:

```bash
a <= 3
```

and the following statement evalutates to **false**:

```bash
a <= 1
```

Alternatively, you can use the equivalent notation **-le** in place of **<=**:

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

[Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/comparison-ops.html)

## Arithmetic calculations

You can perform integer addition, subtraction, multiplication, and division using the notation **$(())**.
For example, the following two sets of commands both display the result of adding 3 and 2.

```bash
echo $((3+2))
```

or

```bash
a=3
b=2
c=$(($a+$b))
echo $c
```

Bash natively handles integer arithmetic but does not handle floating-point arithmetic. As a result, it will always truncate the decimal portion of a calculation result.

For example:

```bash
echo $((3/2))
```

prints the truncated integer result, **1**, not the floating-point number, **1.5**.

The following table summarizes the basic arithmetic operators:

| Symbol | Operation   |
|--------|-------------|
| +      | addition    |
| -      | subtraction |
| *      | multiplication |
| /      | division    |

## Arrays

The *array* is a Bash built-in data structure. An array is a space-delimited list contained in parentheses. To create an array, declare its name and contents:

```bash
my_array=(1 2 "three" "four" 5)
```

This statement creates and populates the array **my_array** with the items in the parentheses: 1, 2, "three", "four", and 5.

You can also create an empty array by using:

```bash
declare -a empty_array
```

If you want to add items to your array after creating it, you can add to your array by appending one element at a time:

```bash
my_array+=("six")
my_array+=(7)
```

This adds elements **"six"** and **7** to the array **my_array**.

By using indexing, you can access individual or multiple elements of an array:

```bash
# print the first item of the array:
echo ${my_array[0]}

# print the third item of the array:
echo ${my_array[2]}

# print all array elements:
echo ${my_array[@]}
```
- Array indexing starts from 0, not from 1.

## For loops

You can use a construct called a **for** loop along with indexing to iterate over all elements of an array.

For example, the following **for** loops will continue to run over and over again until every element is printed:

```bash
for item in ${my_array[@]}; do
  echo $item
done
```

or

```bash
for i in ${!my_array[@]}; do
  echo ${my_array[$i]}
done
```

The **for** loop requires a **; do** component in order to cycle through the loop. Additionally, you need to terminate the **for** loop block with a **done** statement.

Another way to implement a **for** loop when you know how many iterations you want is as follows. For example, the following code prints the number 0 through 6.

```bash
N=6
for (( i=0; i<=$N; i++ )) ; do
  echo $i
done
```

You can use **for** loops to accomplish all sorts of things. For example, you could count the number of items in an array or sum up its elements, as the following Bash script does:

```bash
#!/usr/bin/env bash
# initialize array, count, and sum
my_array=(1 2 3)
count=0
sum=0
for i in ${!my_array[@]}; do
  # print the ith array element
  echo ${my_array[$i]}
  # increment the count by one
  count=$(($count+1))
  # add the current value of the array to the sum
  sum=$(($sum+${my_array[$i]}))
done
echo $count
echo $sum
```

## Summary

- Conditional statements enable the execution of commands based on specified conditions. They are essential for controlling the flow of your script.
- Logical operators, such as AND (&&), OR (||), and NOT (!), are used to perform true/false comparisons and combine conditions.
- Arithmetic operators (+, -, *, /, %) are fundamental for performing basic mathematical calculations within your scripts.
- You can create arrays, which are like lists, to store multiple values in a single variable. These arrays can then be accessed by their individual elements using indexing.
- for loops provide a convenient way to execute a series of commands repeatedly, based on a looping index or list of values.

