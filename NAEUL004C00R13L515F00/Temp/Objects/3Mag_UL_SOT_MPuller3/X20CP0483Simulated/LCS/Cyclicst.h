#ifndef __AS__TYPE_
#define __AS__TYPE_
static signed long __AS__STRING_CMP(char* pstr1, char* pstr2);
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
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

#ifndef __AS__TYPE_eTLBuzMod
#define __AS__TYPE_eTLBuzMod
typedef enum eTLBuzMod
{	TLBuzModNutek = 0,
	TLBuzModAptiv = 1,
	TLBuzModMEK = 2,
	TLBuzModBHTC = 3,
	TLBuzModSiemens_2Colour = 4,
} eTLBuzMod;
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

#ifndef __AS__TYPE_tyAlarmCurr
#define __AS__TYPE_tyAlarmCurr
typedef struct tyAlarmCurr
{	eAlmSeverity eSeverity;
	plcstring sMsg[301];
	plcbit bAlm;
	plcbit bWarning;
	unsigned long udiErrorCode;
	plcstring sProgNm[16];
	plcstring sDT[81];
	unsigned long udiModErrCode;
} tyAlarmCurr;
#endif

#ifndef __AS__TYPE_tyProdRcpParam
#define __AS__TYPE_tyProdRcpParam
typedef struct tyProdRcpParam
{	plcstring sRcpNm[255];
	signed long diWidthInUM;
	signed long diWidthInUM2;
	signed long diIntvlCntr;
	signed long diMinSltValue;
	signed long diMaxSltValue;
	signed long diPitch;
	signed long diBrdPerSlt;
	unsigned char usiMcMod;
	plcbit bTopToBtm;
	plcbit bGapBwtnBrd;
	plcbit bLongBrd;
	signed long diMinReqFreeBffr;
	plcstring sDisplayInfo[31];
	plcdt dtLastModified;
	signed long diMtrPshrExtSpd;
	signed long diMtrPshrExtTorq;
	signed long diPshrOffset;
} tyProdRcpParam;
#endif

#ifndef __AS__TYPE_tyMagRcpParam
#define __AS__TYPE_tyMagRcpParam
typedef struct tyMagRcpParam
{	plcstring sRcpNm[31];
	signed long diTtlSlt;
	signed long diSltToSltInUM;
	signed long diMag1Slt1PosInUM;
	signed long diMag2Slt1PosInUM;
	signed long diMag3Slt1PosInUM;
	signed long diMag1TravPosInUM;
	signed long diMag2TravPosInUM;
	signed long diMag3TravPosInUM;
	unsigned char usiMagModel;
	plcstring sDisplayInfo[31];
	signed long diMagMaxBrdWidth;
	plcdt dtLastModified;
	plcbit bSafetyBarDisabled;
	plcbit bMagHeightChkEn;
} tyMagRcpParam;
#endif

#ifndef __AS__TYPE_tyUILmt
#define __AS__TYPE_tyUILmt
typedef struct tyUILmt
{	signed long diMax;
	signed long diMin;
} tyUILmt;
#endif

#ifndef __AS__TYPE_tyDigitalInputSettings
#define __AS__TYPE_tyDigitalInputSettings
typedef struct tyDigitalInputSettings
{	signed long diSafetyRlySig;
	signed long diEStopSig;
	signed long diCoverSWSig;
	signed long diUBAA;
	signed long diUBAB;
	signed long diUBAAStat;
	signed long diUBABStat;
	signed long diPusherExtRS;
	signed long diPusherRetRS;
	signed long diConvLftSen;
	signed long diConvMidSen;
	signed long diConvRgtSen;
	signed long diConvClrSen;
	signed long diOvenInfeedSigA;
	signed long diOvenInfeedSigB;
	signed long diLifterTimingBeltSen;
	signed long diLifterSafetyLmtSW1;
	signed long diLifterSafetyLmtSW2;
	signed long diMag1FixedClampRS;
	signed long diMag1FixedUnclampRS;
	signed long diMag1RemoteClampRS;
	signed long diMag1RemoteUnclampRS;
	signed long diMag2FixedClampRS;
	signed long diMag2FixedUnclampRS;
	signed long diMag2RemoteClampRS;
	signed long diMag2RemoteUnclampRS;
	signed long diMag3FixedClampRS;
	signed long diMag3FixedUnclampRS;
	signed long diMag3RemoteClampRS;
	signed long diMag3RemoteUnclampRS;
	signed long diInShutterOpenRS;
	signed long diInShutterCloseRS;
	signed long diOutShutterOpenRS;
	signed long diOutShutterCloseRS;
	signed long diMagPresentSen1;
	signed long diMagPresentSen2;
	signed long diMagPresentSen3;
	signed long diMagConvEntSen1;
	signed long diMagConvEntSen2;
	signed long diMagConvEntSen3;
	signed long diMag1AIVInPosSen1;
	signed long diMag1AIVInPosSen2;
	signed long diMag2AIVInPosSen1;
	signed long diMag2AIVInPosSen2;
	signed long diMag3AIVInPosSen1;
	signed long diMag3AIVInPosSen2;
	signed long diMag1OrientChkSen1;
	signed long diMag1OrientChkSen2;
	signed long diMag2OrientChkSen1;
	signed long diMag2OrientChkSen2;
	signed long diMag3OrientChkSen1;
	signed long diMag3OrientChkSen2;
	signed long diUSWidthChkSen;
	signed long diConvLineAInletSen;
	signed long diConvLineBInletSen;
	signed long diMagConvHeightSen1;
	signed long diMagConvHeightSen2;
	signed long diMagConvHeightSen3;
	signed long diMagConvSmallMagSen1;
	signed long diMagConvSmallMagSen2;
	signed long diMagConvSmallMagSen3;
	signed long diMagConvLargeMagSen1;
	signed long diMagConvLargeMagSen2;
	signed long diMagConvLargeMagSen3;
	signed long diMagConvCAB717MagSen1;
	signed long diMagConvCAB717MagSen2;
	signed long diMagConvCAB717MagSen3;
	signed long diMag1SelUnClampRS;
	signed long diMag2SelUnClampRS;
	signed long diMag3SelUnClampRS;
	signed long diMag1WallEngageRS;
	signed long diMag1WallDisengageRS;
	signed long diMag2WallEngageRS;
	signed long diMag2WallDisengageRS;
	signed long diMag3WallEngageRS;
	signed long diMag3WallDisengageRS;
	signed long diMag1SafetyBarExtRS;
	signed long diMag1SafetyBarRetRS;
	signed long diMag2SafetyBarExtRS;
	signed long diMag2SafetyBarRetRS;
	signed long diMag3SafetyBarExtRS;
	signed long diMag3SafetyBarRetRS;
	signed long diSOT1Receive;
	signed long diSOT1AIVError;
	signed long diSOT1AIVSizeLarge;
	signed long diSOT1AIVReady;
	signed long diSOT1AIVAvailable;
	signed long diSOT2Receive;
	signed long diSOT2AIVError;
	signed long diSOT2AIVSizeLarge;
	signed long diSOT2AIVReady;
	signed long diSOT2AIVAvailable;
	signed long diSOT3Receive;
	signed long diSOT3AIVError;
	signed long diSOT3AIVSizeLarge;
	signed long diSOT3AIVReady;
	signed long diSOT3AIVAvailable;
	signed long diSOT4Receive;
	signed long diSOT4AIVError;
	signed long diSOT4AIVSizeLarge;
	signed long diSOT4AIVReady;
	signed long diSOT4AIVAvailable;
	signed long diFleetManagerReady;
	signed long diPusherExtSlwSen;
	signed long diPusherRetSlwSen;
	signed long diMtrPshrTorqueSig;
	signed long diMtrPshrAlmSig;
	signed long diMagWidthChkSen;
	signed long diPshrAntiJam;
	signed long diInMagConvEntSen;
	signed long diInMagConvExtSen;
	signed long diInMagConvMidSen;
	signed long diOutMagConvEntSen;
	signed long diOutMagConvExtSen;
	signed long diOutMagConvMidSen;
	signed long diInMagConv2EntSen;
	signed long diInMagConv2ExtSen;
	signed long diInMagConv2MidSen;
	signed long diOutMagConv2EntSen;
	signed long diOutMagConv2ExtSen;
	signed long diOutMagConv2MidSen;
	signed long diLifterLmtSW;
	signed long diLifter2LmtSW;
	signed long diMtrOverloadSig;
	signed long diOutShutterOpenRS2;
	signed long diOutShutterCloseRS2;
	signed long diOutShutterOpenRS3;
	signed long diOutShutterCloseRS3;
	signed long diMag1FixedClampSen;
	signed long diMag2FixedClampSen;
	signed long diMag3FixedClampSen;
	signed long diCurtainSenPB;
	signed long diCurtainSen;
	signed long diCurtainSafetySig;
	signed long diHighMagDetSen1;
	signed long diHighMagDetSen2;
	signed long diHighMagDetSen3;
	signed long diInletStopperASen;
	signed long diScanComplSig;
	signed long diPCBScanSen;
	signed long diSPARE17;
	signed long diSPARE18;
	signed long diSPARE19;
	signed long diSPARE20;
} tyDigitalInputSettings;
#endif

