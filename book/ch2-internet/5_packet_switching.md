--- 
title: 'POTS and Packets'
layout: page
parent: Chapter 2 - The Internet
nav_order: 5
---

POTS and Packets
================

Discussion Questions
--------------------

1. What was a party telephone line? What ethical concerns might they have rasied?
1. What is analog data? What is digital data? Which of the two are in use today?
1. What are some of the features of computer-to-computer communication that might make it complicated?
1. What are protocols used for?
1. How are domain names tied to IP addresses?

The POTS
--------

Back in the day there weren't very many telephones around. The technology was simple by today's standards. There weren't even phone numbers. If Bob wanted to talk to Alice, Bob would pick up his phone, tap on the receiver a few times. A light would blink at the exchange office. The operator would plug a head set into to Bob's port and Bob would report that he wanted to talk to Alice.

The operator would find the port for Alice and cause her phone to ring. Alice would pick up and the operator would take a wire and insert one end into the port that led to Bob's phone and the other end in a port that led to Alice's phone. Bob and Alice now had a dedicated line (wire) that ran between them. They had exclusive use of the a "single" wire that ran between them. (That's not quite true. Until the 1980s, **party lines** were still in use. What is a party line? Why might have party lines been introduced at all? Why have they been eliminated?)

In the 1940s, folks (notably Claude Shannon) were trying to understand communication capacity. If you were a telephone company and wanted to make as much money as possible, it was important to know how much information (signal) could be sent down a given wire at any one time. People figured out that typical human conversation doesn't involve much signal. That is, lots of telephone conversations could be placed on a single wire at the same time--if it were possible to prevent the conversations from interfering with one another. Folks discovered how to do that for conversation, but about this time, computers were starting to be a thing. People recognized that human sounds are analog, but information stored on a computer was digital, and they discovered additional ways of transmitting that were especially well-suited for digital data.

Packet Switching
----------------

The primary way to have multiple communications share a communication channel these days is using <strong>packet switching</strong>. A packet is just a bundle of bits that a sender wants to send to a receiver. It might be a request for a particular web page. It might be the contents of that web page. Take a little while and begin to consider all of the different ways you know that computer-to-computer communication takes places. What are some of the features of such communication that might make dealing with packets complicated?

Packet switching is ideally suited for situations where there are lots of devices trying to communicate with one another and there is a communication channel that is shared among all of those devices. Think of all of the mobile phones in a classroom trying to communicate with the WiFi access point (AP) in the room. Here, the shared communication channel is the wireless electromagnetic wave. We cannot see it or feel it, but it is a shared communication channel. We need a way share it fairly. The general idea is that each device gets a turn to send a packet when it wants to send a packet to or from the AP. Now there are lots of things to be concerned about. First, we need to keep track of the sender and receiver of each packet. Not only do we need to keep track of them, we need to know how and where on the network to find them. The Internet is a complicated place. The hop from your mobile to the AP is just the first step for that packet.

It is also the case that we want to make sure that the process is fair, so we limit the size of each packet. That means if a sender has a big message to send (a huge pdf file), the sender has to break it up into small packets. But, the receiver is then responsible for putting the small packets back together into the big message. Clearly this is getting complicated real fast.

Since the Internet is complicated and there are lots of devices on it, there may be some communications channels that become congested. Some may even fail. Devices attach to the Internet and then drop off again in the blink of an eye. And then rejoin! Some devices run Linux, others Windows, still others MacOS, others Android.

Some packets may arrive at their destination. Others may not. Some may arrive, but after a significant delay. Packet switching seemed like a great idea, until we started to consider all of the things that could possibly go wrong. Clearly this doesn't stand a chance of working.

Protocols!
----------

But, of course, you know it works. You know it works pretty consistently day in and day out. One big reason is early in the inter-networking era, people adopted **protocols**. Perhaps the most well-known use of the notion of protocol comes from diplomacy. Look it up! Why are protocols used in diplomacy?

When building a network of interconnected computers that are of all sorts of shapes and sizes, have varying types of network adapters, have varying communication needs, and are widely dispersed geographically, we need to lay down some ground rules early on. And we did. The ground rules are spelled out in a variety of protocols. (One of the ground rules that was missed early on is a lesson taught in kindergarten, but not learned by everyone. *Be kind and don't take or look at other people's private stuff*. Early users of interconnected computers all trusted each other and didn't design the protocols for a world that has people whose behavior is a bit unsavory--or even worse.)

On the Internet, protocols are agreements among everyone about how to communicate with one another. Essentially the deal is that if you want your device to communicate with the rest of us, here are the rules for doing so. Each of the protocols used on the Internet is responsible for a very specific set of tasks. People write software to implement the various protocols on their devices. They are part of the operating system. There are usually two different programs: the sender and the receiver. The sender part implements the protocol for when the device is sending and the receiver part implements the protocol for when the device is receiving.

Let's take a look a few of the big players.

The Internet Protocol (IP)
--------------------------

IP is responsible for two main activities on the Internet: addressing and routing. When you type "www.lltc.edu" (this is an example of a domain name) into your web browser, it is like writing "Leech Lake Tribal College" on the outside of an envelope. A thoughtful, forgiving human being working at the post office, might help you out and put the address on the envelope (6945 Little Wolf Road NW, Cass Lake, MN, 56633). Once the address is on the envelope, the post office can route it to the proper truck so that it gets delivered. We have analogs for the Internet. Like a snail mail address, we use IP addresses. Unlike snail mail addresses, IP addresses are a bunch of seemingly meaningless numbers. Now there are two versions of IP that are in use today. One IP address (version 4) for www.lltc.edu is 209.191.200.6 (because of the way DNS lookups work, you can't really just type the IP address into your browser, but I assure you that's the server address for the college). Another (version 6) is fe80::250:56ff:fe87:2da/64. Neither of them is too pleasing to the eye (especially v. 6), but people typically don't look at them. They are mostly used by software. The sending side of IP software attaches the right IP address to each packet for both the sender and the receiver. That way, every computer that handles the packet has both addresses available to it, should it need to inform either the sender or the receiver that something went wrong with that packet.

While it is likely the case that the post office uses the same route day after day with little change. IP routing is handled a little differently. There is no guarantee that two packets from the same sender to the same receiver will follow the same path. The process is a little more like this. A computer that is trying to send a packet along asks its neighbors, "Hey can you get this packet to 209.191.200.6?" The packet gets passed along to one of the neighbors that answers "yes." IP does not plan a route for a packet. It does not pick the optimal route for a packet. All that it promises to do is to try to deliver the packet. It makes no guarantees and does eventually give up if the packet cannot be delivered.

And yet, it works.

Transmission Control Protocol (TCP)
-----------------------------------

TCP is responsible for three main activities on the Internet: breaking messages into packets (and reassembling them), reliable delivery of packets, and congestion control. IP can only route small packets. On the sending side, TCP breaks big messages into small packets. It numbers them with a scheme that is described in the protocol so that the receiving software can put the packets back together to recreate the original big message. For the receiver, it is like a simple puzzle, regardless of the order the packets arrive. Packet number 10 arrives first, so TCP puts it in slot 10. Packet number 3 arrives second, so TCP puts it in slot 3. And so on. Once all of the slots are filled, TCP passes the message along to the right receiver on the computer (for example, your web browser).

But wait, what if a packet never arrives? Remember IP doesn't guarantee delivery. One or more packets may not arrive. Part of the TCP describes how the receiver ought to acknowledge the arrival of packets by sending a message back to the sender. "Hey, I got packets 1-3." The sender waits a while and if it it doesn't receive acknowledgement of all of the packets having arrived, it declares that something is wrong and begins resending packets. With this protocol, as long as a route is available, between the sender and the receiver, the entire message always gets through.

Because the sender knows how many packets it is sending, how big they are, and how long it takes to get acknowledgements, it can roughly calculate how congested the network is. Based on that calculation, it adjusts the speed at which it sends out new packets. This way, TCP senders contribute to reducing congestion on the network.

HyperText Transmission Protocol (HTTP)
--------------------------------------

HTTP is a little different. It's very specific to the World Wide Web. Check the [section in this chapter](2_the_web.md) on Web for a rundown. describes how to request web pages, how to send web pages, and how to deal with errors in the process. HTTPS is a secure form of HTTP that includes specifications on how to handle the encryption of information on the page.

There are many other protocols that are used on the Internet (SSH, SMTP, FTP, DNS, LDAP, DHCP, IRC, QUIC, and more), but we will not go into them in any real detail in this course.


Milestones
----------


  | Year | Milestone                                                                                                                                                            |
  | ---- | -----------------------------------------------------------------------------------------------------------------------------------------------------------          |
  | 1969 | ARPANET goes online. Four major US universities are connected                                                                                                        |
  | 1972 | E-mail. Ray Tomlinson, Cambridge, Mass. Use of @ symbol                                                                                                              |
  | 1973 | TCP/IP is designed. By 1983, it will be _the_ standard for communicating over the internet.                                                                          |
  | 1982 | Word "Internet" comes into usage                                                                                                                                     |
  | 1984 | DNS service first established                                                                                                                                        |
  | 1985 | Quantum Computer Service (later known as America Online) debuts.                                                                                                     |
  | 1988 | Internet Worm shuts down 10% of the Internet                                                                                                                         |
  | 1989 | Tim Berners-Lee develops key techologies for the World Wide Web                                                                                                      |
  | 1990 | First attempt to index the internet, University of Montreal                                                                                                          |
  | 1991 | Gopher (named for University of Minnesota mascot) created, giving the internet a point-and-click interface.                                                       |
  | 1993 | Mosaic is the first popular navigation system (web browser).                                                                                                         |
  | 1994 | The White House launches [www.whitehouse.gove](www.whitehouse.gov). First e-commerce websites. Mass marketing via email leads to coining of the term "spam" |
  | 1995 | First major dial-up internet access widely available (America Online, CompuServe, Prodigy).                                                                          |
  | 1996 | Approximately 45 million people on the Internet, mostly in the US                                                                                                    |
  | 1997 | Nasa broadcasts images taken by *Pathfinder*, breaks Internet traffic numbers, gaining 46 million hits in one day. The word "weblog" is coined.                  |
  | 1998 | Google opens its first office.                                                                                                                                       |
  | 2000 | Proliferation of Internet-based viruses. First Internet bubble bursts. Stocks plunge. But America Online buys Time Warner for $166 billion dollars.              |
  | 2001 | Napster is brought down by 9th US Circuit Court. Wikipedia is created.                                                                                               |
  | 2002 | Over half of the US population is on the Internet. Naptster officially dies.                                                                                         |
  | 2003 | An estimated 2.6 billion music files are downloaded illegally every month. iTunes is created and still manages to be wildly successful.                             |
  | 2005 | YouTube is launched.                                                                                                                                                 |
  | 2007 | Online game World of Warcraft hits 9 million subscribers. iPhone debuts                                                                                              |
  | 2008 | First Android phones debut.                                                                                                                                          |
  | 2009 | Bitcoins start being mined. Kickstarter founded.                                                                                                                     |
  | 2010 | ISS connected to the Internet. Google+ launched                                                                                                                      |
  | 2012 | IPv6 launched. NASA's curiosity rover "checks in" on social media app. "Gangnam Style" hits 1 billion views on YouTube.                                              |
  | 2013 | Netflix and YouTube account for over half of all Internet traffic. Yahoo hacked and credentials of 3 billion accounts stolen. 1 billion internet users.    |
  | 2014 | ICANN basically runs out of IPv4 addresses. Big hacks: Sony, Home Depot, JP Morgan, eBay. Big bugs: Heartbleed                                                       |
  | 2015 | FCC Net Neutratlity rules take effect. Google searches by mobile devices surpass desktops for the first time. Big hacks: Ahsley Madison, Anthem, T-Mobile, IRS       |
  | 2016 | IPv6 reaches 10% deployment. Yahoo comes clean about extent of 2013 and 2014 hacks: Well over a billion accounts compromised.                                        |
  | 2017 | FCC votes to repeal Net Neutrality rules. Library of Congress decides to stop archiving every Tweet. Facebook reaches 2 billion active users. Equifax hack.          |

Source: [Internet timeline](<https://www.zakon.org/robert/internet/timeline/>).
