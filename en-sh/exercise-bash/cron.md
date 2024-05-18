# Exercise A - Understanding Crontab File Syntax witch answer

Cron is a system service used to schedule and execute tasks automatically at specified intervals or times in the background.

A crontab file is a simple text file that lists commands to be run at specified times. You edit this file using the `crontab` command.

Each line in a crontab file has five time-and-date fields, followed by a command, and ends with a newline character (`\n`). The fields are separated by spaces and cannot contain spaces themselves. The allowed values for each field are as follows:

| Field   | Allowed values           |
|---------|---------------------------|
| minute  | 0-59                      |
| hour    | 0-23 (with 0 = midnight)  |
| day     | 1-31                      |
| month   | 1-12                      |
| weekday | 0-6 (with 0 = Sunday)     |

In the openend terminal execute:
```bash
crontab -l
```

If your crontab is empty, you will probably get a message "no crontab for theia".

Now you can create your first cron, first of all create one cron job:
```bash
crontab -e
```

This will create a new crontab file (It will only create a new one if there has not been a cron created previously).

Your crontab file will be opened in an editor.

You can add the below line at the end of the crontab file:
```bash
0 21 * * * echo "cron" >> /tmp/echo.txt
```

`0 21`: The command should run when the minute is 0 and the hour is 21, that is, 9:00 pm every day.

`>> /tmp/echo.txt`: Where the output should be sent.

Save the changes.

Now you can run again the command `crontab -l`, now you can see the newly added job.

---

## 3.2. Schedule a Shell Script

Let's create a simple shell script that prints the current time and the current disk usage statistics.

### Step 1:
In the lab environment, navigate to the menu and select `File -> New File` to create a new file.

### Step 2:
Name the file `diskusage.sh` and click 'OK'.

### Step 3:
Save the following commands into the shell script:

```bash
#!/bin/bash
echo "Current time: $(date)"
echo "Disk usage statistics:"
df -h
```

### Step 4:
Save the file using the `File -> Save` menu option.

### Step 5:
Verify that the script is working:

```bash
chmod u+x diskusage.sh
./diskusage.sh
```

The script should print the current timestamp and the disk usage stats.

Let's schedule this script to run every day at midnight (00:00). The output will be appended to /home/project/diskusage.log.

### Step 6:
```bash
crontab -e
```

### Step 7:
Add the following line to the end of the file:
```bash
0 0 * * * /home/project/diskusage.sh >> /home/project/diskusage.log
```

Save and exit the editor by pressing Ctrl + X, then Y to confirm, and Enter to exit.

### Step 8:
Verify that the job is added to the crontab by running:
```bash
crontab -l
```
You should see the newly added job in the output.

---

### Removing the Current Crontab

To remove the current crontab, use the `-r` option. This command deletes all your scheduled cron jobs.

**Warning**: This command will erase all cron jobs. Be extremely cautious when using it, especially on a production server.

1. Remove the current crontab:

    ```bash
    crontab -r
    ```

2. Verify that your crontab has been removed:

    ```bash
    crontab -l
    ```

If the crontab has been successfully removed, the output of the verification command will typically indicate that there are no crontab entries.