---
title: 'Tutorial 1.2 - Basic Formulas and Formatting'
layout: page
parent: Chapter 5 - Spreadsheets
nav_order: 4
mathjax: true
---

TUTORIAL 1.2 - Basic Formulas and Formatting
============================================

<iframe width="560" height="315" src="https://www.youtube.com/embed/KedJieP-8y0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We will be continuing our exploration of basic Sheets tools. This
tutorial continues our look at **We Got Widgets** and the order the Ned
Flanders placed for a variety of high-quality, only vaguely defined,
high-tech gadgetry.

Background
----------

A spreadsheet's primary duty is to make complex calculations easier,
especially very repetitive calculations like those that would be
performed on large tables of data. We already know that cells can
contain text or numerical data. And we have the sense that it treats
these two types of data slightly differently. But the problem is, that
kind of data is static. It doesn't do anything. A huge table of data
might be impressive, but once someone asks you what it means, you really
won't be able to articulate much. You can make it look nice, but you
can't make it dance.

So what we want to do is create dynamic data. That is, we want to be
able to put data in a cell that will change if data elsewhere in the
spreadsheet changes.

Let's look at some of the basics of data analysis in Sheets

### Formula basics

Formula
:   A formula is a mathematical expression that uses some combination of numbers **cell references**, and mathematical symbols to generate dynamic data.

Creating a formula is relatively simple and follows rules that might
seem familiar if you think back to high school mathematics. Here are
the four most fundamental rules:

1.   Each formula *must* begin with an equal sign (=)
    -   Think of the equal sign as your signal to Sheets that *"Math is
        happening here!"*
1.   Each formula must consist of some combination of numbers and cell references
    -   Formulas can contain any real number and as many of them as you
        like. But what really makes them shine is that you can include
        *references* to other cells (more on this in a bit).
1.   Formulas can contain all of the basic arithmetic operators
    -   The five basic arithmetic operations are all valid, though they
        might use different symbols than you are used to (see below).
        Plus, you can use **parentheses** for manipulating the order of
        operations.
