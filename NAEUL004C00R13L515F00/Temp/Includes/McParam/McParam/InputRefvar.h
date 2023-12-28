/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726038_220_
#define _BUR_1703726038_220_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bUIUpdtHMIIPAddr;
_BUR_LOCAL plcbit *p_bAlarmWarning;
_BUR_LOCAL plcstring (*p_sUISetHMIIPAddr)[16];
_BUR_LOCAL plcstring (*p_sHWInfoIPAddr)[16];
_BUR_LOCAL enum eAutoRcpPreceded *p_eNtParamAutoRcpPrecededBy;
_BUR_LOCAL enum eCustomer *p_eNtParamCustomerReq;
_BUR_LOCAL plcbit *p_bNtParamProjLaneBPrep;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL struct tyHermesConfiguration *p_tyHermesConfigurationWr;
_BUR_LOCAL plcbit *p_bSvyHermesWriteConfig;
_BUR_LOCAL plcbit *p_bRmtHermesWriteConfig;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL struct tyMcParam *p_tyMcParamWr;
_BUR_LOCAL plcstring (*p_sFileName)[81];
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eMcParamAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/McParam/McParam/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726038_220_ */

