/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136546_465_
#define _BUR_1701136546_465_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyProdRcpParam *p_tyCurrProdRcp;
_BUR_LOCAL struct tyMagProperties *p_tyMagCmpRcp;
_BUR_LOCAL plcbit *p_bDBAOnWOAlign;
_BUR_LOCAL plcbit *p_bStandby;
_BUR_LOCAL plcbit *p_bOps;
_BUR_LOCAL plcbit *p_bWarning;
_BUR_LOCAL plcbit *p_bErr;
_BUR_LOCAL plcbit *p_bManual;
_BUR_LOCAL plctime *p_tOnlineChkDlyTm;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bRlsBrdProdRcpDiff;
_BUR_LOCAL plcbit *p_bUpdtProdRcpDiff;
_BUR_LOCAL plcbit (*pa_bInternalReqProdRcpDiff)[4];
_BUR_LOCAL struct tyProdRcpParam *p_tyToLeaderProdRcp;
_BUR_LOCAL plcbit *p_bRlsBrd;
_BUR_LOCAL plcbit *p_bOldBrdExitedCond;
_BUR_LOCAL plcbit *p_bNewBrdEnteredCond;
_BUR_LOCAL enum eULMod *p_eULMod;
_BUR_LOCAL signed long *p_diNtParamProdRcpMaxWidth;
_BUR_LOCAL signed long *p_diNtParamProdRcpMinWidth;
_BUR_LOCAL struct eAutoRcpLmt *p_eNtParamAutoRcpParamLmt;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpIgnoreThickns;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpIgnoreTopClr;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpIgnoreBtmClr;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpBatchIDChgCmp;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3SlotUpdtDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2SlotUpdtDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1SlotUpdtDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL3AWDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL2AWDone;
_BUR_LOCAL plcbit *p_bOpsMagConvUL1AWDone;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit (*pa_bMagRej)[3];
#else
/* Variable pa_bMagRej not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned char *p_usiLinkProdRcpCurrRcpMcMod;
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx1;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl1)[201];
_BUR_LOCAL plcbit *p_bHermesBrdAvlDataNewBrdAvl1stZ;
_BUR_LOCAL plcbit *p_bProdRcp0ToptoBtm;
_BUR_LOCAL plcbit *p_bNtParamF1ArbitraryType;
_BUR_LOCAL plcbit *p_bNtParamProjMagAWPrep;
_BUR_LOCAL enum eAutoRcpPreceded *p_eNtParamAutoRcpPrecededBy;
_BUR_LOCAL struct tyProdRcpParam *p_tyInternalReqProdRcp;
_BUR_LOCAL plcbit *p_bInternalUse;
_BUR_LOCAL plcstring (*p_sInfoMsg)[201];
_BUR_LOCAL plcbit *p_bAutoUpdtData;
_BUR_LOCAL plcbit *p_bUpdtNewRcpCond;
_BUR_LOCAL plcbit *p_bAccNewRcpCond;
_BUR_LOCAL enum eFBStatus *p_eTimeStatus;
_BUR_LOCAL enum eTimeAction *p_eTimeStat;
_BUR_LOCAL plcstring (*p_sCurrMagRcpNm)[31];
_BUR_LOCAL struct tyBoardProperty *p_tyCmpRcp;
_BUR_LOCAL plcbit *p_bUIMagAccData;
_BUR_LOCAL plcbit *p_bUIProdUpdtData;
_BUR_LOCAL plcbit *p_bUIProdAccData;
_BUR_LOCAL plcbit *p_bProdWidthChk;
_BUR_LOCAL plcbit *p_bDSWidthChkSen;
_BUR_LOCAL plcbit *p_bDSWidthChkEn;
_BUR_LOCAL plcbit *p_bDSWidthChkPrep;
_BUR_LOCAL plcbit *p_bUSWidthChkSen;
_BUR_LOCAL plcbit *p_bUSWidthChkEn;
_BUR_LOCAL plcbit *p_bUSWidthChkPrep;
_BUR_LOCAL plcbit *p_bWidth2Prep;
_BUR_LOCAL signed long *p_diWidthLimit;
_BUR_LOCAL plcstring (*p_sMagRcpNm)[31];
_BUR_LOCAL plcbit *p_bSectionLeader;
_BUR_LOCAL plcbit *p_bMnlAccData;
_BUR_LOCAL plcbit *p_bAWDis;
_BUR_LOCAL plcbit *p_bAWPrep;
_BUR_LOCAL plcstring (*p_sMcNm)[31];
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDis;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL plcstring (*p_sIPAddr)[16];
_BUR_LOCAL enum eAWAction *p_eAWStat;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eAutoRcpAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136546_465_ */

