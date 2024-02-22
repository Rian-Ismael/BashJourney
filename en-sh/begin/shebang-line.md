# Using a shebang line

This is done to ensure that the name of the script can be used like a command. Adding this special shebang line lets you specify the path to the interpreter of the script - in this case, the Bash shell.

Follow the steps below to learn how to add a shebang to your script.

## Find the path to the interpreter
The which command helps you find out the path of the command bash.

```bash
which bash
```

In this case, it returns the path **/bin/bash**.

##  Edit the script greet.sh and add the shebang line to the script

Open the file and add the following line at the beginning of the script:

```bash
#! /bin/bash
```
The script should now look like the following:

<p align="center">
  <img src="/resources\greet.sh.png" alt="code.sh">
</p>


## Check the permissions of the script

One more step needs to be completed to make greet.sh completely executable by name.

To add the execute permission for the user on greet.sh, enter the following:

```bash
chmod +x greet.sh
```

Verify whether the execute permission is granted.

To change permissions for greet.sh to make the file executable for the user, run the command below:

```bash
chmod u+x greet.sh
```

Verify the permissions using the command below:

```bash
ls -l greet.sh
```

If you wish to grant execute permission to everyone, you need to run the command **chmod +x greet.sh**.

## Execute the script
Enter the command given below to run the shell script.

```bash
./greet.sh
```

The **.** here refers to the current directory. You are telling Linux to execute the script **greet.sh** and that it can be found in the current directory.
