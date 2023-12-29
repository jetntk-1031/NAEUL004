/* Automation Studio generated header file */
/* Do not edit ! */
/* NtSOT 5.00.0 */

#ifndef _NTSOT_
#define _NTSOT_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _NtSOT_VERSION
#define _NtSOT_VERSION 5.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum eAIVPos
{	Loader = 0,
	Unloader = 1,
	Invalid = 2
} eAIVPos;

typedef enum eSOTStat
{	SOTStatOppNotRdyNCurrNotRdy,
	SOTStatOppRdyNCurrNotRdy,
	SOTStatOppNotRdyNCurrRdy,
	SOTStatOppRdyNCurrRdy,
	SOTStatTransportStart,
	SOTStatTransportIdle,
	SOTStatTransporting,
	SOTStatOppTransportFinished,
	SOTStatCurrTransportFinished,
	SOTStatTransportDone
} eSOTStat;

typedef struct tySOTMagSeqInternal
{	enum eSOTStat eStat;
} tySOTMagSeqInternal;

typedef struct fbSOTMagSeq
{
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTMagSeqInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bCurrRdy;
	/* VAR_OUTPUT (digital) */
	plcbit bSigToOppOn;
} fbSOTMagSeq_typ;

typedef struct tySOTTransportIdleInternal
{	enum eSOTStat eStat;
	struct TON fbTO;
} tySOTTransportIdleInternal;

typedef struct fbSOTTransportIdle
{
	/* VAR_INPUT (analog) */
	plctime tTimeOut;
	/* VAR_OUTPUT (analog) */
	plctime tElapseTimeOut;
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTTransportIdleInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bInletSen;
	plcbit bOutletSen;
	/* VAR_OUTPUT (digital) */
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bContinue;
	/* VAR (digital) */
	plcbit zzEdge00000;
} fbSOTTransportIdle_typ;

typedef struct tySOTTransportingInternal
{	enum eSOTStat eStat;
	struct TON fbTO;
	struct TON fbRstDlyTm;
} tySOTTransportingInternal;

typedef struct fbSOTUSTransporting
{
	/* VAR_INPUT (analog) */
	plctime tTimeOut;
	plctime tRstDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTTransportingInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bComplSigOn;
	/* VAR_OUTPUT (digital) */
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToOppOff;
	plcbit bCompl;
} fbSOTUSTransporting_typ;

typedef struct tySOTUSInternal
{	unsigned char usiStep;
	struct fbSOTMagSeq fbSOTMagSeq;
	struct fbSOTTransportIdle fbSOTTransportIdle;
	struct fbSOTUSTransporting fbSOTTransporting;
	struct TON fbDlyTM;
} tySOTUSInternal;

typedef struct fbSOTDSTransporting
{
	/* VAR_INPUT (analog) */
	plctime tTimeOut;
	plctime tRstDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTTransportingInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bOppRdy;
	plcbit bComplSigOn;
	/* VAR_OUTPUT (digital) */
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToOppOff;
} fbSOTDSTransporting_typ;

typedef struct tySOTDSInternal
{	unsigned char usiStep;
	struct fbSOTMagSeq fbSOTMagSeq;
	struct fbSOTDSTransporting fbSOTTransporting1;
} tySOTDSInternal;

typedef struct tySOTSigInChkInternal
{	plcbit bSigInValid;
	plcbit bNomSigOld;
	struct TON fbSigInChkTm;
} tySOTSigInChkInternal;

typedef struct fbSOTUS
{
	/* VAR_INPUT (analog) */
	plctime tDlyTm;
	plctime tTimeOut;
	plctime tRstDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTUSInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bUSRdy;
	plcbit bRdyRcv;
	plcbit bComplSigOn;
	plcbit bInletSen;
	plcbit bOutletSen;
	/* VAR_OUTPUT (digital) */
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToUS;
} fbSOTUS_typ;

typedef struct fbSOTDS
{
	/* VAR_INPUT (analog) */
	plctime tTimeOut;
	plctime tRstDlyTm;
	/* VAR_OUTPUT (analog) */
	unsigned long udiStatus;
	/* VAR (analog) */
	struct tySOTDSInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bEn;
	plcbit bDSRdy;
	plcbit bRdySend;
	plcbit bComplSigOn;
	/* VAR_OUTPUT (digital) */
	plcbit bTransporting;
	plcbit bConvStart;
	plcbit bConvStop;
	plcbit bSigToDS;
} fbSOTDS_typ;

typedef struct fbSOTSigInChk
{
	/* VAR_INPUT (analog) */
	plctime tSigInChkTm;
	/* VAR (analog) */
	struct tySOTSigInChkInternal tyInternal;
	/* VAR_INPUT (digital) */
	plcbit bNomSig;
	plcbit bMagSizeSig;
	/* VAR_OUTPUT (digital) */
	plcbit bSigInValid;
	plcbit bMagSizeLarge;
} fbSOTSigInChk_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void fbSOTUS(struct fbSOTUS* inst);
_BUR_PUBLIC void fbSOTDS(struct fbSOTDS* inst);
_BUR_PUBLIC void fbSOTMagSeq(struct fbSOTMagSeq* inst);
_BUR_PUBLIC void fbSOTTransportIdle(struct fbSOTTransportIdle* inst);
_BUR_PUBLIC void fbSOTUSTransporting(struct fbSOTUSTransporting* inst);
_BUR_PUBLIC void fbSOTDSTransporting(struct fbSOTDSTransporting* inst);
_BUR_PUBLIC void fbSOTSigInChk(struct fbSOTSigInChk* inst);


#ifdef __cplusplus
};
#endif
#endif /* _NTSOT_ */

