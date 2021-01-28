---
title: The Operating System
layout: page
parent: Chapter 1 - Computer Basics
nav_order: 30
---

The Operating System
====================

# Key Terms
-----------



Operating System
: The primary software on a computer. Responsible for managing memory, allocating resources, and providing an interface for the user.

Interface
: The point where two systems meet and interact

File
: A named resource for storing information which is available to a computer program. They are almost always stored in some sort of long-term storage medium, such as a hard drive. 

File System
: An Operating System component which allows the operating system to store, organize, and locate data on a storage device.

![Operating System Logos](images/os.jpg)

**Note:**

For the purposes of this course, we will assume that you are using one of the three main desktop operating systems. That is, Windows 10 (PC), Apple OS (Mac), or Google Chrome OS (Chromebook). All three of these OSes are sufficient for our purposes. Mobile operating systems such as Android or iOS are not going sufficient for our purposes, but you could conceivably make it work. It's just going to be a lot harder and the tutorials will not be customized for their use.

What is an Operating System?
----------------------------

An operating system is a computer program. A huge, complex, multi-layered computer program that tells the computer how to be a computer. When a computer turns on, it has no idea what to do. So the first thing it does every time it boots up is look for an operating system. If it doesn't find one, it won't finish turning on and it will be mostly unusable (it could still be a paperweight). But, if it finds one, it (very quickly) reads through that operating system's list of rules. It tells the computer what kinds of programs it can run, which ones are installed, where data should be stored, how memory should be managed.

The OS has several roles that broadly fit into three categories. Let's look at these in detail.

Operating System Roles
======================

Let's look at each of the roles of the OS in some detail.

Operating System as *Boss*
--------------------------

The OS sets the rules for the system. When the computer first comes on, the OS software does a system check to see what resources are available, such as storage, memory, graphics, network connections, etc. And then it lays down the ground rules for all the other software on the system so that they can operate within those parameters. Any app on the system has to get permission from the OS in order to do anything. 

Operating System as *Assistant*
-------------------------------

When a user starts an app like, say, a web browser, that app will ask the system for resources like a place to store its code in memory, and space on the screen to display output to the user, or access to the speakers to play sounds, or access to the keyboard to get input from the user, or access to the network controller to send requests across the Internet. It's the OS's responsibility to make sure that each app gets the resources it needs to run.

Operating System as *Referee*
-----------------------------

The modern operating system experience relies heavily on multitasking. Users expect to be able to run more than one app at a time. Maybe you're writing a research paper and you need a word processor and a web browser open at the same time. Not only that, but there are probably tons of other tasks and processes running in the background. There's a process that maintains your connection to the internet, one that manages all your I/O devices (mouse, keyboard, screen, etc), and you might even have some anti-virus software. The list goes on. A system might have dozens of processes running simultaneously and all of them demanding resources from time to time. The OS has the task of making sure they all play nice together. And not only that, but occasionally, an app messes up or throws an error. And sometimes it messes up so badly that it crashes. The OS has the responsibility of making sure that an app that crashes does so gracefully without disrupting the rest of the system or corrupting data. Sometimes malicious software even tries to do this deliberately. The OS keeps all of this in mind as it does its job.

Operating System Components
===========================

You might ask how the OS manages this monumental task. Well, a well-designed OS comes with many different components that can be swapped in and out, each of which has its set of responsibilities. Here's a brief overview of some of the more vital OS components.

Kernel
------

The kernel is the most basic control system component of the operating system. It provides very basic, low-level control over the system's hardware. The user almost never interacts with the kernel and for the purposes of this class, we will not go into great detail about its structure and operation. It is included here for awareness that there are aspects of the computer that exist behind the scenes that we are mostly unaware of.

The kernel controls the CPU, memory management, and direct access to devices like the mouse, keyboard, and display.

Program Execution
-----------------

