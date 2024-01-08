/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680537_406_
#define _BUR_1704680537_406_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyOpConPlcGrabReceive *p_tyOpConPlcGrabRcvCode;
_BUR_LOCAL struct tyOpConPartReceive *p_tyPartReceiveRetCode;
_BUR_LOCAL plcbit *p_bPass;
_BUR_LOCAL plcbit *p_bOpConPrep;
_BUR_LOCAL plcstring (*p_sBtmMsgRd)[81];
_BUR_LOCAL enum eFBStatus *p_eTCPBtmStatus;
_BUR_LOCAL enum eTCPAction1 *p_eTCPBtmStat;
_BUR_LOCAL plcstring (*p_sTopMsgRd)[81];
_BUR_LOCAL enum eFBStatus *p_eTCPTopStatus;
_BUR_LOCAL enum eTCPAction1 *p_eTCPTopStat;
_BUR_LOCAL plcbit *p_bBtmScannerEn;
_BUR_LOCAL plcbit *p_bTopScannerEn;
_BUR_LOCAL plcbit *p_bScanEn;
_BUR_LOCAL plcbit *p_bCurtainSenPrep;
_BUR_LOCAL plcbit *p_bInShutDis;
_BUR_LOCAL plcbit *p_bPneuUnclmpFBDone;
_BUR_LOCAL plcbit *p_bCurtainSenPB;
_BUR_LOCAL signed long *p_diProdRcpCurrRcp2Width;
_BUR_LOCAL signed long *p_diProdRcpCurrRcp1Width;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm3;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm2;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm1;
_BUR_LOCAL plcbit *p_bMagWidthChkSenOn;
_BUR_LOCAL plcbit *p_bLifterBPosDiff;
_BUR_LOCAL plcbit *p_bLifterAPosDiff;
_BUR_LOCAL plcbit *p_bLifterBtmPosDiff;
_BUR_LOCAL plcbit *p_bTravPosDiff;
_BUR_LOCAL plcbit *p_bTravBPosDiff;
_BUR_LOCAL plcbit *p_bTravAPosDiff;
_BUR_LOCAL enum eLifMagULUpdateData *p_eNtParamProjMagBuffferActLoad;
_BUR_LOCAL plcbit *p_bPshrConvPshrRetracted;
_BUR_LOCAL plcbit *p_bDIUSWidthSen;
_BUR_LOCAL plcbit *p_bDIPusherExtRS;
_BUR_LOCAL plcbit *p_bDIPusherRetRS;
_BUR_LOCAL plcbit *p_bDIOutShutterCloseRS2;
_BUR_LOCAL plcbit *p_bDIOutShutterOpenRS2;
_BUR_LOCAL plcbit *p_bDIOutShutterCloseRS3;
_BUR_LOCAL plcbit *p_bDIOutShutterOpenRS3;
_BUR_LOCAL plcbit *p_bDIOutShutterCloseRS;
_BUR_LOCAL plcbit *p_bDIOutShutterOpenRS;
_BUR_LOCAL plcbit *p_bDIInShutterCloseRS;
_BUR_LOCAL plcbit *p_bDIInShutterOpenRS;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat3;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat2;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat1;
_BUR_LOCAL plcbit *p_bBufferMagDet3;
_BUR_LOCAL plcbit *p_bBufferMagDet2;
_BUR_LOCAL plcbit *p_bBufferMagDet1;
_BUR_LOCAL plcbit *p_bBufferMagPresent3;
_BUR_LOCAL plcbit *p_bBufferMagPresent2;
_BUR_LOCAL plcbit *p_bBufferMagPresent1;
_BUR_LOCAL plcbit *p_bMagTransferBrd3;
_BUR_LOCAL plcbit *p_bMagTransferBrd2;
_BUR_LOCAL plcbit *p_bMagTransferBrd1;
_BUR_LOCAL plcbit *p_bConvLineBInletSen;
_BUR_LOCAL plcbit *p_bConvLineAInletSen;
_BUR_LOCAL plcbit *p_bConvClrSen;
_BUR_LOCAL plcbit *p_bConvRgtSen;
_BUR_LOCAL plcbit *p_bConvMidSen;
_BUR_LOCAL plcbit *p_bConvLftSen;
_BUR_LOCAL plcbit *p_bStopperBlk3;
_BUR_LOCAL enum eFBStatus *p_eStopperStatus3;
_BUR_LOCAL enum ePneuAction *p_eStopperStat3;
_BUR_LOCAL plcbit *p_bStopperBlk2;
_BUR_LOCAL enum eFBStatus *p_eStopperStatus2;
_BUR_LOCAL enum ePneuAction *p_eStopperStat2;
_BUR_LOCAL plcbit *p_bStopperBlk1;
_BUR_LOCAL enum eFBStatus *p_eStopperStatus1;
_BUR_LOCAL enum ePneuAction *p_eStopperStat1;
_BUR_LOCAL enum eFBStatus *p_eOutletPneuStatus3;
_BUR_LOCAL enum ePneuAction *p_eOutletPneuStat3;
_BUR_LOCAL enum eFBStatus *p_eOutletPneuStatus2;
_BUR_LOCAL enum ePneuAction *p_eOutletPneuStat2;
_BUR_LOCAL enum eFBStatus *p_eOutletPneuStatus;
_BUR_LOCAL enum ePneuAction *p_eOutletPneuStat;
_BUR_LOCAL plcbit *p_bInletPneuCls;
_BUR_LOCAL enum eFBStatus *p_eInletPneuStatus;
_BUR_LOCAL enum ePneuAction *p_eInletPneuStat;
_BUR_LOCAL plctime *p_tShutterWaitTmr;
_BUR_LOCAL enum eFBStatus *p_eLifStatus;
_BUR_LOCAL enum eLifterAction *p_eLifStat;
_BUR_LOCAL enum eFBStatus *p_eTravStatus;
_BUR_LOCAL enum eTravAction *p_eTravStat;
_BUR_LOCAL plcbit *p_bAWPushOrPullerWidthPosDiff;
_BUR_LOCAL enum eFBStatus *p_eAWPushOrPullerStatus;
_BUR_LOCAL enum eAWAction *p_eAWPushOrPullerStat;
_BUR_LOCAL plcbit *p_bAWWidthPosDiff;
_BUR_LOCAL enum eFBStatus *p_eAWStatus;
_BUR_LOCAL enum eAWAction *p_eAWStat;
_BUR_LOCAL plcbit *p_bConvGdBrd;
_BUR_LOCAL plcbit *p_bConvHvBrd;
_BUR_LOCAL enum eConvDir *p_eConvDir;
_BUR_LOCAL enum eFBStatus *p_eConvStatus;
_BUR_LOCAL enum eConvAction *p_eConvStat;
_BUR_LOCAL plcbit *p_bDSHermesStopTransport3;
_BUR_LOCAL plcbit *p_bDSHermesTransporting3;
_BUR_LOCAL plcbit *p_bDSHermesDSRdy3;
_BUR_LOCAL plcbit *p_bDSHermesStopTransport2;
_BUR_LOCAL plcbit *p_bDSHermesTransporting2;
_BUR_LOCAL plcbit *p_bDSHermesDSRdy2;
_BUR_LOCAL plcbit *p_bDSHermesStopTransport1;
_BUR_LOCAL plcbit *p_bDSHermesTransporting1;
_BUR_LOCAL plcbit *p_bDSHermesDSRdy1;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport3;
_BUR_LOCAL plcbit *p_bUSHermesTransporting3;
_BUR_LOCAL plcbit *p_bUSHermesUSGdRdy3;
_BUR_LOCAL plcbit *p_bUSHermesUSRdy3;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport2;
_BUR_LOCAL plcbit *p_bUSHermesTransporting2;
_BUR_LOCAL plcbit *p_bUSHermesUSGdRdy2;
_BUR_LOCAL plcbit *p_bUSHermesUSRdy2;
_BUR_LOCAL plcbit *p_bUSHermesStopTransport1;
_BUR_LOCAL plcbit *p_bUSHermesTransporting1;
_BUR_LOCAL plcbit *p_bUSHermesUSGdRdy1;
_BUR_LOCAL plcbit *p_bUSHermesUSRdy1;
_BUR_LOCAL plcbit *p_bDSSMEMAConvStart3;
_BUR_LOCAL plcbit *p_bDSSMEMADSRdy3;
_BUR_LOCAL enum eFBStatus *p_eDSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction *p_eDSSMEMAStat3;
_BUR_LOCAL plcbit *p_bDSSMEMAConvStart2;
_BUR_LOCAL plcbit *p_bDSSMEMADSRdy2;
_BUR_LOCAL enum eFBStatus *p_eDSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction *p_eDSSMEMAStat2;
_BUR_LOCAL plcbit *p_bDSSMEMAConvStart1;
_BUR_LOCAL plcbit *p_bDSSMEMADSRdy1;
_BUR_LOCAL enum eFBStatus *p_eDSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction *p_eDSSMEMAStat1;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop3;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart3;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting3;
_BUR_LOCAL plcbit *p_bUSSMEMAGdBrdRdy3;
_BUR_LOCAL plcbit *p_bUSSMEMAUSRdy3;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat3;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop2;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart2;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting2;
_BUR_LOCAL plcbit *p_bUSSMEMAGdBrdRdy2;
_BUR_LOCAL plcbit *p_bUSSMEMAUSRdy2;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat2;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop1;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart1;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting1;
_BUR_LOCAL plcbit *p_bUSSMEMAGdBrdRdy1;
_BUR_LOCAL plcbit *p_bUSSMEMAUSRdy1;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat1;
_BUR_LOCAL enum eMcSetCommMod *p_eDSCommMod3;
_BUR_LOCAL enum eMcSetCommMod *p_eDSCommMod2;
_BUR_LOCAL enum eMcSetCommMod *p_eDSCommMod1;
_BUR_LOCAL enum eMcSetCommMod *p_eUSCommMod3;
_BUR_LOCAL enum eMcSetCommMod *p_eUSCommMod2;
_BUR_LOCAL enum eMcSetCommMod *p_eUSCommMod1;
_BUR_LOCAL plcbit *p_bDSAllow;
_BUR_LOCAL plcbit *p_bUSAllow;
_BUR_LOCAL plcbit *p_bBypsGdBadBrd;
_BUR_LOCAL plcbit *p_bNonBffrMod;
_BUR_LOCAL enum eULMag *p_eULMag;
_BUR_LOCAL enum eULMod *p_eULMod;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bStep;
_BUR_LOCAL plcbit *p_bStop;
_BUR_LOCAL plcbit *p_bRun;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL unsigned long *p_udiRstErr;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680537_406_ */

