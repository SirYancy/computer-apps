--- 
title: 'What is the Internet?'
layout: page
parent: Chapter 2 - The Internet
nav_order: 1
---

What is the Internet?
=====================

The Internet is a world-spanning network of computers. A variety of wired and wireless technologies all working on concert with each other to build a system where information can be shared between any number of machines separated by globe-spanning distances. There are even internet-connected devices in outer space. Billions of people use the Internet every day to find news, recipes, cat pictures, and election results. We watch videos on YouTube to learn how to fix our cars. We order products from our phones and they are delivered to our homes in a few days.

So what is it really? It's hard to talk about what the Internet *is*, without talking about how it works.

How does the Internet Work?
---------------------------

**Vocabulary:**

Protocol
: A set of rules and conventions that allows all machines to talk to each other. It can, in a way, be thought of as a common language for two or more computers.

TCP/IP
: The most important protocols on the Internet. They are not the *only* ones, but since the beginning and still today, these two protocols mediate most communication on the Internet.

Packet Switching
: Breaking a message into small pieces and sending each piece independently across a network over whichever route is most efficient at the time.

Packet
: A single message sent across the internet. It may contain the whole message, or part of a much larger message.

Domain
: An easy-to-remember name for a web service that can be translated into an IP address.

The Internet is based on the principle of *packet switching*. This is
the idea that we can reliably transmit any digital file over long
distances by breaking up larger files into many smaller chunks at the
sending end, and re-assemble them on the other end. It has been through
a variety of incarnations over the years, but eventually, the suite of
protocols that became the defacto language of the internet was the
**TCP/IP** stack.

A brief overview of how this all works in practice (from a very high
level of abstraction) is discussed on this page.

The Stack
---------

-   Application Layer
-   TCP
-   IP
-   Hardware Layer

Essentially, the stack works like this:

1.  An application (a Web browser, for example), decides it needs some
    resource from the Internet. It asks the computer to send a message to a computer somewhere else on the web.
2.  Next, the Transmission Control Protocol (TCP), takes the information the
    application is going to send and breaks it up into pieces
    (if necessary) and takes each piece and bundles it into a string of binary called a packet.
3.  Next, it sends it on to the next layer, the Internet
    Protocol library. The IP layer stamps the packet with an address and
    sends the packet to the next leg of its journey.
4.  The system hardware interface talks to your network hardware and
    encodes the packet into an electrical which can be sent on
    a wire.
5.  From there, it winds its way across the Internet looking for
    its destination. Each packet is passed along from stop to stop like
    a hot potato and at each stop a special piece of hardware called a *switch* decides where to send it on
    to next.
6.  When it reaches the destination computer, it climbs back up
    the stack. The network hardware deserializes the signal (puts it
    back into its packet form), the IP layer verifies that this is where
    it belongs, the TCP layer collects all of the packets and
    reassembles them if necessary.
7.  Lastly, and finally, whatever application (possibly some web
    server sofware) looks at the request and decides how to respond
    to it. For example, it might serve up a Webpage and send it back
    down through the stack and across the internet back to your computer
    to be rendered in your web browser.

One interesting thing to note is that on modern computers, this process happens very, very
quickly (on the order of seconds), but in computer time, it's an
incredibly slow and laborious process.

Infrastructure
--------------

Briefly, it's useful to understand the Internet in terms of network
hardware. There's a sort of hierarchy of hardware on the internet and
each level of that hierarchy, a different level of service exists and a
different customer, business, peer relationship exists. For example, you
may purchase access to the internet from a local **Internet Service
Provider**. They might purchase their access to the Internet through a
regional ISP, who in tern will be purchasing network access from what's
called a **Network Service Provider**. These are massive telecom
companies and the huge bundles of fiber-optic cabling that stretch all
the way around the world are collectively often referred to as the
**Internet Backbone**. Each NSP is legally required to connect to at
least three **Network Access Points**, where packets can jump from one
network to another, thus ensuring that the network is really a network
and that all computers are connected to all other computers, however
circuitiously.

Domain Routing
--------------

Routing on the internet relies heavily on the **Domain Name System**. Since the Internet actually relies on IP addresses, which are just long strings of numbers like 192.168.1.1, which are hard to remember, we have a system of **Domain Names**, which are much easier to remember, like [google.com](http://www.google.com). Each time you look for a particular server, its domain name is resolved into an IP address by looking it up in a very big table, something like a phone book (remember those?).

This page of this book is located at
<https://itech.erickuha.com/book/ch6-internet/what_is_internet.html>.
But what does that mean? Let's take the address apart and examine its
parts.

-   **https://** - is the *protocol*. In particular, http is the
    protocol of the World Wide Web, called hypertext transfer protocol.
    It's a collection of commands that can be used to retrieve, update,
    or delete web pages. The **://** part is just a some junk, called a delimiter, that the earlier designers decided to put there to separate the protocol from the rest of the address. You don't actually have to type the protocol or the delimiter anymore as most browsers will insert it automatically and for free!
-   **com** - The *top-level domain* of a website is where,
    organizationally, it exists. There used to be only a few of these,
    but now there are are many. How many can you think of? Their main purpose is to make
    table-lookups faster by only searching part of the table (the part
    with all of the .com addresses, for example). [List of available
    top-level
    domains](https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains).
    Pricing on [Google
    Domains](https://support.google.com/domains/answer/6010092?hl=en&_ga=2.145819828.1409918622.1547064263-1471332043.1547064263).
-   **erickuha** - is my *domain*, the domain that I registered
    through a domain registrar and have exclusive rights to. It is,
    somewhere along the line, associated with an IP address, but I do
    not know what it is.
-   **itech** - The *sub-domain* is the specific part of my domain which
    can be routed differently than the rest. For example, the root
    erickuha.com is hosted in one location and itech.erickuha.com is
    routed to a completely different service, server, and part of
    the internet.
-   **/book/ch6-internet/what-is-internet.html** is the called a *path*.
    It leads to the specific file on the server that is requested when
    someone navigates to this page. It works almost identically to the
    file hierarchy on your own computer's file system. A system of
    forward slashes separates folders/directories and file names with
    file extensions are used to denote final endpoints.

There are other schemes for locating resources on the internet, but this
is the sanest and simplest one and can be used as a model for
understanding the rest of it on down the line.

Other thoughts
--------------

There is a lot more to talk about and a lot more to learn. You can look
into all of the different protocols that are used on the Internet and
the World Wide Web, or you can look deeper into how packet-switching is
actually implemented in the TCP/IP stack. This is a jumping-off point to
get you started down the road to understanding more about how the
largest piece of technology ever created actually works.

Next, let's look at some practical applications of all of this.