An OS provides interface for programs written by programmers to access hardware so that they can run. In a way, what the programmers of an OS do is create a cushion between the program and the hardware. It does all of the hard stuff for us. It makes the job of programming a computer easier, and makes it easier for the user to operate. Imagine you are driving a car. You really have only a few basic controls. A steering wheel, a couple pedals, a gear shifter, and some signalling devices. You don't have to keep an eye on the engine idle speed or the oxygen mix in the fuel injector. All you have to do is point the car in the direction you wish to travel. Likewise, the OS creates an interface for a computer program to interact with hardware.

File System
-----------

![A Hard Drive](images/hard_drive.jpg){: width="25%"}

In computer terminology, memory (RAM) is the component that keeps track of all of the things that a computer is doing right now. Once you turn off the computer, all of the RAM is emptied out. All of it. And so, there has to be a system for long-term storage. Computers use pieces of hardware called hard drives to store information for long periods of time. It stores this information in discrete pieces of data called **files**. An OS manages files using a special piece of software called a **file system**. The file system is the software which allows the OS to store, organize, and retrieve data on a storage device.

Device Drivers
--------------

For every piece of hardware that you connect to a computer whether it is as simple as a keyboard, or as complex as a printer or webcam, a "contract" of sorts must be written by some programmer so that both the OS and the keyboard know how to work together. This contract is a small program called a device driver. Most modern computers have potentially hundreds of pre-installed device drivers and access to thousands more in online repositories.

Every time you hook up a new printer, your computer will ask that printer what it is, and the printer will tell it and then the OS will access an online repository of device drivers, find the one specific to that printer, download it, and install it. Thus, the contract between OS and device is established.

Networking
----------

These days, networking is so fundamental to any digital experience that it is typically built right into the operating system. Gone are the days when you had to configure your internet connection by hand. Almost all modern computers completely automate this process.

Security
--------

Most modern operating systems will have some sort of security built in. Windows, for example, has a program called Windows Defender built in, which is a program that prevents unwanted or unknown computers or malicious programs from accessing vital system resources. Most modern operating systems also have some sort of user-specific protection as well. For example, the Windows OS has a built-in user account system so everyone in the family can have their own account on the computer and everyone's files are protected by the user's password.

User Interface
--------------

![The WIMP Interface](images/desktop_windows.png)

Perhaps most importantly for this class, the Operating System provides a user interface. Specifically, most modern OSs provide what's called a Graphical User Interface, or GUI (pronounced "gooey"). Established a long time ago (in the 70s), this interface usually adheres to a "desktop" metaphor. The idea is to simulate the surface of a desk, where you can move documents around, look through file cabinets, and interact with your work. This "desktop" interface is called a WIMP interface, which stands for **W**indow, **I**con, **M**enu, **P**ointer. So each of these is essential to that experience. The GUI uses windows to display each active application, icons to signify applications that are available or files that can be opened, Menus to access features and tools, and a pointer controlled by a mouse to point to, activate, and interact with each of these.

It will also usually provide useful and intuitive tools for a user to locate apps that are installed on the system and track apps and processes that are running. There is a myriad of other ways that a user can configure, manage, and customize the operating system so that it works for each user's unique needs and desires.

What Operating System Do I Have?
================================

Workstation OSs
---------------

There are many operating systems available to the modern computer user and what operating system you use will depend on several things, like experience level, platform, and personal preference. There are three main workstation operating systems: Microsoft Windows, Apple OSX, and Linux. All three are perfectly viable options for any user, though they all have their advantages and disadvantages.

This course assumes you are going to be working with a machine running Windows, macOS, or ChromeOS.

### Microsoft Windows

