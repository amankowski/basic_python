#!/usr/bin/env python

import argparse
import csv

def main(fasta, samples, output):
    info = f"""
input fasta: {fasta}
input samples csv: {samples}
output fasta: {output}
"""
    print(info)
    names = get_new_names(samples)
    write_new_fasta(fasta, output, names)
    print('\nall done!')


def parse_arguments():
    description = "Change fasta headers by sample name. "
    parser = argparse.ArgumentParser(description=description)
    parser.add_argument("-f", "--fasta",
                        help="fasta input file, default='fasta.fasta'",
                        default="fasta.fasta")
    parser.add_argument("-s", "--samples",
                        help="comma separated file original and new header name, default='sample_names.csv'",
                        default="sample_names.csv")
    parser.add_argument("-o", "--output",
                        help="new fasta file with changed headers, default='new.fasta'",
                        default="new.fasta")
    args = parser.parse_args()
    return args


def get_new_names(samples):
    """make a dictionary with the old and new names of samples located in the
    sample csv"""
    with open(samples, 'r') as file:
      reader = csv.reader(file)
      names = {}
      for row in reader:
          old_name = row[0].strip()  # get rid of trailing spaces
          new_name = row[1].strip()
          names[old_name] = new_name
    return names


def write_new_fasta(fasta, output, names):
    """write the lines of the fasta file to a new file, where the headers
    that are present in the names dictionary are renamed"""
    with open(fasta, 'r') as fin, open(output, 'w') as fout:
      for line in fin:
        if line[0] == '>':
            header_name = line[1:].strip()  # remove '>' and trailing spaces
            if header_name in names:
                fout.write(">" + names[header_name] + '\n')
                print(f"{header_name} was renamed to {names[header_name]}")
            else:
                fout.write(line)
        else:
          fout.write(line)


if __name__=="__main__":
    args = parse_arguments()
    main(args.fasta, args.samples, args.output)