# Computer Networks

A computer network is a set of computers that are able to communicate with each other and share resources provided by network nodes.

Examples of computer networks include Local Area Networks (LANs), Wide Area Networks (WANs), and the entire Internet. The Internet, or World Wide Web, is essentially a giant network of computer networks.

A **network resource** is any object, such as a file or document, which can be identified by the network.

An object is identifiable if it can be assigned a unique name and address that the network can use to identify and access it.

A **network node** is any device that participates in a network.

A network can include any device which is not necessarily a computer but is part of the network’s infrastructure. Examples of network nodes include modems, network switches, hubs, and wifi hotspots.

## Hosts, Clients, and Servers

A **host** is a special type of node in a computer network - it is a computer that can function as a server or a client on a network.

A **server** is a host computer that is able to accept a connection from a client host and fulfill certain resource requests made by the client.

Many hosts can perform either role, acting as both client and server.

## Packets and Pings

A **network packet** is a formatted chunk of data that can be transmitted over a network.

Today's computer networks typically use communication protocols that are based on such packets of information. Every packet consists of two types of data: 
1. The control information
2. The payload

The control information is data about how and where to deliver the payload, such as the source and destination network addresses, while the payload is the message being sent.

The `ping` command works by sending special 'echo request' packets to a host and waiting for a response from the host.

`ping` is a utility available on most operating systems that have networking capability. Linux has its own implementation of the `ping` command that's used to test and troubleshoot connectivity to other network hosts.

## URLs and IP Addresses

**IP** stands for "Internet Protocol" which defines the format of data transmitted over the internet or a local network.

An **IP address** is a code used to uniquely identify any host on a network.

An IP address can be used to establish a connection to a host and exchange packets with it, for example using the `ping` command. In addition to their payload, IP packets - a type of network packet that conforms to the Internet Protocol - contain the IP addresses of the source and destination hosts.

A **URL**, more commonly known as a web address, stands for Uniform Resource Locator.

A URL uniquely identifies a web resource and enables access to that resource. Typically the resource that a URL points to is a web page, but it can also be used for tasks such as transferring files, sending emails, and accessing databases.

For example, the URL to the Wikipedia page for URL is [https://en.wikipedia.org/wiki/URL](https://en.wikipedia.org/wiki/URL). Just like for a typical URL, its format indicates a protocol (https), a hostname (en.wikipedia.org), and a file name (/wiki/URL).

## Summary

In this reading, you learned that:

- A computer network is a set of computers that are able to communicate with each other and share resources.
- A network resource is any object, such as a file or document, which can be identified by the network.
- A network node is any device that participates in a network.
- A host is a computer that can function as a server or a client on a network.
- A server is a host computer that is able to accept a connection from a client host and fulfill certain resource requests made by the client.
- A network packet is a formatted chunk of data that can be transmitted over a network.
- The `ping` command works by sending special 'echo request' packets to a host and waiting for a response from the host.
- An IP address is a code used to uniquely identify any host on a network.
- A URL identifies a web resource and enables access to that resource.