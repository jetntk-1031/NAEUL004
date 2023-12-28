/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_328_
#define _BUR_1703660021_328_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDis;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL plcbit *p_bTorqueSig;
_BUR_LOCAL plcbit *p_bAlarmSig;
_BUR_LOCAL plcbit *p_bRetSafetySen;
_BUR_LOCAL plcbit *p_bExtSafetySen;
_BUR_LOCAL plcbit *p_bRetSlowSen;
_BUR_LOCAL plcbit *p_bExtSlowSen;
_BUR_LOCAL plcbit *p_bRetSen;
_BUR_LOCAL plcbit *p_bExtSen;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL signed long *p_diStartTorque;
_BUR_LOCAL signed long *p_diRetTorque;
_BUR_LOCAL signed long *p_diExtTorque;
_BUR_LOCAL signed long *p_diRetNomSpd;
_BUR_LOCAL signed long *p_diExtNomSpd;
_BUR_LOCAL signed long *p_diRetSlowSpd;
_BUR_LOCAL signed long *p_diExtSlowSpd;
_BUR_LOCAL plctime *p_tRetTO;
_BUR_LOCAL plctime *p_tExtTO;
_BUR_LOCAL plctime *p_tMtrBrkOffDlyTm;
_BUR_LOCAL plctime *p_tAlmTrigTm;
_BUR_LOCAL plctime *p_tAlmRstTm;
_BUR_LOCAL plcbit *p_bDir;
_BUR_LOCAL plcbit *p_bManual;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eMtrPshrAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_328_ */

