##  Objectives

- View your network configuration using the hostname and ifconfig commands
- Test a network connection using the ping command
- Transfer data using the curl and wget commands

### View configuration info about your network
#### 1.1. Display your system's hostname and IP address
**hostname**

A hostname is a name that is assigned to a computer or device on a network, and it is used to identify and communicate with that device.

To view the current hostname, run the command below:

```
1 hostname
```

An *IP address* (Internet Protocol address) is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication.

You can use the **-i** option to view the IP address of the host:
```bash
1 hostname -i
```

#### 1.2. Display network interface configuration
**ifconfig**

The **ifconfig** command is used to configure or display network interface parameters for a network.

To display the configuration of all network interfaces of your system, enter:

```bash
1 ifconfig
```

To display the configuration of a particular device, such as the ethernet adapter **eth0**, enter:

```bash
1 ifconfig eth0
```
**eth0** is usually the primary network interface that connects your server to the network.

You can see your server's IP address in line 2 after the word **inet**.

### Test network connectivity
#### 2.1. Test connectivity to a host
**ping**

Use the **ping** command to check if **www.google.com** is reachable. The command keeps pinging data packets to server at **www.google.com** and prints the response it gets back. (Press **Ctrl**+**c** to stop pinging.)

```bash
1 ping www.google.com
```
If you want to ping only a limited number of times, use **-c** option.

```bash
ping -c 5 www.google.com
```

### View or download data from a server
#### 3.1. Transfer data from a server
**curl**

You can use **curl** to access the file at the following URL and display the file's contents on your screen:

```bash
1 curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
To access the file at the given URL and also save it in your current working directory, use the **-O** option:

```bash
1 curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
You can also use **curl** to view the HTML code for any web page if you know its URL.

#### 3.2. Download file(s) from a URL
**wget**

The **wget** command is similar to **curl**, however its primary use is for file downloading. One unique feature of **wget* is that it can recursively download files at a URL.

To see wget in action, first remove **usdoi.txt** from your current directory:

```bash
1 rm usdoi.txt
```

then download it again using **wget** as follows:

```bash
1 wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
```
