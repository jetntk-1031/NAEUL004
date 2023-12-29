/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837632_29_
#define _BUR_1703837632_29_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMcParamAction
{	McParamActIdle,
	McParamActCreateDir,
	McParamActRead,
	McParamActWrite
} eMcParamAction;

typedef enum eMcSetCommMod
{	McSetCommModSMEMA,
	McSetCommModHermes
} eMcSetCommMod;

typedef enum eMcAGVCommProtocol
{	McSetAGVCommOPCUA,
	McSetAGVCommHardIO,
	McSetAGVCommDisabled,
	McSetAGVTCPEnableTCP,
	McSetAGVTCPDisableTCP
} eMcAGVCommProtocol;

typedef enum eMcMagExchangeMode
{	McSetMagXcAutoManMode,
	McSetMagXcAutoMode,
	McSetMagXcManMode
} eMcMagExchangeMode;

typedef enum eOptBtn
{	eNA = 0,
	eMagUnload = 1,
	eRlsNewMagazine1 = 2,
	eRlsNewMagazine2 = 3,
	eRlsNewMagazine3 = 4
} eOptBtn;

typedef struct tyAntiGapDly
{	signed long diSigOnTm;
	signed long diSigOffTm;
} tyAntiGapDly;

typedef struct tyBtnPos
{	enum eOptBtn ePos1;
	enum eOptBtn ePos2;
	enum eOptBtn ePos3;
	enum eOptBtn ePos4;
	enum eOptBtn ePos5;
	enum eOptBtn ePos6;
	enum eOptBtn ePos7;
} tyBtnPos;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyMcParam
{	plcbit a_bLFOnline[50];
	plcstring a_sLFIPAddr[50][16];
	plcstring sMcNm[31];
	unsigned short uiSSaverTmInSec;
	plcbit bSSaverEn;
	unsigned char usiDefaultMcMod;
	signed long diAWPusherAtHmPosInUM;
	signed long diWidthAtHmPosInUM;
	signed long diConvInitTmInMS;
	signed long diTranInErrDlyTmInMS;
	signed long diMag1ConvRunTmOutInMS;
	signed long diMag2ConvRunTmOutInMS;
	signed long diMag3ConvRunTmOutInMS;
	signed long diOvenMaxBffr;
	signed long diTravPosA;
	signed long diTravPosB;
	signed long diLifterPosA;
	signed long diLifterPosB;
	plcbit bAWPusherDis;
	plcbit bAWDis;
	plcbit bMnlAccDat;
	plcbit bAutoStepEn;
	plcbit bVSMEMAEn;
	plcbit bChgParamEn;
	plcbit bHermesRmtEn;
	plcbit bHermesSvyEn;
	plcbit bHermesScannerEn;
	plcbit bGapBwtnBrdEn;
	plcbit bLongBrdEn;
	plcbit bOvenEn;
	plcbit bExtdOvenEn;
	plcbit bInShutterDis;
	plcbit bStopperADis;
	plcbit bStopperBDis;
	plcbit bLFEn;
	plcbit bLCSLFEn;
	plcbit bLCSReqRcpEn;
	plcbit bLCSManageRcpEn;
	plcbit bLCSLiveDatEn;
	plcbit bLFLeaderMc;
	plcbit bSectionLeader;
	plcbit bUSWidthChkEn;
	signed long diWidthOffsetInUM;
	signed long diLFMcIdxBeforeOven;
	signed long diLFMcIdxAfterOven;
	signed long diLFMcIdxBeforeOven2;
	signed long diLFMcIdxAfterOven2;
	unsigned char usiLang;
	struct tyAntiGapDly tyLftSenAntiGapDly;
	struct tyAntiGapDly tyMidSenAntiGapDly;
	struct tyAntiGapDly tyRgtSenAntiGapDly;
	struct tyAntiGapDly tyClrSenAntiGapDly;
	enum eMcSetCommMod eUSCommA;
	struct tySMEMAParam tyUSCommASMEMA;
	enum eMcSetCommMod eUSCommB;
	plcbit bAutoLogoutEn;
	signed long diAutoLogoutTmInSec;
	plcstring sIPAddr[16];
	plcstring sSubnetMask[16];
	eNetworkConfigMod eNetworkMod;
	struct tySMEMAParam tyUSCommBSMEMA;
	signed long diMagAutoDetectSenTmInMS;
	plcbit bAGVComEn;
	struct tyAntiGapDly tyMagConvEntrySenAntiGapDly;
	struct tyAntiGapDly tyMagConvPresentSenAntiGapDly;
	plcbit bLFSeqStayActive;
	plcbit bMagAWDis;
	plcbit bMagSafetyBarDis;
	signed long diMag1WidthAtHmPosInUM;
	signed long diMag2WidthAtHmPosInUM;
	signed long diMag3WidthAtHmPosInUM;
	plcbit bLFBuzMute;
	enum eMcAGVCommProtocol eAGVComProtocol;
	enum eMcMagExchangeMode eMagExMode;
	plcbit bAIVSizeDisabled;
	signed long diTravInletFixtoFixPos;
	plcbit bDisableFMWarning;
	struct tyAntiGapDly tyLineAInletSenAntiGapDly;
	struct tyAntiGapDly tyLineBInletSenAntiGapDly;
	struct tyAntiGapDly tyUSWidthChkSenAntiGapDly;
	plcbit bDBAOnWOAlign;
	struct tyAntiGapDly tyInMagConvEntAntiGapDly;
	struct tyAntiGapDly tyInMagConvMidAntiGapDly;
	struct tyAntiGapDly tyInMagConvExtAntiGapDly;
	struct tyAntiGapDly tyOutMagConvEntAntiGapDly;
	struct tyAntiGapDly tyOutMagConvMidAntiGapDly;
	struct tyAntiGapDly tyOutMagConvExtAntiGapDly;
	struct tyAntiGapDly tyInMagConv2EntAntiGapDly;
	struct tyAntiGapDly tyInMagConv2MidAntiGapDly;
	struct tyAntiGapDly tyInMagConv2ExtAntiGapDly;
	struct tyAntiGapDly tyOutMagConv2EntAntiGapDly;
	struct tyAntiGapDly tyOutMagConv2MidAntiGapDly;
	struct tyAntiGapDly tyOutMagConv2ExtAntiGapDly;
	signed long diInMagConvRunTmOutInMS;
	signed long diOutMagConvRunTmOutInMS;
	signed long diLifterMagConvRunTmOutInMS;
	signed long diInMagConv2RunTmOutInMS;
	signed long diOutMagConv2RunTmOutInMS;
	signed long diLifterMagConv2RunTmOutInMS;
	signed long diLifterTopPos;
	signed long diLifterBtmPos;
	signed long diLifterTopPos2;
	signed long diLifterBtmPos2;
	signed long diTCPSvrPort;
	plcbit bMagWidthChkDis;
	signed long diMag1WidthChkDetDist;
	signed long diMag2WidthChkDetDist;
	signed long diMag3WidthChkDetDist;
	plcbit bTopScannerEn;
	plcbit bBtmScannerEn;
	plcstring sTopScanIPAddr[16];
	unsigned short uiTopScanSvrPort;
	plcstring sBtmScanIPAddr[16];
	unsigned short uiBtmScanSvrPort;
	plcbit bOpConEn;
	plcstring sOpConIPAddr[16];
	unsigned short uiOpConSvrPort;
	struct tyLocationParamData tyOpConParam;
	plcbit bSiemensPrep;
	plcbit bInStopperDis;
	signed long diInletStopperExtDelayTmInMS;
	signed long diMESResponseTOTmInMS;
	plcbit bMESEn;
	plcbit bSwitchingProdType;
	plcbit bAutoRcpDisable;
	plcbit bBatchIDChgOverCmp;
	plcbit bIgnoreTopClearance;
	plcbit bIgnoreBtmClearance;
	plcbit bIgnoreThickness;
	plcbit bDMCScannerEn;
	signed long diDMCScanTOErrInMs;
	struct tyBtnPos tyOptBtnPos;
	plcstring sHMIIPAddr[16];
	plcstring sDefaultGateWay[16];
} tyMcParam;
#else
/* Data type tyMcParam not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/McParam/McParam.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtLF/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837632_29_ */

