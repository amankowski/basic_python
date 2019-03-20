---
title: "python functions"
author: "Anna Mankowski"
date: "14/03/2019"
output: html_document
---

# What is a function? 

```{python engine.path="/miniconda3/bin/python3.7"}
greeting="Hello World!"
print(greeting)
```

# Define your own functions

## Calculate the GC content of a genome

All you know is the sequence length (349 bp) and the count of Gs in the sequence (182)

What do you need to do? 

- divide G count by sequence length and mulitply with 100

### in python:

```{python engine.path="/miniconda3/bin/python3.7"}
l=349
g=182
gc=g/l
print(l, g, gc)
```

## But what if you have several genomes for which you would do this calculation?

sequence lengths: 349, 502, 829, 185, 420

G counts:         182, 328, 392, 101, 173

### one calculation for every data pair

```{python, engine.path="/miniconda3/bin/python3.7"}
l1=349
l2=502
l3=829
l4=185
l5=420

g1=182
g2=328
g3=392
g4=101
g5=173

gc1=g1/l1
gc2=g2/l2
gc3=g3/l3
gc4=g4/l4
gc5=g5/l5

print(gc1, gc2, gc3, gc4, gc5)
```

### for loop

```{python, engine.path="/miniconda3/bin/python3.7"}
l=[349, 502, 829, 185, 420]
g=[182, 328, 392, 101, 173]

gc=[]
for i in range(0,5):
  gc.append((g[i]/l[i])*100)
print(gc)
```

### with a self defined function 

```{python, engine.path="/miniconda3/bin/python3.7"}
l=[349, 502, 829, 185, 420]
g=[182, 328, 392, 101, 173]

def calc_gc(seqlength, gcounts):
  gc=(gcounts/seqlength)*100
  print(gc)

for i in range(0,5):
  calc_gc(l[i], g[i])
```

```{python, engine.path="/miniconda3/bin/python3.7"}
l=[349, 502, 829, 185, 420]
g=[182, 328, 392, 101, 173]

def calc_gc(seqlength, gcounts):
  gc=(gcounts/seqlength)*100
  return(gc)

gc=[]
for i in range(0,5):
  gc.append(calc_gc(l[i], g[i]))
print(gc)
```