1.   Formulas will obey the basic mathematical **order of operations**
    -   Do you remember the mnemonic device: *Please Excuse My Dear Aunt
        Sally*? It's a way of remembering the order of operations. All
        arithmetic operations in a formula will follow this order:
        -   **P** arentheses
        -   **E** xponents
        -   **M** ultiplication
        -   **D** ivision
        -   **A** ddition
        -   **S** ubtraction
    -   Remember that multiplication and division have the same priority
        and happen left-to-right. Likewise with addition and
        subtraction. If you're a little rusty, click
        [here](https://www.mathsisfun.com/operation-order-pemdas.html)

Here are some of the arithmetic operators that Sheets accepts:

  | Operation      | Symbol |
  | -              | -      |
  | Addition       | +      |
  | Subtraction    | -      |
  | Multiplication | \*     |
  | Division       | /      |
  | Exponent       | ^      |
  | Grouping       | ()     |

Notice the asterisk for multiplication. This is a fairly common convention in computing since the other traditional multiplication symbols are not typically included on a normal keyboard. Also, exponentiation, which is usually represented by raising a number just slightly above another number. Like this: $ 3^2 $. We can't really do this either in a text-only environment, so we use an exponentiation operator, and the caret is fairly common in computing as well. It's the little symbol above the **6** key.

Using these basic rules, you can create just about any simple
mathematical expression that you can imagine. Try these examples on a
blank spreadsheet (don't forget to use the correct symbols and to start
with an equal sign):

-   $ 6 + 7 \times 8 $
-   $ 16 \div 8 - 2 $
-   $ (25 - 11) \times 3 $

### Cell References

In order to take full advantage of Sheets, an important thing to get used
to is the concept of a **cell reference**. You can use the addresses of
other cells as though they were numbers and Sheets will treat those
references as though they were the values in the referenced cell. That
way, if you change the value of the referenced cell, the result of the
formula will change as well.

Tutorial
--------

In this part of the tutorial, we are going to create some dynamic content by using
formulas. We will use the same file that you used in the last tutorial,
so hopefully, you did not delete it or lose it. Go ahead and open it now
and we'll get started.

### Adding a Cost Column

Our next step in making this a useful spreadsheet is to find out just
how much Ned Flanders spent. With just a little bit of practice, you'll
be able to do this in less than a minute, but let's take this step by
step. First, let's look at each line item.

Ned ordered four "rockwell
retro encabulators" at \$12.45 each. How much is that? Sure, you could
do it longhand or even pull out your calculator and then type in the
result, but this is tedious. Sheets *is* a calculator and it will do all
of this *for* you. First of all, we need to be sure we know exactly what
mathematical operation we need to perform. Here, we have 4 items at
\$12.45 each and so, we are multiplying 12.45 by 4. But, rather than
multiply the two numbers, let's multiply two *cell references*. Let's see
what we mean:

1.  Select cell **G10**. Type the new heading **COST** and press
    **Enter**.
2.  Now, in cell **G11**, you are going to enter your first formula.
    Type =F11\*E11. Remember that the "*" is the Sheets multiplication
    operator. PressEnter*\* and observe the result.

    ![](images/tutorial1-2/1.png)

### Copying and Pasting Formulae

You could pretty quickly just repeat this process in the remaining four
cells. However, this is not a practical solution if you had a file with
even a few dozen rows (not to mention a few thousand). There are two
primary ways of accomplishing this and it all comes down to personal
preference. You can either **copy-and-paste** or you can use the **Fill
Handle**. We'll experiment with both. First, copy and paste:

1.  Select cell **G11** again.
2.  Copy the contents of the cell by pressing **Ctrl-c** on the
    keyboard, or by clicking **Edit&gt;Copy**.
3.  Click on cell **G12**.
4.  Paste your formula into this cell by pressing **Ctrl-v** on the
    keyboard, or clicking **Edit&gt;Paste**.

Why didn't it just copy the previous cell exactly? Well, as it turns
out, Sheets is pretty smart. Its default behavior when you copy and paste
a formula is to interpret cell references (like **F11** and **E11** in
this case), *relative* to the cell where the formula is being pasted.
Think of it this way. From Sheets's point of view, cell **G11** is
multiplying the two cells to left of it. When you paste this formula
into cell **G12**, it will do the same thing only it will multiply the
two cells to the left of *it*, that is, **F12** and **E12**. This
behavior is very, very important to our understanding of Sheets and
learning how to make it do what we want. Let's look at an even quicker
way of handling this problem

### Use the Fill Handle

There's a quicker way to fill in a column of data like this by using the
**fill handle**. The fill handle allows us to quickly copy and paste the
contents of one cell into other cells while also updating the cell
references in formulas. Let's try it out to see how it works.

![The Fill
Handle](images/tutorial1-2/2.png)

1.  Select cell **G11** again.
2.  Hold the mouse over the **Fill Handle**
3.  Notice how the cursor changes to a plus sign. **Click and drag** the
    fill handle down until the outline surrounds the entire column.

    ![Drag Fill Handle Down](images/tutorial1-2/3.png)

4.  **Release** the mouse button.
5.  Verify that the formulas in each cell have been updated and were
    correctly applied. It should look like this:

    ![Copy Completed](images/tutorial1-2/4.png)

We will talk about the fill handle more in later sections as it is an
immensely useful tool and this only scratches the surface of its
capabilities.

### Adding it all up - Formulas

The next step is to get the subtotal of the packing slip. We want to
know what the before-tax cost of all of the widgets will be. As it turns
out, there is a very simple shortcut that can do this in less than a
second, however, there's a lot going on behind the scenes to make it
easy.

We're going to use a **function** to find the sum of all of the costs in
the last column of our table (much more on functions in a later tutorial). First, let's do it and then we'll look at
what happened.

1.  Select cell **F16**. Type: **Subtotal**.
1. Select cells **G11:G15**

    ![Select G11:G15](images/tutorial1-2/5.png)

2. On the far right end of the toolbar is a tool with a Sigma ($\Sigma$) symbol on it. This is the **Functions** tool. **Click it** and then select **Sum**.

    ![Function tool](images/tutorial1-2/6.png)

3.  Observe what happens. In the cell **G16**, the formula `=SUM(G11:G15)` and a function information dialog appears. Press
    **Enter**. The total, **\$636.69** should appear.

    ![The subtotal done](images/tutorial1-2/7.png)

The entry in cell **G16** a special kind of formula. It's a
**function**. A function is a special, named tool for doing complex and
repetitive computations quickly. Essentially what the `=SUM()` function
does is add up all of the numbers that you put between the parentheses.
In this case, it adds together the range of cells **G11:G15**.

### Sales Tax and Shipping

Since we live in a world where the government always gets its share, we
need to include sales tax in our final tally. This is fairly easy to
implement, but we want to ensure that our spreadsheet is re-usable and
easy to change if the taxes change, so we're not going to hard-code it
into the sales tax cell, we're going to create a tax box that we will
pass by reference to our total. Let's see how it's going to work.

1.  Select cell **F9**. Type *Sales Tax* and press **Tab**.
2.  Type *5%*. Press **Enter**. Note, that when you type a number and
    the percent symbol, Sheets automatically formats it as a percentage
    and treats 5% as 0.05 for all mathematical operations with it.
3.  To make things look nicer, select the border between the row 10 and
    11 headers and drag it down a little bit to make the row a little
    wider. This separates the table headings from the Sales Tax cells.

    ![Row 10 is larger](images/tutorial1-2/8.png)

4.  Select cell **F17** and type *Tax*. Press **Tab**.
5.  In cell **G17**, enter the formula =G16\*G9. Press **Enter**. Thus,
    on this order, Ned will be spending \$31.83 in taxes.
6.  In cell **F18**, enter *Shipping*. Pres **Tab**.
7.  In Cell **G18**, enter the amount *\$45.00*. Press **Enter**.

    ![Taxes and shipping rows added](images/tutorial1-2/9.png){: width="75%"}

8.  Now let's create a total row. In cell **F19** type *Total*. Press
    **Tab**.
9.  To get the final total for the order, we need to add the Subtotal,
    the Tax, and the Shipping. In this case, Let's try manually inputting the function.
10. In cell **G19** type `=SUM(`.
11. Now, use the mouse to select cells **G16:G18**. Type ). Press
    **Enter**. The final formula (with the SUM() function) will look
    like this: =SUM(G16:G18)

    ![The Grand Total](images/tutorial1-2/10.png)

