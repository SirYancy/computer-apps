REVIEW - A Quick Refesher of Excel Basics
-----------------------------------------

This tutorial is designed to refresh the user who has taken the first course, but hasn't touched Excel in a while. So we'll go over all of the fundamentals again. We'll look at basic data entry, formatting, formulas, tables, and charts.

Tutorial
~~~~~~~~

Download the `start file <http://erickuha.com/primer/excel_resources/excel_review_start.xlsx>`_.

Basic Editing
"""""""""""""

First, we are going to look at the basic editing techniques. We will assume basic familiarity with the interface (what a cell is, etc).

On the documentation sheet, click the link for the first exercise.

#. For Exeercise 1, select cells :code:`B6:B7`. Click on the fill handle 

   .. figure:: images/review/1.png
       :width: 100%

       The Fill Handle
   
   and drag the mouse down two cells, so your screen looks like this:

   .. figure:: images/review/2.png
       :width: 100%

   Notice that Excel follows the same pattern established in the first two cells. Do the same with the cells :code:`C6:C7` and :code:`D6:D7`

#. Next, use the fill handle to fill in the names of the months and days of the week in Exercise 2:

   .. figure:: images/review/3.png
       :width: 100%

#. In Exercise 3, select cell :code:`F30`. Enter the formula :code:`=SUM(C30:E30)`. Alternately, the :code:`Autosum` tool should work:

   .. figure:: images/review/4.png
       :width: 100%

   When you press **enter**, notice that it fills in the rest of the column. Next, select cell :code:`C35` and type :code:`=SUM(`. Next, use the mouse to select cells :code:`C30:C33`. Press **Enter**. Finally, use the fill handle to fill in cells :code:`D34:E34`.

#. For the final exercise on this sheet, most of the formulas are already generated. But you will have to do some detail. Select cells :code:`E41:G41`. Drag the fill handle down to fill in the table:

   .. figure:: images/review/5.png
       :width: 100%

   Notice that the *taxes* column is all wrong, and hence, the *Net Pay* column is all wrong as well. THe reason for this is that it uses a relative reference get the Tax Rate from cell :code:`F47`. To fix this, select cell :code:`F41`. Then, edit the formula so that it reads :code:`=E41*$F$47`. Press **Enter** and then drag the fill handle down to correct the entire table.

#. In cell :code:`C57`, enter the formula for the :code:`SUM` function. Your goal is to add the sales numbers from the above table. Thus, your fomula should look like this: :code:`=SUM(C52:C55)`. Do the same for the next three cells. In :code:`C58:C60`, add the formulas for :code:`AVERAGE`, :code:`MIN`, and :code:`MAX` respectively. It should look like this: 

   .. figure:: images/review/6.png
       :width: 100%

Charting
""""""""

On the next sheet, we'll build a few charts.

#. First, select the entire box of data, that is, cells :code:`B6:C9`. In the **Insert** tab, click the **Clustered Column**. Choose the first one and style it however you like.

   .. figure:: images/review/7.png
       :width: 100%

#. Next, select the cells :code:`B20:E23`. Click the **Clustered Column** tool again, but this time use the Clustered Bar graph.

   .. figure:: images/review/8.png
       :width: 100%

#. Finally, select cells :code:`B28:F29`. Choose the **Scatter Plot** as shown in the following screenshot.

   .. figure:: images/review/9.png
       :width: 100%

#. **Challenge**: Create a pie chart from the labels and the totals from the Cookie Sales table. You will have to generate the totals yourself.

Conclusion
""""""""""

When you are finished, upload the resulting file to the course portal as normal.
