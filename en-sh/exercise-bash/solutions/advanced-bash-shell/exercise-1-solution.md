# Exercise 1 - Using conditional statements and logical operators

# Solutions to Bash Scripting Exercises

## Exercise 1.1
Here's a solution using only the command line:
```bash
echo '#!/bin/bash' > conditional_script.sh
chmod u+x conditional_script.sh
```

## Exercise 1.2
```bash
echo 'Are you enjoying this course so far?'
echo -n "Enter \"y\" for yes, \"n\" for no."
read response
```

## Exercise 1.3
```bash
 #!/bin/bash
2.
echo 'Are you enjoying this course so far?'
echo -n "Enter \"y\" for yes, \"n\" for no"
read response
if [ "$response" == "y" ]
then
    echo "I'm pleased to hear you are enjoying the course!"
    echo "Your feedback regarding what you have been enjoying would be most welcome!"
elif [ "$response" = "n" ]
then
    echo "I'm sorry to hear you are not enjoying the course."
    echo "Your feedback regarding what we can do to improve the learning experience"
    echo "for this course would be greatly appreciated!"
else
    echo "Your response must be either 'y' or 'n'."
    echo "Please re-run the script to try again."
fi
```