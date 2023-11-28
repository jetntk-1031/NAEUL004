/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701140017_2_
#define _BUR_1701140017_2_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL signed long *p_diEndCode2;
_BUR_LOCAL signed long *p_diEndCode1;
_BUR_LOCAL signed long *p_diStartCode2;
_BUR_LOCAL signed long *p_diStartCode1;
_BUR_LOCAL plcstring (*p_sMsgWr)[81];
_BUR_LOCAL plctime *p_tConnectTO;
_BUR_LOCAL unsigned long *p_udiAliveIdleTmInSec;
_BUR_LOCAL unsigned long *p_udiRcvBffrSize;
_BUR_LOCAL unsigned long *p_udiSndBffrSize;
_BUR_LOCAL unsigned short *p_uiSvrPort;
_BUR_LOCAL unsigned short *p_uiClntPort;
_BUR_LOCAL plcstring (*p_sSvrIP)[16];
_BUR_LOCAL plcstring (*p_sClntIP)[16];
_BUR_LOCAL plcbit *p_bRun;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eTCPAction1 *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPTop/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701140017_2_ */

