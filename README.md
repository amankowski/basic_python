# basic_python
Course material for the python beginner's course at the MPIMM Bremen

_Course held by Niek Stortenbeker and Anna Mankowski on March 19th and 20th 2019._  
Navigate to the `day-1` or `day-2` folder to find the materials of each day. 


[exercises for the first day](https://github.com/amankowski/basic_python/blob/master/day-1/exercises.md)


## useful resources 
### good learning tools for python
* [introduction to python](http://introtopython.org)
* Visual QuickStart Guide Python - Toby Donaldson (available on mpg books)
* [automate the boring stuff with python](https://automatetheboringstuff.com/)
* [real python](https://realpython.com/)  
* [python data science handbook](https://jakevdp.github.io/PythonDataScienceHandbook/)
*  Bioinformatics with Python Cookbook - Tiago Antao (available on mpg books)


### good python packages and modules

* [numpy for simple descriptive statistics](https://docs.scipy.org/doc/numpy-1.13.0/reference/routines.statistics.html)
* [pandas](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)  for working with dataframes (like in R, or excel sheets). Very useful for all sorts of data analysis.
* [arrow](https://arrow.readthedocs.io/en/latest/) for working with dates
* [re](https://developers.google.com/edu/python/regular-expressions) for regular expressions (a powerfull mini language for matching strings based on rules)
* [pathlib](https://realpython.com/python-pathlib/) for working with directories
* [subprocess](https://pythonspot.com/python-subprocess/) for excecuting command line programs from python
* [biopython](https://biopython.org/) for bioinformatic tools  
* [matplotlib](https://matplotlib.org/) for plotting
* [snakemake](https://snakemake.readthedocs.io/en/stable/) to make a smart command line programs workflow
* [click](https://click.palletsprojects.com/en/7.x/) basically a better argparse

### editers or integrated development environments
* [vim](https://www.vim.org/): simple command line editor
* [atom](https://atom.io/): very nice text editor with syntax highlighting and other goodies
* [PyCharm](https://www.jetbrains.com/pycharm/): an good integrated development environment. Basically this is a very smart text editor. (that might be a little more difficult to start using).


### ideas for changing the rename_fasta.py script
If you are looking for small projects to improve your python skills, here are a few examples:
* ignore case (use for instance .lower())
* print a warning when a name from the sample_names.csv is not used
* make the script rename all fasta files in a specified directory automatically (use pathlib!)
* only write the sequences that are in the table, ignore the other sequences (change the if statements)
* change the name in a way that the original name stays preserved (e.g. CBC2017_2738-Sample1)
