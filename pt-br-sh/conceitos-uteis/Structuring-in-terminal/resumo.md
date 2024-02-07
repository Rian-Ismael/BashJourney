# Shell Commands Reference

A shell is an interactive user interface. You use shell commands to navigate and work with files and directories.

## File and Directory Operations

- **List files and directories:**
  - `ls`: Lists all files and directories within a specified directory tree.

- **Navigate between directories:**
  - `cd`: Navigates between directories.

- **Create files and directories:**
  - `touch`: Creates files.
  - `mkdir`: Creates directories.

- **Delete files and directories:**
  - `rm`: Deletes files.
  - `rmdir`: Deletes directories.

- **Copy and move files and directories:**
  - `cp`: Copies files and directories.
  - `mv`: Moves files and directories.

- **Find files:**
  - `find`: Finds files in your directories.

## File Viewing and Manipulation

- **Display file contents:**
  - `cat`: Displays file contents.

- **View specific lines of a file:**
  - `more`, `head`, `tail`: Allow sorting and viewing of file contents.

- **Count lines, words, and characters in a file:**
  - `wc`: Determines line, word, and character counts.

- **Sort and filter file contents:**
  - `sort`: Views lines of a file alphanumerically.
  - `uniq`: Removes repeated lines from the view.
  - `grep`: Gets lines of a file that match specific criteria.
  - `cut`: Extracts slices and fields from lines.
  - `paste`: Merges lines from different files.

## System Information and Monitoring

- **User and system information:**
  - `whoami`, `id`: Get user information.
  - `uname`: Get operating system information.

- **System resource monitoring:**
  - `df`: Check system disk usage.
  - `ps`, `top`: Monitor processes and resource usage.

- **Print and extract information:**
  - `echo`: Print string or variable values.
  - `date`: Print and extract information about the date.

- **Read command manuals:**
  - `man`: Read the manual for any command.

## Network Operations

- **View network configuration:**
  - `hostname`, `ifconfig`: View network configuration.

- **Test network connection:**
  - `ping`: Test a network connection.

- **Send and receive data:**
  - `curl`, `wget`: Send and receive data.

## Compression and Archiving

Compression preserves storage space, speeds data transfer, and reduces system load.

- **Compress files and folders:**
  - `zip`: Compresses files and folders prior to archiving them.
  - `tar`: Archives and compresses files and directories into a tarball.

- **Decompress and unpack archives:**
  - `unzip`: Unpacks and decompresses a zipped archive.
  - `tar`: Can also decompress and unpack a tar.gz archive.
