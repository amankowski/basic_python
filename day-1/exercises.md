* Tip: there is tab autocompletion in the python shell.  
* In the python shell you can print by using the `print()` function. However, you can also print by just typing the variable or function etc. and press enter.
* At some point (maybe not right now already) it might be helpful to have a cheat sheet, just google 'python cheat sheet'. There are many out there! 

### variables
In the group introduction we stored values in 'cells' like so `A1 = 'some text'`. 
The `A1` in this example is called a variable. (A rather poorly named variable to be frank).   

##### exercises
1. make a new variable called `one_line_rhyme` and store this string of text in it:   
`Though smaller than a dime oh bacteria are sublime`
2. print this variable
3. Make up a new microbiology-themed one-line-rhyme and store as the `one_line_rhyme` variable. Does that work? What happened to the original string?


### strings
There are many different types of objects in python. The variable `one_line_rhyme` stores a string object. If you want to know what the type of an object is you can call the `type()` function. This function can sometimes come in handy if it is not obvious what you are working with.   

Strings are super useful and there are many things you can do with them. We won't go that deep here but feel free to google "python 3 string methods" to find out more.  
Four tricks we will talk about here: 
* If you want to add two strings together simply do `'one string' + 'another string'`.     
* If you want to figure out what the length of a string is use `len()`.  
* slicing: `string[0: 4]` will make a new string with only the first four letters of the old string. `string[0]` will only print the first letter. Unlike humans, python starts counting at 0. (The `string` here is a variable name)
* `max()` gives the highest alphabetical letter in a string, `min()` the lowest alphabetical letter  

##### exercises
  1. Call the `type()` function on `one_line_rhyme`. What output do you get? 
  2. Make a new variable called `another_rhyme` and store a second sentence for your poem. 
  3. Combine the two strings into a third variable `together`, and print this variable. 
4. Now make the variable `first_word` with only the first word of `one_line_rhyme` (tip: use slicing). Print to see if it worked.
5. And now try to make `second_word`. And `third_letter`? 
6. How many letters are there in `third_letter`, `first_word` and `together`? 


### lists
In the group introduction we talked about lists. A list is an object that stores data, like so: `list_name = [2, 12, 2.22, 700000]`
##### exercises
1. Create a new list called `poem` and store the `one_line_rhyme` and `another_rhyme` there. 
2. Print the list, how does it look?  
3. Try to print only the first item of the list. (tip: look at slicing in the strings section)
4. Can you make a new list called `sizes` with the length of each line? How does it look?
5. What is the length of the list `sizes`?
6. What is the largest number in `sizes`? Try to do this programmatically.   


### loops
It would be nice if we could print the second sentence of the poem on a new line. It so happens this is really easy! Please, try the following:
```
for line in poem:
...    print(line)
...
``` 
! Note that before print there is a tab indent. 

##### exercises
1. What happens? 
2. Can you change both instances of 'line' to a different word of choice? What happens? 
3. Write the same code, but below the line `print(line)` type `print('I say')`. 
4. Can you also print `'hear hear'` before every line? 
5. Now try to make a loop using `for number in range(0,100):` where you print `'yeah'` and every number. 
6. Since your poem is so nice, can you print it 10,000 times?
7. Can you now print it 10,000 times on separate lines? (tip: you can nest loops)
8. Type `for letter in 'this is some text':` (new line) `print(letter)`
6. Try to print every letter of your poem on a new line. 
7. Now do that a million times. (tip: if you get bored, press *ctrl + c* to interrupt python)


### if statements and boolean logic, or "how big is your genome?"   
Type the following into your terminal:
``` 
e_coli = 4.6 
your_genome = 6.5 
if your_genome > e_coli:
    print('your genome is larger than E. coli')
else: 
    print('your genome is smaller than E. coli')
```
1. What is your output? 
2. Type the same code, but change your genome size to 2.1. What is your output now? Why does that happen? 
3. Can you write similar code but now use a `<` instead of a `>`?
4. Just type `4 > 3` and `4 > 30`. What do you get? 
5. The `>` is called a boolean comparison operator. The others are `==`, `!=`, `<=`, and `>=`. Try to use coding to figure out what they do. 
6. Do these boolean operators work on strings as well? 






