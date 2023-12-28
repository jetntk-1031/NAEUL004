/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_331_
#define _BUR_1703660021_331_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bDBA2;
_BUR_LOCAL plcbit *p_bDBA;
_BUR_LOCAL plcbit *p_bUSB2;
_BUR_LOCAL plcbit *p_bUSB;
_BUR_LOCAL struct tyTagDTMagToAGV *p_tyDTMagToAGV;
_BUR_LOCAL unsigned long *p_udiFileKeepDay;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL unsigned char *p_usiProjMag;
_BUR_LOCAL plcbit *p_bOpsRun;
_BUR_LOCAL plctime *p_tConnTimeOut;
_BUR_LOCAL unsigned long *p_udiAliveIdleTimeInSec;
_BUR_LOCAL unsigned long *p_udiRcvBffrSize;
_BUR_LOCAL unsigned long *p_udiSndBffrSize;
_BUR_LOCAL plcbit *p_bReconnect;
_BUR_LOCAL unsigned short *p_uiAllwClntPort;
_BUR_LOCAL plcstring (*p_sAllwClntIP)[16];
_BUR_LOCAL plcbit *p_bFltrPort;
_BUR_LOCAL plcbit *p_bFltrIP;
_BUR_LOCAL enum eTCPClientServer *p_eTCPModel;
_BUR_LOCAL plcdt *p_dtCurrDT;
_BUR_LOCAL struct DTStructure *p_tyDTStructure;
_BUR_LOCAL plcstring (*p_sIPAddr)[16];
_BUR_LOCAL plcstring (*p_sMsgSnd)[65536];
_BUR_LOCAL unsigned short *p_uiClientPort;
_BUR_LOCAL unsigned short *p_uiSvrPort;
_BUR_LOCAL plcstring (*p_sSvrIP)[16];
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eTCPAction *p_eAct;
_BUR_LOCAL plcbit *p_bManual;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_331_ */

