#  $Id: makefile.sas 0.17 2000/06/14 00:01:07 tom Exp $
###############################################################################
#
#  Amiga SAS-C 6.3
#  Makefile to create the extended `gcal' program.
#
#  Copyright (c) 1994, 95, 1996, 2000  Thomas Esken      <esken@gmx.net>
#                                      Im Hagenfeld 84
#                                      D-48147 M"unster
#                                      GERMANY
#
###############################################################################
#
#
#
DEF = DEF=#
#
#  BEGIN: General program modification symbols,
#           which may be changed by the user !!
#



#  Write the line `USE_EASC = $(DEF)USE_EASC=1'
#    in case you want to use the 8-bit extended IBM-ASCII character set
#    (IBM PC or ISO 8859-1 = ISO Latin-1 or Nextstep character sets).
#
#  Write the line `USE_EASC = $(DEF)USE_EASC=0'
#    in case you want to use the 7-bit ISO-ASCII/EBCDIC character set.
#
#USE_EASC = $(DEF)USE_EASC=1#



#  Write the line `USE_DE = $(DEF)USE_DE=1'
#    in case you want to use German message texts, holidays
#    and calendar layout.
#
#  Write the line `USE_DE = $(DEF)USE_DE=0'
#    in case you want to use English message texts, holidays
#    and calendar layout.
#
#USE_DE = $(DEF)USE_DE=1#



#  Write the line `USE_HLS = $(DEF)USE_HLS=1'
#    to run this program using control sequences for highlighting the current
#    day/holidays/text (MS/PC-DOS will use the [n]ansi.sys driver for emitting
#    ANSI escape highlighting sequences; OS2/Linux/UN*X-like systems will use
#    Termcap for emitting the terminal specific highlighting sequences.
#    If this fails, default (generic) ANSI highlighting sequences will be used).
#
#  Write the line `USE_HLS = $(DEF)USE_HLS=0'
#    to run this program without highlighting...
#
USE_HLS = $(DEF)USE_HLS=1#



#  Write the line `USE_PAGER = $(DEF)USE_PAGER=1'
#    in case you want to use a simple, built-in pager.
#
#  Write the line `USE_PAGER = $(DEF)USE_PAGER=0'
#    in case you don't like this feature...
#
USE_PAGER = $(DEF)USE_PAGER=1#



#  Write the line `USE_RC = $(DEF)USE_RC=1'
#    for using the special month dates functions (print daily / weekly
#    monthly / yearly / eternal / special fixed dates as stated in
#    resource files).
#
#  Write the line `USE_RC = $(DEF)USE_RC=0'
#    if you don't like this feature...
#
USE_RC = $(DEF)USE_RC=1#



#  Specify, which directories shall be used for the resource files:
#
#  (Define the empty string \"\" if you don't need data directories,
#  so data files are searched in the actual and $HOME directory only)
#
#
#  Name of user (private access) specific data directory
#    (relative to $HOME directory)
#
GCAL_USR_DATADIR = \"share/gcal\"
#
#  Name of system (common access) specific data directory
#    (static to root directory)
#
GCAL_SYS_DATADIR = \"/usr/local/share/gcal\"



#
#
#
DEFINES = $(USE_EASC) $(USE_DE) $(USE_HLS) $(USE_PAGER) $(USE_RC)
DEFINES2 = $(DEF)GCAL_USR_DATADIR=$(GCAL_USR_DATADIR) \
  $(DEF)GCAL_SYS_DATADIR=$(GCAL_SYS_DATADIR)



#
#  END: general program modification symbols,
#         which may be changed by the user !!
#



#
CC = sc $(DEF)AMIGA
CFLAGS = DATA=FAR NOSTKCHK PARM=R IDIR=
OPTFLAGS = OPT OPTGO OPTPEEP OPTCOMP=3 OPTDEP=3 OPTRDEP=3
#
LD = slink
LDFLAGS = FROM LIB:c.o
#
LIBS = LIB LIB:scnb.lib
#
X =
O = .o
C = .c
H = .h

OBJ1 = gcal$(O) file-io$(O) hd-astro$(O) hd-data$(O) hd-data1$(O) \
  hd-data2$(O) hd-data3$(O) hd-data4$(O) hd-data5$(O) hd-use$(O) help$(O) \
  print$(O) rc-astro$(O) rc-check$(O) rc-insert$(O) rc-use$(O) rc-utils$(O) \
  regexp$(O) tty$(O) utils$(O)
OBJ2 = tcal$(O)
OBJ3 = txt2gcal$(O)
OBJ4 = gcal2txt$(O)



$(C)$(O):
	$(CC) $(DEFINES) $(DEFINES2) $(CFLAGS) $(OPTFLAGS) $<



all : gcal$(X) tcal$(X) txt2gcal$(X) gcal2txt$(X)

gcal$(X) : $(OBJ1)
	$(LD) $(OBJ1) TO gcal$(X) $(LIBS) $(LDFLAGS)

tcal$(X) : $(OBJ2)
	$(LD) $(OBJ2) TO tcal$(X) $(LIBS) $(LDFLAGS)

txt2gcal$(X) : $(OBJ3)
	$(LD) $(OBJ3) TO txt2gcal$(X) $(LIBS) $(LDFLAGS)

gcal2txt$(X) : $(OBJ4)
	$(LD) $(OBJ4) TO gcal2txt$(X) $(LIBS) $(LDFLAGS)
