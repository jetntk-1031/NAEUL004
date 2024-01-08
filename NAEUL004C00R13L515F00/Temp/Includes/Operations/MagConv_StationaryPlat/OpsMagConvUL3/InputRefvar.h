/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680537_415_
#define _BUR_1704680537_415_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDis;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL plcbit *p_bOpsTravLifErrCmdUnclmp;
_BUR_LOCAL plcstring (*p_sProdRcpCurrRcp2Name)[81];
_BUR_LOCAL plcstring (*p_sProdRcpCurrRcp1Name)[81];
_BUR_LOCAL signed long *p_diProdRcpCurrRcp2Width;
_BUR_LOCAL signed long *p_diProdRcpCurrRcp1Width;
_BUR_LOCAL plcbit *p_bDISOTAGVReady;
_BUR_LOCAL plcbit *p_bDISOTRcv;
_BUR_LOCAL plcbit *p_bMcParamMagAWDis;
_BUR_LOCAL plcbit *p_bSelfTest;
_BUR_LOCAL plcbit *p_bOpsTravLifMov;
_BUR_LOCAL plcbit *p_bOpsTravLifExitBrd;
_BUR_LOCAL plcbit *p_bDSSOTConvStop;
_BUR_LOCAL plcbit *p_bDSSOTConvStart;
_BUR_LOCAL enum eFBStatus *p_eDSSOTStatus;
_BUR_LOCAL enum eSOTAction *p_eDSSOTStat;
_BUR_LOCAL plcbit *p_bUSSOTUSLargeMagRdy;
_BUR_LOCAL plcbit *p_bUSSOTUSRdy;
_BUR_LOCAL plcbit *p_bUSSOTConvStop;
_BUR_LOCAL plcbit *p_bUSSOTConvStart;
_BUR_LOCAL plcbit *p_bUSSOTTransporting;
_BUR_LOCAL enum eFBStatus *p_eUSSOTStatus;
_BUR_LOCAL enum eSOTAction *p_eUSSOTStat;
_BUR_LOCAL plcbit *p_bMagAWCloseLimit;
_BUR_LOCAL plcbit *p_bMagAWOpenLimit;
_BUR_LOCAL plcbit *p_bMagAWErr;
_BUR_LOCAL plcbit *p_bMagAWEngaging;
_BUR_LOCAL enum eFBStatus *p_eMagAWStatus;
_BUR_LOCAL enum eMagAWAction *p_eMagAWStat;
_BUR_LOCAL enum eFBStatus *p_eConvStatus;
_BUR_LOCAL enum eConvAction *p_eConvStat;
_BUR_LOCAL enum eFBStatus *p_eMagAWEngageStatus;
_BUR_LOCAL enum ePneuAction *p_eMagAWEngageStat;
_BUR_LOCAL plcbit *p_bSafetyBarRetracted;
_BUR_LOCAL plcbit *p_bSafetyBarExtended;
_BUR_LOCAL enum eFBStatus *p_eSafetyBarStatus;
_BUR_LOCAL enum ePneuAction *p_eSafetyBarStat;
_BUR_LOCAL plcbit *p_bNtParamProjOutletShut3Prep;
_BUR_LOCAL plcbit *p_bDIOutShutterClosedRS3;
_BUR_LOCAL plcbit *p_bDIOutShutterClosedRS;
_BUR_LOCAL plcbit *p_bDIMagConvLargeSen;
_BUR_LOCAL plcbit *p_bDIMagConvSmallSen;
_BUR_LOCAL plcbit *p_bDIMagConvCAB717Sen;
_BUR_LOCAL plcbit *p_bDIMagConvSelUnclampRS;
_BUR_LOCAL plcbit *p_bDIMagConvHeightSen;
_BUR_LOCAL plcbit *p_bOutShutterExtended;
_BUR_LOCAL enum eFBStatus *p_eSelClampCtrlStatus;
_BUR_LOCAL enum ePneuAction *p_eSelClampCtrlStat;
_BUR_LOCAL struct tyTagAGVToDTMag *p_tyAGVToDTMag;
_BUR_LOCAL plcbit *p_bAGVMagMcRunRdy;
_BUR_LOCAL enum eFBStatus *p_eAGVMagStatus;
_BUR_LOCAL enum eAGVMagAction *p_eAGVMagStat;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat;
_BUR_LOCAL plcbit *p_bMagConv2ClpHvMag;
_BUR_LOCAL enum eFBStatus *p_eMagConv2ClpStatus;
_BUR_LOCAL enum eMagConv2ClpAction *p_eMagConv2ClpStat;
_BUR_LOCAL plcbit *p_bBufferMagRemoved;
_BUR_LOCAL enum eFBStatus *p_eBufferStatus;
_BUR_LOCAL enum eBufferAction *p_eBufferStat;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm3;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm2;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm1;
_BUR_LOCAL plcbit *p_bBufferMagPresent3;
_BUR_LOCAL plcbit *p_bBufferMagPresent2;
_BUR_LOCAL plcbit *p_bBufferMagPresent1;
_BUR_LOCAL plcbit *p_bMagPresentSen3;
_BUR_LOCAL plcbit *p_bMagPresentSen2;
_BUR_LOCAL plcbit *p_bMagPresentSen1;
_BUR_LOCAL plcbit *p_bMagPresentSen;
_BUR_LOCAL plcbit *p_bMagEntrySen3;
_BUR_LOCAL plcbit *p_bMagEntrySen2;
_BUR_LOCAL plcbit *p_bMagEntrySen1;
_BUR_LOCAL plcbit *p_bMagEntrySen;
_BUR_LOCAL plcbit *p_bMagClampRS3;
_BUR_LOCAL plcbit *p_bMagClampRS2;
_BUR_LOCAL plcbit *p_bMagClampRS1;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat3;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat2;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat1;
_BUR_LOCAL plcbit *p_bConvGdBrd;
_BUR_LOCAL plcbit *p_bConvHvBrd;
_BUR_LOCAL plcbit *p_bConvInitDone;
_BUR_LOCAL plcbit *p_bRlsMag;
_BUR_LOCAL plcbit *p_bNewMag;
_BUR_LOCAL unsigned char *p_usiUIHcomModchanged;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2MagExitedWait;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1MagExitedWait;
_BUR_LOCAL signed short *p_iOpsMagConvUL3MESAcptCond;
_BUR_LOCAL signed short *p_iOpsMagConvUL2MESAcptCond;
_BUR_LOCAL signed short *p_iOpsMagConvUL1MESAcptCond;
_BUR_LOCAL plcdt *p_dtOpsMagConvUL3AcptTm;
_BUR_LOCAL plcdt *p_dtOpsMagConvUL2AcptTm;
_BUR_LOCAL plcdt *p_dtOpsMagConvUL1AcptTm;
_BUR_LOCAL plcdt *p_dtCurrDT;
_BUR_LOCAL plcbit *p_bAutoRcpForceExitMag;
_BUR_LOCAL plcbit *p_bMcParamMESEn;
_BUR_LOCAL signed long *p_diMcParamMESResponseTO;
_BUR_LOCAL plcbit *p_bOpsTravLifAllwExitMag;
_BUR_LOCAL struct tyStatPlatformFromMES *p_tyResponseFromMES;
_BUR_LOCAL enum eCustomer *p_eCustomerReq;
_BUR_LOCAL plcbit *p_bDIMagFixedClampSen;
_BUR_LOCAL plcbit *p_bMagOrientChkSenPrep;
_BUR_LOCAL plcbit *p_bChgMagSlot;
_BUR_LOCAL plcbit *p_bChgMagWidth;
_BUR_LOCAL plcbit *p_bAllwChgSlot;
_BUR_LOCAL plcbit *p_bAllwChgWidth;
_BUR_LOCAL plcbit *p_bUSAllow;
_BUR_LOCAL plcbit *p_bMagPropDiffBlk;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit (*pa_bMagChangeOverBlk)[4];
#else
/* Variable pa_bMagChangeOverBlk not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit (*pa_bMagRej)[3];
#else
/* Variable pa_bMagRej not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit (*pa_bMagDis)[3];
#else
/* Variable pa_bMagDis not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit *p_bInfoEn;
_BUR_LOCAL unsigned char *p_usiMagConv;
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
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680537_415_ */