#ifndef __AS__TYPE_tyDigitalOutputSettings
#define __AS__TYPE_tyDigitalOutputSettings
typedef struct tyDigitalOutputSettings
{	signed long diSafetyRlyRst;
	signed long diTLRed;
	signed long diTLAmber;
	signed long diTLGreen;
	signed long diBuzzer;
	signed long diUSBA;
	signed long diUSBB;
	signed long diOvenInfoSigA;
	signed long diOvenInfoSigB;
	signed long diPusherExtCtrl;
	signed long diStopperUnblkCtrlA;
	signed long diStopperUnblkCtrlB;
	signed long diMag1FixedClampCtrl;
	signed long diMag1RemoteClampCtrl;
	signed long diMag2FixedClampCtrl;
	signed long diMag2RemoteClampCtrl;
	signed long diMag3FixedClampCtrl;
	signed long diMag3RemoteClampCtrl;
	signed long diInShutterOpenCtrl;
	signed long diInShutterCloseCtrl;
	signed long diOutShutterOpenCtrl;
	signed long diOutShutterCloseCtrl;
	signed long diMag1ConvMtrIn;
	signed long diMag1ConvMtrOut;
	signed long diMag2ConvMtrIn;
	signed long diMag2ConvMtrOut;
	signed long diMag3ConvMtrIn;
	signed long diMag3ConvMtrOut;
	signed long diMag1SelClampCtrl;
	signed long diMag2SelClampCtrl;
	signed long diMag3SelClampCtrl;
	signed long diPushConvMtrOn;
	signed long diMag1WallEngageCtrl;
	signed long diMag2WallEngageCtrl;
	signed long diMag3WallEngageCtrl;
	signed long diMag1SafetyBarRetCtrl;
	signed long diMag2SafetyBarRetCtrl;
	signed long diMag3SafetyBarRetCtrl;
	signed long diSOT1MagError;
	signed long diSOT1MagSizeLarge;
	signed long diSOT1MagReady;
	signed long diSOT1MagAvailable;
	signed long diSOT2MagError;
	signed long diSOT2MagSizeLarge;
	signed long diSOT2MagReady;
	signed long diSOT2MagAvailable;
	signed long diSOT3MagError;
	signed long diSOT3MagSizeLarge;
	signed long diSOT3MagReady;
	signed long diSOT3MagAvailable;
	signed long diSOT4MagError;
	signed long diSOT4MagSizeLarge;
	signed long diSOT4MagReady;
	signed long diSOT4MagAvailable;
	signed long diMagAWOpenLimByp1;
	signed long diMagAWOpenLimByp2;
	signed long diMagAWOpenLimByp3;
	signed long diMagAWOpenLimByp4;
	signed long diMagAWSmallLimSen1;
	signed long diMagAWSmallLimSen2;
	signed long diMagAWSmallLimSen3;
	signed long diMagAWSmallLimSen4;
	signed long diMag1ReqToBring;
	signed long diMag1ReqToGet;
	signed long diMag2ReqToBring;
	signed long diMag2ReqToGet;
	signed long diMag3ReqToBring;
	signed long diMag3ReqToGet;
	signed long diMag4ReqToBring;
	signed long diMag4ReqToGet;
	signed long diMtrPshrExt;
	signed long diMtrPshrRet;
	signed long diMtrPshrOn;
	signed long diMtrPshrBrakeRls;
	signed long diMtrPshrSpdBinBit0;
	signed long diMtrPshrSpdBinBit1;
	signed long diMtrPshrSpdBinBit2;
	signed long diMtrPshrAlmRst;
	signed long diInMagConvMtrOn;
	signed long diOutMagConvMtrOn;
	signed long diInMagConv2MtrOn;
	signed long diOutMagConv2MtrOn;
	signed long diEntTopStprUnblkCtrl;
	signed long diMidTopStprUnblkCtrl;
	signed long diExtTopStprUnblkCtrl;
	signed long diMidBtmStprUnblkCtrl;
	signed long diExtBtmStprUnblkCtrl;
	signed long diEntTopStprUnblkCtrl2;
	signed long diMidTopStprUnblkCtrl2;
	signed long diExtTopStprUnblkCtrl2;
	signed long diMidBtmStprUnblkCtrl2;
	signed long diExtBtmStprUnblkCtrl2;
	signed long diMtrPwrRly;
	signed long diMag1FixedClampOpenCtrl;
	signed long diMag1RemoteClampOpenCtrl;
	signed long diMag2FixedClampOpenCtrl;
	signed long diMag2RemoteClampOpenCtrl;
	signed long diMag3FixedClampOpenCtrl;
	signed long diMag3RemoteClampOpenCtrl;
	signed long diOutShutterOpenCtrl2;
	signed long diOutShutterCloseCtrl2;
	signed long diOutShutterOpenCtrl3;
	signed long diOutShutterCloseCtrl3;
	signed long diBypCurtainSen;
	signed long diRstCurtainSen;
	signed long diBypCurtainPBLED;
	signed long diInletStopperRetCtrl;
	signed long diInletStopperExtCtrl;
	signed long diScanTrigSig;
	signed long diMag1ExitPCB;
	signed long diMag2ExitPCB;
	signed long diMag3ExitPCB;
	signed long diMag1SelUnClampCtrl;
} tyDigitalOutputSettings;
#endif

