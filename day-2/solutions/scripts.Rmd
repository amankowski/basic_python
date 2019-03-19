---
title: "python scripts"
author: "Anna Mankowski"
date: "15/03/2019"
output: html_document
---

# Why scripts?

```{bash, eval=FALSE}
# This is my script for metagenomic processing

trimming.sh < raw reads > filtered reads

assembly.py < filtered reads > contigs

sample_renaming.py < contigs > renamed contigs

annotation < renamed contigs > annotations
```

# Example: change fasta headers

```{bash}
cat ../files/original_fasta.fasta
```

```{bash}
cat ../files/sample_names.csv
```

## Which steps are needed?

- read the input files 
- find lines in fasta file starting with ">"
  - find the sequence header in your renaming table
  - write the corresponding new sequence header from the table into the outpout file
- print lines that don't start with ">" to the output file

### directly in python

```{python echo=TRUE, engine.path="/miniconda3/bin/python3.7"}
import sys
import csv

fastafile="../files/original_fasta.fasta"
name_table="../files/sample_names.csv"
fout="../files/renamed_fasta.fasta"

# save the names in the table as a dictionary:
with open(name_table, 'r') as file:
  reader = csv.reader(file)
  names = {}
  for row in reader:
      old_name = row[0].strip()  # get rid of trailing spaces
      new_name = row[1].strip()
      names[old_name] = new_name


# now write the lines of the fasta file to a new file, where the headers
# that are present in the names dictionary are renamed
with open(fastafile, 'r') as fin, open(fout, 'w') as fout:
  for line in fin:
    if line[0] == '>':  # there is a header
        # if the name is in the names list, write new name. Otherwise write original header
        header_name = line[1:].strip()  # remove '>' and trailing spaces
        if header_name in names:
            fout.write(">" + names[header_name] + '\n')
            print(f"{header_name} was renamed to {names[header_name]}")
        else:
            fout.write(line)
    else:
      fout.write(line)
```

```{bash, eval=FALSE}
cat ../files/renamed_fasta.fasta
```

### in a python script that can be called from the command line 

```{bash, eval=FALSE}
../scripts/rename_fasta.py ../files/original_fasta.fasta ../files/sample_names.csv ../files/renamed_fasta_2.fasta

cat ../files/renamed_fasta_2.fasta
```

### in a python script that takes command line flags

```{bash, eval=FALSE}
../scripts/rename_fasta_argparse.py --fasta ../files/original_fasta.fasta --samples ../files/sample_names.csv --output ../files/renamed_fasta_3.fasta 

cat ../files/renamed_fasta_3.fasta
```