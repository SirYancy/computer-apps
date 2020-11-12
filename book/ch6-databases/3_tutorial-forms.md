--- 
title: 'TUTORIAL 3 - Forms'
layout: page
parent: Chapter 6 - Databases
nav_order: 5
---

TUTORIAL 3 - Forms
==================

<iframe width="560" height="315" src="https://www.youtube.com/embed/wozFyh4EHfU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

User Interface

:   The means by which the user and a computer system interact. The part of the program that a user sees, which hides all of the complexity of actual program.

Graphical User Interface

:   A GUI is an interface with a graphical component. It's a UI that looks nice, at least in theory.

In a way, crafting a database with Base is sort of like writing a computer program. One of the most important parts of writing a program is to create an interface for anyone who might use your program. This **user interface** is how your users will interact with your database. Specifically, Base has a system of Forms that protect your database from users who might not know how the database works, and make it easier and more intuitive to add new records or search for existing records.

Creating the Artists and Genres forms
-------------------------------------

The first thing we will need to do is create forms for adding new artists and genres to their respective tables. We are going to use a data table style form for these which display all of our artists and genres as a list. So, open your records database that you've been working on. Ensure that you have completed all of the tutorials up until this point. You should have three tables for Albums, Artists, and Genres and they should all be linked with relationships. If you don't know what this means, you may wish to review the previous tutorials in this chapter.

1. In the **Forms** tab, select **Use Wizard to Create Form**. The wizard will walk us through the process in an intuitive way.

    ![Form Wizard](images/forms/1.png)

1. In the Form Wizard dialog which opens, first select *Table: Artists* in the *Tables or queries* menu. Then hit the double chevron button to select all fields (&gt;&gt;). Click **Next**.

    ![Setting up the table for the form](images/forms/2.png)

1. We do not need a subform, so click **Next** again.

1. In the **Arrange controls** step, select the Data Sheet arrangement and click **Next**.

    ![Data Sheet Style](images/forms/3.png)

    The Data Sheet style will display all entries of the table which, at first glance, doesn't seem much different from just using the table itself. But it does give us a couple of distinct advantages. It *does* moderately increase the security on our database table. It *does* ease addition of new artists to the table and other editing operations. But, most importantly, it gives us an interface to use when we create the main Albums table, which you'll see in the next part of this tutorial.

1. On the next step, select "The form is to display all data" and leave the checkboxes unchecked. Click **Next**.

1. On the **Apply styles** step, select a color scheme that looks okay to you. Honestly, they're all quite dated and unattractive, but I don't completely dislike the **Bright Blue** style. You can go in later and edit the style manually.

1. Finally, in the last step, set the name to "*ArtistsForm*". Click **Finish** and observe the result.

    ![Finished Artist Form](images/forms/4.png)

1.  Now, perform the exact same procedure again, only create a "*GenresForm*".

    ![Finished Genre Form](images/forms/5.png)

You'll see a lot of buttons and controls along the left side and bottom of the form screen. We'll get to what some of those do in the next section.

Creating the Album Form
-----------------------

Now, we need to create a new form for our actual Albums. This will involve several more steps, as the table has more fields and we have to deal with foreign keys, but follow along and you will see how it works.

1.  You can close the Artists and Genres forms. Go to the **Forms** tab and start the **Use Wizard to Create Form** again.

2.  This time select **Table: Albums** from the **Tables/Queries** drop-down, but only add AlbumID, AlbumName, and ReleaseDate fields to your form.

    ![Album form fields](images/forms/5.png)

    Make sure they are in this order.

1. Once again, we do not need a sub-form, so click **Next again**.

1. In the **Arrange Controls** step, I rather like the **Columnar** style with the labels aligned to the right.

    ![Choose the columnar style](images/forms/6.png)

1. Leave *The form is to display all data* and don't check any boxes. Click **Next**.

1. Choose a style that isn't completely awful (kind of difficult, I know). Click **Next**.

4.  Name it "*AlbumsForm*", select the *Modify the form* radio button, and press **Finish**.

Adding List Boxes
-----------------

The basic form is there, but it's not quite ready yet. We can't add an album without an artist and a genre. For this, we'll use a List Box.

1. You should be in the form's edit mode. If not, close it, and in the Forms tab of the main Base interface right-click AlbumsForm and select **Edit**.

1. On the left-hand side, you'll see a column of tools for adding interface elements to your table. Select the one with the tooltip **List Box**. Be careful not to select the Combo Box tool directly underneath it.

    ![List Box Tool](images/forms/7.png)

1. Now, using your mouse, draw a box for your list box. Make it rectangular. About this size:

    ![Draw a List Box](images/forms/8.png)

    You can re-position and re-size later.

1. In the List Box Wizard which opens, select the **Artists** table in the Control section.

    ![Select Artists table](images/forms/9.png)

1. In the next step, select **ArtistName** as the Display field.

    ![Select display field](images/forms/10.png)

1. In the next step, for both of these, select **ArtistID** from the appropriate table. This is what will cause the table to use correlate the primary key from the Artists table with the foreign key in the Albums table.

    ![Select ID values](images/forms/11.png)

1. Now, let's add a label. The text box tool might be hidden depending on how big your monitor is. It's at the bottom right corner of the screen. Use this tool to create a textbox and create a label for the Artist box:

    ![Create a label](images/forms/12.png)

    If you don't see this tool, there will be a double-chevron button which will open a menu that has the tool.

1. Repeat this procedure to add a Genres drop-down box and label. The result should look something like this:

    ![Create Genres box](images/forms/13.png)

## Add A Couple Buttons

Lastly, let's add some buttons so we can edit and add new records to the table with a nice, clean, intuitive interface.

1. First, we'll add a "Create Record" button. Select the **Push Button** tool.

    ![Push Button Tool](images/forms/14.png)

1. Draw a rectangle for this button in the top right corner of the form.

    ![Draw the button](images/forms/15.png)

1. **Right-Click** the button and select *Control Properties*.

1. There's a few things in this dialog we need to change. First, Change the label to just a Plus Sign (+). Scroll down a bit and change the Alignment to Center and the Vert. Alignment to Middle. In the Font Menu, bump up the font size a bit. This creates a button with a + sign for adding new records, which should be fairly intuitive, and relatively clean. Despite it being generally kind of ugly (Base is not a beautiful program).

    ![Change the styling a bit](images/forms/16.png)

1. Next, scroll down **Action**, and in the drop-down, select **New Record**. Close the dialog.

    ![New Record Action](images/forms/17.png)

1. Create a few buttons. In particular, create buttons for the following actions:
    * Submit
    * Delete
    * Next Record
    * Previous Record
    * Any other buttons that look like they could be useful.

    There are ways to create more interesting effects with buttons, but they require some programming, which is beyond the scope of this course. Here's how mine turned out:

    ![Completed interface](images/forms/18.png)

1. Close the form and then open it again from the main interface by double clicking on it. Now, the form is active and can be used. Play around with all of the buttons and see if they work the way you expect them to. Try the drop-downs and ensure they work correctly.

If everything seems satisfactory, then you are done, and should upload your database file as is to Canvas.