#ifndef __AS__TYPE_eULMag
#define __AS__TYPE_eULMag
typedef enum eULMag
{	ULMagDual = 0,
	ULMagTriple = 1,
	ULMagQuadruple = 2,
} eULMag;
#endif

#ifndef __AS__TYPE_eConvDir
#define __AS__TYPE_eConvDir
typedef enum eConvDir
{	ConvDirLToR = 0,
	ConvDirRToL = 1,
	ConvDirLToL = 2,
	ConvDirRToR = 3,
} eConvDir;
#endif

#ifndef __AS__TYPE_eLifMagULUpdateData
#define __AS__TYPE_eLifMagULUpdateData
typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted = 0,
	BufferActLoadWhenCompleted = 1,
} eLifMagULUpdateData;
#endif

#ifndef __AS__TYPE_tyMotionCANParamInHm
#define __AS__TYPE_tyMotionCANParamInHm
typedef struct tyMotionCANParamInHm
{	signed char siMode;
	signed long diStartVelInUMPS;
	signed long diOffsetVelInUMPS;
	signed long diAcc;
} tyMotionCANParamInHm;
#endif

#ifndef __AS__TYPE_tyMotionCANParamInConvert
#define __AS__TYPE_tyMotionCANParamInConvert
typedef struct tyMotionCANParamInConvert
{	signed long diPitchInUM;
	signed long diPulsePerRev;
	signed long diPrimaryGearRatio;
	signed long diSecondaryGearRatio;
} tyMotionCANParamInConvert;
#endif

#ifndef __AS__TYPE_tyMotionParam
#define __AS__TYPE_tyMotionParam
typedef struct tyMotionParam
{	signed long diAccInMS;
	signed long diDecInMS;
	signed long diAutoSpdInUMPS;
} tyMotionParam;
#endif

#ifndef __AS__TYPE_tyMotionCANTuning
#define __AS__TYPE_tyMotionCANTuning
typedef struct tyMotionCANTuning
{	signed long diAsdaA2Inertia;
	signed long diAsdaA2PosLoopGain;
	signed long diAsdaA2PosFFGain;
	signed long diAsdaA2SpdLoopGain;
	signed long diAsdaA2SpdIntegral;
	signed long diAsdaA2LowPassFltr;
	signed long diAsdaA2AntiInterGain;
	signed long diAsdaA2FirstTorqueCmd;
	signed long diLex28LTNDderivativeGain_P800;
	signed long diLex28LTNIintegralGain_P801;
	signed long diLex28LTNIVdeIntlGain_P802;
	signed long diLex28LTNPpropotionalGain_P803;
	signed long diLex28LTNUSERGAIN_P804;
	signed long diLex28NLAFFLPFHZspringFil_P805;
	signed long diLex28NLFILTDAMPING_P814;
	signed long diLex28NLFILTT1_P815;
	signed long diPronetInertia;
	signed long diPronetRealTimeAutoAdjSet;
	signed long diPronetPosLoopGain;
	signed long diPronetSpdLoopGain;
	signed long diPronetSpdIntegral;
	signed long diPronetTorqueFilter;
	signed long diPronetPosFeedForward;
	signed long diPronetLowSpeedTestFiltering;
	signed long diPronetStopMode;
} tyMotionCANTuning;
#endif

#ifndef __AS__TYPE_eServoMotorType
#define __AS__TYPE_eServoMotorType
typedef enum eServoMotorType
{	DeltaAsdaA2 = 0,
	SchneiderLexium28 = 1,
	EstunPronet = 2,
} eServoMotorType;
#endif

#ifndef __AS__TYPE_PPTorqParam
#define __AS__TYPE_PPTorqParam
typedef struct PPTorqParam
{	unsigned char usiStartTorque;
	unsigned short uiRatio;
} PPTorqParam;
#endif

#ifndef __AS__TYPE_eMidSenParam
#define __AS__TYPE_eMidSenParam
typedef enum eMidSenParam
{	No = 0,
	NcBoschChina = 1,
} eMidSenParam;
#endif

#ifndef __AS__TYPE_eCustomer
#define __AS__TYPE_eCustomer
typedef enum eCustomer
{	NA = 0,
	Bosch_China = 1,
	Bosch_Portugal = 2,
	Bosch_America = 3,
	Bosch_Malaysia = 4,
	Siemens = 5,
	We_Fabricate = 6,
	New_Member5 = 7,
	New_Member6 = 8,
	New_Member7 = 9,
	New_Member8 = 10,
	New_Member9 = 11,
	New_Member10 = 12,
} eCustomer;
#endif

#ifndef __AS__TYPE_eAutoRcpLmt
#define __AS__TYPE_eAutoRcpLmt
typedef struct eAutoRcpLmt
{	signed long diMaxBottomCleranceInUM;
	signed long diMaxTopClearamceInUM;
	signed long diThicknessInUM;
} eAutoRcpLmt;
#endif

#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
#endif

