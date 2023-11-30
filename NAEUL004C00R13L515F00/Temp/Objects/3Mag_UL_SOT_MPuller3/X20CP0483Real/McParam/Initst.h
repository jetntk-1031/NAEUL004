#ifndef __AS__TYPE_
#define __AS__TYPE_
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

#ifndef __AS__TYPE_eNetworkConfigMod
#define __AS__TYPE_eNetworkConfigMod
typedef enum eNetworkConfigMod
{	SetIPManually = 0,
	IPFromDHCPServer = 1,
} eNetworkConfigMod;
#endif

#ifndef __AS__TYPE_eMcParamAction
#define __AS__TYPE_eMcParamAction
typedef enum eMcParamAction
{	McParamActIdle = 0,
	McParamActCreateDir = 1,
	McParamActRead = 2,
	McParamActWrite = 3,
} eMcParamAction;
#endif

#ifndef __AS__TYPE_tyAntiGapDly
#define __AS__TYPE_tyAntiGapDly
typedef struct tyAntiGapDly
{	signed long diSigOnTm;
	signed long diSigOffTm;
} tyAntiGapDly;
#endif

#ifndef __AS__TYPE_eMcSetCommMod
#define __AS__TYPE_eMcSetCommMod
typedef enum eMcSetCommMod
{	McSetCommModSMEMA = 0,
	McSetCommModHermes = 1,
} eMcSetCommMod;
#endif

#ifndef __AS__TYPE_eSMEMASelection
#define __AS__TYPE_eSMEMASelection
typedef enum eSMEMASelection
{	SMEMASelStandard = 0,
	SMEMASelIPC9851 = 1,
	SMEMASelIPC9851Ext = 2,
} eSMEMASelection;
#endif

#ifndef __AS__TYPE_tySMEMAParam
#define __AS__TYPE_tySMEMAParam
typedef struct tySMEMAParam
{	eSMEMASelection eSelection;
	plcbit bStatSigSetGd;
} tySMEMAParam;
#endif

#ifndef __AS__TYPE_eMcAGVCommProtocol
#define __AS__TYPE_eMcAGVCommProtocol
typedef enum eMcAGVCommProtocol
{	McSetAGVCommOPCUA = 0,
	McSetAGVCommHardIO = 1,
	McSetAGVCommDisabled = 2,
	McSetAGVTCPEnableTCP = 3,
	McSetAGVTCPDisableTCP = 4,
} eMcAGVCommProtocol;
#endif

#ifndef __AS__TYPE_eMcMagExchangeMode
#define __AS__TYPE_eMcMagExchangeMode
typedef enum eMcMagExchangeMode
{	McSetMagXcAutoManMode = 0,
	McSetMagXcAutoMode = 1,
	McSetMagXcManMode = 2,
} eMcMagExchangeMode;
#endif

#ifndef __AS__TYPE_tyLocationParamData
#define __AS__TYPE_tyLocationParamData
typedef struct tyLocationParamData
{	unsigned short uiLineNo;
	unsigned short uiStatNo;
	unsigned short uiStatIdx;
	unsigned short uiFuNo;
	unsigned short uiWorkPos;
	unsigned short uiToolPos;
	plcstring sProcessName[31];
	unsigned short uiProcessNo;
	plcstring sApplication[6];
} tyLocationParamData;
#endif

#ifndef __AS__TYPE_eOptBtn
#define __AS__TYPE_eOptBtn
typedef enum eOptBtn
{	eNA = 0,
	eMagUnload = 1,
	eRlsNewMagazine1 = 2,
	eRlsNewMagazine2 = 3,
	eRlsNewMagazine3 = 4,
} eOptBtn;
#endif

#ifndef __AS__TYPE_tyBtnPos
#define __AS__TYPE_tyBtnPos
typedef struct tyBtnPos
{	eOptBtn ePos1;
	eOptBtn ePos2;
	eOptBtn ePos3;
	eOptBtn ePos4;
	eOptBtn ePos5;
	eOptBtn ePos6;
	eOptBtn ePos7;
} tyBtnPos;
#endif

