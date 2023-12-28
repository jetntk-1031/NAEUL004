/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_143_
#define _BUR_1703660020_143_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL struct tyMcParam tyMcParamCurr;
_BUR_LOCAL struct tyNtParam tyNtParamCurr;
_BUR_LOCAL plcbit bOverwriteEthMode;
_BUR_LOCAL plcbit bOverwriteSubnet;
_BUR_LOCAL plcbit bOverwriteIP;
_BUR_LOCAL plcbit bChgConfigDone;
_BUR_LOCAL plcbit bTempAddrFillDone;
_BUR_LOCAL plcbit bMismatchOverWriteConfig;
_BUR_LOCAL plcstring a_sStepText[13][81];
_BUR_LOCAL struct tyUIAllAlm tyUIAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL enum eStartupAction eAct;
_BUR_LOCAL struct tyStartUp tylocalStartup;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup/Local.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_143_ */

