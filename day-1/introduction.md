# first introduction to python using excel  
*This is a transcript of the interactive introduction that is performed with the group.*

## background
If you think you have no background at all in programming, you may think again. In our daily
lives as aspiring scientists we work with some core programming concepts by using Excel. 
   
Following are some examples that I hope  this will make the transition to actual programming
easier.   

## setting up
We need excel and the python shell. To start the python shell, start the command line and 
type `python`. To exit the python shell type `quit()`.

## examples
### numbers and other data
We often use Excel to store numbers and other data. 
* **floats:** In Excel store in cell *"A1 = 1.212"*   
  In the python terminal store the same number by typing:  
    ```
    >>> A1 = 1.212
    ```  
    now print A1 to see that you stored this number  
    ```
    >>> print(A1)   
    1.212
    ```  
    Note: in the python shell you could actually also just type `A1` to print it. The moment we switch to scripting this will not work anymore. 
    
similarly:  
  * **scientific number format**: in Excel *"A2 = 5.12E-6"* and in python `>>> A2  = 5.12E-6` 
  * **dates**: in Excel *"A3 = 2019-06-12"* and in python:
    ``` 
    >>> from datetime import datetime
    >>> A3 = datetime.strptime('2019-06-12', '%Y-%m-%d')
    ```
    which is admitedly not that straightforward. [Arrow](https://arrow.readthedocs.io/en/latest/) is your friend.
  * **strings**: in Excel *"A4 = this is some text"* 
  and in python `>>> A4 = 'this is some text'`

### lists
Generally we don't just store a single value in a cell, but a collection of values in a column of cells.   
e.g. one cell for a header: *"C1 = header_name"*  
with several cells below for numbers: *"C2-C6 = 2, 3, 8, 12, 30"*

In python you would do it like this:
```
>>> header_name = [2, 3, 8, 12, 30]
>>> header_name
[2, 3, 8, 12, 30]
```

and this is called a **list**

### doing stuff with data 
And of course, we then go ahead and use the data in excel to do things.  
Such as **algebra**:    
  * _"= 2 * 4"_ vs `>>> 2 * 4`  
  * or on stored data: _"= A1 * A2"_ vs `>>> A1 * A2`  
  
and other fun stuff:
  * **functions**: *"=SUM(C1:C6)"* vs `>>> sum(header_name)`  
  * **boolean**: *"= A1 > A2"* (=*True*) vs `>>> A1 > A2`  (=`True`)
  * **errors**: *"=A1 + A4"* (=*#VALUE!*) vs `>>> A1 + A4` (=`TypeError`)
   


 

