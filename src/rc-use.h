#ifndef __RC_USE_H
#  define __RC_USE_H
/*
*  rc-use.h:  Central function, manages the resource file handling and displays the results file header.
*
*
*  Copyright (c) 1994-1997, 2000 Thomas Esken
*
*  This software doesn't claim completeness, correctness or usability.
*  On principle I will not be liable for ANY damages or losses (implicit
*  or explicit), which result from using or handling my software.
*  If you use this software, you agree without any exception to this
*  agreement, which binds you LEGALLY !!
*
*  This program is free software; you can redistribute it and/or modify
*  it under the terms of the `GNU General Public License' as published by
*  the `Free Software Foundation'; either version 2, or (at your option)
*  any later version.
*
*  You should have received a copy of the `GNU General Public License'
*  along with this program; if not, write to the:
*
*    Free Software Foundation, Inc.
*    59 Temple Place - Suite 330
*    Boston, MA 02111-1307,  USA
*/



/*
*  $Id: rc-use.h 3.00 2000/03/04 03:00:00 tom Exp $
*/



/*
*  The REGEX stuff.
*/
#  if HAVE_POSIX_REGCOMP
#    ifdef REG_EXTENDED
#      define REGCOMP_FLAG  REG_EXTENDED
#    else
#      define REGCOMP_FLAG  0
#    endif
#  endif



/*
*  GLOBAL functions prototypes.
*/
__BEGIN_DECLARATIONS
/*
*  The REGEX stuff.
*/
#  if HAVE_RE_COMP
IMPORT char *re_comp();
#  endif
#  if HAVE_REGCMP
IMPORT char *regcmp();
#  endif
/*
************************************************** Defined in `rc-use.c'.
*/
EXPORT void
rc_use __P_((void));
__END_DECLARATIONS
#endif /* __RC_USE_H */