#ifndef __AS__TYPE_tyNtParam
#define __AS__TYPE_tyNtParam
typedef struct tyNtParam
{	tyDigitalInputSettings tyDISettings;
	tyDigitalOutputSettings tyDOSettings;
	plcbit bAWPusherPrep;
	plcbit bAWPrep;
	plcbit bLFPrep;
	plcbit bLeaderMc;
	plcbit bLFUsrSetPrep;
	signed long diLFWidthLimit;
	plcbit bLFProdWidthChk;
	plcbit bUSWidthChkPrep;
	plcbit bLCSLFPrep;
	plcbit bLCSReqRcpPrep;
	plcbit bLCSManageRcpPrep;
	plcbit bLCSLiveDatPrep;
	plcbit bIPCSMEMA9851ExtdPrep;
	plcbit bVSMEMAPrep;
	plcbit bHermesPrep;
	plcbit bHermesRmtPrep;
	plcbit bOvenInfoPrep;
	plcbit bOvenInfoExtdPrep;
	plcbit bSSaverPrep;
	signed long diAWPushPulOffsetInUM;
	signed long diWidthOffsetInUM;
	plcstring sJobNo[31];
	unsigned char usiNtAddr;
	plcbit bProjLifterMagPlatform;
	plcbit bProjLaneBPrep;
	plcbit bProjBrdPerSltPrep;
	plcbit bProjLongBrdPrep;
	plcbit bProjInletShutPrep;
	plcbit bProjOutletShutPrep;
	plcbit bProjStopperAPrep;
	plcbit bProjStopperBPrep;
	plcbit bProjMag1ConvPrep;
	plcbit bProjMag2ConvPrep;
	plcbit bProjMag3ConvPrep;
	plcbit bProjLifter2Prep;
	plcbit bProjMagConvLane1Prep;
	plcbit bProjMagConvLane2Prep;
	plcbit bProjTopEntStprPrep;
	plcbit bProjTopMidStprPrep;
	plcbit bProjTopExtStprPrep;
	plcbit bProjBtmMidStprPrep;
	plcbit bProjBtmExtStprPrep;
	plcbit bProjTopEntStprPrep2;
	plcbit bProjTopMidStprPrep2;
	plcbit bProjTopExtStprPrep2;
	plcbit bProjBtmMidStprPrep2;
	plcbit bProjBtmExtStprPrep2;
	plcbit bProjMagOrientChkSenPrep;
	plcbit bProjAGVPrep;
	plcbit bProjTCPAGVSigPrep;
	plcbit bProjBypsInitConvPrep;
	plcbit bProjRlsNewProdPrep;
	plcbit bProjBtnInsertRmvMag;
	plcbit bProjSOTSensorPrep;
	plcbit bProjMotorizedPusherPrep;
	plcbit bProjMagAWPrep;
	plcbit bProjMagSafetyBarPrep;
	signed long diProjMagMinSlt;
	signed long diProjMagMaxSlt;
	eULMag eProjMag;
	eConvDir eProjConvDir;
	eConvDir eProjMagConvDir;
	eLifMagULUpdateData eProjMagBuffferActLoad;
	eConvDir eProjInMagConvDir;
	eConvDir eProjOutMagConvDir;
	eConvDir eProjLifterMagConvDir;
	eConvDir eProjInMagConv2Dir;
	eConvDir eProjOutMagConv2Dir;
	eConvDir eProjLifterMagConv2Dir;
	plcstring sUsrFolderProgNm[16];
	plcstring sLibVersionProgNm[16];
	plcstring sTimeProgNm[16];
	plcstring sHWInfoProgNm[16];
	plcstring sHWInfoDevice[4];
	plctime tTLChgRcpBlinkTm;
	plctime tTLErrBlinkTm;
	plctime tBuzErrOnTm;
	plctime tBuzErrRestTm;
	unsigned char usiBuzErrOnCntr;
	plcbit bBuzErrStopSeqEn;
	unsigned char usiBuzErrStopSeqCntr;
	plctime tTLWarnBlinkTm;
	plctime tBuzWarnOnTm;
	plctime tBuzWarnRestTm;
	unsigned char usiBuzWarnOnCntr;
	plcbit bBuzWarnStopSeqEn;
	unsigned char usiBuzWarnStopSeqCntr;
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
	eTLBuzMod eTLBuzMode;
	plcstring sAlmProgNm[16];
	unsigned long udiAlmFileKeepDay;
	plcstring sProdRcpProgNm[16];
	plcstring sProdRcpListFileNm[81];
	plcstring sProdRcpSingleFileNm[81];
	plcstring sMpProdRcpProgNm[16];
	plcstring sMpProdRcpFileNm[256];
	plcstring sMpProdRcpPVNm[101];
	plcstring sMagRcpProgNm[16];
	plcstring sMagRcpListFileNm[81];
	plcstring sMagRcpSingleFileNm[81];
	plcstring sMcParamProgNm[16];
	plcstring sMcParamFileNm[81];
	plcstring sUsrMgmtProgNm[16];
	plcstring sBffr1ProgNm[16];
	plcstring sBffr1FileNm[81];
	plcbit bBffr1NxtLoadSeq;
	plcstring sBffr2ProgNm[16];
	plcstring sBffr2FileNm[81];
	plcbit bBffr2NxtLoadSeq;
	plcstring sBffr3ProgNm[16];
	plcstring sBffr3FileNm[81];
	plcbit bBffr3NxtLoadSeq;
	plcstring sUSSMEMAAProgNm[16];
	plctime tUSSMEMAARstDlyTm;
	plctime tUSSMEMAASigInChkTm;
	plcstring sUSSMEMABProgNm[16];
	plctime tUSSMEMABRstDlyTm;
	plctime tUSSMEMABSigInChkTm;
	plcstring sUSSMEMA1ProgNm[16];
	plctime tUSSMEMA1RstDlyTm;
	plctime tUSSMEMA1SigInChkTm;
	plcstring sUSSMEMA2ProgNm[16];
	plctime tUSSMEMA2RstDlyTm;
	plctime tUSSMEMA2SigInChkTm;
	plcstring sUSSMEMA3ProgNm[16];
	plctime tUSSMEMA3RstDlyTm;
	plctime tUSSMEMA3SigInChkTm;
	plcstring sDSSMEMA1ProgNm[16];
	plctime tDSSMEMA1RstDlyTm;
	plctime tDSSMEMA1SigInChkTm;
	plcstring sDSSMEMA2ProgNm[16];
	plctime tDSSMEMA2RstDlyTm;
	plctime tDSSMEMA2SigInChkTm;
	plcstring sDSSMEMA3ProgNm[16];
	plctime tDSSMEMA3RstDlyTm;
	plctime tDSSMEMA3SigInChkTm;
	plcstring sInShutterProgNm[16];
	plcbit bInShutterTwoCtrlIn;
	plctime tInShutterExtTO;
	plctime tInShutterRetTO;
	plcstring sOutShutterProgNm[16];
	plcbit bOutShutterTwoCtrlIn;
	plctime tOutShutterExtTO;
	plctime tOutShutterRetTO;
	plcstring sSelClamp1ProgNm[16];
	plcbit bSelClamp1TwoCtrlIn;
	plctime tSelClamp1ExtDlyTm;
	plctime tSelClamp1RetDlyTm;
	plcstring sSelClamp2ProgNm[16];
	plcbit bSelClamp2TwoCtrlIn;
	plctime tSelClamp2ExtDlyTm;
	plctime tSelClamp2RetDlyTm;
	plcstring sSelClamp3ProgNm[16];
	plcbit bSelClamp3TwoCtrlIn;
	plctime tSelClamp3ExtDlyTm;
	plctime tSelClamp3RetDlyTm;
	plcstring sTopEntStprProgNm[16];
	plcbit bTopEntStprTwoCtrlIn;
	plctime tTopEntStprExtDlyTm;
	plctime tTopEntStprRetDlyTm;
	plcstring sTopMidStprProgNm[16];
	plcbit bTopMidStprTwoCtrlIn;
	plctime tTopMidStprExtDlyTm;
	plctime tTopMidStprRetDlyTm;
	plcstring sTopExtStprProgNm[16];
	plcbit bTopExtStprTwoCtrlIn;
	plctime tTopExtStprExtDlyTm;
	plctime tTopExtStprRetDlyTm;
	plcstring sBtmMidStprProgNm[16];
	plcbit bBtmMidStprTwoCtrlIn;
	plctime tBtmMidStprExtDlyTm;
	plctime tBtmMidStprRetDlyTm;
	plcstring sBtmExtStprProgNm[16];
	plcbit bBtmExtStprTwoCtrlIn;
	plctime tBtmExtStprExtDlyTm;
	plctime tBtmExtStprRetDlyTm;
	plcstring sTopEntStprProgNm2[16];
	plcbit bTopEntStprTwoCtrlIn2;
	plctime tTopEntStprExtDlyTm2;
	plctime tTopEntStprRetDlyTm2;
	plcstring sTopMidStprProgNm2[16];
	plcbit bTopMidStprTwoCtrlIn2;
	plctime tTopMidStprExtDlyTm2;
	plctime tTopMidStprRetDlyTm2;
	plcstring sTopExtStprProgNm2[16];
	plcbit bTopExtStprTwoCtrlIn2;
	plctime tTopExtStprExtDlyTm2;
	plctime tTopExtStprRetDlyTm2;
	plcstring sBtmMidStprProgNm2[16];
	plcbit bBtmMidStprTwoCtrlIn2;
	plctime tBtmMidStprExtDlyTm2;
	plctime tBtmMidStprRetDlyTm2;
	plcstring sBtmExtStprProgNm2[16];
	plcbit bBtmExtStprTwoCtrlIn2;
	plctime tBtmExtStprExtDlyTm2;
	plctime tBtmExtStprRetDlyTm2;
	plcstring sStopperAProgNm[16];
	plcbit bStopperATwoCtrlIn;
	plctime tStopperAExtDlyTm;
	plctime tStopperARetDlyTm;
	plcstring sStopperBProgNm[16];
	plcbit bStopperBTwoCtrlIn;
	plctime tStopperBExtDlyTm;
	plctime tStopperBRetDlyTm;
	plcstring sPshrConvProgNm[16];
	plcbit bPshrConvOnDirMod;
	plctime tPshrConvMtrOffDlyTm;
	plctime tPshrConvPshrExtTO;
	plctime tPshrConvPshrRetTO;
	plcstring sMag1SafetyBarProgNm[16];
	plcbit bMag1SafetyBarTwoCtrlIn;
	plctime tMag1SafetyBarExtTO;
	plctime tMag1SafetyBarRetTO;
	plcstring sMag2SafetyBarProgNm[16];
	plcbit bMag2SafetyBarTwoCtrlIn;
	plctime tMag2SafetyBarExtTO;
	plctime tMag2SafetyBarRetTO;
	plcstring sMag3SafetyBarProgNm[16];
	plcbit bMag3SafetyBarTwoCtrlIn;
	plctime tMag3SafetyBarExtTO;
	plctime tMag3SafetyBarRetTO;
	plcstring sMag1AWEngageProgNm[16];
	plcbit bMag1AWEngageTwoCtrlIn;
	plctime tMag1AWEngageExtTO;
	plctime tMag1AWEngageRetTO;
	plcstring sMag2AWEngageProgNm[16];
	plcbit bMag2AWEngageTwoCtrlIn;
	plctime tMag2AWEngageExtTO;
	plctime tMag2AWEngageRetTO;
	plcstring sMag3AWEngageProgNm[16];
	plcbit bMag3AWEngageTwoCtrlIn;
	plctime tMag3AWEngageExtTO;
	plctime tMag3AWEngageRetTO;
	plcstring sMagConv1ProgNm[16];
	plcbit bMagConv1OnDirMod;
	plctime tMagConv1MtrOffDlyTm;
	plctime tMagConv1ClprClampTO;
	plctime tMagConv1ClprUnclampTO;
	plcstring sMagConv2ProgNm[16];
	plcbit bMagConv2OnDirMod;
	plctime tMagConv2MtrOffDlyTm;
	plctime tMagConv2ClprClampTO;
	plctime tMagConv2ClprUnclampTO;
	plcstring sMagConv3ProgNm[16];
	plcbit bMagConv3OnDirMod;
	plctime tMagConv3MtrOffDlyTm;
	plctime tMagConv3ClprClampTO;
	plctime tMagConv3ClprUnclampTO;
	plcstring sMtrPshrProgNm[16];
	plcbit bMtrPshrDir;
	plctime tMtrPshrAlmRstTm;
	plctime tMtrPshrAlmTrigTm;
	plctime tMtrPshrExtTO;
	plctime tMtrPshrRetTO;
	signed long diMtrPshrExtSlowSpd;
	signed long diMtrPshrRetSlowSpd;
	signed long diMtrPshrExtNomSpd;
	signed long diMtrPshrRetNomSpd;
	signed long diMtrPshrExtTorq;
	signed long diMtrPshrRetTorq;
	signed long diMtrPshrStartTorq;
	plcstring sInMagConvProgNm[16];
	plcbit bInMagConvOnDirMod;
	plctime tInMagConvMtrOffDlyTm;
	plcstring sOutMagConvProgNm[16];
	plcbit bOutMagConvOnDirMod;
	plctime tOutMagConvMtrOffDlyTm;
	plcstring sLifterMagProgNm[16];
	plcbit bLifterMagOnDirMod;
	plctime tLifterMagMtrOffDlyTm;
	plctime tLifterMagClprClampTO;
	plctime tLifterMagClprUnclampTO;
	plcstring sInMagConv2ProgNm[16];
	plcbit bInMagConv2OnDirMod;
	plctime tInMagConv2MtrOffDlyTm;
	plcstring sOutMagConv2ProgNm[16];
	plcbit bOutMagConv2OnDirMod;
	plctime tOutMagConv2MtrOffDlyTm;
	plcstring sLifterMag2ProgNm[16];
	plcbit bLifterMag2OnDirMod;
	plctime tLifterMag2MtrOffDlyTm;
	plctime tLifterMagClprClampTO2;
	plctime tLifterMagClprUnclampTO2;
	plcstring sAWPushPullProgNm[16];
	plcstring sAWPushPullDevice[4];
	unsigned char usiAWPushPullNode;
	plcbit bAWPushPullDir;
	plcbit bAWPushPullDirBl;
	signed long diAWPushPullPitchInUM;
	signed long diAWPushPullMovBlDistInUM;
	tyMotionCANParamInHm tyAWPushPullParamInHm;
	tyMotionCANParamInConvert tyAWPushPullParamInConvert;
	tyMotionParam tyAWPushPullParam;
	tyMotionCANTuning tyAWPushPullTuning;
	eServoMotorType eAWPushPullServoMotorType;
	plcstring sAWProgNm[16];
	plcstring sAWDevice[4];
	unsigned char usiAWNode;
	plcbit bAWDir;
	plcbit bAWDirBl;
	signed long diAWPitchInUM;
	signed long diAWMovBlDistInUM;
	tyMotionCANParamInHm tyAWParamInHm;
	tyMotionCANParamInConvert tyAWParamInConvert;
	tyMotionParam tyAWParam;
	tyMotionCANTuning tyAWTuning;
	eServoMotorType eAWServoMotorType;
	plcstring sTravProgNm[16];
	plcstring sTravDevice[4];
	unsigned char usiTravNode;
	plcbit bTravDir;
	tyMotionCANParamInHm tyTravParamInHm;
	tyMotionCANParamInConvert tyTravParamInConvert;
	tyMotionParam tyTravParam;
	tyMotionCANTuning tyTravTuning;
	eServoMotorType eTravServoMotorType;
	signed long diTravAutoSpdLongBrdInUMPS;
	plcstring sLifterProgNm[16];
	plcstring sLifterDevice[4];
	unsigned char usiLifterNode;
	plcbit bLifterDir;
	tyMotionCANParamInHm tyLifterParamInHm;
	tyMotionCANParamInConvert tyLifterParamInConvert;
	tyMotionParam tyLifterParam;
	tyMotionCANTuning tyLifterTuning;
	eServoMotorType eLifterServoMotorType;
	plcstring sLifterProgNm2[16];
	plcstring sLifterDevice2[4];
	unsigned char usiLifterNode2;
	plcbit bLifterDir2;
	tyMotionCANParamInHm tyLifterParamInHm2;
	tyMotionCANParamInConvert tyLifterParamInConvert2;
	tyMotionParam tyLifterParam2;
	tyMotionCANTuning tyLifterTuning2;
	eServoMotorType eLifterServoMotorType2;
	plcstring sDIProgNm[16];
	plcstring sAGVProgNm[16];
	plcstring sAGVMag1ProgNm[16];
	plcstring sAGVMag2ProgNm[16];
	plcstring sAGVMag3ProgNm[16];
	plcstring sHermesProgNm[16];
	plcstring sHermesRetainFileNm[81];
	plcstring sHermesConfigFileNm[81];
	plcstring sUSHermesAProgNm[16];
	unsigned long udiUSHermesAFileKeepDay;
	unsigned long udiUSHermesAAliveTmInSec;
	plctime tUSHermesAConnTO;
	plcstring sUSHermesBProgNm[16];
	unsigned long udiUSHermesBFileKeepDay;
	unsigned long udiUSHermesBAliveTmInSec;
	plctime tUSHermesBConnTO;
	plcstring sRmtHermesProgNm[16];
	plcstring sRmtHermesConfigFileNm[81];
	unsigned long udiRmtHermesFileKeepDay;
	unsigned long udiRmtHermesAliveTmInSec;
	unsigned long udiRmtHermesSndBffrSize;
	unsigned long udiRmtHermesRcvBffrSize;
	plcstring sLFLeaderProgNm[16];
	plctime tLFLeaderOnlineChkDlyTm;
	plctime tLFLeaderSetTmOffDlyTm;
	plcstring sLFFollowerProgNm[16];
	plcstring sFollower1ProgNm[16];
	plcstring sFollower2ProgNm[16];
	plcstring sLCSProgNm[16];
	plcstring sLCSMngRcpProgNm[16];
	plcstring sLCSLFProgNm[16];
	plcstring sOpsTravLifULProgNm[16];
	plcstring sOpsMagUL1ProgNm[16];
	plcstring sOpsMagUL2ProgNm[16];
	plcstring sOpsMagUL3ProgNm[16];
	plcstring sOpsMagConvUL1ProgNm[16];
	plcstring sOpsMagConvUL2ProgNm[16];
	plcstring sOpsMagConvUL3ProgNm[16];
	plcstring sOpsInMagConv[16];
	plcstring sOpsOutMagConv[16];
	plcstring sOpsMagConvStprProgNm[16];
	plcstring sOpsMagConvStprProgNm1[16];
	tyUILmt tyProdRcpWidth;
	tyUILmt tyProdRcpMinSlt;
	tyUILmt tyProdRcpMaxSlt;
	tyUILmt tyProdRcpPitch;
	tyUILmt tyProdRcpBrdPerSlt;
	tyUILmt tyProdRcpMcModA;
	tyUILmt tyProdRcpMcModAB;
	tyUILmt tyProdRcpOvenMinReqFreeBffr;
	tyUILmt tyUISSaverTm;
	tyUILmt tyUIConvInitTm;
	tyUILmt tyUIMagConvRunTm;
	tyUILmt tyUILifterTopPos;
	tyUILmt tyUILifterBtmPos;
	tyUILmt tyUITranInErrDlyTm;
	tyUILmt tyUIOvenMaxBffrBtwnMc;
	tyUILmt tyUIHermesSndAliveTm;
	tyUILmt tyUIHermesLnID;
	tyUILmt tyUIAntiGapSenOnTm;
	tyUILmt tyUIAntiGapSenOffTm;
	tyUILmt tyUISltToSltDist;
	tyUILmt tyUIAWTargetPos;
	tyUILmt tyUIAWStepSize;
	tyUILmt tyUIAWNomSpd;
	tyUILmt tyUIAWSlwSpd;
	tyUILmt tyUITravTargetPos;
	tyUILmt tyUITravStepSize;
	tyUILmt tyUITravNomSpd;
	tyUILmt tyUITravSlwSpd;
	tyUILmt tyUILifterTargetPos;
	tyUILmt tyUILifterStepSize;
	tyUILmt tyUILifterNomSpd;
	tyUILmt tyUILifterSlwSpd;
	tyUILmt tyUIMagAWTargetPos;
	tyUILmt tyUIMagAWStepSize;
	tyUILmt tyUIMagAWNomSpd;
	tyUILmt tyUIMagAWSlwSpd;
	tyUILmt tyUILFIndexBeforeOven;
	tyUILmt tyUILFIndexAfterOven;
	plcstring sUIDefaultLoginNm[31];
	plcstring sUIDefaultLoginPw[31];
	plctime tShutterWaitTmr;
	tyUILmt tyUIAWOffset;
	plcbit bAutoLogoutPrep;
	tyUILmt tyUIAutoLogoutTm;
	plcbit bMagAutoVerifyPrep;
	tyUILmt tyUIMcParamMagAutoEntSenTm;
	plcbit bProjAIVInPosSenPrep;
	plcstring sMpNtParamFileNm[256];
	plcstring sMpNtParamPVNm[101];
	tyUILmt tyNetworkMode;
	plcbit bHermesSvyPrep;
	plcbit bHermesSvyFirstMcInTheLine1;
	plcbit bHermesSvyMagTypeMc;
	plcstring sSvyHermesProgNm[16];
	plcstring sSvyHermesConfigFileNm[81];
	unsigned long udiSvyHermesFileKeepDay;
	unsigned long udiSvyHermesAliveTmInSec;
	plctime tSvyHermesConnTO;
	plcstring sSvyHermesRetainFileNm[81];
	plcstring sDSHermesRetainFileNm[81];
	float rMachineCycleTime;
	float rAutoWidthCycleTime;
	plcbit bHermesScannerPrep1;
	signed short iInput;
	signed short iOutput;
	plcbit bLFProdWidth2Prep;
	plctime tLFFollowerOnlineChkDlyTm;
	plcstring sMagAW1ProgNm[16];
	plcstring sMagAW1Device[4];
	unsigned char usiMagAW1Node;
	plcbit bMagAW1Dir;
	plcbit bMagAW1DirBl;
	signed long diMagAW1PitchInUM;
	signed long diMagAW1MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW1ParamInHm;
	tyMotionCANParamInConvert tyMagAW1ParamInConvert;
	tyMotionParam tyMagAW1Param;
	tyMotionCANTuning tyMagAW1Tuning;
	signed long diMagAW1EngageSpdInUMPS;
	eServoMotorType eMagAW1ServoMotorType;
	signed long diMag1WidthOffsetInUM;
	plcstring sMagAW2ProgNm[16];
	plcstring sMagAW2Device[4];
	unsigned char usiMagAW2Node;
	plcbit bMagAW2Dir;
	plcbit bMagAW2DirBl;
	signed long diMagAW2PitchInUM;
	signed long diMagAW2MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW2ParamInHm;
	tyMotionCANParamInConvert tyMagAW2ParamInConvert;
	tyMotionParam tyMagAW2Param;
	tyMotionCANTuning tyMagAW2Tuning;
	signed long diMagAW2EngageSpdInUMPS;
	eServoMotorType eMagAW2ServoMotorType;
	signed long diMag2WidthOffsetInUM;
	plcstring sMagAW3ProgNm[16];
	plcstring sMagAW3Device[4];
	unsigned char usiMagAW3Node;
	plcbit bMagAW3Dir;
	plcbit bMagAW3DirBl;
	signed long diMagAW3PitchInUM;
	signed long diMagAW3MovBlDistInUM;
	tyMotionCANParamInHm tyMagAW3ParamInHm;
	tyMotionCANParamInConvert tyMagAW3ParamInConvert;
	tyMotionParam tyMagAW3Param;
	tyMotionCANTuning tyMagAW3Tuning;
	signed long diMagAW3EngageSpdInUMPS;
	eServoMotorType eMagAW3ServoMotorType;
	signed long diMag3WidthOffsetInUM;
	plcstring sMachineProgNm[16];
	plcstring sUSSOT1ProgNm[16];
	plctime tUSSOT1RstDlyTm;
	plctime tUSSOT1SigInChkTm;
	plcstring sUSSOT2ProgNm[16];
	plctime tUSSOT2RstDlyTm;
	plctime tUSSOT2SigInChkTm;
	plcstring sUSSOT3ProgNm[16];
	plctime tUSSOT3RstDlyTm;
	plctime tUSSOT3SigInChkTm;
	plcstring sDSSOT1ProgNm[16];
	plctime tDSSOT1RstDlyTm;
	plctime tDSSOT1SigInChkTm;
	plcstring sDSSOT2ProgNm[16];
	plctime tDSSOT2RstDlyTm;
	plctime tDSSOT2SigInChkTm;
	plcstring sDSSOT3ProgNm[16];
	plctime tDSSOT3RstDlyTm;
	plctime tDSSOT3SigInChkTm;
	plcbit bSOTReadyOnFirst;
	plcbit bShowMESName;
	plcbit bShowFMorMESActive;
	tyUILmt tyProdRcpMtrPshrExtSpd;
	tyUILmt tyProdRcpMtrPshrExtTorq;
	plcbit bProjUSFixToFixRail;
	plcbit bUIConvDirRL;
	plcbit bDSWidthChkPrep;
	plcbit bProjServoPullerPusherPrep;
	plcstring sPPProgNm[16];
	plcstring sPPDevice[4];
	unsigned char usiPPNode;
	plcbit bPPDir;
	plcbit bPPDirBl;
	signed long diPPPitchInUM;
	signed long diPPMovBlDistInUM;
	tyMotionCANParamInHm tyPPParamInHm;
	tyMotionCANParamInConvert tyPPParamInConvert;
	tyMotionParam tyPPParam;
	tyMotionCANTuning tyPPTuning;
	eServoMotorType ePPServoMotorType;
	plcbit bProjFixClprMagDetectSenPrep;
	plcbit bCurtainSenPrep;
	plcbit bProjMagHeightChkPrep;
	signed long diTravGoToMagWidthChkPt1;
	signed long diTravGoToMagWidthChkPt2;
	signed long diTravGoToMagWidthChkPt3;
	plcbit bProjOutletShut2Prep;
	plcbit bProjOutletShut3Prep;
	plcbit bProjScanPrep;
	plcbit bProjOpConPrep;
	PPTorqParam tyPPTorqParam;
	plcbit bProjLifTravMnlLoad;
	eMidSenParam eMidSenNcNoType;
	plcbit bHermesScannerPrep;
	plcbit bHermesSvyFirstMcInTheLine;
	plcbit bAutoRcpPrep;
	eCustomer eCustomerReq;
	plcbit bProjInletStopperPrep;
	plcstring sInletStopperProgNm[16];
	plcbit bInletStopperTwoCtrlIn;
	plctime tInletStopperExtDlyTm;
	plctime tInletStopperRetDlyTm;
	eAutoRcpLmt eAutoRcpParamLmt;
	plcstring sAutoRcpProgNm[16];
	eAutoRcpPreceded eAutoRcpPrecededBy;
	plcbit bChinesePrep;
	plcbit bGermanPrep;
	plcstring sHWInfoHMIMacAddress[28];
	tyUILmt tyUIBtnPosLmt;
	plcbit bAutoRcpF1ArbitratryType;
} tyNtParam;
#endif

