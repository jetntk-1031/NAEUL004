/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726039_463_
#define _BUR_1703726039_463_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagProperties a_tyMagPropsWr[4];
#else
/* Variable a_tyMagPropsWr not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyMagProperties tyCurrReqMagRcp;
_BUR_LOCAL struct fbHermesParseXMLTable fbParseBrdAvlExternal;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite3;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite2;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite1;
_BUR_LOCAL struct fbFileFullRead fbFileRead3;
_BUR_LOCAL struct fbFileFullRead fbFileRead2;
_BUR_LOCAL struct fbFileFullRead fbFileRead1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyMagProperties a_tyMagProps[4];
#else
/* Variable a_tyMagProps not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL signed long diTravLifWidth;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBoardProperty a_tyZ2RcpWr[4];
#else
/* Variable a_tyZ2RcpWr not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyBoardProperty tyZ1RcpWr;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBoardProperty a_tyCurrZ2Rcp[4];
#else
/* Variable a_tyCurrZ2Rcp not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyBoardProperty tyCurrZ1Rcp;
_BUR_LOCAL struct tyBoardProperty tyCurrReqRcp;
_BUR_LOCAL enum eULMod eULMode;
_BUR_LOCAL signed long diProdWidth;
_BUR_LOCAL plcstring sProdtypeID[255];
_BUR_LOCAL signed long diModulus;
_BUR_LOCAL signed long diCalcedMin;
_BUR_LOCAL signed long diCalcedMax;
_BUR_LOCAL signed long diCalcedPitch;
_BUR_LOCAL float rNumInterval;
_BUR_LOCAL float rPitch;
_BUR_LOCAL float rMaxslt;
_BUR_LOCAL float rMinslt;
_BUR_LOCAL struct tyHermesBoardForecast tyHermesBFAccpt;
_BUR_LOCAL struct tyHermesBoardAvailable tyHermesBAAccpt;
_BUR_LOCAL plcbit bHermesBFAccpt;
_BUR_LOCAL plcbit bHermesBAAccpt;
_BUR_LOCAL signed long diRequestedGapToMaxSlt;
_BUR_LOCAL signed long diRequestedMinSlt;
_BUR_LOCAL plcbit bZ2AccNewRcpCondition;
_BUR_LOCAL plcbit bZ1AccNewRcpCondition;
_BUR_LOCAL plcbit bOverWriteTravLifProperties;
_BUR_LOCAL plcbit bOverWriteMagProperties;
_BUR_LOCAL plcbit bInitializedFollower1Done;
_BUR_LOCAL plcbit bMagWriteRetain;
_BUR_LOCAL plcbit bTest2;
_BUR_LOCAL plcbit bTest;
_BUR_LOCAL signed short iChgOvrCntr;
_BUR_LOCAL unsigned char usiChg;
_BUR_LOCAL unsigned char usiPrevChg;
_BUR_LOCAL unsigned char usiChg2;
_BUR_LOCAL unsigned char usiPrevChg2;
_BUR_LOCAL unsigned long udiModuleNum;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bCheckDifferent[4];
#else
/* Variable a_bCheckDifferent not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long udiMagAllwGo[4];
#else
/* Variable udiMagAllwGo not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bForceExitMag;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwGo[4];
#else
/* Variable a_udiMagAllwGo not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bAllwChangeSlot[4];
#else
/* Variable a_bAllwChangeSlot not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bAllwChangeWidth[4];
#else
/* Variable a_bAllwChangeWidth not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagChangOverBlk[4];
#else
/* Variable a_bMagChangOverBlk not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bTravLifWidthDiffBlk;
_BUR_LOCAL plcbit bCheckNeedMtyMag;
_BUR_LOCAL unsigned char usiMag;
_BUR_LOCAL signed short kk;
_BUR_LOCAL signed short jj;
_BUR_LOCAL signed short ii;
_BUR_LOCAL signed short x;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[4];
#else
/* Variable a_udiMagAllwMagPresentTm not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned char a_sortedMagPriority[4];
#else
/* Variable a_sortedMagPriority not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBffrStat a_tyBffrStat[4];
#else
/* Variable a_tyBffrStat not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagAWWidthDiff[4];
#else
/* Variable a_bMagAWWidthDiff not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bForceChgWidthIfSameRcp[4];
#else
/* Variable a_bForceChgWidthIfSameRcp not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bBufferMagPresent[3];
#else
/* Variable a_bBufferMagPresent not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned char ProdRcpAct;
_BUR_LOCAL unsigned char tyProRcpCurrRcp;
_BUR_LOCAL plcbit bDBAOnWOAlign;
_BUR_LOCAL plcbit bFollowerInfo;
_BUR_LOCAL signed short i;
_BUR_LOCAL plcbit bOldBrdExited;
_BUR_LOCAL plcbit bNewBrdEntered;
_BUR_LOCAL struct tyProdRcpParam tyRlsBrdProdRcpNm;
_BUR_LOCAL unsigned char usiProdUpdtDatStep;
_BUR_LOCAL unsigned char usiMagAccDatStep;
_BUR_LOCAL unsigned char usiProdAccDatStep;
_BUR_LOCAL plcstring sReqMagRcpNm[31];
_BUR_LOCAL plcbit bMagAccDataReq;
_BUR_LOCAL signed long diReqProdRcpWidth;
_BUR_LOCAL plcstring sReqProdRcpNm[255];
_BUR_LOCAL plcbit bProdAccDataReq;
_BUR_LOCAL plcbit bSetTmErr;
_BUR_LOCAL plcbit bMagRcpErr;
_BUR_LOCAL plcbit bProdRcpErr;
_BUR_LOCAL plcbit bAutoAccData;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL enum eAWAction eAWStat;
_BUR_LOCAL plcbit bStandby;
_BUR_LOCAL plcbit bOps;
_BUR_LOCAL plcbit bWarning;
_BUR_LOCAL plcbit bErr;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plctime tOnlineChkDlyTm;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bRlsBrdProdRcpDiff;
_BUR_LOCAL plcbit bUpdtProdRcpDiff;
_BUR_LOCAL plcbit a_bInternalReqProdRcpDiff[4];
_BUR_LOCAL struct tyProdRcpParam tyToLeaderProdRcp;
_BUR_LOCAL plcbit bRlsBrd;
_BUR_LOCAL plcbit bOldBrdExitedCond;
_BUR_LOCAL plcbit bNewBrdEnteredCond;
_BUR_LOCAL struct tyProdRcpParam tyInternalReqProdRcp;
_BUR_LOCAL plcbit bInternalUse;
_BUR_LOCAL plcstring sInfoMsg[201];
_BUR_LOCAL plcbit bAutoUpdtData;
_BUR_LOCAL plcbit bUpdtNewRcpCond;
_BUR_LOCAL plcbit bAccNewRcpCond;
_BUR_LOCAL enum eFBStatus eTimeStatus;
_BUR_LOCAL enum eTimeAction eTimeStat;
_BUR_LOCAL plcstring sCurrMagRcpNm[31];
_BUR_LOCAL struct tyBoardProperty tyCurrProdRcp;
_BUR_LOCAL plcbit bUIMagAccData;
_BUR_LOCAL plcbit bUIProdUpdtData;
_BUR_LOCAL plcbit bUIProdAccData;
_BUR_LOCAL plcbit bProdWidthChk;
_BUR_LOCAL plcbit bDSWidthChkSen;
_BUR_LOCAL plcbit bDSWidthChkEn;
_BUR_LOCAL plcbit bDSWidthChkPrep;
_BUR_LOCAL plcbit bUSWidthChkSen;
_BUR_LOCAL plcbit bUSWidthChkEn;
_BUR_LOCAL plcbit bBffrMagRemoved;
_BUR_LOCAL plcbit bUSWidthChkPrep;
_BUR_LOCAL plcbit bWidth2Prep;
_BUR_LOCAL signed long diWidthLimit;
_BUR_LOCAL plcstring sMagRcpNm[31];
_BUR_LOCAL plcbit bSectionLeader;
_BUR_LOCAL plcbit bMnlAccData;
_BUR_LOCAL plcbit bAWDis;
_BUR_LOCAL plcbit bAWPrep;
_BUR_LOCAL plcstring sMcNm[31];
_BUR_LOCAL plcstring sIPAddr[16];
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL struct tyLFLeaderInfo tyLeaderInfo;
_BUR_LOCAL plcbit bDSAllow;
_BUR_LOCAL plcbit bUSAllow;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyInfoData1;
_BUR_LOCAL struct tyAlmDat tyInfoData;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL enum eAutoRcpAction eStat;
_BUR_LOCAL enum eAutoRcpAction eStatOld;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eAutoRcpAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/NtHermes.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726039_463_ */

