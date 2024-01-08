/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680537_418_
#define _BUR_1704680537_418_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bOutShutterExtended;
_BUR_LOCAL plcbit *p_bNtParamProjLifter2Prep;
_BUR_LOCAL plcbit *p_bMagConvLane2Prep;
_BUR_LOCAL plcbit *p_bMagConvLanePrep;
_BUR_LOCAL plcbit *p_bPresentMag2;
_BUR_LOCAL plcbit *p_bPresentMag1;
_BUR_LOCAL enum eLifterConvStatus *p_usiMag2Rdy;
_BUR_LOCAL enum eLifterConvStatus *p_usiMag1Rdy;
_BUR_LOCAL signed long *p_sProdRcpCurrRcp2Name;
_BUR_LOCAL signed long *p_sProdRcpCurrRcp1Name;
_BUR_LOCAL plcbit *p_bMcParamMagFullBuzOff;
_BUR_LOCAL plcbit *p_bDIPusherRetRS;
_BUR_LOCAL plcbit *p_bDIOutShutterCloseRS;
_BUR_LOCAL plcbit *p_bDIOutShutterOpenRS;
_BUR_LOCAL plcbit *p_bDIInShutterCloseRS;
_BUR_LOCAL plcbit *p_bDIInShutterOpenRS;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop3;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart3;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting3;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat3;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop2;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart2;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting2;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat2;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStop1;
_BUR_LOCAL plcbit *p_bUSSMEMAConvStart1;
_BUR_LOCAL plcbit *p_bUSSMEMATransporting1;
_BUR_LOCAL enum eFBStatus *p_eUSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction *p_eUSSMEMAStat1;
_BUR_LOCAL enum eFBStatus *p_eBufferStatus3;
_BUR_LOCAL enum eBufferAction *p_eBufferStat3;
_BUR_LOCAL enum eFBStatus *p_eBufferStatus2;
_BUR_LOCAL enum eBufferAction *p_eBufferStat2;
_BUR_LOCAL enum eFBStatus *p_eBufferStatus1;
_BUR_LOCAL enum eBufferAction *p_eBufferStat1;
_BUR_LOCAL enum eFBStatus *p_eOutMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConv2Stat;
_BUR_LOCAL enum eFBStatus *p_eInMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eInMagConv2Stat;
_BUR_LOCAL enum eFBStatus *p_eOutMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConvStat;
_BUR_LOCAL enum eFBStatus *p_eInMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eInMagConvStat;
_BUR_LOCAL enum eFBStatus *p_eLifterMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eLifterMagConv2Stat;
_BUR_LOCAL enum eFBStatus *p_eLifterMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eLifterMagConvStat;
_BUR_LOCAL enum eFBStatus *p_eLifter2Status;
_BUR_LOCAL enum eLifterAction *p_eLifter2Stat;
_BUR_LOCAL enum eFBStatus *p_eLifterStatus;
_BUR_LOCAL enum eLifterAction *p_eLifterStat;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm3;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm2;
_BUR_LOCAL plcdt *p_dtBufferMagPresentTm1;
_BUR_LOCAL plcbit *p_bBufferMagPresent3;
_BUR_LOCAL plcbit *p_bBufferMagPresent2;
_BUR_LOCAL plcbit *p_bBufferMagPresent1;
_BUR_LOCAL plcbit *p_bMagPresentSen3;
_BUR_LOCAL plcbit *p_bMagPresentSen2;
_BUR_LOCAL plcbit *p_bMagPresentSen1;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat3;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat2;
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat1;
_BUR_LOCAL plcbit *p_bConvGdBrd;
_BUR_LOCAL plcbit *p_bConvHvBrd;
_BUR_LOCAL plcbit *p_bConvInitDone;
_BUR_LOCAL enum eLifMagULUpdateData *p_eNtParamProjMagBuffferActLoad;
_BUR_LOCAL plcbit *p_bUSAllow;
_BUR_LOCAL plcbit *p_bUnloadMag;

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
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680537_418_ */

