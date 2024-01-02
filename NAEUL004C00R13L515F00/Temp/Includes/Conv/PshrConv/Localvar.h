/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704159600_1_
#define _BUR_1704159600_1_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbRightSenTm;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbRejectDownChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbRejectUpChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbRotRemoteChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbRotHomeChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbPullerRetChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbPullerExtChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbPshrRetChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbPshrExtChk;
_BUR_LOCAL struct fbConvMtrOff fbStop;
_BUR_LOCAL struct fbConvLongBrd fbLongBrd;
_BUR_LOCAL struct fbConvSenToSenOff1 fbExit1;
_BUR_LOCAL struct fbConvSenToSenOff fbExit;
_BUR_LOCAL struct fbConvSenToSenTm fbPreExit;
_BUR_LOCAL struct fbConvSenToSenTm1 fbRev;
_BUR_LOCAL struct fbConvSenToSen fbEnt;
_BUR_LOCAL struct fbConvSenToSenTm fbInit;
_BUR_LOCAL enum eConvAction eStatOld;
_BUR_LOCAL struct TON fbBoardOffTm;
_BUR_LOCAL struct TON fbWaitTm;
_BUR_LOCAL plcbit bInletOff;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[61][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL struct tyPshrConv tylocalPshrConv;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Conv/PshrConv/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/NtConv.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704159600_1_ */

