#!/usr/bin/env python

import sys

fastafile=sys.argv[1]
table=sys.argv[2]
fout=sys.argv[3]

with open(fastafile, 'r') as f:
  fasta=f.readlines()

with open(table, 'r') as t:
  headers=t.readlines()

with open(fout, 'w') as o:
  for line in fasta:
    if line[0] == '>':
      for i in headers:
        if i.split(',')[0] in line:
          o.write(">" + i.split(',')[1])
    else:
      o.write(line)
o.close()
