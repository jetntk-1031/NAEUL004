/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136546_440_
#define _BUR_1701136546_440_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL unsigned char testpos;
_BUR_LOCAL unsigned char teststep;
_BUR_LOCAL plctime tTesttime;
_BUR_LOCAL plcdt TtestPrevTim;
_BUR_LOCAL plcstring sSltnumber[81];
_BUR_LOCAL plctime tPrevTim;
_BUR_LOCAL plctime tAccumulateTimer;
_BUR_LOCAL plcdword dwNAColor;
_BUR_LOCAL plcdword dwGdColor;
_BUR_LOCAL plctime dtDumyTim;
_BUR_LOCAL plctime dtCycleTim;
_BUR_LOCAL struct tyBffr tyBuffer;
_BUR_LOCAL struct tyDispBffrCycTm a_tyDispCycTmBffr[3];
_BUR_LOCAL signed long dicntr1;
_BUR_LOCAL signed long diDispIdx;
_BUR_LOCAL signed long diSlotCount;
_BUR_LOCAL signed long diCnt;
_BUR_LOCAL plcstring sCurrSlotTransition[81];
_BUR_LOCAL struct tyDispBffrCycTm tyDispCycTmBffr;
_BUR_LOCAL signed long diBffrTtlSlt;
_BUR_LOCAL signed long diSltCap;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu2/Local.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136546_440_ */

