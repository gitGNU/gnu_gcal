#ifndef __HD_ASTRO_H
#  define __HD_ASTRO_H
/*
*  hd-astro.h:  Astronomical and support functions for the eternal holiday list header file.
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
*  $Id: hd-astro.h 3.00 2000/04/05 03:00:00 tom Exp $
*/



/*
*  Equinox and solstice MODE constants for northern and southern Hemisphere.
*/
#  define  NH_VE  0.0
#  define  SH_AE  NH_VE
#  define  NH_SS  90.0
#  define  SH_WS  NH_SS
#  define  NH_AE  180.0
#  define  SH_VE  NH_AE
#  define  NH_WS  270.0
#  define  SH_SS  NH_WS



/*
*  Solar and lunar eclipse type constants.
*/
#define  ECLIPSE_PENUMBRAL  100000000.0
#define  ECLIPSE_PARTIAL    200000000.0
#define  ECLIPSE_ANNULAR    300000000.0
#define  ECLIPSE_TOTAL      400000000.0



/*
*  Moon phase constants.
*/
#define  MPHASE_NEW  0.00
#define  MPHASE_FQT  0.25
#define  MPHASE_FUL  0.50
#define  MPHASE_LQT  0.75



/*
*  GLOBAL functions prototypes.
*/
__BEGIN_DECLARATIONS
/*
************************************************** Defined in `hd_astro.c'.
*/
EXPORT double
equinox_solstice __P_((const double  longitude,
                             int    *day,
                             int    *month,
                             int    *year,
                             int     hour,
                             int     min));
EXPORT double
delta_t __P_((const int day,
              const int month,
              const int year,
              const int hour,
              const int min));
EXPORT double
moonphase __P_((const double  phase_selector,
                const Bool    find_eclipse,
                      double *eclipse_type,
                      Ulint  *lunation,
                      int    *day,
                      int    *month,
                      int    *year,
                      int     hour,
                      int     min));
EXPORT double
next_sun_longitude __P_((      double *longitude,
                         const double  step,
                         const double  mjd,
                               int    *day,
                               int    *month,
                               int    *year,
                         const int     hour,
                         const int     min));
EXPORT double
sun_longitude __P_((const double  longitude,
                          int    *day,
                          int    *month,
                          int    *year,
                          int     hour,
                          int     min,
                    const Bool    next_mode));
EXPORT void
val2hours __P_((double  val,
                int    *hour,
                int    *min,
                double *sec));
EXPORT void
val2degrees __P_((double  val,
                  int    *degree,
                  int    *min,
                  double *sec));
EXPORT double
my_cot __P_((double x));
EXPORT double
my_acot __P_((double x));
EXPORT double
my_atan2 __P_((double y,
               double x));
#  if !HAVE_LIBM
EXPORT double
my_floor __P_((double x));
EXPORT double
my_ceil __P_((double x));
EXPORT double
my_sqrt __P_((double x));
EXPORT double
my_log __P_((double x));
EXPORT double
my_log10 __P_((double x));
EXPORT double
my_sin __P_((double x));
EXPORT double
my_cos __P_((double x));
EXPORT double
my_tan __P_((double x));
EXPORT double
my_cot __P_((double x));
EXPORT double
my_asin __P_((double x));
EXPORT double
my_acos __P_((double x));
EXPORT double
my_atan __P_((double x));
EXPORT double
my_acot __P_((double x));
#  endif /* !HAVE_LIBM */
__END_DECLARATIONS
#endif /* __HD_ASTRO_H */
