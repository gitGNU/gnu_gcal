#! /bin/sh

# Automatically generated by mksamp-1.sed from tvar-1a.in.

echo "$ gcal %19960101 -H no -x -r '\$A=FROBOZZ:\$x=' -f ./tvar-1.rc"
LANGUAGE=en GCAL= GCALPATH=. ../../../src/gcal %19960101 -H no -x -r '$A=FROBOZZ:$x=' -f ./tvar-1.rc $*

exit 0