#ifndef __AS__TYPE_tyMcParam
#define __AS__TYPE_tyMcParam
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
	tyAntiGapDly tyLftSenAntiGapDly;
	tyAntiGapDly tyMidSenAntiGapDly;
	tyAntiGapDly tyRgtSenAntiGapDly;
	tyAntiGapDly tyClrSenAntiGapDly;
	eMcSetCommMod eUSCommA;
	tySMEMAParam tyUSCommASMEMA;
	eMcSetCommMod eUSCommB;
	plcbit bAutoLogoutEn;
	signed long diAutoLogoutTmInSec;
	plcstring sIPAddr[16];
	plcstring sSubnetMask[16];
	eNetworkConfigMod eNetworkMod;
	tySMEMAParam tyUSCommBSMEMA;
	signed long diMagAutoDetectSenTmInMS;
	plcbit bAGVComEn;
	tyAntiGapDly tyMagConvEntrySenAntiGapDly;
	tyAntiGapDly tyMagConvPresentSenAntiGapDly;
	plcbit bLFSeqStayActive;
	plcbit bMagAWDis;
	plcbit bMagSafetyBarDis;
	signed long diMag1WidthAtHmPosInUM;
	signed long diMag2WidthAtHmPosInUM;
	signed long diMag3WidthAtHmPosInUM;
	plcbit bLFBuzMute;
	eMcAGVCommProtocol eAGVComProtocol;
	eMcMagExchangeMode eMagExMode;
	plcbit bAIVSizeDisabled;
	signed long diTravInletFixtoFixPos;
	plcbit bDisableFMWarning;
	tyAntiGapDly tyLineAInletSenAntiGapDly;
	tyAntiGapDly tyLineBInletSenAntiGapDly;
	tyAntiGapDly tyUSWidthChkSenAntiGapDly;
	plcbit bDBAOnWOAlign;
	tyAntiGapDly tyInMagConvEntAntiGapDly;
	tyAntiGapDly tyInMagConvMidAntiGapDly;
	tyAntiGapDly tyInMagConvExtAntiGapDly;
	tyAntiGapDly tyOutMagConvEntAntiGapDly;
	tyAntiGapDly tyOutMagConvMidAntiGapDly;
	tyAntiGapDly tyOutMagConvExtAntiGapDly;
	tyAntiGapDly tyInMagConv2EntAntiGapDly;
	tyAntiGapDly tyInMagConv2MidAntiGapDly;
	tyAntiGapDly tyInMagConv2ExtAntiGapDly;
	tyAntiGapDly tyOutMagConv2EntAntiGapDly;
	tyAntiGapDly tyOutMagConv2MidAntiGapDly;
	tyAntiGapDly tyOutMagConv2ExtAntiGapDly;
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
	tyLocationParamData tyOpConParam;
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
	tyBtnPos tyOptBtnPos;
	plcstring sHMIIPAddr[16];
	plcstring sDefaultGateWay[16];
} tyMcParam;
#endif

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

#ifndef __AS__TYPE_eAlmSeverity
#define __AS__TYPE_eAlmSeverity
typedef enum eAlmSeverity
{	AlmSeverityNA = 0,
	AlmSeverityError = 1,
	AlmSeverityWarning = 2,
	AlmSeverityInfo = 3,
} eAlmSeverity;
#endif

#ifndef __AS__TYPE_tyAlmDat
#define __AS__TYPE_tyAlmDat
typedef struct tyAlmDat
{	unsigned long udiCode;
	eAlmSeverity eSeverity;
	plcstring sProgNm[16];
	plcstring sAlmMsg[201];
	plcstring sRcyMsg[201];
	unsigned long udiRunTime;
	unsigned long udiModuleNum;
	plcbit bAlm;
	plcbit bWarning;
} tyAlmDat;
#endif

