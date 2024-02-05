#! /bin/bash

# This script accepts the user\'s name and prints 
# a message greeting the user

# Print the prompt message on screen
echo -n "Enter your firstname :"	  	

# Wait for user to enter a name, and save the entered name into the variable \'name\'
read firstname				

# Print the prompt message on screen
echo -n "Enter your lastname :"	  	

# Wait for user to enter a name, and save the entered name into the variable \'name\'
read lastname	

# Print the welcome message followed by the name	
echo "Hello $firstname $lastname."