#ifndef __AS__TYPE_eLCSAction
#define __AS__TYPE_eLCSAction
typedef enum eLCSAction
{	LCSActIdle = 0,
	LCSActAddProd = 1,
	LCSActAddMultiProd = 2,
	LCSActEditProd = 3,
	LCSActEditMultiProd = 4,
	LCSActOverWriteProd = 5,
	LCSActOverWriteMultiProd = 6,
	LCSActDelProd = 7,
	LCSActDelMultiProd = 8,
	LCSActRunProd = 9,
	LCSActUploadProd = 10,
	LCSActUploadMultiProd = 11,
	LCSActOverWriteMag = 12,
	LCSActDelMag = 13,
	LCSActUploadMag = 14,
} eLCSAction;
#endif

#ifndef __AS__TYPE_eLCSOpsStatus
#define __AS__TYPE_eLCSOpsStatus
typedef enum eLCSOpsStatus
{	LCSOpsStatusAuto = 0,
	LCSOpsStatusManual = 1,
	LCSOpsStatusStop = 2,
	LCSOpsStatusError = 3,
	LCSOpsStatusWarning = 4,
} eLCSOpsStatus;
#endif

#ifndef __AS__TYPE_tyLCSTagNm
#define __AS__TYPE_tyLCSTagNm
typedef struct tyLCSTagNm
{	eLCSAction eAct;
	eLCSAction eStat;
	unsigned long udiStatus;
	plcstring sErrMsg[201];
	signed short iIdxAct;
	signed short iIdxStat;
	tyProdRcpParam tyProdRcpInfo;
	tyProdRcpParam tyCurrProdRcpParam;
	plcstring sCurrRcpNm[31];
	float rCurrWidth;
	eLCSOpsStatus eCurrOpsStatus;
	unsigned char usiBrdStatus;
	unsigned char usiMode;
	signed short iTopToBtm;
	plcstring sLastModified[81];
	plcbit bMngRcpEn;
	plcbit bLiveData;
	plcbit bLFEn;
	plcstring sMcAlmMsg[200][256];
	plcbit bSectionLeaderEn;
	plcbit bBlkUS;
	plcbit bBlkDS;
	tyMagRcpParam tyMagRcpInfo;
	tyMagRcpParam tyCurrMagRcpParam;
	plcstring sCurrMagRcpNm[16];
} tyLCSTagNm;
#endif