_BUR_LOCAL eMcParamAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL tyMcParam tyMcParamCurr;
_BUR_LOCAL plcbit bFileNotFound;
_GLOBAL unsigned long p_McParamStat;
_GLOBAL unsigned long p_McParamStatus;
_GLOBAL unsigned long p_McParamStatTxt;
_GLOBAL unsigned long p_McParamAlmData;
_GLOBAL unsigned long p_McParamFileNotFound;
_GLOBAL unsigned long p_McParamCurr;
_GLOBAL unsigned long p_McParamLFOnline;
_GLOBAL unsigned long p_McParamLFIPAddr;
_GLOBAL unsigned long p_McParamMcNm;
_GLOBAL unsigned long p_McParamSSaverTm;
_GLOBAL unsigned long p_McParamSSaverEn;
_GLOBAL unsigned long p_McParamDefaultMcMod;
_GLOBAL unsigned long p_McParamWidthAtHmPos;
_GLOBAL unsigned long p_McParamConvInitTm;
_GLOBAL unsigned long p_McParamTranInErrDlyTm;
_GLOBAL unsigned long p_McParamMag1ConvRunTmOut;
_GLOBAL unsigned long p_McParamMag2ConvRunTmOut;
_GLOBAL unsigned long p_McParamMag3ConvRunTmOut;
_GLOBAL unsigned long p_McParamOvenMaxBffr;
_GLOBAL unsigned long p_McParamTravPosA;
_GLOBAL unsigned long p_McParamTravPosB;
_GLOBAL unsigned long p_McParamLifterPosA;
_GLOBAL unsigned long p_McParamLifterPosB;
_GLOBAL unsigned long p_McParamAWDis;
_GLOBAL unsigned long p_McParamMnlAccDat;
_GLOBAL unsigned long p_McParamAutoStepEn;
_GLOBAL unsigned long p_McParamVSMEMAEn;
_GLOBAL unsigned long p_McParamChgParamEn;
_GLOBAL unsigned long p_McParamHermesRmtEn;
_GLOBAL unsigned long p_McParamGapBwtnBrdEn;
_GLOBAL unsigned long p_McParamLongBrdEn;
_GLOBAL unsigned long p_McParamOvenEn;
_GLOBAL unsigned long p_McParamExtdOvenEn;
_GLOBAL unsigned long p_McParamInShutterDis;
_GLOBAL unsigned long p_McParamStopperADis;
_GLOBAL unsigned long p_McParamStopperBDis;
_GLOBAL unsigned long p_McParamMagAutoDetTm;
_GLOBAL unsigned long p_McParamAGVComEn;
_GLOBAL unsigned long p_McParamLFEn;
_GLOBAL unsigned long p_McParamLCSLFEn;
_GLOBAL unsigned long p_McParamLCSReqRcpEn;
_GLOBAL unsigned long p_McParamLCSManageRcpEn;
_GLOBAL unsigned long p_McParamLCSLiveDatEn;
_GLOBAL unsigned long p_McParamLFLeaderMc;
_GLOBAL unsigned long p_McParamSectionLeader;
_GLOBAL unsigned long p_McParamUSWidthChkEn;
_GLOBAL unsigned long p_McParamLFMcIdxBeforeOven;
_GLOBAL unsigned long p_McParamLFMcIdxAfterOven;
_GLOBAL unsigned long p_McParamLFMcIdxBeforeOven2;
_GLOBAL unsigned long p_McParamLFMcIdxAfterOven2;
_GLOBAL unsigned long p_McParamLang;
_GLOBAL unsigned long p_McParamConvLftSenAntiGap;
_GLOBAL unsigned long p_McParamConvLftSenOnTm;
_GLOBAL unsigned long p_McParamConvLftSenOffTm;
_GLOBAL unsigned long p_McParamConvMidSenAntiGap;
_GLOBAL unsigned long p_McParamConvMidSenOnTm;
_GLOBAL unsigned long p_McParamConvMidSenOffTm;
_GLOBAL unsigned long p_McParamConvRgtSenAntiGap;
_GLOBAL unsigned long p_McParamConvRgtSenOnTm;
_GLOBAL unsigned long p_McParamConvRgtSenOffTm;
_GLOBAL unsigned long p_McParamConvClrSenAntGap;
_GLOBAL unsigned long p_McParamConvClrSenOnTm;
_GLOBAL unsigned long p_McParamConvClrSenOffTm;
_GLOBAL unsigned long p_McParamMagConvEntrySenAntiGap;
_GLOBAL unsigned long p_McParamMagConvEntrySenOnTm;
_GLOBAL unsigned long p_McParamMagConvEntrySenOffTm;
_GLOBAL unsigned long p_McParamMagConvPresentAntiGap;
_GLOBAL unsigned long p_McParamMagConvPresentSenOnTm;
_GLOBAL unsigned long p_McParamMagConvPresentSenOffTm;
_GLOBAL unsigned long p_McParamUSCommAMod;
_GLOBAL unsigned long p_McParamUSSMEMAAParam;
_GLOBAL unsigned long p_McParamUSSMEMAASelection;
_GLOBAL unsigned long p_McParamUBAAStatSetGd;
_GLOBAL unsigned long p_McParamUSCommBMod;
_GLOBAL unsigned long p_McParamUSSMEMABParam;
_GLOBAL unsigned long p_McParamUSSMEMABSelection;
_GLOBAL unsigned long p_McParamUBABStatSetGd;
_GLOBAL unsigned long p_McParamWidthOffset;
_GLOBAL unsigned long p_McParamNetworkMod;
_GLOBAL unsigned long p_McParamLFSeqStayActive;
_GLOBAL unsigned long p_McParamAWPusherAtHmPos;
_GLOBAL unsigned long p_McParamAWPusherDis;
_GLOBAL unsigned long p_McParamMagAWDis;
_GLOBAL unsigned long p_McParamMagSafetyBarDis;
_GLOBAL unsigned long p_McParamMag1WidthAtHmPos;
_GLOBAL unsigned long p_McParamMag2WidthAtHmPos;
_GLOBAL unsigned long p_McParamMag3WidthAtHmPos;
_GLOBAL unsigned long p_McParamLFBuzMute;
_GLOBAL unsigned long p_McParamAGVComProtocol;
_GLOBAL unsigned long p_McParamMagExMode;
_GLOBAL unsigned long p_McParamTravInletFixtoFixPos;
_GLOBAL unsigned long p_McParamDisableFMWarning;
_GLOBAL unsigned long p_McParamConvLineAInletSenOnTm;
_GLOBAL unsigned long p_McParamConvLineAInletSenOffTm;
_GLOBAL unsigned long p_McParamConvLineBInletSenOnTm;
_GLOBAL unsigned long p_McParamConvLineBInletSenOffTm;
_GLOBAL unsigned long p_McParamUSWidthChkSenOnTm;
_GLOBAL unsigned long p_McParamUSWidthChkSenOffTm;
_GLOBAL unsigned long p_McParamDBAOnWOAlign;
_GLOBAL unsigned long p_McParamInMagConvEntSenOnTm;
_GLOBAL unsigned long p_McParamInMagConvEntSenOffTm;
_GLOBAL unsigned long p_McParamInMagConvExtSenOnTm;
_GLOBAL unsigned long p_McParamInMagConvExtSenOffTm;
_GLOBAL unsigned long p_McParamInMagConvMidSenOnTm;
_GLOBAL unsigned long p_McParamInMagConvMidSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConvEntSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConvEntSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConvExtSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConvExtSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConvMidSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConvMidSenOffTm;
_GLOBAL unsigned long p_McParamInMagConv2EntSenOnTm;
_GLOBAL unsigned long p_McParamInMagConv2EntSenOffTm;
_GLOBAL unsigned long p_McParamInMagConv2ExtSenOnTm;
_GLOBAL unsigned long p_McParamInMagConv2ExtSenOffTm;
_GLOBAL unsigned long p_McParamInMagConv2MidSenOnTm;
_GLOBAL unsigned long p_McParamInMagConv2MidSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConv2EntSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConv2EntSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConv2ExtSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConv2ExtSenOffTm;
_GLOBAL unsigned long p_McParamOutMagConv2MidSenOnTm;
_GLOBAL unsigned long p_McParamOutMagConv2MidSenOffTm;
_GLOBAL unsigned long p_McParamInMagConvRunTmOut;
_GLOBAL unsigned long p_McParamOutMagConvRunTmOut;
_GLOBAL unsigned long p_McParamLifterMagConvRunTmOut;
_GLOBAL unsigned long p_McParamInMagConv2RunTmOut;
_GLOBAL unsigned long p_McParamOutMagConv2RunTmOut;
_GLOBAL unsigned long p_McParamLifterMagConv2RunTmOut;
_GLOBAL unsigned long p_McParamLifterTopPos;
_GLOBAL unsigned long p_McParamLifterBtmPos;
_GLOBAL unsigned long p_McParamLifterTopPos2;
_GLOBAL unsigned long p_McParamLifterBtmPos2;
_GLOBAL unsigned long p_McParamTCPSvrPort;
_GLOBAL unsigned long p_McParamMagWidthChkDis;
_GLOBAL unsigned long p_McParamMag1WidthChkDetDist;
_GLOBAL unsigned long p_McParamMag2WidthChkDetDist;
_GLOBAL unsigned long p_McParamMag3WidthChkDetDist;
_GLOBAL unsigned long p_McParamTopScannerEn;
_GLOBAL unsigned long p_McParamBtmScannerEn;
_GLOBAL unsigned long p_McParamTopScanIP;
_GLOBAL unsigned long p_McParamTopScanPort;
_GLOBAL unsigned long p_McParamBtmScanIP;
_GLOBAL unsigned long p_McParamBtmScanPort;
_GLOBAL unsigned long p_McParamOpConEn;
_GLOBAL unsigned long p_McParamOpConIP;
_GLOBAL unsigned long p_McParamOpConPort;
_GLOBAL unsigned long p_McParamOpConParam;
_GLOBAL unsigned long p_McParamSiemensPrep;
_GLOBAL unsigned long p_McParamHermesSvyEn;
_GLOBAL unsigned long p_McParamHermesScannerEn;
_GLOBAL unsigned long p_McParamMESResponseTO;
_GLOBAL unsigned long p_McParamInStopperDis;
_GLOBAL unsigned long p_McParamInStopperExtDelayTm;
_GLOBAL unsigned long p_McParamMESEn;
_GLOBAL unsigned long p_McParamSwitchingProdType;
_GLOBAL unsigned long p_McParamAutoRcpDisable;
_GLOBAL unsigned long p_McParamAutoRcpBatchIDChgCmp;
_GLOBAL unsigned long p_McParamAutoRcpIgnoreBtmClr;
_GLOBAL unsigned long p_McParamAutoRcpIgnoreTopClr;
_GLOBAL unsigned long p_McParamAutoRcpIgnoreThickns;
_GLOBAL unsigned long p_McParamDMCScannerEn;
_GLOBAL unsigned long p_McParamDMCScanWriteTO;
_GLOBAL unsigned long p_McParamDefaultGateway;
_GLOBAL signed long c_diLFClntNum;
