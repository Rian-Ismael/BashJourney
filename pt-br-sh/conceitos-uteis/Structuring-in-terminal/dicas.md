## Cheat Sheet - Basic Linux Commands

### Getting information 
--- 

##### Return your user name:  
```bash
whoami
```
 
#####  Return your user and group id:   
``` bash 
id
```
 
#####  Return operating system name, username, and other info:    
```bash
uname -a
```
 
#####  Display reference manual for a command:   
```bash
man top
```

#####  List available `man` pages, including a brief description for each command:
```bash
man -k .
```
 
#####  Get help on a command:   
``` bash 
curl --help
```
 
#####  Return the current date and time:   
``` bash
date
```

### Navigating and working with directories   
--- 

##### List files and directories by date, newest to last:
``` bash
ls -lrt
```
 
##### Find files in directory tree that end in `.sh`:
```bash
find -name \'\*.sh\'
```
 
##### Return path to present working directory:    
```bash 
pwd
```
 
##### Make a new directory:   
```bash
mkdir new_folder
```
 
##### Change the current directory:
&gt; **Up one level:** 
```bash
cd ../
```

&gt; **To home:** 
```bash
cd ~` or `cd
```

&gt; **To some other directory:** `cd path_to_directory`   
 
##### Remove directory verbosely:   
```bash
rmdir temp_directory -v
```
 

### Monitoring system performance and status  
--- 

##### List selection of/all running processes and their PIDs:    
```bash
ps
```

``` bash
ps -e
```
 
##### Display resource usage:   
```bash
top
```
 
##### List mounted file systems and usage:   
```bash 
df
```
 
### Creating, copying, moving, and deleting files: 
--- 

##### Create an empty file or update existing file\'s timestamp:   
```bash
touch a_new_file.txt
```

##### Copy a file:   
``` bash
cp file.txt new_path/new_name.txt
```
 
##### Change file name or path:   
```bash
mv this_file.txt that_path/that_file.txt
```
 
##### Remove a file verbosely:   
```bash
rm this_old_file.txt -v
```
 

 
### Working with file permissions
---

##### Change/modify file permissions to \'execute\' for all users:   
```bash
chmod  +x  my_script.sh
```

##### Change/modify file permissions to \'execute\' only for you, the current user:
```bash
chmod u+x my_file.txt
```

##### Remove \'read\' permissions from group and other users:
```bash
chmod go-r
```

### Displaying file and string contents   
---  

##### Display file contents:    
```bash
cat my_shell_script.sh
```
 
##### Display file contents page-by-page:   
```bash
more ReadMe.txt
```
 
##### Display first 10 lines of file:   
```bash
head -10 data_table.csv
```
 
##### Display last 10 lines of file:   
```bash
tail -10 data_table.csv
```
 
##### Display string or variable value:   
```bash
echo "I am not a robot"  
echo "I am $USERNAME"
```

### Basic text wrangling
---
#### Sorting lines and dropping duplicates:
##### Sort and display lines of file alphanumerically:
```bash
sort text_file.txt
```

&gt; ##### In reverse order:
```bash
sort -r text_file.txt
```

##### Drop consecutive duplicated lines and display result:  
```bash
uniq list_with_duplicated_lines.txt
```

#### Displaying basic stats:
##### Display the count of lines, words, or characters in a file:    
&gt; **Lines:** 
```bash
wc  -l table_of_data.csv
```

&gt; **Words:** 
```bash
wc  -w my_essay.txt
```

&gt; **Characters:** 
```bash
wc  -m some_document.txt
```
 
#### Extracting lines of text containing a pattern:

Some frequently used options for `grep`:  

| Option | Description                                                |
| -------| ---------------------------------------------------------  |
| `-n`   | Print line numbers along with matching lines               |
| `-c`   | Get the count of matching lines                            |  
| `-i`   | Ignore the case of the text while matching                 |
| `-v`   | Print all lines which do not contain the pattern           |
| `-w`   | Match only if the pattern matches whole words              |

##### Extract lines containing the word \"hello\", case insensitive and whole words only:   
```bash
grep  -iw hello  a_bunch_of_hellos.txt
```
 
##### Extract lines containing the pattern \"hello\" from all files in the current directory ending in `.txt`:  
```bash
grep  -l hello  *.txt
```

#### Merge two or more files line-by-line, aligned as columns:  
Suppose you have three files containing the first and last names of your customers, plus their phone numbers. 

##### Use `paste` to align file contents into a Tab-delimited table, one row for each customer:
```bash
paste first_name.txt last_name.text phone_number.txt
```

##### Use a comma as a delimiter instead of the default Tab delimiter:  
```bash
paste -d "," first_name.txt last_name.text phone_number.txt
```

#### Use the `cut` command to extract a column from a table-like file:  
Suppose you have a text file whos rows consist of first and last names of customers, delimited by a comma.  

##### Extract first names, line-by-line:  
```bash
cut -d "," -f 1 names.csv
```

##### Extract the second to fifth characters (bytes) from each line of a file:  
```bash
cut -b 2-5 my_text_file.txt
```

##### Extract the characters (bytes) from each line of a file, starting from the 10th byte to the end of the line:  
```bash
cut -b 10- my_text_file.txt
```

 
 
### Compression and archiving   
--- 

##### Archive a set of files:   
```bash
tar -cvf my_archive.tar.gz file1 file2 file3
```
 
##### Compress a set of files:   
```bash
zip my_zipped_files.zip file1 file2   
zip my_zipped_folders.zip directory1 directory2
```
 
##### Extract files from a compressed zip archive:   
```bash
unzip my_zipped_file.zip 
unzip my_zipped_file.zip -d extract_to_this_direcory
```
 
 
### Working with networking commands   
--- 

##### Print hostname:    
```bash
hostname 
```   
 
##### Send packets to URL and print response:    
```bash
ping  www.google.com
```
 
##### Display or configure system network interfaces:  
```bash
ifconfig   
ip 
```
 
##### Display contents of file at a URL:   
```bash
curl  &lt;url&gt;
```
 
##### Download file from a URL:   
```bash
wget  &lt;url&gt;
```