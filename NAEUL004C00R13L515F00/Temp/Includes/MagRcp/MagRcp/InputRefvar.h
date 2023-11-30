/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_217_
#define _BUR_1701225410_217_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL enum eMagRcpAction *p_eLinkUIMagRcpAct;
_BUR_LOCAL plcbit *p_bLinkMcParamLCSManageRcpEn;
_BUR_LOCAL plcbit *p_bLinkNtParamLCSManageRcpPrep;
_BUR_LOCAL enum eMagRcpAction *p_eLinkLCSMngRcpMagRcpAct;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcstring (*p_sSingleFileName)[81];
_BUR_LOCAL plcstring (*p_sListFileName)[81];
_BUR_LOCAL struct tyMagRcpParam *p_tyCurrRcpWr;
_BUR_LOCAL struct tyMagRcpParam *p_tyInfoIn;
_BUR_LOCAL plcstring (*p_sSearch)[31];
_BUR_LOCAL plcdt *p_dtCurrDT;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL unsigned long *p_udiMax;
_BUR_LOCAL enum eMagRcpAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagRcp/MagRcp/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_217_ */