#ifndef __AS__TYPE_tyAlmTxt
#define __AS__TYPE_tyAlmTxt
typedef struct tyAlmTxt
{	plcstring sAlmText[201];
	plcstring sRcyText[201];
} tyAlmTxt;
#endif

_BUR_PUBLIC signed short LEN(plcstring IN[32768]);
_BUR_PUBLIC plcstring* RIGHT(plcstring IN[32768], signed short L);
_BUR_PUBLIC plcstring* CONCAT(plcstring IN1[32768], plcstring IN2[32768]);
_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC plcstring* dt2str(plcdt IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcdt str2dt(plcstring IN[81]);
_BUR_LOCAL plcbit(* p_bLinkStartupRun);
_BUR_LOCAL plcbit(* p_bLinkNtParamProjLaneBPrep);
_BUR_LOCAL plcbit(* p_bLinkNtParamLCSLFPrep);
_BUR_LOCAL plcbit(* p_bLinkNtParamLCSManageRcpPrep);
_BUR_LOCAL plcbit(* p_bLinkNtParamLCSReqRcpPrep);
_BUR_LOCAL plcbit(* p_bLinkNtParamLCSLiveDatPrep);
_BUR_LOCAL plcbit(* p_bLinkMcParamLCSLFEn);
_BUR_LOCAL plcbit(* p_bLinkMcParamLCSManageRcpEn);
_BUR_LOCAL plcbit(* p_bLinkMcParamLCSReqRcpEn);
_BUR_LOCAL plcbit(* p_bLinkMcParamLCSLiveDatEn);
_BUR_LOCAL struct tyMagRcpParam(* p_tyLinkMcParamMagParamSelected);
_BUR_LOCAL plcbit(* p_bLinkPshrConvHvBrd);
_BUR_LOCAL eULMag(* p_eLinkNtParamProjMag);
_BUR_LOCAL plcbit(* p_bLinkBffr1MagRemoved);
_BUR_LOCAL plcbit(* p_bLinkBffr2MagRemoved);
_BUR_LOCAL plcbit(* p_bLinkBffr3MagRemoved);
_BUR_LOCAL struct tyAlarmCurr(* p_tyLinkAlarmCurrList)[200];
_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL eLCSAction(* p_eLCSMngRcp_PLCStat);
_BUR_LOCAL unsigned long(* p_udiLCSMngRcp_PLCStatus);
_BUR_LOCAL signed short(* p_iLCSMngRcp_PLCIdxAct);
_BUR_LOCAL signed short(* p_iLCSMngRcp_PLCIdxStat);
_BUR_LOCAL struct tyProdRcpParam(* p_tyLCSMngRcp_PLCProdRcpInfo);
_BUR_LOCAL eLCSAction(* p_eLCSLF_PLCStat);
_BUR_LOCAL unsigned long(* p_udiLCSLF_PLCStatus);
_BUR_LOCAL plcbit(* p_bLCSMngRcpChkLmt);
_BUR_LOCAL plcbit(* p_bLCSLFChkLmt);
_BUR_LOCAL plcbit(* p_bOpsRun);
_BUR_LOCAL plcbit(* p_bError);
_BUR_LOCAL plcbit(* p_bWarning);
_BUR_LOCAL plcbit(* p_bInfo);
_BUR_LOCAL plcbit(* p_bUIManual);
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpCurrRcp);
_BUR_LOCAL struct tyNtParam(* p_tyNtParamCurr);
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpCurrRcp);
_BUR_LOCAL struct tyMagRcpParam(* p_tyLCSMngRcp_PLCMagRcpInfo);
_BUR_LOCAL plcbit(* p_bLCSMngMagRcpChkLmt);
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL eLCSAction eLCSMngRcp_LCSAct;
_BUR_LOCAL signed short iLCSMngRcp_LCSIdxAct;
_BUR_LOCAL signed short iLCSMngRcp_LCSIdxStat;
_BUR_LOCAL tyProdRcpParam tyLCSMngRcp_LCSProdRcpInfo;
_BUR_LOCAL eLCSAction eLCSLF_LCSAct;
_BUR_LOCAL tyProdRcpParam tyLCSLF_LCSProdRcpInfo;
_BUR_LOCAL plcbit bChkLmtOK;
_BUR_LOCAL plcbit bChkLmtNG;
_BUR_LOCAL plcbit bChkMagLmtOk;
_BUR_LOCAL plcbit bChkMagLmtNG;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL eLCSAction eLCSMngRcp_PLCStat;
_BUR_LOCAL unsigned long udiLCSMngRcp_PLCStatus;
_BUR_LOCAL signed short iLCSMngRcp_PLCIdxAct;
_BUR_LOCAL signed short iLCSMngRcp_PLCIdxStat;
_BUR_LOCAL tyProdRcpParam tyLCSMngRcp_PLCProdRcpInfo;
_BUR_LOCAL eLCSAction eLCSLF_PLCStat;
_BUR_LOCAL unsigned long udiLCSLF_PLCStatus;
_BUR_LOCAL plcbit bLCSMngRcpChkLmt;
_BUR_LOCAL plcbit bLCSLFChkLmt;
_BUR_LOCAL plcbit bOpsRun;
_BUR_LOCAL plcbit bError;
_BUR_LOCAL plcbit bWarning;
_BUR_LOCAL plcbit bInfo;
_BUR_LOCAL plcbit bUIManual;
_BUR_LOCAL tyProdRcpParam tyProdRcpCurrRcp;
_BUR_LOCAL tyNtParam tyNtParamCurr;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL unsigned long udiFlagNo;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL tyLCSTagNm tyTagNm;
_BUR_LOCAL plcbit bLFRun;
_BUR_LOCAL plcbit bMngRcpRun;
_BUR_LOCAL plcstring sLastModifiedTemp[81];
_BUR_LOCAL plcstring sAddMsg[81];
_BUR_LOCAL tyMagRcpParam tyLCSMngRcp_LCSMagRcpInfo;
_GLOBAL unsigned long p_UIUIMnlMod;
_GLOBAL unsigned long p_StartupRun;
_GLOBAL unsigned long p_StartupNtSettingsLoadDone;
_GLOBAL unsigned long c_udiAlarmCurrMax;
_GLOBAL unsigned long p_AlarmErr;
_GLOBAL unsigned long p_AlarmWarning;
_GLOBAL unsigned long p_AlarmCurrList;
_GLOBAL unsigned long p_AlarmInfo;
_GLOBAL unsigned long p_MagRcpCurrRcp;
_GLOBAL unsigned long p_McParamLCSLFEn;
_GLOBAL unsigned long p_McParamLCSReqRcpEn;
_GLOBAL unsigned long p_McParamLCSManageRcpEn;
_GLOBAL unsigned long p_McParamLCSLiveDatEn;
_GLOBAL unsigned long p_NtParamCurr;
_GLOBAL unsigned long p_NtParamLCSLFPrep;
_GLOBAL unsigned long p_NtParamLCSReqRcpPrep;
_GLOBAL unsigned long p_NtParamLCSManageRcpPrep;
_GLOBAL unsigned long p_NtParamLCSLiveDatPrep;
_GLOBAL unsigned long p_NtParamProjLaneBPrep;
_GLOBAL unsigned long p_NtParamProjMag;
_GLOBAL unsigned long p_NtParamLCSProgNm;
_GLOBAL unsigned long p_Buffer1MagRemoved;
_GLOBAL unsigned long p_Buffer2MagRemoved;
_GLOBAL unsigned long p_Buffer3MagRemoved;
_GLOBAL unsigned long p_PshrConvHvBrd;
_GLOBAL unsigned long p_Follower2UpdtProdRcp;
_GLOBAL unsigned long p_LCSMngRcpStat;
_GLOBAL unsigned long p_LCSMngRcp_PLCStatus;
_GLOBAL unsigned long p_LCSMngRcp_PLCIdxAct;
_GLOBAL unsigned long p_LCSMngRcp_PLCIdxStat;
_GLOBAL unsigned long p_LCSMngRcp_PLCProdRcpInfo;
_GLOBAL unsigned long p_LCSMngRcpChkLmt;
_GLOBAL unsigned long p_LCSMngRcp_PLCMagRcpInfo;
_GLOBAL unsigned long p_LCSMngMagRcpChkLmt;
_GLOBAL unsigned long p_LCSLFStat;
_GLOBAL unsigned long p_LCSLF_PLCStatus;
_GLOBAL unsigned long p_LCSLFChkLmt;
_GLOBAL unsigned long p_OpsRun;
_LOCAL plcbit Edge0000100000;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Background(void);
static void __AS__Action__Act_Background_LiveData(void);
static void __AS__Action__Act_Main_Disable(void);
