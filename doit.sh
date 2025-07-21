#!/bin/bash
# doit.sh
# Script to automate creation of PDFs with BasicTeX.
# I recommend adding an alias in ~/.bash_aliases.sh to type a command.
# For example, `echo 'alias doit="./doit.sh"' >> bash_aliases.sh`

# If we actually want to clean, then remove the PDF as well.
if [ "$1" =  "clean" ]; then
    make clean-all
else
    make
    make open
    make clean # Else just remove the aux and log outputs.
fi
