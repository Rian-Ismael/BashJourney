# Exercise 1 - Understanding Crontab File Syntax

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