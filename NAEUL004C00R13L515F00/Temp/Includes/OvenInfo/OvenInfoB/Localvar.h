/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136545_233_
#define _BUR_1701136545_233_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL enum eOvenInfoAction eStatOld;
_BUR_LOCAL struct fbOvenInfoExtdd fbExtdd;
_BUR_LOCAL struct fbOvenInfoStd fbStd;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL signed long diSetBrdInOven;
_BUR_LOCAL plcbit bCntDown;
_BUR_LOCAL plcbit bCntUp;
_BUR_LOCAL signed long diBrdPerSlt;
_BUR_LOCAL signed long diAddBffr;
_BUR_LOCAL signed long diMinBffr;
_BUR_LOCAL signed long diBffrMtySlt;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bBGRun;
_BUR_LOCAL plcbit bDisExtdd;
_BUR_LOCAL plcbit bEnExtdd;
_BUR_LOCAL plcbit bPrepExtdd;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL_RETAIN signed long diBrdInOven;
_BUR_LOCAL plcbit bOvenAllow;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eOvenInfoAction eStat;
_BUR_LOCAL enum eOvenInfoAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/OvenInfo/OvenInfoB/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOvenInfo/NtOvenInfo.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136545_233_ */

