#!/bin/bash
pdflatex arbeit
for i in `ls *.aux`; do bibtex $i; done
pdflatex arbeit
pdflatex arbeit
rm *.aux *.bbl *.blg *.log
