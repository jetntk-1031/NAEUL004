/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_290_
#define _BUR_1703660021_290_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bExitSig;
_BUR_LOCAL plcbit *p_bEnterSig;
_BUR_LOCAL plcbit *p_bLiftTopPos;
_BUR_LOCAL plcbit *p_bLiftBtmPos;
_BUR_LOCAL plcbit *p_bMagPresentSen;
_BUR_LOCAL plcbit *p_bTopMagConvEndSen;
_BUR_LOCAL plcbit *p_bBtmMagConvEndSen;
_BUR_LOCAL plcbit *p_bBtmMagConvMidSen;
_BUR_LOCAL plcbit *p_bTopMagConvMidSen;
_BUR_LOCAL plcbit *p_bTopMagConvZ1Sen;
_BUR_LOCAL plcbit *p_bBtmMagConvZ1Sen;
_BUR_LOCAL enum eFBStatus *p_eLiftMagConvStatus;
_BUR_LOCAL struct eMagConvAction *p_eLiftMagConvStat;
_BUR_LOCAL enum eFBStatus *p_eOutMagConvStatus;
_BUR_LOCAL enum eFBStatus *p_eInMagConvStatus;
_BUR_LOCAL struct eMagConvAction *p_eInMagConvStat;
_BUR_LOCAL struct eMagConvAction *p_eLiftMagConvAct;
_BUR_LOCAL plcbit *p_bStprTopExitStprExtended;
_BUR_LOCAL enum eFBStatus *p_eStprTopExitStatus;
_BUR_LOCAL enum ePneuAction *p_eStprTopExitStat;
_BUR_LOCAL enum eFBStatus *p_eStprBtmExitStatus;
_BUR_LOCAL enum ePneuAction *p_eStprBtmExitStat;
_BUR_LOCAL plcbit *p_bStprTopMidStprExtended;
_BUR_LOCAL enum eFBStatus *p_eStprTopMidStatus;
_BUR_LOCAL enum ePneuAction *p_eStprTopMidStat;
_BUR_LOCAL enum eFBStatus *p_eStprBtmMidStatus;
_BUR_LOCAL enum ePneuAction *p_eStprBtmMidStat;
_BUR_LOCAL enum eFBStatus *p_eStprTopEntStatus;
_BUR_LOCAL enum ePneuAction *p_eStprTopEntStat;
_BUR_LOCAL plcbit *p_bBtmExitMnl;
_BUR_LOCAL plcbit *p_bBtmExitFromMagConv;
_BUR_LOCAL plcbit *p_bTopEntFromMagConv;
_BUR_LOCAL plcbit *p_bTopExitFromLift;
_BUR_LOCAL plcbit *p_bTopEntToLift;
_BUR_LOCAL plcbit *p_bBtmExitFromLift;
_BUR_LOCAL plcbit *p_bBtmEntToLift;
_BUR_LOCAL plcbit *p_bStep;
_BUR_LOCAL plcbit *p_bStop;
_BUR_LOCAL plcbit *p_bRun;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL unsigned long *p_udiRstErr;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr2/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_290_ */

