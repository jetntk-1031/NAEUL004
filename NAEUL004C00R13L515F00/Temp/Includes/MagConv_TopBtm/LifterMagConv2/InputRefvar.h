/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_370_
#define _BUR_1701136131_370_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bMagPresentSen;
_BUR_LOCAL plcbit *p_bClprUnclampSafetySen;
_BUR_LOCAL plcbit *p_bClprClampSafetySen;
_BUR_LOCAL plcbit *p_bClprUnclampSen;
_BUR_LOCAL plcbit *p_bClprClampSen;
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
_BUR_LOCAL enum eMagConvAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/LifterMagConv2/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_370_ */

