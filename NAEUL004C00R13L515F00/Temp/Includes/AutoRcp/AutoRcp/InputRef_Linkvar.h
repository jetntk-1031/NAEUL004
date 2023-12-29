/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837636_461_
#define _BUR_1703837636_461_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyProdRcpParam *p_tyProdRcpCurrRcpWr;
_BUR_LOCAL enum eFBStatus *p_eProdRcpStatus;
_BUR_LOCAL enum eProdRcpAction *p_eProdRcpStat;
_BUR_LOCAL enum eProdRcpAction *p_eLinkUIProdRcpAct;
_BUR_LOCAL plcbit bOpsInitDone;
_BUR_LOCAL plcbit *p_bBuffer3MagRemoved;
_BUR_LOCAL plcbit *p_bBuffer2MagRemoved;
_BUR_LOCAL plcbit *p_bBuffer1MagRemoved;
_BUR_LOCAL plcbit *p_bBuffer3MagPresent;
_BUR_LOCAL plcbit *p_bBuffer2MagPresent;
_BUR_LOCAL plcbit *p_bBuffer1MagPresent;
_BUR_LOCAL signed long *p_diMagRcpCurrRcpTtlSlt;
_BUR_LOCAL signed long *p_diMagRcpCurrRcpSltToSlt;
_BUR_LOCAL struct tyHermesBoardForecast *p_tyHermesBFRcv;
_BUR_LOCAL struct tyHermesBoardAvailable *p_tyHermesBARcv;
_BUR_LOCAL plcbit *p_bHermesABFAccepted;
_BUR_LOCAL plcbit *p_bHermesBBFAccepted;
_BUR_LOCAL plcbit *p_bHermesABAAccepted;
_BUR_LOCAL plcbit *p_bHermesBBAAccepted;
_BUR_LOCAL plcbit *p_bHermesBFDataAccepted;
_BUR_LOCAL plcbit *p_bHermesBADataAccepted;
_BUR_LOCAL signed long *p_diRequestedGapToMaxSlt;
_BUR_LOCAL signed long *p_diRequestedMinSlt;
_BUR_LOCAL plcbit *p_bZ2AccNewRcpCondition;
_BUR_LOCAL plcbit *p_bZ1AccNewRcpCondition;
_BUR_LOCAL unsigned long *p_udiOpsMagConvUL3MagAllwGo;
_BUR_LOCAL unsigned long *p_udiOpsMagConvUL2MagAllwGo;
_BUR_LOCAL unsigned long *p_udiOpsMagConvUL1MagAllwGo;
_BUR_LOCAL plcbit *p_bMagAW3WidthDiff;
_BUR_LOCAL plcbit *p_bMagAW2WidthDiff;
_BUR_LOCAL plcbit *p_bMagAW1WidthDiff;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer3BffrStat;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer2BffrStat;
_BUR_LOCAL struct tyBffrStat *p_tyBuffer1BffrStat;
_BUR_LOCAL plcbit *p_bLinkOpsMagConvUL3InitDone;
_BUR_LOCAL plcbit *p_bLinkOpsMagConvUL2InitDone;
_BUR_LOCAL plcbit *p_bLinkOpsMagConvUL1InitDone;
_BUR_LOCAL plcbit *p_bLinkOpsMagUL3InitDone;
_BUR_LOCAL plcbit *p_bLinkOpsMagUL2InitDone;
_BUR_LOCAL plcbit *p_bLinkOpsMagUL1InitDone;
_BUR_LOCAL plcbit *p_bLinkBffr3MagRemoved;
_BUR_LOCAL plcbit *p_bLinkBffr2MagRemoved;
_BUR_LOCAL plcbit *p_bLinkBffr1MagRemoved;
_BUR_LOCAL plcbit *p_bLinkNtParamProjMagConv3Prep;
_BUR_LOCAL plcbit *p_bLinkNtParamProjMagConv2Prep;
_BUR_LOCAL plcbit *p_bLinkNtParamProjMagConv1Prep;
_BUR_LOCAL plcbit p_bLinkMagConvInitDone;
_BUR_LOCAL plcbit *p_bLinkOpsTravLifULInitDone;
_BUR_LOCAL plcbit *p_bLinkPshrConvHvBrd;
_BUR_LOCAL enum eULMag *p_eLinkNtParamProjMag;
_BUR_LOCAL plcbit *p_bLinkOpsRun;
_BUR_LOCAL plcbit *p_bLinkStartupRun;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837636_461_ */

