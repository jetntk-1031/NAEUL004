/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701166790_4_
#define _BUR_1701166790_4_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned char usiScanCntr;
_BUR_LOCAL plcbit bRstConnection;
_BUR_LOCAL signed short iEndCodePos;
_BUR_LOCAL plcstring sEndCode[3];
_BUR_LOCAL signed char siEndCode2;
_BUR_LOCAL signed char siEndCode1;
_BUR_LOCAL signed short iEndCodeLen;
_BUR_LOCAL signed short iStartCodePos;
_BUR_LOCAL plcstring sStartCode[3];
_BUR_LOCAL signed char siStartCode2;
_BUR_LOCAL signed char siStartCode1;
_BUR_LOCAL signed short iStartCodeLen;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL unsigned long udiTCPIdent1;
_BUR_LOCAL unsigned long udiTCPIdent;
_BUR_LOCAL struct fbTCPClose fbClose;
_BUR_LOCAL struct fbTCPRcv fbRcv;
_BUR_LOCAL struct fbTCPSnd fbSnd;
_BUR_LOCAL struct fbTCPClntConnect fbClntConnect;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL signed long diEndCode2;
_BUR_LOCAL signed long diEndCode1;
_BUR_LOCAL signed long diStartCode2;
_BUR_LOCAL signed long diStartCode1;
_BUR_LOCAL plcstring sMsgWr[81];
_BUR_LOCAL plctime tConnectTO;
_BUR_LOCAL unsigned long udiAliveIdleTmInSec;
_BUR_LOCAL unsigned long udiRcvBffrSize;
_BUR_LOCAL unsigned long udiSndBffrSize;
_BUR_LOCAL unsigned short uiSvrPort;
_BUR_LOCAL unsigned short uiClntPort;
_BUR_LOCAL plcstring sSvrIP[16];
_BUR_LOCAL plcstring sClntIP[16];
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL unsigned short uiMsgRdLen;
_BUR_LOCAL plcbit bMsgRdValid;
_BUR_LOCAL plcstring sMsgRd[81];
_BUR_LOCAL plcstring sFullMsgRd[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eTCPAction1 eStat;
_BUR_LOCAL enum eTCPAction1 eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPTop/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/NtTCP.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701166790_4_ */

