/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_265_
#define _BUR_1703660021_265_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcstring (*p_sLinkMagRcpCurrRcpNm)[31];
_BUR_LOCAL signed long *p_diLinkProdRcpCurrRcp1Pitch;
_BUR_LOCAL plcstring (*p_sLinkProdRcpCurrRcp1Nm)[255];
_BUR_LOCAL struct tyDigitalInputSettings *p_tyNtParamDISettings;
_BUR_LOCAL struct tyDigitalOutputSettings *p_tyNtParamDOSettings;
_BUR_LOCAL plcbit *p_bDIPCBScanComplSig;
_BUR_LOCAL plcbit *p_bPLCGrabPic;
_BUR_LOCAL plcbit *p_bMagPresentSen3;
_BUR_LOCAL plcbit *p_bMagPresentSen2;
_BUR_LOCAL plcbit *p_bMagPresentSen1;
_BUR_LOCAL plcbit *p_MCUL3StepPLCGrab;
_BUR_LOCAL plcbit *p_MCUL2StepPLCGrab;
_BUR_LOCAL plcbit *p_MCUL1StepPLCGrab;
_BUR_LOCAL plcstring (*p_sTopBtmBarcode)[2][255];
_BUR_LOCAL plcbit *p_bLinkOpConEn;
_BUR_LOCAL signed long *p_diMcParamDMCScanResponseTO;
_BUR_LOCAL signed short *p_iLifterSltMoved;
_BUR_LOCAL plcbit *p_bMcParamDMCScannerEn;
_BUR_LOCAL plcbit *p_bPshrConvPshrRetSlwSen;
_BUR_LOCAL plcbit *p_bRlsMag3;
_BUR_LOCAL plcbit *p_bRlsMag2;
_BUR_LOCAL plcbit *p_bRlsMag1;
_BUR_LOCAL unsigned long *p_udiOpsDSPosAllwGo;
_BUR_LOCAL unsigned long *p_udiOpsUSPosAllwGo;
_BUR_LOCAL signed long *p_diMcParamInStprExtDelayTm;
_BUR_LOCAL plcbit *p_bDIInletStopperASen;
_BUR_LOCAL enum eFBStatus *p_eInletStopperStatus;
_BUR_LOCAL enum ePneuAction *p_eInletStopperStat;
_BUR_LOCAL plcbit *p_bStopperUnBlkCtrl;
_BUR_LOCAL plcbit *p_bInletStopperPrep;
_BUR_LOCAL enum eCustomer *p_eCustomerReq;
_BUR_LOCAL enum eAutoRcpPreceded *p_eNtParamAutoRcpPrecededBy;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDis;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL plcbit *p_bAutoRcpTravWidthDiffBlk;
_BUR_LOCAL plcbit *p_bNtParamProjOutletShut3Prep;
_BUR_LOCAL plcbit *p_bNtParamProjOutletShut2Prep;
_BUR_LOCAL plcbit *p_bNtParamProjOutletShutPrep;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3UnclmpDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2UnclmpDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1UnclmpDone;
_BUR_LOCAL plcbit bShut3Closed;
_BUR_LOCAL plcbit bShut2Closed;
_BUR_LOCAL plcbit bShut1Closed;
_BUR_LOCAL plcbit bTravGoToChkPt;
_BUR_LOCAL signed short usiMagWidthChkStep;
_BUR_LOCAL plcbit bMagWidthChk;
_BUR_LOCAL plcbit bMagWidthChkTravMov;
_BUR_LOCAL plcbit *p_bMagWidthChkDis;
_BUR_LOCAL plcbit *p_bLinkMcParamMagWidthChkDis;
_BUR_LOCAL plcbit *p_bTopToBtm;
_BUR_LOCAL signed long *p_diMaxSlt;
_BUR_LOCAL signed long *p_diMinSlt;
_BUR_LOCAL signed long *p_diBuffer3NxtLoadSlt;
_BUR_LOCAL signed long *p_diBuffer2NxtLoadSlt;
_BUR_LOCAL signed long *p_diBuffer1NxtLoadSlt;
_BUR_LOCAL plcbit *p_bLinkPshrRetSen;
_BUR_LOCAL plcbit *p_bLinkCurtainSen;
_BUR_LOCAL plcbit *p_bLinkDIPshrAntiJamSen;
_BUR_LOCAL plcbit *p_bLinkProjLifterMagPlatform;
_BUR_LOCAL plcbit *p_bLinkFollower2DSAllow;
_BUR_LOCAL plcbit *p_bLinkFollower1USAllow;
_BUR_LOCAL plcbit *p_bLinkUSHermesBBlkUS;
_BUR_LOCAL plcbit *p_bLinkUSHermesABlkUS;
_BUR_LOCAL unsigned char *p_bLinkNtParamMagConv3Prep;
_BUR_LOCAL unsigned char *p_bLinkNtParamMagConv2Prep;
_BUR_LOCAL unsigned char *p_bLinkNtParamMagConv1Prep;
_BUR_LOCAL unsigned char *p_usiLinkProdRcpCurrRcpMcMod;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_265_ */

