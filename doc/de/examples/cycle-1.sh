#! /bin/sh

# Automatically generated by mksamp-1.sed from cycle-1.in.

echo "$ gcal %20000420 -Hno -f/dev/null -xdt -g::: \\"
echo ">      --here='0*d1#999_%ot+00+000_:_%oa+5158+00738,120' \\"
echo ">      --cycle-end=12:05 --time=12:00"
LANGUAGE=de GCAL= GCALPATH=. ../../../src/gcal %20000420 -Hno -f/dev/null -xdt -g::: --here='0*d1#999_%ot+00+000_:_%oa+5158+00738,120' --cycle-end=12:05 --time=12: $*

exit 0
