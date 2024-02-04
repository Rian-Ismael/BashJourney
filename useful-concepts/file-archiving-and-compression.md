## File and folder archiving and compression
### 1.1. Create and manage file archives
**tar**

The **tar** command allows you to pack multiple files and directories into a single archive file.

The following command creates an archive of the entire **/bin** directory and writes the archive to a single file named **bin.tar**.

The options used are as follows:
| Option | Description                       |
|--------|-----------------------------------|
| -c     | Create new archive file           |
| -v     | Verbosely list files processed    |
| -f     | Archive file name                 |

```bash
tar -cvf bin.tar /bin
```

To see the list of files in the archive, use the **-t** option:

```bash
tar -tvf bin.tar
```


To untar the archive or extract files from the archive, use the **-x** option:

```bash
tar -xvf bin.tar
```

Use the ls command to verify that the folder bin is extracted.

```bash
ls -l
```
## 1.2. Package and compress archive files
**zip**

The **zip** command allows you to compress files.

The following command creates a zip file named **config.zip** consisting of all the files with extension **.conf** in the **/etc** directory.

```bash
zip config.zip /etc/*.conf
```

The **-r** option can be used to zip an entire directory.

The following command creates an archive of the **/bin** directory.

```bash
zip -r bin.zip /bin
```

## 1.3. Extract, list, or test compressed files in a ZIP archive
**unzip**

The **unzip** command allows you to extract files.

To list the files of the archive **config.zip**, enter the following:

```bash
unzip -l config.zip
```

The following command extracts all the files in the archive **bin.zip**.

```bash
unzip -o bin.zip
```

We added the -o option to force overwrite in case you run the command more than once.

You should see a folder named bin created in your directory.