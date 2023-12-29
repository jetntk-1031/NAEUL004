/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_11_
#define _BUR_1703817512_11_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eLibVerAction
{	LibVerActIdle,
	LibVerActCreateDir,
	LibVerActWrite,
	LibVerActRead,
	LibVerActReadChk
} eLibVerAction;

typedef struct tyLibVerIn1
{	enum eLibVerAction eAct;
	unsigned long udiRstErr;
	struct tyLibrariesVer a_tyInfoIn[101];
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
} tyLibVerIn1;

typedef struct tyLibVerOut1
{	enum eLibVerAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	struct tyLibrariesVer a_tyInfoOut[101];
	plcbit a_bVerMismatch[101];
} tyLibVerOut1;

typedef struct tyLibVer
{	struct tyLibVerIn1 In;
	struct tyLibVerOut1 Out;
} tyLibVer;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/LibVer/LibVer.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtVersion/Constant.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_11_ */

