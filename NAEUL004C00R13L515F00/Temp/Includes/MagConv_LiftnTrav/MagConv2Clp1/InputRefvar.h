/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680537_325_
#define _BUR_1704680537_325_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bWidthChkInterrupt;
_BUR_LOCAL plcbit *p_bWidthChkSenPrep;
_BUR_LOCAL plcbit *p_bWidthChkSen;
_BUR_LOCAL plcbit *p_bRmtClprUnclampSafetySen;
_BUR_LOCAL plcbit *p_bRmtClprClampSafetySen;
_BUR_LOCAL plcbit *p_bFixClprUnclampSafetySen;
_BUR_LOCAL plcbit *p_bFixClprClampSafetySen;
_BUR_LOCAL plcbit *p_bRmtClprUnclampSen;
_BUR_LOCAL plcbit *p_bRmtClprClampSen;
_BUR_LOCAL plcbit *p_bFixClprUnclampSen;
_BUR_LOCAL plcbit *p_bFixClprClampSen;
_BUR_LOCAL plcbit *p_bRightSen;
_BUR_LOCAL plcbit *p_bLeftSen;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plctime *p_tClprUnclampTO;
_BUR_LOCAL plctime *p_tClprClampTO;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL enum eConvDir *p_eDirection;
_BUR_LOCAL signed long *p_diTxOutTimeOut;
_BUR_LOCAL signed long *p_diTxInTimeOut;
_BUR_LOCAL plctime *p_tMtrOffDlyTm;
_BUR_LOCAL signed long *p_diInitTm;
_BUR_LOCAL plcbit *p_bOnDirMod;
_BUR_LOCAL plcbit *p_bManual;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eMagConv2ClpAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp1/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680537_325_ */

