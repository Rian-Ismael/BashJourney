# Exercise 3 - Using arrays for storing and accessing data within for loops

## During this exercise, you'll generate a report utilizing a provided dataset in CSV format. You'll extract dataset columns into separate arrays, crafting a new column through arithmetic and array operations. Ultimately, you'll merge the dataset with the new column and save the resulting report as a CSV file.

## Download a CSV file to your current working directory

```bash
csv_file="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/M3/L2/arrays_table.csv"
wget $csv_file
```
Display the CSV file to understand what it looks like.

### 3.1 Create a Bash script that parses table columns into 3 arrays

Employ command substitution along with the cut command to extract specific columns from the dataset and create arrays from the extracted elements. Don't forget to print the first array to validate your logic.

### 3.2 Create a new array as the difference of the third and second columns.

 Initialize your new array with a header (a column name), and ensure to validate your results. Utilize a loop to populate your array. Determine the number of elements needed and incorporate it within your loop statement. Print both the number of elements and the contents of your new array to validate your logic.

Recall the for loop notation when you know the number of iterations needed, and remember that array indexing starts at 0. To get the number of lines, use command substitution on a pipeline that uses the cat and wc commands as filters, and store the result in a variable.

### 3.3 Create a report by combining your new column with the source table

To save your report as a CSV file, ensuring the validation of your results, follow these steps: Write the new array to the file line-by-line, initializing the file with a header. Utilize redirection and recall how to merge two files side-by-side. Ensure your final report maintains the correct CSV format.