### Inserting a row

You notice, when looking over Ned's order, that he also ordered 5 sets
of *capacitive diractants*, so that needs to be included on this packing
slip and the total needs to be updated accordingly. As it turns out,
Sheets makes this easy.

  | BARCODE    | CONDITION | FINISH | WIDGET                | PRICE  | QUANTITY |
  | -          | -         | -      | -                     | -      | -        |
  | 1423-46679 | Used      | Clean  | capacitive diractants | $45.99 | 5        |

1.  Select all of **Row 13** by clicking on the row heading

    ![Insert row](images/tutorial1-2/11.png)

2.  Select **Insert&gt;row below**, and notice how it pushes everything from row 14 on down and creates a new empty row at row 14.

    ![Insert row](images/tutorial1-2/12.png)

3.  Let's populate it with the necessary details from the above table.

    ![Adding new data](images/tutorial1-2/13.png)

4.  Fill in cell **G14** using the fill handle or copying and pasting from one of the other cells in column **G** and observe that the subtotal, tax, and total have all automatically updated!

    ![Final result](images/tutorial1-2/14.png)

### Adding Borders and Touches

We're going to need to make it look nice printed since a packing slip is
usually sent along with an order to verify that everything that was
ordered was shipped. So we're going to add some cell borders and do a
few other finishing touches.

First, let's add the name of the company to the top of the packing slip
and make it stand out.

1.  Just like the previous part, select all of **row 1** by clicking on
    the row 1 heading and clicking the **Insert** menu and selecting **row above**. This will push the entire sheet down and create a new blank row at the top.
2.  In cell **A1**, type *We Got Widgets*. Hit **Enter** and re-select
    cell **A1**. Increase the font size of this cell to *24*.

    ![Company name added](images/tutorial1-2/15.png)

    Think for a moment about why we had to add an entirely new row just to add something to cell **A1**.

Next, let's add some cell borders.

1.  Select the cell range **A5:B9**.
2.  Click the **border** tool and press the **All
    Borders** option from the border menu:

    ![All Borders Tool](images/tutorial1-2/16.png)

3.  Observe that the address section has all borders marked.

5.  Do the same with the following cells and cell ranges: **A4**, **F10:G10**,
    **A11:G17**, **F18:G21**.

    ![](images/tutorial1-2/17.png)

Finally, let's see what it would look like if we *were* to print it. We are not going to, but let's just see what it would look like.

1.  Click **File&gt;Print**.

    ![Print tool](images/tutorial1-2/18.png)

1. Observe the Print Preview screen.

    ![Print preview](images/tutorial1-2/19.png)

1. Do not actually print the document. Click **Cancel** to return to the spreadsheet.

That's it! Once you've reached this point, submit it to the portal as normal.
