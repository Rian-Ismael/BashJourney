#Shell Variables

## What is a shell variable ?
Shell variables offer a powerful way to store and later access or modify information such as numbers, character strings, and other data structures by name. Let's look at some basic examples to get the idea.

Consider the following example.

```bash
$ firstname=Jeff
$ echo $firstname
Jeff
```

The first line assigns the value **Jeff** to a new variable called **firstname**. The next line accesses and displays the value of the variable, using the **echo** command along with the special character **$** in front of the variable name to extract its value, which is the string **Jeff**.

Thus, we have created a new shell variable called **firstname** for which the value is **Jeff**.

This is the most basic way to create a shell variable and assign it to a value all in one step.

## Reading user input into a shell variable at the command line
Here's another way to create a shell variable, using the read command.
After entering

```bash
$ read lastname
```

on the command line, the shell waits for you to enter some text:

```bash
$ read lastname  
Grossman  
$ 
```

Now we can see that the value **Grossman** has just been stored in the variable **lastname** by the **read** command:

```bash
$ read lastname  
Grossman  
$ echo $lastname  
Grossman  
```

By the way, notice that you can echo the values of multiple variables at once.

```bash
$ echo $firstname $lastname  
Jeff Grossman  
```

As you will soon see, the **read** command is particularly useful in shell scripting. You can use it within a shell script to prompt users to input information, which is then stored in a shell variable and available for use by the shell script while it is running. You will also learn about command line arguments, which are values that can be passed to a script and automatically assigned to shell variables.