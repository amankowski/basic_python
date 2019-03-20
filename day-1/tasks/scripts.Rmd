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

## How can we code it?

**directly in python**

**in a python script that can be called from the command line with positional arguments**

```{bash, eval=FALSE}
my_python_script.py fastafile samplelist renamedfastafile
```

**in a python script that takes command line flags**

```{bash, eval=FALSE}
my_better_python_script.py -f fastafile -s samplelist -o renamedfastafile
```

**why is it better?**

```{bash, eval=FALSE}
my_better_python_script.py -s samplelist -o renamedfastafile -f fastafile
```
