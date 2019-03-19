#!/usr/bin/env python

import sys
import csv

fastafile=sys.argv[1]
name_table=sys.argv[2]
fout=sys.argv[3]

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