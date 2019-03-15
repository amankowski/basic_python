#!/usr/bin/env python

import argparse


def run(args):
  fastafile=open(args.fasta, 'r')
  samples=open(args.samples, 'r')
  fout=open(args.output, 'w')
  
  fasta=fastafile.readlines()
  names=samples.readlines()

  for line in fasta:
    if line[0] == '>':
      for i in names:
        if i.split(',')[0] in line:
          fout.write(">" + i.split(',')[1])
    else:
     fout.write(line)
  fout.close()

def main():
  parser=argparse.ArgumentParser(description="change sanger seq fasta headers by sample number")
  parser.add_argument("--fasta", help="fasta input file", dest="fasta", type=str, required=True)
  parser.add_argument("--samples", help="tab separated file with sample number and description", dest="samples", type=str, required=True)
  parser.add_argument("--output", help="new fasta file with changed headers", dest="output", type=str, required=True)
  parser.set_defaults(func=run)
  args=parser.parse_args()
  args.func(args)

if __name__=="__main__":
  main()
