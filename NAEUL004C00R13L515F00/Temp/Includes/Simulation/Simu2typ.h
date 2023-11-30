/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225409_157_
#define _BUR_1701225409_157_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tyDispBffrCycTmDat
{	plcstring sSlttoSltIdx[81];
	plcstring sCycleTm[81];
	plcdword dwColor;
} tyDispBffrCycTmDat;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyDispBffrCycTm
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrCycTmDat a_tyDispBffrDat[120];
} tyDispBffrCycTm;
#else
/* Data type tyDispBffrCycTm not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu2.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225409_157_ */

