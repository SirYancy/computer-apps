--- 
title: 'Tutorial 8 - Macros and Visual Basic'
layout: page
parent: Chapter 5 - Spreadsheets
nav_order: 11
---

Tutorial 8 - Macros and Visual Basic
=========================================

<iframe width="560" height="315" src="https://www.youtube.com/embed/zUqE9Xd3wzA?si=IPRWqKQNhx04ZOOT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

A person can go their entire career working with Excel and not even scratch the surface of what's possible. But if you truly want to get the most out of the software, automate the tedious, boring bits, and save yourself time, energy, and mental effort, you might want to consider learning how to use the various scripting utilities built into Excel and other spreadsheet software.

There are several ways to automate repetitive tasks in Excel, but some of the newer ones are either still in beta testing or are not available at the common subscription tier. So we are going to start with two fundamental types of automation in Excel: **Macros**, and **Visual Basic for Applications** (**VBA**).

A couple quick caveats before we begin. First, macros are unavailable in Excel online; that is, you must use the desktop application in order to access these features. So they will be unavailable on a Chromebook or other mobile-app style device. Second, there are some security risks when it comes to creating and using Excel macros. Macros are powerful and have access to low-level functions on your computer. So if you get into using macros (because they're pretty neat), and are looking at macros that other people have created and posted online, make sure you look over the code in these macros and know exactly what they do before using them on your own data or computer.

Let's dig in.

The video above will have you build a few macros and then tweak them in the VBA programming interface. Here's the breakdown of what you'll work through.

Download the [Start File](res/macros_start.xlsx)

* Macro 1 - Formatting
    1. A1 - Format as Title
    1. A3:C3 - Change background color and underline
    1. Make headings bold
    1. Set number formats to use commas and no decimal places
* Macro 2 - Chart
    1. Highlight table
    1. Make basic combo chart
    1. Change position of legend
    1. Change color of columns
    1. Add data labels
    1. Change title
* Revising Macro
    1. Edit the macro code so that it grabs the title from cell A1.
    1. Edit the macro code so that it will exit if the table is empty.

