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

#ifndef __AS__TYPE_eDOAction
#define __AS__TYPE_eDOAction
typedef enum eDOAction
{	DOActIdle = 0,
	DOActRstAll = 1,
	DOActSetBypassCoverSwitch = 2,
	DOActRstBypassCoverSwitch = 3,
} eDOAction;
#endif

#ifndef __AS__TYPE_tyDigitalOutput
#define __AS__TYPE_tyDigitalOutput
typedef struct tyDigitalOutput
{	plcbit bSafetyRlyRst;
	plcbit bTLRed;
	plcbit bTLAmber;
	plcbit bTLGreen;
	plcbit bBuzzer;
	plcbit bUSBA;
	plcbit bUSBB;
	plcbit bOvenInfoSigA;
	plcbit bOvenInfoSigB;
	plcbit bPusherExtCtrl;
	plcbit bStopperUnBlkCtrlA;
	plcbit bStopperUnBlkCtrlB;
	plcbit bMag1FixedClampCtrl;
	plcbit bMag1RemoteClampCtrl;
	plcbit bMag2FixedClampCtrl;
	plcbit bMag2RemoteClampCtrl;
	plcbit bMag3FixedClampCtrl;
	plcbit bMag3RemoteClampCtrl;
	plcbit bInShutterOpenCtrl;
	plcbit bInShutterCloseCtrl;
	plcbit bOutShutterOpenCtrl;
	plcbit bOutShutterCloseCtrl;
	plcbit bMag1ConvMtrIn;
	plcbit bMag1ConvMtrOut;
	plcbit bMag2ConvMtrIn;
	plcbit bMag2ConvMtrOut;
	plcbit bMag3ConvMtrIn;
	plcbit bMag3ConvMtrOut;
	plcbit bMag1SelClampCtrl;
	plcbit bMag2SelClampCtrl;
	plcbit bMag3SelClampCtrl;
	plcbit bPusherConvMtrOn;
	plcbit bMag1WallEngageCtrl;
	plcbit bMag2WallEngageCtrl;
	plcbit bMag3WallEngageCtrl;
	plcbit bMag1SafetyBarRetCtrl;
	plcbit bMag2SafetyBarRetCtrl;
	plcbit bMag3SafetyBarRetCtrl;
	plcbit bSOT1MagError;
	plcbit bSOT1MagSizeLarge;
	plcbit bSOT1MagReady;
	plcbit bSOT1MagAvailable;
	plcbit bSOT2MagError;
	plcbit bSOT2MagSizeLarge;
	plcbit bSOT2MagReady;
	plcbit bSOT2MagAvailable;
	plcbit bSOT3MagError;
	plcbit bSOT3MagSizeLarge;
	plcbit bSOT3MagReady;
	plcbit bSOT3MagAvailable;
	plcbit bSOT4MagError;
	plcbit bSOT4MagSizeLarge;
	plcbit bSOT4MagReady;
	plcbit bSOT4MagAvailable;
	plcbit bMagAWOpenLimByp1;
	plcbit bMagAWOpenLimByp2;
	plcbit bMagAWOpenLimByp3;
	plcbit bMagAWOpenLimByp4;
	plcbit bMagAWSmallLimSen1;
	plcbit bMagAWSmallLimSen2;
	plcbit bMagAWSmallLimSen3;
	plcbit bMagAWSmallLimSen4;
	plcbit bMag1ReqToBring;
	plcbit bMag1ReqToGet;
	plcbit bMag2ReqToBring;
	plcbit bMag2ReqToGet;
	plcbit bMag3ReqToBring;
	plcbit bMag3ReqToGet;
	plcbit bMag4ReqToBring;
	plcbit bMag4ReqToGet;
	plcbit bMtrPshrExt;
	plcbit bMtrPshrRet;
	plcbit bMtrPshrOn;
	plcbit bMtrPshrBrakeRls;
	plcbit bMtrPshrSpdBinBit0;
	plcbit bMtrPshrSpdBinBit1;
	plcbit bMtrPshrSpdBinBit2;
	plcbit bMtrPshrAlmRst;
	plcbit bInMagConvMtrOn;
	plcbit bOutMagConvMtrOn;
	plcbit bInMagConv2MtrOn;
	plcbit bOutMagConv2MtrOn;
	plcbit bEntTopStprUnblkCtrl;
	plcbit bMidTopStprUnblkCtrl;
	plcbit bExtTopStprUnblkCtrl;
	plcbit bMidBtmStprUnblkCtrl;
	plcbit bExtBtmStprUnblkCtrl;
	plcbit bEntTopStprUnblkCtrl2;
	plcbit bMidTopStprUnblkCtrl2;
	plcbit bExtTopStprUnblkCtrl2;
	plcbit bMidBtmStprUnblkCtrl2;
	plcbit bExtBtmStprUnblkCtrl2;
	plcbit bMtrPwrRly;
	plcbit bMag1FixedClampOpenCtrl;
	plcbit bMag1RemoteClampOpenCtrl;
	plcbit bMag2FixedClampOpenCtrl;
	plcbit bMag2RemoteClampOpenCtrl;
	plcbit bMag3FixedClampOpenCtrl;
	plcbit bMag3RemoteClampOpenCtrl;
	plcbit bOutShutterOpenCtrl2;
	plcbit bOutShutterCloseCtrl2;
	plcbit bOutShutterOpenCtrl3;
	plcbit bOutShutterCloseCtrl3;
	plcbit bBypCurtainSen;
	plcbit bRstCurtainSen;
	plcbit bBypCurtainPBLED;
	plcbit diInletStopperRetCtrl;
	plcbit diInletStopperExtCtrl;
	plcbit diScanTrigSig;
	plcbit diMag1ExitPCB;
	plcbit diMag2ExitPCB;
	plcbit diMag3ExitPCB;
	plcbit bMag1SelUnClampCtrl;
} tyDigitalOutput;
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

_BUR_LOCAL eDOAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL tyDigitalOutput tyDOutput;
_GLOBAL unsigned long p_DOStat;
_GLOBAL unsigned long p_DOStatus;
_GLOBAL unsigned long p_DOStatTxt;
_GLOBAL unsigned long p_DO;
