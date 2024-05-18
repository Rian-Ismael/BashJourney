# Exercise 1 - Understanding Crontab File Syntax witch answer

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

If your crontab is empty for you, you will probably get a message "no crontab for theia".

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

