/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_17_
#define _BUR_1703817512_17_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eTLBuzAction
{	TLBuzActIdle,
	TLBuzActSetGreen,
	TLBuzActSetWhite,
	TLBuzActSetRed,
	TLBuzActSetAmber,
	TLBuzActSetBlue,
	TLBuzActSetBuz,
	TLBuzActRstGreen,
	TLBuzActRstWhite,
	TLBuzActRstRed,
	TLBuzActRstAmber,
	TLBuzActRstBlue,
	TLBuzActRstBuz,
	TLBuzActSetAll,
	TLBuzActRstAll
} eTLBuzAction;

typedef enum eTLBuzMod
{	TLBuzModNutek,
	TLBuzModAptiv,
	TLBuzModMEK,
	TLBuzModBHTC,
	TLBuzModSiemens_2Colour
} eTLBuzMod;

typedef struct tyTLBuzIn1
{	enum eTLBuzAction eAct;
	plcbit bCoverSwitchSig;
	plcbit bAOIErrSig;
	plcbit bAOIOriginSig;
	plcbit bBuzAlertEn;
	plcbit bTLBlueFlashEn;
	plcbit bTLAmberFlashEn;
	plcbit bTLWhiteFlashEn;
	plcbit bTLRedFlashEn;
	plcbit bTLGreenFlashEn;
	plcbit bUIManualMod;
	plcbit bStartup;
	plcbit bErr;
	plcbit bErrNoBuz;
	plcbit bWarning[6];
	plcbit bWarningNoBuz[6];
	plcbit bChgRcp;
	plcbit bSeqStop;
	plcbit bStep;
	plcbit bOps;
	plcbit bStandby;
	plcbit bSimulation;
	plcbit bMuteBuz;
	plctime tTLChgRcpBlinkTm;
	plctime tTLErrBlinkTm;
	plctime tBuzErrOnTm;
	plctime tBuzErrRestTm;
	unsigned char usiBuzErrOnCntr;
	plcbit bBuzErrStopSeqEn;
	unsigned char usiBuzErrStopSeqCntr;
	plctime tTLWarnBlinkTm[6];
	plctime tBuzWarnOnTm[6];
	plctime tBuzWarnRestTm[6];
	unsigned char usiBuzWarnOnCntr[6];
	plcbit bBuzWarnStopSeqEn[6];
	unsigned char usiBuzWarnStopSeqCntr[6];
	plctime tTLWarn1BlinkTm;
	plctime tBuzWarn1OnTm;
	plctime tBuzWarn1RestTm;
	unsigned char usiBuzWarn1OnCntr;
	plcbit bBuzWarn1StopSeqEn;
	unsigned char usiBuzWarn1StopSeqCntr;
	plctime tTLWarn2BlinkTm;
	plctime tBuzWarn2OnTm;
	plctime tBuzWarn2RestTm;
	unsigned char usiBuzWarn2OnCntr;
	plcbit bBuzWarn2StopSeqEn;
	unsigned char usiBuzWarn2StopSeqCntr;
	plctime tTLWarn3BlinkTm;
	plctime tBuzWarn3OnTm;
	plctime tBuzWarn3RestTm;
	unsigned char usiBuzWarn3OnCntr;
	plcbit bBuzWarn3StopSeqEn;
	unsigned char usiBuzWarn3StopSeqCntr;
	plctime tTLWarn4BlinkTm;
	plctime tBuzWarn4OnTm;
	plctime tBuzWarn4RestTm;
	unsigned char usiBuzWarn4OnCntr;
	plcbit bBuzWarn4StopSeqEn;
	unsigned char usiBuzWarn4StopSeqCntr;
	plctime tTLWarn5BlinkTm;
	plctime tBuzWarn5OnTm;
	plctime tBuzWarn5RestTm;
	unsigned char usiBuzWarn5OnCntr;
	plcbit bBuzWarn5StopSeqEn;
	unsigned char usiBuzWarn5StopSeqCntr;
	plctime tBuzAlertOnTm;
	plctime tBuzAlertRestTm;
	unsigned char usiBuzAlertOnCntr;
	plcbit bBuzAlertStopSeqEn;
	unsigned char usiBuzAlertStopSeqCntr;
	plctime tTLBlueBlinkTm;
	plctime tTLAmberBlinkTm;
	plctime tTLWhiteBlinkTm;
	plctime tTLRedBlinkTm;
	plctime tTLGreenBlinkTm;
	enum eTLBuzMod eTLBuzMode;
	plcbit bMcParamAGVComEn;
	eMcMagExchangeMode eMcParamMagExMode;
} tyTLBuzIn1;

typedef struct tyTLBuzOut1
{	enum eTLBuzAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	plcbit bTLBlue;
	plcbit bTLRed;
	plcbit bTLAmber;
	plcbit bTLWhite;
	plcbit bTLGreen;
	plcbit bBuzBeep;
} tyTLBuzOut1;

typedef struct tyTLBuz
{	struct tyTLBuzIn1 In;
	struct tyTLBuzOut1 Out;
} tyTLBuz;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/TLBuz/TLBuz.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_17_ */