![Windows Logo](https://upload.wikimedia.org/wikipedia/commons/5/5f/Windows_logo_-_2012.svg){: width="10%" }

Microsoft Windows is definitely the most popular for several reasons. One, the machines it runs on are generally less expensive than Apple machines. Two, it has become the de facto operating system for most businesses because of this fact. Inexpensive Windows machines (sometimes called "PCs") can be purchased in bulk and are relatively easy to maintain and replace if needed. There are massive libraries of software available (much of it free and open-source) for Windows PCs and they are highly customizable. Their drawbacks include some security issues, somewhat increased susceptibility to virus infections, and incredible amounts of unwanted or unnecessary or downright awful software included on bargain-rate computers (often called **bloat-ware**).

### macOS

![macOS Logo](https://upload.wikimedia.org/wikipedia/commons/b/bb/OS_X_El_Capitan_logo.svg){: width="10%" }

Apple's macOS is slick, streamlined, user-friendly, and pretty. It comes bundled in proprietary hardware produced by Apple Corporation. These computers are called Macintoshes. There are no other computers that run this OS. If you want macOS, you have to purchase a Mac. This isn't necessarily a problem. They are well-built machines, last forever, and receive constant updates from Apple. They don't have the bloatware issues that Windows PCs suffer from. There are drawbacks, however. They are expensive. Sometimes very expensive. They also have a smaller software ecosystem. Where a Windows PC might have several options for a good photo editor and you would be free to choose which you prefer, on a Macintosh, you typically have a one-size fits all software ecosystem. Only one option to choose from, but it's typically a nice piece of software. Also, if you're used to Windows, its interface can sometimes be a little confusing.

### ChromeOS

![ChromeOS Logo](https://upload.wikimedia.org/wikipedia/commons/d/dd/Google_Chrome_logo_with_wordmark_%282015%29.svg){: width="10%" }

Chrome OS is a little different. Developed by Google, it's designed to be a lightweight OS installed on inexpensive, low-powered laptops, and leveraging the power of remote network services to get its work done. It's sort of like a cross between a full desktop platform and a more strictly mobile OS like Android. It has some very useful features (and the smaller price point is certainly one of them). It can install almost any apps that are compatible with Android, and even some full desktop apps. Its primary limitations are its need for an Internet connection to be even remotely useful, and its limited application ecosystem. Primarily it is used as a productivity machine using Google's app ecosystem.

### Linux

![](https://upload.wikimedia.org/wikipedia/commons/3/35/Tux.svg){: width="10%" }

Linux is a very special operating system. It's not exactly an OS per se. It's a kernel for an OS and hundreds of full-fledged operating systems have been built on this kernel. Some of the more well-known Linux "distros" are [Ubuntu](http://www.ubuntu.com/), [Red Hat](https://www.redhat.com/en), [Kali](https://www.kali.org/), [Mint](https://www.linuxmint.com/), and [Debian](https://www.debian.org/). Linux is one of the oldest operating systems around, and it is technically the most popular operating system in the world, period. It runs on the vast majority of web servers because of its stability, reliability, and tight security. But for the end user, it is not so common. Which is kind of a shame because some of the more popular Linux distros, like Ubuntu and Debian are very high quality, rivaling any Windows or Macintosh for usability. They are highly customizable, and have massive libraries of high-quality mostly free, open-source software to choose from. Some businesses are making the transition to Linux, but it has been slow. Its main upsides are the fact that it's open-source and well-vetted software, it's typically free (where a Windows license costs about \$100 and macOS comes tied to very expensive hardware), and can be installed on just about any machine. The fact that it's open-source means that a large community of programmers have vetted the software and found vulnerabilities. Not to mention that since Windows and OS X are closed-source, there is no way to know what might be lurking behind the scenes, from security vulnerabilities to secret government-controlled back doors.

Mobile OSs
----------

Smartphones are almost completely ubiquitous these days. There are two main competing smartphone OSs, but there are many more available to the tech-savvy consumer.

### Android

[Android](https://www.android.com/) is the (somewhat) open-source mobile operating system maintained by Google. It currently holds well over half of the mobile OS market share worldwide. This is largely due to the fact that it is available for a wide ecosystem of devices and many manufacturers are building phones and tablets that run it. It can run on a large array of inexpensive devices.

### iOS

[iOS](http://www.apple.com/ios/) is Apple Corporation's primary mobile operating system. Its key features are a slick reliable interface and a carefully curated app store. iOS, as an Apple product, is only available on devices which Apple has manufactured, such as the iPad and iPhone. These are typically high quality devices, but are also correspondingly more expensive than a bargain rate Android.
