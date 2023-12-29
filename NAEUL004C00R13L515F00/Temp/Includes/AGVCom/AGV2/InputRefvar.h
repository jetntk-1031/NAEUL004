/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837635_427_
#define _BUR_1703837635_427_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bSOTAvailable;
_BUR_LOCAL plcbit *p_bSOTRdy;
_BUR_LOCAL plcbit *p_bSOTErr;
_BUR_LOCAL plcbit *p_bSOTRcvOk;
_BUR_LOCAL plcbit *p_bAGVInPosSen2;
_BUR_LOCAL plcbit *p_bAGVInPosSen1;
_BUR_LOCAL plcbit *p_bNtParamAGVInPosSenPrep;
_BUR_LOCAL plcbit *p_bMagConvMtrOut;
_BUR_LOCAL plcbit *p_bMagConvMtrIn;
_BUR_LOCAL plcbit *p_bMagConvRgtSen;
_BUR_LOCAL plcbit *p_bMagConvLftSen;
_BUR_LOCAL plcbit *p_bBufferMagPresent;
_BUR_LOCAL struct tyTagAGVToDTMag *p_tyAGVToDTMag;
_BUR_LOCAL enum eConvDir *p_eDirection;
_BUR_LOCAL signed long *p_diTxOutTimeOut;
_BUR_LOCAL signed long *p_diTxInTimeOut;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eAGVMagAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV2/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837635_427_ */

