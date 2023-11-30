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

#ifndef __AS__TYPE_tyUIBtn
#define __AS__TYPE_tyUIBtn
typedef struct tyUIBtn
{	plcbit bRtCompl;
	plcbit bRtLk;
	plcbit bValue;
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiBitmapIdx;
	unsigned char usiColor;
	unsigned char usiPressedColor;
	unsigned char usiTxtIdx;
	unsigned short uiBitmapIdx;
} tyUIBtn;
#endif

#ifndef __AS__TYPE_tyUIHotspot
#define __AS__TYPE_tyUIHotspot
typedef struct tyUIHotspot
{	plcbit bRtCompl;
	plcbit bRtLk;
	plcbit bValue;
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
} tyUIHotspot;
#endif

#ifndef __AS__TYPE_tyUIBitmap
#define __AS__TYPE_tyUIBitmap
typedef struct tyUIBitmap
{	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
	unsigned char usiValueIdx;
	unsigned short uiValueIdx;
} tyUIBitmap;
#endif

#ifndef __AS__TYPE_tyUITxt
#define __AS__TYPE_tyUITxt
typedef struct tyUITxt
{	plcbit bHighlighting;
	plcstring sTxt[31];
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
	unsigned char usiValueIdx;
} tyUITxt;
#endif

#ifndef __AS__TYPE_tyUINum
#define __AS__TYPE_tyUINum
typedef struct tyUINum
{	plcbit bRtCompl;
	plcbit bRtLk;
	signed long diValue;
	signed long diValueMax;
	signed long diValueMin;
	signed long diValueTeach;
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiAddDigits;
	unsigned char usiColor;
	plcstring sKeypadTitle[31];
} tyUINum;
#endif

#ifndef __AS__TYPE_tyUILString
#define __AS__TYPE_tyUILString
typedef struct tyUILString
{	plcbit bRtCompl;
	plcbit bRtLk;
	plcstring sValue[255];
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
	plcstring sKeypadTitle[31];
	unsigned long udiValueIdx;
} tyUILString;
#endif

#ifndef __AS__TYPE_tyLyrP0201OpsTravLif
#define __AS__TYPE_tyLyrP0201OpsTravLif
typedef struct tyLyrP0201OpsTravLif
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUITxt tyTxtWidth;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUILString tyStringMcStat;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBitmap tyBitmapPCB;
	tyUIBitmap tyBitmapMc;
	tyUIHotspot tyHotspotShowLRcp;
	tyUINum tyNumMtrPshrExtSpd;
	tyUINum tyNumMtrPshrExtTorq;
	tyUITxt tyTxtMtrPshrExtSpd;
	tyUITxt tyTxtMtrPshrExtTorq;
	tyUITxt tyTxtPshrOffset;
	tyUINum tyNumPshrOffset;
	tyUIBtn tyBtnQueryBoardInfo;
	tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0201OpsTravLif;
#endif

#ifndef __AS__TYPE_tyUILyr
#define __AS__TYPE_tyUILyr
typedef struct tyUILyr
{	unsigned short uiRtStat;
} tyUILyr;
#endif

#ifndef __AS__TYPE_tyLyrP0201OpsTravLifIOMonitor
#define __AS__TYPE_tyLyrP0201OpsTravLifIOMonitor
typedef struct tyLyrP0201OpsTravLifIOMonitor
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnUBAA;
	tyUIBtn tyBtnUBAB;
	tyUIBtn tyBtnUBAAStat;
	tyUIBtn tyBtnUBABStat;
	tyUIBtn tyBtnUSBA;
	tyUIBtn tyBtnUSBB;
	tyUIBtn tyBtnPshrExtRS;
	tyUIBtn tyBtnPshrRetRS;
	tyUIBtn tyBtnConvLftSen;
	tyUIBtn tyBtnConvMidSen;
	tyUIBtn tyBtnConvRgtSen;
	tyUIBtn tyBtnConvClrSen;
	tyUIBtn tyBtnOvenInfeedSigA;
	tyUIBtn tyBtnOvenInfeedSigB;
	tyUIBtn tyBtnOvenInfoSigA;
	tyUIBtn tyBtnOvenInfoSigB;
	tyUIBtn tyBtnLifterTmBeltSen;
	tyUIBtn tyBtnLimitSafetySw1;
	tyUIBtn tyBtnLimitSafetySw2;
	tyUIBtn tyBtnMag1ClmpRS;
	tyUIBtn tyBtnMag1UnclmpRS;
	tyUIBtn tyBtnMag2ClmpRS;
	tyUIBtn tyBtnMag2UnclmpRS;
	tyUIBtn tyBtnMag3ClmpRS;
	tyUIBtn tyBtnMag3UnclmpRS;
	tyUIBtn tyBtnInletShutterOpenSen;
	tyUIBtn tyBtnInletShutterCloseSen;
	tyUIBtn tyBtnOutletShutterOpenSen;
	tyUIBtn tyBtnOutletShutterCloseSen;
	tyUIBtn tyBtnOutletShutterOpenSen2;
	tyUIBtn tyBtnOutletShutterCloseSen2;
	tyUIBtn tyBtnOutletShutterOpenSen3;
	tyUIBtn tyBtnOutletShutterCloseSen3;
	tyUIBtn tyBtnMag1PresentSen;
	tyUIBtn tyBtnMag2PresentSen;
	tyUIBtn tyBtnMag3PresentSen;
	tyUIBtn tyBtnMag1ConvEntrySen;
	tyUIBtn tyBtnMag2ConvEntrySen;
	tyUIBtn tyBtnMag3ConvEntrySen;
	tyUIBtn tyBtnMag1AIVInPosSen1;
	tyUIBtn tyBtnMag1AIVInPosSen2;
	tyUIBtn tyBtnMag2AIVInPosSen1;
	tyUIBtn tyBtnMag2AIVInPosSen2;
	tyUIBtn tyBtnMag3AIVInPosSen1;
	tyUIBtn tyBtnMag3AIVInPosSen2;
	tyUIBtn tyBtnMag1OrientationChkSen1;
	tyUIBtn tyBtnMag2OrientationChkSen1;
	tyUIBtn tyBtnMag3OrientationChkSen1;
	tyUIBtn tyBtnMag1OrientationChkSen2;
	tyUIBtn tyBtnMag2OrientationChkSen2;
	tyUIBtn tyBtnMag3OrientationChkSen2;
	tyUILyr tyLyr;
	tyUIBtn tyBtnPshrExtCtrl;
	tyUIBtn tyBtnInShutterOpenCtrl;
	tyUIBtn tyBtnInShutterCloseCtrl;
	tyUIBtn tyBtnOutShutterOpenCtrl;
	tyUIBtn tyBtnOutShutterCloseCtrl;
	tyUIBtn tyBtnOutShutterOpenCtrl2;
	tyUIBtn tyBtnOutShutterCloseCtrl2;
	tyUIBtn tyBtnOutShutterOpenCtrl3;
	tyUIBtn tyBtnOutShutterCloseCtrl3;
	tyUIBtn tyBtnPshrMtrOn;
	tyUIBtn tyBtnStopperUnBlkCtrlA;
	tyUIBtn tyBtnStopperUnBlkCtrlB;
	tyUIBtn tyBtnAntiJamSen;
	tyUIBtn tyBtnMagWidthChk;
	tyUIBtn tyBtnInletStopperASensor;
} tyLyrP0201OpsTravLifIOMonitor;
#endif

#ifndef __AS__TYPE_tyLyrP0201OpsTravLifIOMonitor1
#define __AS__TYPE_tyLyrP0201OpsTravLifIOMonitor1
typedef struct tyLyrP0201OpsTravLifIOMonitor1
{	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
	tyUIBtn tyBtnPCBExitMag1;
	tyUIBtn tyBtnPCBExitMag2;
	tyUIBtn tyBtnPCBExitMag3;
	tyUIBtn tyBtnPCBPresentSen;
	tyUIBtn tyBtnTrigScannerSig;
	tyUIBtn tyBtnScannerComplSig;
} tyLyrP0201OpsTravLifIOMonitor1;
#endif

#ifndef __AS__TYPE_tyLyrP0201OpsTravLifBypsInitConv
#define __AS__TYPE_tyLyrP0201OpsTravLifBypsInitConv
typedef struct tyLyrP0201OpsTravLifBypsInitConv
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0201OpsTravLifBypsInitConv;
#endif

#ifndef __AS__TYPE_tyUIDrpDn
#define __AS__TYPE_tyUIDrpDn
typedef struct tyUIDrpDn
{	unsigned char a_usiValueOptionIdx[10];
	plcbit bRtCompl;
	plcbit bRtLk;
	plcstring sTxt[31];
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
	unsigned char usiDisabledColor;
	unsigned char usiDropdownColor;
	unsigned char usiSelectedColor;
	unsigned char usiValueIdx;
	unsigned char usiValueMaxIdx;
	unsigned char usiValueMinIdx;
} tyUIDrpDn;
#endif

#ifndef __AS__TYPE_tyLyrP0201OpsParam
#define __AS__TYPE_tyLyrP0201OpsParam
typedef struct tyLyrP0201OpsParam
{	tyUIDrpDn tyDrpDnMcMode;
	tyUINum tyNumMinSlt;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumPshrExtTorque;
	tyUINum tyNumPshrExtSpeed;
	tyUINum tyNumPshrOffset;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP0201OpsParam;
#endif

#ifndef __AS__TYPE_tyLyrC0011RcpPopUp
#define __AS__TYPE_tyLyrC0011RcpPopUp
typedef struct tyLyrC0011RcpPopUp
{	tyUILString tyStringInfo;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrC0011RcpPopUp;
#endif

#ifndef __AS__TYPE_tyLyrC0004Navi
#define __AS__TYPE_tyLyrC0004Navi
typedef struct tyLyrC0004Navi
{	tyUIBtn tyBtnLeft;
	tyUIBtn tyBtnRgt;
	tyUIBtn tyBtnBack;
	tyUIBitmap tyBitmapPageDisp;
	tyUILyr tyLyr;
} tyLyrC0004Navi;
#endif

#ifndef __AS__TYPE_tyLyrC0008MsgBox
#define __AS__TYPE_tyLyrC0008MsgBox
typedef struct tyLyrC0008MsgBox
{	tyUIBitmap tyBitmapIcon;
	tyUIBtn tyBtnNo;
	tyUIBtn tyBtnYes;
	tyUILyr tyLyr;
	tyUITxt tyTxtMsg;
	tyUITxt tyTxtTitle;
} tyLyrC0008MsgBox;
#endif

#ifndef __AS__TYPE_tyLyrE0001OpsQueryBoardInfo
#define __AS__TYPE_tyLyrE0001OpsQueryBoardInfo
typedef struct tyLyrE0001OpsQueryBoardInfo
{	tyUIBtn tyBtnOk;
	tyUIBtn tyBtnCancel;
	tyUIBtn tyBtnBarcodeScanner;
	tyUILString tyStringTopBarcode;
	tyUILString tyStringBottomBarcode;
	tyUILyr tyLyr;
} tyLyrE0001OpsQueryBoardInfo;
#endif

#ifndef __AS__TYPE_tyLyrE0002OpsCurrWorkOrder
#define __AS__TYPE_tyLyrE0002OpsCurrWorkOrder
typedef struct tyLyrE0002OpsCurrWorkOrder
{	tyUIBtn tyBtnQuery;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnDelete;
	tyUILString tyStringWorkOrder;
	tyUILyr tyLyr;
	tyUIBitmap tyBitmapMask;
} tyLyrE0002OpsCurrWorkOrder;
#endif

#ifndef __AS__TYPE_tyLyrE0003OpsQueryWorkOrder
#define __AS__TYPE_tyLyrE0003OpsQueryWorkOrder
typedef struct tyLyrE0003OpsQueryWorkOrder
{	tyUIBtn tyBtnOk;
	tyUIBtn tyBtnCancel;
	tyUIBtn tyBtnBarcodeScanner;
	tyUILString tyStringMagazineId;
	tyUINum tyNumSlotId;
	tyUILString tyStringBarcode;
	tyUILyr tyLyr;
	tyUIBitmap tyBitmapMask;
} tyLyrE0003OpsQueryWorkOrder;
#endif

#ifndef __AS__TYPE_tyLyrE0004OpsBarcodeScanner
#define __AS__TYPE_tyLyrE0004OpsBarcodeScanner
typedef struct tyLyrE0004OpsBarcodeScanner
{	tyUIBtn tyBtnOk;
	tyUIBtn tyBtnCancel;
	tyUILString tyStringBarcode;
	tyUILString tyStringTopBarcode;
	tyUILString tyStringTopBarcodeBK;
	tyUILString tyStringBottomBarcode;
	tyUILString tyStringBottomBarcodeBK;
	tyUILString tyStringMagazineBarcode;
	tyUILString tyStringMagazineBarcodeBK;
	tyUILString tyStringPCBBarcode;
	tyUILString tyStringPCBBarcodeBK;
	tyUIBtn tyBtnTop;
	tyUIBtn tyBtnBottom;
	tyUIBtn tyBtnMagazine;
	tyUIBtn tyBtnPCB;
	tyUILyr tyLyr;
} tyLyrE0004OpsBarcodeScanner;
#endif

#ifndef __AS__TYPE_tyUIP0201OpsTravLifter
#define __AS__TYPE_tyUIP0201OpsTravLifter
typedef struct tyUIP0201OpsTravLifter
{	tyLyrP0201OpsTravLif tyOps;
	tyLyrP0201OpsTravLifIOMonitor tyIOMonitor;
	tyLyrP0201OpsTravLifIOMonitor1 tyIOMonitor1;
	tyLyrP0201OpsTravLifBypsInitConv tyBypsInitConv;
	tyLyrP0201OpsParam tyParam;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
	tyLyrC0008MsgBox tyMsgBoxAskDelete;
} tyUIP0201OpsTravLifter;
#endif

#ifndef __AS__TYPE_tyUIString
#define __AS__TYPE_tyUIString
typedef struct tyUIString
{	plcbit bRtCompl;
	plcbit bRtLk;
	plcstring sValue[31];
	plcstring sValueDisplay[11];
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
	plcstring sKeypadTitle[31];
} tyUIString;
#endif

#ifndef __AS__TYPE_tyLyrP0202Ops
#define __AS__TYPE_tyLyrP0202Ops
typedef struct tyLyrP0202Ops
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUITxt tyTxtWidth;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUITxt tyTxtMag1Stat;
	tyUILString tyStringMcStat;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIHotspot tyHotspotMagInfo;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIString tyStringMagNm;
	tyUITxt tyTxtMagSlt;
	tyUINum tyNumMag1AvlQty;
	tyUINum tyNumMag1TtlSlt;
	tyUIBitmap tyBitmapMc;
	tyUITxt tyTxtLblAIV;
	tyUIBtn tyBtnAIVWifi;
	tyUIBtn tyBtnChgMag;
	tyUIBitmap tyBitmapChgMag;
	tyUITxt tyTxtLdrInActiveCtrl;
	tyUIBitmap tyBitmapWarningLF;
	tyUIHotspot tyHotspotShowLRcp;
	tyUIBitmap tyBitmapUnloadMag;
	tyUIBtn tyBtnUnloadMag;
	tyUIBtn tyBtnQueryBoardInfo;
	tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0202Ops;
#endif

#ifndef __AS__TYPE_tyLyrP0202IOMonitor
#define __AS__TYPE_tyLyrP0202IOMonitor
typedef struct tyLyrP0202IOMonitor
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnUBAA;
	tyUIBtn tyBtnUBAB;
	tyUIBtn tyBtnUBAAStat;
	tyUIBtn tyBtnUBABStat;
	tyUIBtn tyBtnUSBA;
	tyUIBtn tyBtnUSBB;
	tyUIBtn tyBtnPshrExtRS;
	tyUIBtn tyBtnPshrRetRS;
	tyUIBtn tyBtnConvLftSen;
	tyUIBtn tyBtnConvMidSen;
	tyUIBtn tyBtnConvRgtSen;
	tyUIBtn tyBtnConvClrSen;
	tyUIBtn tyBtnOvenInfeedSigA;
	tyUIBtn tyBtnOvenInfeedSigB;
	tyUIBtn tyBtnOvenInfoSigA;
	tyUIBtn tyBtnOvenInfoSigB;
	tyUIBtn tyBtnLifterTmBeltSen;
	tyUIBtn tyBtnLimitSafetySw1;
	tyUIBtn tyBtnLimitSafetySw2;
	tyUIBtn tyBtnMag1FixedClmpRS;
	tyUIBtn tyBtnMag1FixedUnclmpRS;
	tyUIBtn tyBtnMag1RmtClmpRS;
	tyUIBtn tyBtnMag1RmtUnclmpRS;
	tyUIBtn tyBtnMag2FixedClmpRS;
	tyUIBtn tyBtnMag2FixedUnclmpRS;
	tyUIBtn tyBtnMag2RmtClmpRS;
	tyUIBtn tyBtnMag2RmtUnclmpRS;
	tyUIBtn tyBtnMag3FixedClmpRS;
	tyUIBtn tyBtnMag3FixedUnclmpRS;
	tyUIBtn tyBtnMag3RmtClmpRS;
	tyUIBtn tyBtnMag3RmtUnclmpRS;
	tyUIBtn tyBtnInletShutterOpenSen;
	tyUIBtn tyBtnInletShutterCloseSen;
	tyUIBtn tyBtnOutletShutterOpenSen;
	tyUIBtn tyBtnOutletShutterCloseSen;
	tyUIBtn tyBtnMag1PresentSen;
	tyUIBtn tyBtnMag2PresentSen;
	tyUIBtn tyBtnMag3PresentSen;
	tyUIBtn tyBtnMag1ConvEntrySen;
	tyUIBtn tyBtnMag2ConvEntrySen;
	tyUIBtn tyBtnMag3ConvEntrySen;
	tyUIBtn tyBtnMag1AIVInPosSen1;
	tyUIBtn tyBtnMag1AIVInPosSen2;
	tyUIBtn tyBtnMag2AIVInPosSen1;
	tyUIBtn tyBtnMag2AIVInPosSen2;
	tyUIBtn tyBtnMag3AIVInPosSen1;
	tyUIBtn tyBtnMag3AIVInPosSen2;
	tyUIBtn tyBtnMag1OrientationChkSen1;
	tyUIBtn tyBtnMag2OrientationChkSen1;
	tyUIBtn tyBtnMag3OrientationChkSen1;
	tyUIBtn tyBtnMag1OrientationChkSen2;
	tyUIBtn tyBtnMag2OrientationChkSen2;
	tyUIBtn tyBtnMag3OrientationChkSen2;
	tyUILyr tyLyr;
	tyUIBtn tyBtnMag1FixedClampCtrl;
	tyUIBtn tyBtnMag1RemoteClampCtrl;
	tyUIBtn tyBtnMag1ConvMtrIn;
	tyUIBtn tyBtnMag1ConvMtrOut;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUIBtn tyBtnMagSelClampCtrl;
	tyUIBtn tyBtnMagSelUnClampCtrl;
	tyUIBtn tyBtnCurtainSenPB;
	tyUIBtn tyBtnCurtainSenPBLED;
	tyUIBtn tyBtnCurtainSen;
	tyUIBtn tyBtnMag1DetSen;
} tyLyrP0202IOMonitor;
#endif

#ifndef __AS__TYPE_tyLyrP0202BypsInitConv
#define __AS__TYPE_tyLyrP0202BypsInitConv
typedef struct tyLyrP0202BypsInitConv
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0202BypsInitConv;
#endif

#ifndef __AS__TYPE_tyLyrP0202OpsParam
#define __AS__TYPE_tyLyrP0202OpsParam
typedef struct tyLyrP0202OpsParam
{	tyUIDrpDn tyDrpDnMcMode;
	tyUINum tyNumMinSlt;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumPshrExtTorque;
	tyUINum tyNumPshrExtSpeed;
	tyUINum tyNumPshrOffset;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP0202OpsParam;
#endif

#ifndef __AS__TYPE_tyLyrP0202OpsChgMagL1
#define __AS__TYPE_tyLyrP0202OpsChgMagL1
typedef struct tyLyrP0202OpsChgMagL1
{	tyUIBitmap tyBitmapChgMag;
	tyUIBtn tyBtnMnlUnloadMag;
	tyUIBtn tyBtnChgMag;
	tyUILyr tyLyr;
} tyLyrP0202OpsChgMagL1;
#endif

#ifndef __AS__TYPE_tyUIP0202OpsMag1
#define __AS__TYPE_tyUIP0202OpsMag1
typedef struct tyUIP0202OpsMag1
{	tyLyrP0202Ops tyOps;
	tyLyrP0202IOMonitor tyIOMonitor;
	tyLyrP0202BypsInitConv tyBypsInitConv;
	tyLyrP0202OpsParam tyParam;
	tyLyrP0202OpsChgMagL1 tyChgMag;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0202OpsMag1;
#endif

#ifndef __AS__TYPE_tyLyrP0203Ops
#define __AS__TYPE_tyLyrP0203Ops
typedef struct tyLyrP0203Ops
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUITxt tyTxtWidth;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUITxt tyTxtMag2Stat;
	tyUILString tyStringMcStat;
	tyUIHotspot tyHotspotMagInfo;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIString tyStringMagNm;
	tyUITxt tyTxtMagSlt;
	tyUINum tyNumMag2AvlQty;
	tyUINum tyNumMag2TtlSlt;
	tyUIBitmap tyBitmapMc;
	tyUITxt tyTxtLblAIV;
	tyUIBtn tyBtnAIVWifi;
	tyUIBtn tyBtnChgMag;
	tyUIBitmap tyBitmapChgMag;
	tyUIHotspot tyHotspotShowLRcp;
	tyUIBitmap tyBitmapUnloadMag;
	tyUIBtn tyBtnUnloadMag;
	tyUIBtn tyBtnQueryBoardInfo;
	tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0203Ops;
#endif

#ifndef __AS__TYPE_tyLyrP0203IOMonitor
#define __AS__TYPE_tyLyrP0203IOMonitor
typedef struct tyLyrP0203IOMonitor
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnUBAA;
	tyUIBtn tyBtnUBAB;
	tyUIBtn tyBtnUBAAStat;
	tyUIBtn tyBtnUBABStat;
	tyUIBtn tyBtnUSBA;
	tyUIBtn tyBtnUSBB;
	tyUIBtn tyBtnPshrExtRS;
	tyUIBtn tyBtnPshrRetRS;
	tyUIBtn tyBtnConvLftSen;
	tyUIBtn tyBtnConvMidSen;
	tyUIBtn tyBtnConvRgtSen;
	tyUIBtn tyBtnConvClrSen;
	tyUIBtn tyBtnOvenInfeedSigA;
	tyUIBtn tyBtnOvenInfeedSigB;
	tyUIBtn tyBtnOvenInfoSigA;
	tyUIBtn tyBtnOvenInfoSigB;
	tyUIBtn tyBtnLifterTmBeltSen;
	tyUIBtn tyBtnLimitSafetySw1;
	tyUIBtn tyBtnLimitSafetySw2;
	tyUIBtn tyBtnMag1FixedClmpRS;
	tyUIBtn tyBtnMag1FixedUnclmpRS;
	tyUIBtn tyBtnMag1RmtClmpRS;
	tyUIBtn tyBtnMag1RmtUnclmpRS;
	tyUIBtn tyBtnMag2FixedClmpRS;
	tyUIBtn tyBtnMag2FixedUnclmpRS;
	tyUIBtn tyBtnMag2RmtClmpRS;
	tyUIBtn tyBtnMag2RmtUnclmpRS;
	tyUIBtn tyBtnMag3FixedClmpRS;
	tyUIBtn tyBtnMag3FixedUnclmpRS;
	tyUIBtn tyBtnMag3RmtClmpRS;
	tyUIBtn tyBtnMag3RmtUnclmpRS;
	tyUIBtn tyBtnInletShutterOpenSen;
	tyUIBtn tyBtnInletShutterCloseSen;
	tyUIBtn tyBtnOutletShutterOpenSen;
	tyUIBtn tyBtnOutletShutterCloseSen;
	tyUIBtn tyBtnMag1PresentSen;
	tyUIBtn tyBtnMag2PresentSen;
	tyUIBtn tyBtnMag3PresentSen;
	tyUIBtn tyBtnMag1ConvEntrySen;
	tyUIBtn tyBtnMag2ConvEntrySen;
	tyUIBtn tyBtnMag3ConvEntrySen;
	tyUIBtn tyBtnMag1AIVInPosSen1;
	tyUIBtn tyBtnMag1AIVInPosSen2;
	tyUIBtn tyBtnMag2AIVInPosSen1;
	tyUIBtn tyBtnMag2AIVInPosSen2;
	tyUIBtn tyBtnMag3AIVInPosSen1;
	tyUIBtn tyBtnMag3AIVInPosSen2;
	tyUIBtn tyBtnMag1OrientationChkSen1;
	tyUIBtn tyBtnMag2OrientationChkSen1;
	tyUIBtn tyBtnMag3OrientationChkSen1;
	tyUIBtn tyBtnMag1OrientationChkSen2;
	tyUIBtn tyBtnMag2OrientationChkSen2;
	tyUIBtn tyBtnMag3OrientationChkSen2;
	tyUILyr tyLyr;
	tyUIBtn tyBtnMag2FixedClampCtrl;
	tyUIBtn tyBtnMag2RemoteClampCtrl;
	tyUIBtn tyBtnMag2ConvMtrIn;
	tyUIBtn tyBtnMag2ConvMtrOut;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUIBtn tyBtnMagSelClampCtrl;
	tyUIBtn tyBtnMagSelUnClampCtrl;
	tyUIBtn tyBtnCurtainSen;
	tyUIBtn tyBtnCurtainSenPB;
	tyUIBtn tyBtnCurtainSenPBLED;
	tyUIBtn tyBtnMag2DetSen;
} tyLyrP0203IOMonitor;
#endif

#ifndef __AS__TYPE_tyLyrP0203BypsInitConv
#define __AS__TYPE_tyLyrP0203BypsInitConv
typedef struct tyLyrP0203BypsInitConv
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0203BypsInitConv;
#endif

#ifndef __AS__TYPE_tyLyrP0203OpsParam
#define __AS__TYPE_tyLyrP0203OpsParam
typedef struct tyLyrP0203OpsParam
{	tyUIDrpDn tyDrpDnMcMode;
	tyUINum tyNumMinSlt;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumPshrExtTorque;
	tyUINum tyNumPshrExtSpeed;
	tyUINum tyNumPshrOffset;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP0203OpsParam;
#endif

#ifndef __AS__TYPE_tyLyrP0203OpsChgMagL2
#define __AS__TYPE_tyLyrP0203OpsChgMagL2
typedef struct tyLyrP0203OpsChgMagL2
{	tyUIBitmap tyBitmapChgMag;
	tyUIBtn tyBtnMnlUnloadMag;
	tyUIBtn tyBtnChgMag;
	tyUILyr tyLyr;
} tyLyrP0203OpsChgMagL2;
#endif

#ifndef __AS__TYPE_tyUIP0203OpsMag2
#define __AS__TYPE_tyUIP0203OpsMag2
typedef struct tyUIP0203OpsMag2
{	tyLyrP0203Ops tyOps;
	tyLyrP0203IOMonitor tyIOMonitor;
	tyLyrP0203BypsInitConv tyBypsInitConv;
	tyLyrP0203OpsParam tyParam;
	tyLyrP0203OpsChgMagL2 tyChgMag;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0203OpsMag2;
#endif

#ifndef __AS__TYPE_tyLyrP0204Ops
#define __AS__TYPE_tyLyrP0204Ops
typedef struct tyLyrP0204Ops
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUITxt tyTxtWidth;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUITxt tyTxtMag3Stat;
	tyUILString tyStringMcStat;
	tyUIHotspot tyHotspotMagInfo;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIString tyStringMagNm;
	tyUITxt tyTxtMagSlt;
	tyUINum tyNumMag3AvlQty;
	tyUINum tyNumMag3TtlSlt;
	tyUIBitmap tyBitmapMc;
	tyUITxt tyTxtLblAIV;
	tyUIBtn tyBtnAIVWifi;
	tyUIBtn tyBtnChgMag;
	tyUIBitmap tyBitmapChgMag;
	tyUIHotspot tyHotspotShowLRcp;
	tyUIBitmap tyBitmapUnloadMag;
	tyUIBtn tyBtnUnloadMag;
	tyUIBtn tyBtnQueryBoardInfo;
	tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0204Ops;
#endif

#ifndef __AS__TYPE_tyLyrP0204IOMonitor
#define __AS__TYPE_tyLyrP0204IOMonitor
typedef struct tyLyrP0204IOMonitor
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnUBAA;
	tyUIBtn tyBtnUBAB;
	tyUIBtn tyBtnUBAAStat;
	tyUIBtn tyBtnUBABStat;
	tyUIBtn tyBtnUSBA;
	tyUIBtn tyBtnUSBB;
	tyUIBtn tyBtnPshrExtRS;
	tyUIBtn tyBtnPshrRetRS;
	tyUIBtn tyBtnConvLftSen;
	tyUIBtn tyBtnConvMidSen;
	tyUIBtn tyBtnConvRgtSen;
	tyUIBtn tyBtnConvClrSen;
	tyUIBtn tyBtnOvenInfeedSigA;
	tyUIBtn tyBtnOvenInfeedSigB;
	tyUIBtn tyBtnOvenInfoSigA;
	tyUIBtn tyBtnOvenInfoSigB;
	tyUIBtn tyBtnLifterTmBeltSen;
	tyUIBtn tyBtnLimitSafetySw1;
	tyUIBtn tyBtnLimitSafetySw2;
	tyUIBtn tyBtnMag1FixedClmpRS;
	tyUIBtn tyBtnMag1FixedUnclmpRS;
	tyUIBtn tyBtnMag1RmtClmpRS;
	tyUIBtn tyBtnMag1RmtUnclmpRS;
	tyUIBtn tyBtnMag2FixedClmpRS;
	tyUIBtn tyBtnMag2FixedUnclmpRS;
	tyUIBtn tyBtnMag2RmtClmpRS;
	tyUIBtn tyBtnMag2RmtUnclmpRS;
	tyUIBtn tyBtnMag3FixedClmpRS;
	tyUIBtn tyBtnMag3FixedUnclmpRS;
	tyUIBtn tyBtnMag3RmtClmpRS;
	tyUIBtn tyBtnMag3RmtUnclmpRS;
	tyUIBtn tyBtnInletShutterOpenSen;
	tyUIBtn tyBtnInletShutterCloseSen;
	tyUIBtn tyBtnOutletShutterOpenSen;
	tyUIBtn tyBtnOutletShutterCloseSen;
	tyUIBtn tyBtnMag1PresentSen;
	tyUIBtn tyBtnMag2PresentSen;
	tyUIBtn tyBtnMag3PresentSen;
	tyUIBtn tyBtnMag1ConvEntrySen;
	tyUIBtn tyBtnMag2ConvEntrySen;
	tyUIBtn tyBtnMag3ConvEntrySen;
	tyUIBtn tyBtnMag1AIVInPosSen1;
	tyUIBtn tyBtnMag1AIVInPosSen2;
	tyUIBtn tyBtnMag2AIVInPosSen1;
	tyUIBtn tyBtnMag2AIVInPosSen2;
	tyUIBtn tyBtnMag3AIVInPosSen1;
	tyUIBtn tyBtnMag3AIVInPosSen2;
	tyUIBtn tyBtnMag1OrientationChkSen1;
	tyUIBtn tyBtnMag2OrientationChkSen1;
	tyUIBtn tyBtnMag3OrientationChkSen1;
	tyUIBtn tyBtnMag1OrientationChkSen2;
	tyUIBtn tyBtnMag2OrientationChkSen2;
	tyUIBtn tyBtnMag3OrientationChkSen2;
	tyUILyr tyLyr;
	tyUIBtn tyBtnMag3FixedClampCtrl;
	tyUIBtn tyBtnMag3RemoteClampCtrl;
	tyUIBtn tyBtnMag3ConvMtrIn;
	tyUIBtn tyBtnMag3ConvMtrOut;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUIBtn tyBtnMagSelClampCtrl;
	tyUIBtn tyBtnMagSelUnClampCtrl;
	tyUIBtn tyBtnCurtainSen;
	tyUIBtn tyBtnCurtainSenPB;
	tyUIBtn tyBtnCurtainSenPBLED;
	tyUIBtn tyBtnMag3DetSen;
} tyLyrP0204IOMonitor;
#endif

#ifndef __AS__TYPE_tyLyrP0204BypsInitConv
#define __AS__TYPE_tyLyrP0204BypsInitConv
typedef struct tyLyrP0204BypsInitConv
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0204BypsInitConv;
#endif

#ifndef __AS__TYPE_tyLyrP0204OpsParam
#define __AS__TYPE_tyLyrP0204OpsParam
typedef struct tyLyrP0204OpsParam
{	tyUIDrpDn tyDrpDnMcMode;
	tyUINum tyNumMinSlt;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumPshrExtTorque;
	tyUINum tyNumPshrExtSpeed;
	tyUINum tyNumPshrOffset;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP0204OpsParam;
#endif

#ifndef __AS__TYPE_tyUIP0204OpsMag3
#define __AS__TYPE_tyUIP0204OpsMag3
typedef struct tyUIP0204OpsMag3
{	tyLyrP0204Ops tyOps;
	tyLyrP0204IOMonitor tyIOMonitor;
	tyLyrP0204BypsInitConv tyBypsInitConv;
	tyLyrP0204OpsParam tyParam;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0204OpsMag3;
#endif

#ifndef __AS__TYPE_tyLyrP1022McSetVCommSel
#define __AS__TYPE_tyLyrP1022McSetVCommSel
typedef struct tyLyrP1022McSetVCommSel
{	tyUIBtn tyBtnLF;
	tyUIBtn tyBtnLCSLF;
	tyUIBtn tyBtnLCSReqRcp;
	tyUIBtn tyBtnLCSManageRcp;
	tyUIBtn tyBtnLCSLiveDat;
	tyUILyr tyLyr;
} tyLyrP1022McSetVCommSel;
#endif

#ifndef __AS__TYPE_tyLyrP1022McSetVCommLF
#define __AS__TYPE_tyLyrP1022McSetVCommLF
typedef struct tyLyrP1022McSetVCommLF
{	tyUIBtn tyBtnLeaderMc;
	tyUIBtn tyBtnSectionLdr;
	tyUIBtn tyBtnUSWidthChkEn;
	tyUIBtn tyBtnSeqStayActive;
	tyUIBtn tyBtnDBAOnWOAlign;
	tyUILyr tyLyr;
} tyLyrP1022McSetVCommLF;
#endif

#ifndef __AS__TYPE_tyLyrP1022McSetVCommSvy
#define __AS__TYPE_tyLyrP1022McSetVCommSvy
typedef struct tyLyrP1022McSetVCommSvy
{	tyUINum tyNumSndAliveTm;
	tyUINum tyNumSvySystemPort;
	tyUIBtn tyBtnConfiguration;
	tyUIBtn tyBtnCheckAliveResponse;
	tyUIBtn tyBtnBoardTracking;
	tyUIBtn tyBtnQueryWorkOrderInfo;
	tyUIBtn tyBtnSendWorkOrderInfo;
	tyUIBitmap tyBitmapMask;
	tyUILyr tyLyr;
} tyLyrP1022McSetVCommSvy;
#endif

#ifndef __AS__TYPE_tyUIP1022McSetVComm
#define __AS__TYPE_tyUIP1022McSetVComm
typedef struct tyUIP1022McSetVComm
{	tyLyrP1022McSetVCommSel tyVComSel;
	tyLyrP1022McSetVCommLF tyLF;
	tyLyrP1022McSetVCommSel tyVComSelBkUp;
	tyLyrP1022McSetVCommLF tyLFBkUp;
	tyLyrC0004Navi tyNaviLyr1;
	tyLyrC0004Navi tyNaviLyr2;
	tyLyrC0004Navi tyNaviLyr3;
	tyLyrC0004Navi tyNaviLyr4;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrP1022McSetVCommSvy tyVComSvy;
	tyLyrP1022McSetVCommSvy tyVComSvyBkUp;
} tyUIP1022McSetVComm;
#endif

#ifndef __AS__TYPE_tyLyrP0950SOTstatus
#define __AS__TYPE_tyLyrP0950SOTstatus
typedef struct tyLyrP0950SOTstatus
{	plcbit tyBtnInPos;
	plcbit tyBtnError;
	plcbit tyBtnRdy;
	plcbit tyBtnAvail;
} tyLyrP0950SOTstatus;
#endif

#ifndef __AS__TYPE_eUIAction
#define __AS__TYPE_eUIAction
typedef enum eUIAction
{	UIActIdle = 0,
	UIActInitial = 1,
} eUIAction;
#endif

#ifndef __AS__TYPE_eStartupAction
#define __AS__TYPE_eStartupAction
typedef enum eStartupAction
{	StartupActIdle = 0,
	StartupActRun = 1,
} eStartupAction;
#endif

#ifndef __AS__TYPE_eHWInfoAction
#define __AS__TYPE_eHWInfoAction
typedef enum eHWInfoAction
{	HWInfoActIdle = 0,
	HWInfoActGetIPAddr = 1,
	HWInfoActGetSubnetMask = 2,
	HWInfoActGetMacAddr = 3,
	HWInfoActSetIPAddr = 4,
	HWInfoActSetSubnetMask = 5,
	HWInfoActGetEthConfigMode = 6,
	HWInfoActSetEthConfigMode = 7,
	HWInfoActSetDefaultGateway = 8,
} eHWInfoAction;
#endif

#ifndef __AS__TYPE_eNetworkConfigMod
#define __AS__TYPE_eNetworkConfigMod
typedef enum eNetworkConfigMod
{	SetIPManually = 0,
	IPFromDHCPServer = 1,
} eNetworkConfigMod;
#endif

#ifndef __AS__TYPE_eTLBuzAction
#define __AS__TYPE_eTLBuzAction
typedef enum eTLBuzAction
{	TLBuzActIdle = 0,
	TLBuzActSetGreen = 1,
	TLBuzActSetWhite = 2,
	TLBuzActSetRed = 3,
	TLBuzActSetAmber = 4,
	TLBuzActSetBlue = 5,
	TLBuzActSetBuz = 6,
	TLBuzActRstGreen = 7,
	TLBuzActRstWhite = 8,
	TLBuzActRstRed = 9,
	TLBuzActRstAmber = 10,
	TLBuzActRstBlue = 11,
	TLBuzActRstBuz = 12,
	TLBuzActSetAll = 13,
	TLBuzActRstAll = 14,
} eTLBuzAction;
#endif

#ifndef __AS__TYPE_eRstErrAction
#define __AS__TYPE_eRstErrAction
typedef enum eRstErrAction
{	RstErrActIdle = 0,
	RstErrActRun = 1,
	RstErrActSetSafetyRlyRst = 2,
	RstErrActRstSafetyRlyRst = 3,
} eRstErrAction;
#endif

#ifndef __AS__TYPE_eProdRcpAction
#define __AS__TYPE_eProdRcpAction
typedef enum eProdRcpAction
{	ProdRcpActIdle = 0,
	ProdRcpActCreateDir = 1,
	ProdRcpActAddEdit = 2,
	ProdRcpActDel = 3,
	ProdRcpActGetInfo = 4,
	ProdRcpActGetList = 5,
	ProdRcpActFilter = 6,
	ProdRcpActLoadRcp = 7,
	ProdRcpActAdd = 8,
	ProdRcpActEdit = 9,
	ProdRcpActReadCurrRcp = 10,
	ProdRcpActWriteCurrRcpParam = 11,
	ProdRcpActSaveList = 12,
	ProdRcpActSort = 13,
	ProdRcpActEndCharFilter = 14,
} eProdRcpAction;
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

#ifndef __AS__TYPE_eMpProdRcpAction
#define __AS__TYPE_eMpProdRcpAction
typedef enum eMpProdRcpAction
{	MpProdRcpActIdle = 0,
	MpProdRcpActCreateDir = 1,
	MpProdRcpActLoad = 2,
	MpProdRcpActSave = 3,
} eMpProdRcpAction;
#endif

#ifndef __AS__TYPE_eMagRcpAction
#define __AS__TYPE_eMagRcpAction
typedef enum eMagRcpAction
{	MagRcpActIdle = 0,
	MagRcpActCreateDir = 1,
	MagRcpActAddEdit = 2,
	MagRcpActDel = 3,
	MagRcpActGetInfo = 4,
	MagRcpActGetList = 5,
	MagRcpActFilter = 6,
	MagRcpActReadCurrRcp = 7,
	MagRcpActLoadRcp = 8,
	MagRcpActWriteCurrRcpParam = 9,
	MagRcpActSaveList = 10,
	MagRcpActSort = 11,
} eMagRcpAction;
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

#ifndef __AS__TYPE_eNtParamAction
#define __AS__TYPE_eNtParamAction
typedef enum eNtParamAction
{	NtParamActIdle = 0,
	NtParamActCreateDir = 1,
	NtParamActRead = 2,
	NtParamActWrite = 3,
	NtParamActLoad = 4,
	NtParamActSave = 5,
} eNtParamAction;
#endif

#ifndef __AS__TYPE_eUsrMgmtAction
#define __AS__TYPE_eUsrMgmtAction
typedef enum eUsrMgmtAction
{	UsrMgmtActIdle = 0,
	UsrMgmtActCreateDir = 1,
	UsrMgmtActLogin = 2,
	UsrMgmtActBypassLogin = 3,
	UsrMgmtActLogout = 4,
	UsrMgmtActAdd = 5,
	UsrMgmtActEdit = 6,
	UsrMgmtActDel = 7,
	UsrMgmtActSaveAccessRight = 8,
	UsrMgmtActReadData = 9,
} eUsrMgmtAction;
#endif

#ifndef __AS__TYPE_eUsrMgmtAutLvl
#define __AS__TYPE_eUsrMgmtAutLvl
typedef enum eUsrMgmtAutLvl
{	UsrMgmtLvl1 = 0,
	UsrMgmtLvl2 = 1,
	UsrMgmtLvl3 = 2,
	UsrMgmtAdmin = 3,
	UsrMgmtNtEngr = 4,
	UsrMgmtNtAdmin = 5,
} eUsrMgmtAutLvl;
#endif

#ifndef __AS__TYPE_tyUsrMgmtParam
#define __AS__TYPE_tyUsrMgmtParam
typedef struct tyUsrMgmtParam
{	plcstring sUsrNm[31];
	plcstring sPw[31];
	eUsrMgmtAutLvl eUsrLvl;
} tyUsrMgmtParam;
#endif

#ifndef __AS__TYPE_tyUsrMgmtAccessRight
#define __AS__TYPE_tyUsrMgmtAccessRight
typedef struct tyUsrMgmtAccessRight
{	plcbit bOpt;
	plcbit bProdSel;
	plcbit bMagSel;
	plcbit bMcInfo;
	plcbit bAlm;
	plcbit bBffrInfo;
	plcbit bOvenInfo;
	plcbit bMagInfo;
	plcbit bLFCtrl;
	plcbit bManual;
	plcbit bSimulation;
	plcbit bProdSet;
	plcbit bMagSet;
	plcbit bMcSet;
	plcbit bLang;
	plcbit bUsrMgmt;
	plcbit bLFSet;
	plcbit bChgParam;
	plcbit bManualFBOnly;
	plcstring sNm[31];
} tyUsrMgmtAccessRight;
#endif

#ifndef __AS__TYPE_eOvenInfoAction
#define __AS__TYPE_eOvenInfoAction
typedef enum eOvenInfoAction
{	OvenInfoActIdle = 0,
	OvenInfoActSetBrdInOven = 1,
	OvenInfoActSetOvenAllow = 2,
	OvenInfoActRstOvenAllow = 3,
} eOvenInfoAction;
#endif

#ifndef __AS__TYPE_eBufferAction
#define __AS__TYPE_eBufferAction
typedef enum eBufferAction
{	BufferActIdle = 0,
	BufferActCreateDir = 1,
	BufferActGetRetainBffr = 2,
	BufferActSetFull = 3,
	BufferActSetMty = 4,
	BufferActLoad = 5,
	BufferActLoadSltChk = 6,
	BufferActUnload = 7,
	BufferActUnloadSltChk = 8,
	BufferActUnloadCoolChk = 9,
	BufferActUnloadSltChkCoolChk = 10,
	BufferActNxtLoad = 11,
	BufferActNxtLoadGd = 12,
	BufferActNxtLoadBad = 13,
	BufferActNxtUnload = 14,
	BufferActNxtUnloadGd = 15,
	BufferActNxtUnloadBad = 16,
	BufferActChkCoolTm = 17,
	BufferActChkCoolBrdAny = 18,
	BufferActChkCoolBrdGd = 19,
	BufferActChkCoolBrdBad = 20,
	BufferActRstBffr = 21,
	BufferActSetCoolFan = 22,
	BufferActRstCoolFan = 23,
	BufferActBGStartBffrSetFull = 24,
	BufferActBGStartBffrSetMty = 25,
	BufferActBGStopBffrSet = 26,
	BufferActBGStartUpdtSen = 27,
	BufferActBGStopUpdtSen = 28,
	BufferActBGStartUpdtDisplay = 29,
	BufferActBGStopUpdtDisplay = 30,
	BufferActBGStartCoolFan = 31,
	BufferActBGStopCoolFan = 32,
} eBufferAction;
#endif

#ifndef __AS__TYPE_eSMEMAAction
#define __AS__TYPE_eSMEMAAction
typedef enum eSMEMAAction
{	SMEMAActIdle = 0,
	SMEMAActRun = 1,
	SMEMAActSetSig = 2,
	SMEMAActSetStatSig = 3,
	SMEMAActRstSig = 4,
	SMEMAActRstStatSig = 5,
	SMEMAActSetAllSig = 6,
	SMEMAActRstAllSig = 7,
} eSMEMAAction;
#endif

#ifndef __AS__TYPE_ePneuAction
#define __AS__TYPE_ePneuAction
typedef enum ePneuAction
{	PneuActIdle = 0,
	PneuActSetAll = 1,
	PneuActRstAll = 2,
	PneuActSetExt = 3,
	PneuActSetRet = 4,
	PneuActExt = 5,
	PneuActRet = 6,
	PneuActExtSenToMidSen = 7,
	PneuActMidSenToRetSen = 8,
	PneuActRetSenToMidSen = 9,
	PneuActMidSenToExtSen = 10,
} ePneuAction;
#endif

#ifndef __AS__TYPE_eMagConv2ClpAction
#define __AS__TYPE_eMagConv2ClpAction
typedef enum eMagConv2ClpAction
{	MagConv2ClpActIdle = 0,
	MagConv2ClpActInit = 1,
	MagConv2ClpActInitStopClp = 2,
	MagConv2ClpActInitClpStop = 3,
	MagConv2ClpActEnt = 4,
	MagConv2ClpActEntStopClp = 5,
	MagConv2ClpActEntClpStop = 6,
	MagConv2ClpActPreExit = 7,
	MagConv2ClpActPreExitClpr = 8,
	MagConv2ClpActPreExitClpr1 = 9,
	MagConv2ClpActExit = 10,
	MagConv2ClpActExit1 = 11,
	MagConv2ClpActExitClpr = 12,
	MagConv2ClpActExit1Clpr = 13,
	MagConv2ClpActFixClprSetAll = 14,
	MagConv2ClpActFixClprRstAll = 15,
	MagConv2ClpActFixClprSetClamp = 16,
	MagConv2ClpActFixClprSetUnclamp = 17,
	MagConv2ClpActFixClprClamp = 18,
	MagConv2ClpActFixClprUnclamp = 19,
	MagConv2ClpActRmtClprSetAll = 20,
	MagConv2ClpActRmtClprRstAll = 21,
	MagConv2ClpActRmtClprSetClamp = 22,
	MagConv2ClpActRmtClprSetUnclamp = 23,
	MagConv2ClpActRmtClprClamp = 24,
	MagConv2ClpActRmtClprUnclamp = 25,
	MagConv2ClpActStop = 26,
	MagConv2ClpActStopClpr = 27,
	MagConv2ClpActSetMtrSigOnOrLToR = 28,
	MagConv2ClpActSetMtrDirOrRToL = 29,
	MagConv2ClpActRstMtrSigOnOrLToR = 30,
	MagConv2ClpActRstMtrDirOrRToL = 31,
	MagConv2ClpActSetMtrAll = 32,
	MagConv2ClpActRstMtrAll = 33,
} eMagConv2ClpAction;
#endif

#ifndef __AS__TYPE_eMagConvAction
#define __AS__TYPE_eMagConvAction
typedef enum eMagConvAction
{	MagConvActIdle = 0,
	MagConvActInit = 1,
	MagConvActInitStopClp = 2,
	MagConvActInitClpStop = 3,
	MagConvActEnt = 4,
	MagConvActEntStopClp = 5,
	MagConvActEntClpStop = 6,
	MagConvActPreExit = 7,
	MagConvActPreExitClpr = 8,
	MagConvActExit = 9,
	MagConvActExit1 = 10,
	MagConvActExitClpr = 11,
	MagConvActExit1Clpr = 12,
	MagConvActClprSetAll = 13,
	MagConvActClprRstAll = 14,
	MagConvActClprSetClamp = 15,
	MagConvActClprSetUnclamp = 16,
	MagConvActClprClamp = 17,
	MagConvActClprUnclamp = 18,
	MagConvActStop = 19,
	MagConvActStopClpr = 20,
	MagConvActSetMtrSigOnOrLToR = 21,
	MagConvActSetMtrDirOrRToL = 22,
	MagConvActRstMtrSigOnOrLToR = 23,
	MagConvActRstMtrDirOrRToL = 24,
	MagConvActSetMtrAll = 25,
	MagConvActRstMtrAll = 26,
} eMagConvAction;
#endif

#ifndef __AS__TYPE_eConvAction
#define __AS__TYPE_eConvAction
typedef enum eConvAction
{	ConvActIdle = 0,
	ConvActInit = 1,
	ConvActInitRev = 2,
	ConvActInitPshr = 3,
	ConvActInitPuller = 4,
	ConvActInitRej = 5,
	ConvActInitInsp = 6,
	ConvActEnt = 7,
	ConvActEntToInOff = 8,
	ConvActEntRev = 9,
	ConvActRev = 10,
	ConvActRevImmedStart = 11,
	ConvActEntPuller = 12,
	ConvActEntRej = 13,
	ConvActEntInsp = 14,
	ConvActPreExit = 15,
	ConvActRejResume = 16,
	ConvActExit = 17,
	ConvActExit1 = 18,
	ConvActExitPshr = 19,
	ConvActExit1Pshr = 20,
	ConvActPshrSetAll = 21,
	ConvActPshrRstAll = 22,
	ConvActPshrSetExt = 23,
	ConvActPshrSetRet = 24,
	ConvActPshrExt = 25,
	ConvActPshrRet = 26,
	ConvActPullerSetAll = 27,
	ConvActPullerRstAll = 28,
	ConvActPullerSetExt = 29,
	ConvActPullerSetRet = 30,
	ConvActPullerExt = 31,
	ConvActPullerRet = 32,
	ConvActRotSetAll = 33,
	ConvActRotRstAll = 34,
	ConvActRotSetHome = 35,
	ConvActRotSetRmt = 36,
	ConvActRotHome = 37,
	ConvActRotRemote = 38,
	ConvActRejSetAll = 39,
	ConvActRejRstAll = 40,
	ConvActRejSetUp = 41,
	ConvActRejSetDown = 42,
	ConvActRejUp = 43,
	ConvActRejDown = 44,
	ConvActStop = 45,
	ConvActStopPshr = 46,
	ConvActStopPuller = 47,
	ConvActStopRej = 48,
	ConvActSetMtrSigOnOrLToR = 49,
	ConvActSetMtrDirOrRToL = 50,
	ConvActRstMtrSigOnOrLToR = 51,
	ConvActRstMtrDirOrRToL = 52,
	ConvActSetMtrAll = 53,
	ConvActRstMtrAll = 54,
} eConvAction;
#endif

#ifndef __AS__TYPE_eAWAction
#define __AS__TYPE_eAWAction
typedef enum eAWAction
{	AWActIdle = 0,
	AWActGoWidth = 1,
	AWActFullHm = 2,
	AWActPwrOn = 3,
	AWActPwrOff = 4,
	AWActHoming = 5,
	AWActMovAbs = 6,
	AWActMovRel = 7,
	AWActJogOpen = 8,
	AWActJogClose = 9,
	AWActJogStop = 10,
	AWActRstAxisErr = 11,
	AWActStop = 12,
	AWActSDOWrite = 13,
	AWActBGStartModOKChk = 14,
	AWActBGStopModOKChk = 15,
	AWActGoWidthOff = 16,
	AWActRstNode = 17,
} eAWAction;
#endif

#ifndef __AS__TYPE_eTravAction
#define __AS__TYPE_eTravAction
typedef enum eTravAction
{	TravActIdle = 0,
	TravActGoAPos = 1,
	TravActGoBPos = 2,
	TravActGoCPos = 3,
	TravActGoDPos = 4,
	TravActGoEPos = 5,
	TravActGoFPos = 6,
	TravActGoGPos = 7,
	TravActGoHPos = 8,
	TravActFullHm = 9,
	TravActPwrOn = 10,
	TravActPwrOff = 11,
	TravActHoming = 12,
	TravActMovAbs = 13,
	TravActMovRel = 14,
	TravActJogFront = 15,
	TravActJogRear = 16,
	TravActJogStop = 17,
	TravActRstAxisErr = 18,
	TravActStop = 19,
	TravActSDOWrite = 20,
	TravActBGStartModOKChk = 21,
	TravActBGStopModOKChk = 22,
	TravActRstNode = 23,
} eTravAction;
#endif

#ifndef __AS__TYPE_eLifterAction
#define __AS__TYPE_eLifterAction
typedef enum eLifterAction
{	LifterActIdle = 0,
	LifterActGoAPos = 1,
	LifterActGoBPos = 2,
	LifterActGoCPos = 3,
	LifterActGoDPos = 4,
	LifterActGoEPos = 5,
	LifterActGoFPos = 6,
	LifterActGoGPos = 7,
	LifterActGoHPos = 8,
	LifterActGoASltPos = 9,
	LifterActGoNxtASltPos = 10,
	LifterActGoPrevASltPos = 11,
	LifterActGoBSltPos = 12,
	LifterActGoNxtBSltPos = 13,
	LifterActGoPrevBSltPos = 14,
	LifterActGoCSltPos = 15,
	LifterActGoNxtCSltPos = 16,
	LifterActGoPrevCSltPos = 17,
	LifterActGoDSltPos = 18,
	LifterActGoNxtDSltPos = 19,
	LifterActGoPrevDSltPos = 20,
	LifterActFullHm = 21,
	LifterActPwrOn = 22,
	LifterActPwrOff = 23,
	LifterActHoming = 24,
	LifterActMovAbs = 25,
	LifterActMovRel = 26,
	LifterActJogUp = 27,
	LifterActJogDown = 28,
	LifterActJogStop = 29,
	LifterActRstAxisErr = 30,
	LifterActStop = 31,
	LifterActSDOWrite = 32,
	LifterActBGStartModOKChk = 33,
	LifterActBGStopModOKChk = 34,
	LifterActFullMovRel = 35,
	LifterActRstNode = 36,
} eLifterAction;
#endif

#ifndef __AS__TYPE_eMagAWAction
#define __AS__TYPE_eMagAWAction
typedef enum eMagAWAction
{	MagAWActIdle = 0,
	MagAWActGoWidth = 1,
	MagAWActFullHm = 2,
	MagAWActPwrOn = 3,
	MagAWActPwrOff = 4,
	MagAWActHoming = 5,
	MagAWActMovAbs = 6,
	MagAWActMovRel = 7,
	MagAWActJogOpen = 8,
	MagAWActJogClose = 9,
	MagAWActJogStop = 10,
	MagAWActRstAxisErr = 11,
	MagAWActStop = 12,
	MagAWActSDOWrite = 13,
	MagAWActBGStartModOKChk = 14,
	MagAWActBGStopModOKChk = 15,
	MagAWActGoWidthOff = 16,
	MagAWActEngage = 17,
	MagAWActEngageStop = 18,
	MagAWActRstNode = 19,
} eMagAWAction;
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

#ifndef __AS__TYPE_tyHermesSvyParam
#define __AS__TYPE_tyHermesSvyParam
typedef struct tyHermesSvyParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	unsigned short uiSvySvstemPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sClientAddress[16];
	unsigned short uiClientPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureConfiguration;
	plcbit bFeatureBoardTracking;
	plcbit bFeatureQueryWorkOrderInfo;
	plcbit bFeatureSendWorkOrderInfo;
	plcbit bFeatureReplyWorkOrderInfo;
} tyHermesSvyParam;
#endif

#ifndef __AS__TYPE_tyHermesUSParam
#define __AS__TYPE_tyHermesUSParam
typedef struct tyHermesUSParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	unsigned short uiClntPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sHostAddress[16];
	plcstring sUpstreamInterfaceId[81];
	unsigned short uiHostPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureBoardForecast;
	plcbit bFeatureQueryBoardInfo;
	plcbit bCmpTypeId;
	plcbit bCmpParam;
	plcbit bOverwrite;
} tyHermesUSParam;
#endif

#ifndef __AS__TYPE_eHermesAction
#define __AS__TYPE_eHermesAction
typedef enum eHermesAction
{	HermesActIdle = 0,
	HermesActBGStartRun = 1,
	HermesActBGStopRun = 2,
	HermesActDeleteOldLog = 3,
	HermesActCreateDir = 4,
	HermesActWriteRetain = 5,
	HermesActWriteRetainLane1 = 6,
	HermesActWriteRetainLane2 = 7,
	HermesActWriteRetainLane3 = 8,
	HermesActWriteRetainLane4 = 9,
	HermesActWriteRetainSendWO1 = 10,
	HermesActWriteRetainSendWO2 = 11,
	HermesActWriteRetainSendWO3 = 12,
	HermesActReadRetain = 13,
	HermesActReadRetainLane1 = 14,
	HermesActReadRetainLane2 = 15,
	HermesActReadRetainLane3 = 16,
	HermesActReadRetainLane4 = 17,
	HermesActReadRetainSendWO1 = 18,
	HermesActReadRetainSendWO2 = 19,
	HermesActReadRetainSendWO3 = 20,
	HermesActWriteConfig = 21,
	HermesActReadConfig = 22,
} eHermesAction;
#endif

#ifndef __AS__TYPE_eLFAction
#define __AS__TYPE_eLFAction
typedef enum eLFAction
{	LFActIdle = 0,
	LFActBGStartRun = 1,
	LFActBGStopRun = 2,
	LFActSyncPLCTm = 3,
	LFActChgAllAuto = 4,
	LFActChgAllMnl = 5,
	LFActChgSeqAuto = 6,
	LFActChgSeqMnl = 7,
} eLFAction;
#endif

#ifndef __AS__TYPE_eOperationsAction
#define __AS__TYPE_eOperationsAction
typedef enum eOperationsAction
{	OperationsActIdle = 0,
	OperationsActStart = 1,
	OperationsActStop = 2,
	OperationsActStep = 3,
	OperationsActError = 4,
} eOperationsAction;
#endif

#ifndef __AS__TYPE_tyTagAGVToDTMag
#define __AS__TYPE_tyTagAGVToDTMag
typedef struct tyTagAGVToDTMag
{	plcbit bVEHInPos1;
	plcbit bVEHInPos2;
	plcbit bVEHInPos3;
	plcbit bVEHAuto;
	plcbit bVEH1Occupied;
	plcbit bVEH2Occupied;
	plcbit bVEH3Occupied;
	plcbit bVEHRunning;
} tyTagAGVToDTMag;
#endif

#ifndef __AS__TYPE_eSimulationsAction
#define __AS__TYPE_eSimulationsAction
typedef enum eSimulationsAction
{	SimulationsActIdle = 0,
	SimulationsActStart = 1,
	SimulationsActStop = 2,
	SimulationsActStep = 3,
	SimulationsActError = 4,
} eSimulationsAction;
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

_BUR_LOCAL eUIAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL eStartupAction eStartupAct;
_BUR_LOCAL eSimulationsAction eSimuAct;
_BUR_LOCAL eHWInfoAction eHWInfoAct;
_BUR_LOCAL eTLBuzAction eTLBuzAct;
_BUR_LOCAL eRstErrAction eRstErrAct;
_BUR_LOCAL eProdRcpAction eProdRcpAct;
_BUR_LOCAL eMpProdRcpAction eMpProdRcpAct;
_BUR_LOCAL eMagRcpAction eMagRcpAct;
_BUR_LOCAL eMcParamAction eMcParamAct;
_BUR_LOCAL eUsrMgmtAction eUsrMgmtAct;
_BUR_LOCAL eOvenInfoAction eOvenInfoAAct;
_BUR_LOCAL eOvenInfoAction eOvenInfoBAct;
_BUR_LOCAL eBufferAction eBuffer1Act;
_BUR_LOCAL eBufferAction eBuffer2Act;
_BUR_LOCAL eBufferAction eBuffer3Act;
_BUR_LOCAL eSMEMAAction eUSSMEMAAAct;
_BUR_LOCAL eSMEMAAction eUSSMEMABAct;
_BUR_LOCAL ePneuAction eInShutterAct;
_BUR_LOCAL ePneuAction eOutShutterAct;
_BUR_LOCAL ePneuAction eOutShutterAct2;
_BUR_LOCAL ePneuAction eOutShutterAct3;
_BUR_LOCAL ePneuAction eStopperAAct;
_BUR_LOCAL ePneuAction eStopperBAct;
_BUR_LOCAL ePneuAction eInStopperAct;
_BUR_LOCAL ePneuAction eMag1SafetyBarAct;
_BUR_LOCAL ePneuAction eMag2SafetyBarAct;
_BUR_LOCAL ePneuAction eMag3SafetyBarAct;
_BUR_LOCAL ePneuAction eMag1AWEngageAct;
_BUR_LOCAL ePneuAction eMag2AWEngageAct;
_BUR_LOCAL ePneuAction eMag3AWEngageAct;
_BUR_LOCAL eConvAction ePshrConvAct;
_BUR_LOCAL ePneuAction eMagConvSelClp1Act;
_BUR_LOCAL ePneuAction eMagConvSelClp2Act;
_BUR_LOCAL ePneuAction eMagConvSelClp3Act;
_BUR_LOCAL eMagConv2ClpAction eMagConv2Clp1Act;
_BUR_LOCAL eMagConv2ClpAction eMagConv2Clp2Act;
_BUR_LOCAL eMagConv2ClpAction eMagConv2Clp3Act;
_BUR_LOCAL eAWAction eAWPushOrPullerAct;
_BUR_LOCAL eAWAction eAWOpenAct;
_BUR_LOCAL eLifterAction eLifterBtmAct;
_BUR_LOCAL eLifterAction eLifter2Act;
_BUR_LOCAL eTravAction eTravAct;
_BUR_LOCAL eMagAWAction eMagAWOpen1Act;
_BUR_LOCAL eMagAWAction eMagAWOpen2Act;
_BUR_LOCAL eMagAWAction eMagAWOpen3Act;
_BUR_LOCAL eDOAction eDOAct;
_BUR_LOCAL eHermesAction eHermesAct;
_BUR_LOCAL eLFAction eLFLeaderAct;
_BUR_LOCAL eOperationsAction eOpsAct;
_BUR_LOCAL eMagConvAction eInMagConvAct;
_BUR_LOCAL eMagConvAction eOutMagConvAct;
_BUR_LOCAL eMagConvAction eInMagConv2Act;
_BUR_LOCAL eMagConvAction eOutMagConv2Act;
_BUR_LOCAL eMagConvAction eLifterMagConvAct;
_BUR_LOCAL eMagConvAction eLifterMagConv2Act;
_BUR_LOCAL ePneuAction eStopper1Act;
_BUR_LOCAL ePneuAction eStopper2Act;
_BUR_LOCAL ePneuAction eStopper3Act;
_BUR_LOCAL ePneuAction eStopper4Act;
_BUR_LOCAL ePneuAction eStopper5Act;
_BUR_LOCAL ePneuAction eStopper1Act2;
_BUR_LOCAL ePneuAction eStopper2Act2;
_BUR_LOCAL ePneuAction eStopper3Act2;
_BUR_LOCAL ePneuAction eStopper4Act2;
_BUR_LOCAL ePneuAction eStopper5Act2;
_BUR_LOCAL plcbit bSafetyCurtainReset;
_BUR_LOCAL plcbit bBypCurtainSen;
_BUR_LOCAL plcbit bBypCurtainPBLED;
_BUR_LOCAL tyMcParam tyMcParamWr;
_BUR_LOCAL tyProdRcpParam tyProdRcpInfoIn;
_BUR_LOCAL plcstring sProdRcpSearch[31];
_BUR_LOCAL plcstring sProdRcpScan[31];
_BUR_LOCAL tyProdRcpParam tyProdRcpCurrRcpWr;
_BUR_LOCAL tyMagRcpParam tyMagRcpInfoIn;
_BUR_LOCAL plcstring sMagRcpSearch[31];
_BUR_LOCAL tyMagRcpParam tyMagRcpCurrRcpWr;
_BUR_LOCAL tyUsrMgmtParam tyUsrMgmtInfoIn;
_BUR_LOCAL tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl1Wr;
_BUR_LOCAL tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl2Wr;
_BUR_LOCAL tyUsrMgmtAccessRight tyUsrMgmtAccessRightLvl3Wr;
_BUR_LOCAL struct tyHermesUSParam a_tyHermesUSParamWr[4];
_BUR_LOCAL tyHermesSvyParam tyHermesSvyParamWr;
_BUR_LOCAL plcstring sSetIPAddr[31];
_BUR_LOCAL plcstring sSetSubnetMask[31];
_BUR_LOCAL plcbit bManualMod;
_BUR_LOCAL plcbit bUIManualMod;
_BUR_LOCAL plcbit bMuteBuz;
_BUR_LOCAL signed long diMnlMtrPshrExtSpd;
_BUR_LOCAL signed long diMnlMtrPshrExtTorq;
_BUR_LOCAL signed long diMnlAWPushOrPullerGoWidth;
_BUR_LOCAL signed long diMnlAWPushOrPullerNomSpd;
_BUR_LOCAL signed long diMnlAWPushOrPullerTargetPos;
_BUR_LOCAL signed long diMnlAWPushOrPullerStepSize;
_BUR_LOCAL signed long diMnlAWPushOrPullerJogSpd;
_BUR_LOCAL signed long diMnlAWGoWidth;
_BUR_LOCAL signed long diMnlAWNomSpd;
_BUR_LOCAL signed long diMnlAWTargetPos;
_BUR_LOCAL signed long diMnlAWStepSize;
_BUR_LOCAL signed long diMnlAWJogSpd;
_BUR_LOCAL signed long diMnlLifterGoSlt1Pos;
_BUR_LOCAL signed long diMnlLifterMag1GoSlt;
_BUR_LOCAL signed long diMnlLifterMag2GoSlt;
_BUR_LOCAL signed long diMnlLifterMag3GoSlt;
_BUR_LOCAL signed long diMnlLifterNomSpd;
_BUR_LOCAL signed long diMnlLifterTargetPos;
_BUR_LOCAL signed long diMnlLifterStepSize;
_BUR_LOCAL signed long diMnlLifterJogSpd;
_BUR_LOCAL signed long diMnlLifterGoSlt1Pos2;
_BUR_LOCAL signed long diMnlLifterMag1GoSlt2;
_BUR_LOCAL signed long diMnlLifterMag2GoSlt2;
_BUR_LOCAL signed long diMnlLifterMag3GoSlt2;
_BUR_LOCAL signed long diMnlLifterNomSpd2;
_BUR_LOCAL signed long diMnlLifterTargetPos2;
_BUR_LOCAL signed long diMnlLifterStepSize2;
_BUR_LOCAL signed long diMnlLifterJogSpd2;
_BUR_LOCAL signed long diMnlTravNomSpd;
_BUR_LOCAL signed long diMnlTravTargetPos;
_BUR_LOCAL signed long diMnlTravStepSize;
_BUR_LOCAL signed long diMnlTravJogSpd;
_BUR_LOCAL signed long diMnlMagAW1GoWidth;
_BUR_LOCAL signed long diMnlMagAW1NomSpd;
_BUR_LOCAL signed long diMnlMagAW1TargetPos;
_BUR_LOCAL signed long diMnlMagAW1StepSize;
_BUR_LOCAL signed long diMnlMagAW1JogSpd;
_BUR_LOCAL signed long diMnlMagAW2GoWidth;
_BUR_LOCAL signed long diMnlMagAW2NomSpd;
_BUR_LOCAL signed long diMnlMagAW2TargetPos;
_BUR_LOCAL signed long diMnlMagAW2StepSize;
_BUR_LOCAL signed long diMnlMagAW2JogSpd;
_BUR_LOCAL signed long diMnlMagAW3GoWidth;
_BUR_LOCAL signed long diMnlMagAW3NomSpd;
_BUR_LOCAL signed long diMnlMagAW3TargetPos;
_BUR_LOCAL signed long diMnlMagAW3StepSize;
_BUR_LOCAL signed long diMnlMagAW3JogSpd;
_BUR_LOCAL plcbit bVSMEMAUSAEn;
_BUR_LOCAL plcbit bVSMEMAUSBEn;
_BUR_LOCAL plcbit bVSMEMAUBAA;
_BUR_LOCAL plcbit bVSMEMAUBAAStat;
_BUR_LOCAL plcbit bVSMEMAUBAB;
_BUR_LOCAL plcbit bVSMEMAUBABStat;
_BUR_LOCAL signed long diSetBrdInOvenA;
_BUR_LOCAL signed long diSetBrdInOvenB;
_BUR_LOCAL plcbit bLeaderRun;
_BUR_LOCAL plcbit bProdAccData;
_BUR_LOCAL plcbit bOpsBypsInitConv;
_BUR_LOCAL plcbit bNewMag1;
_BUR_LOCAL plcbit bNewMag2;
_BUR_LOCAL plcbit bNewMag3;
_BUR_LOCAL plcbit bRlsMag1;
_BUR_LOCAL plcbit bRlsMag2;
_BUR_LOCAL plcbit bRlsMag3;
_BUR_LOCAL tyTagAGVToDTMag tyAGVSimulateSig;
_BUR_LOCAL plcbit bAGVSimulateOnline;
_BUR_LOCAL plcbit bAGVSimulationOn;
_BUR_LOCAL tyLyrP0950SOTstatus tySOTSimulateSig1;
_BUR_LOCAL tyLyrP0950SOTstatus tySOTSimulateSig2;
_BUR_LOCAL tyLyrP0950SOTstatus tySOTSimulateSig3;
_BUR_LOCAL signed long diMnlPPTargetPos;
_BUR_LOCAL signed long diMnlPPStepSize;
_BUR_LOCAL signed long diMnlPPNomSpd;
_BUR_LOCAL signed long diMnlPPJogSpd;
_BUR_LOCAL unsigned char usiHComModChaged;
_BUR_LOCAL unsigned char usiSelProdRcpStep;
_BUR_LOCAL plcbit bSimuMod;
_BUR_LOCAL eNtParamAction eNtWr;
_BUR_LOCAL plcbit bMismatchOverWriteConfig;
_BUR_LOCAL plcbit bTempAddrFillDone;
_BUR_LOCAL plcbit bIPConfigChgDone;
_BUR_LOCAL plcbit bOverwriteIP;
_BUR_LOCAL plcbit bOverwriteSubnet;
_BUR_LOCAL plcbit bOverwriteEthMode;
_BUR_LOCAL unsigned char usiNetworkModeSelected;
_BUR_LOCAL plcbit bSOTMagErr1;
_BUR_LOCAL plcbit bSOTMagErr2;
_BUR_LOCAL plcbit bSOTMagErr3;
_BUR_LOCAL plcbit bSOTMagErr4;
_BUR_LOCAL plcbit bSOTMagRdy1;
_BUR_LOCAL plcbit bSOTMagRdy2;
_BUR_LOCAL plcbit bSOTMagRdy3;
_BUR_LOCAL plcbit bSOTMagRdy4;
_BUR_LOCAL plcbit bSOTMagAvail1;
_BUR_LOCAL plcbit bSOTMagAvail2;
_BUR_LOCAL plcbit bSOTMagAvail3;
_BUR_LOCAL plcbit bSOTMagAvail4;
_BUR_LOCAL plcbit bSOTMagSLarge1;
_BUR_LOCAL plcbit bSOTMagSLarge2;
_BUR_LOCAL plcbit bSOTMagSLarge3;
_BUR_LOCAL plcbit bSOTMagSLarge4;
_BUR_LOCAL plcbit bAIVReqBring1;
_BUR_LOCAL plcbit bAIVReqBring2;
_BUR_LOCAL plcbit bAIVReqBring3;
_BUR_LOCAL plcbit bAIVReqBring4;
_BUR_LOCAL plcbit bAIVReqGet1;
_BUR_LOCAL plcbit bAIVReqGet2;
_BUR_LOCAL plcbit bAIVReqGet3;
_BUR_LOCAL plcbit bAIVReqGet4;
_BUR_LOCAL plcbit bMagAWOpenLimByp1;
_BUR_LOCAL plcbit bMagAWOpenLimByp2;
_BUR_LOCAL plcbit bMagAWOpenLimByp3;
_BUR_LOCAL plcbit bMagAWOpenLimByp4;
_BUR_LOCAL plcbit bSmallMagLimSen1;
_BUR_LOCAL plcbit bSmallMagLimSen2;
_BUR_LOCAL plcbit bSmallMagLimSen3;
_BUR_LOCAL plcbit bSmallMagLimSen4;
_BUR_LOCAL plcbit bStartScanSig;
_BUR_LOCAL plcbit bPCBExitMag1;
_BUR_LOCAL plcbit bPCBExitMag2;
_BUR_LOCAL plcbit bPCBExitMag3;
_BUR_LOCAL plcbit bUnloadMag;
_BUR_LOCAL plcbit bOpsMnlUnloadMag;
_BUR_LOCAL plcbit bOpsMnlUnloadMag2;
_BUR_LOCAL plcbit bQueryBoardInfo;
_BUR_LOCAL plcbit bQueryWorkOrderInfo;
_BUR_LOCAL plcbit bDeleteWorkOrder;
_BUR_LOCAL plcbit bSaveHMISvyConfig;
_BUR_LOCAL plcbit bSaveHMIConfigure;
_BUR_LOCAL plcbit bSkipWorkOrder;
_BUR_LOCAL plcbit bReadWorkOrder;
_BUR_LOCAL signed short iSlotId;
_BUR_LOCAL plcstring sSetHMIIPAddr[16];
_BUR_LOCAL plcbit bUpdtHMIIPAddr;
_BUR_LOCAL tyUIP0201OpsTravLifter tyP0201OpsTravLifter;
_BUR_LOCAL tyUIP0202OpsMag1 tyP0202OpsMag1;
_BUR_LOCAL tyUIP0203OpsMag2 tyP0203OpsMag2;
_BUR_LOCAL tyUIP0204OpsMag3 tyP0204OpsMag3;
_BUR_LOCAL tyUIP1022McSetVComm tyP1022McSetVComm;
_GLOBAL unsigned long p_UIStat;
_GLOBAL unsigned long p_UIStatus;
_GLOBAL unsigned long p_UIStatTxt;
_GLOBAL unsigned long p_UIStartupAct;
_GLOBAL unsigned long p_UISimuAct;
_GLOBAL unsigned long p_UIHWInfoAct;
_GLOBAL unsigned long p_UITLBuzAct;
_GLOBAL unsigned long p_UIRstErrAct;
_GLOBAL unsigned long p_UIProdRcpAct;
_GLOBAL unsigned long p_UIMpProdRcpAct;
_GLOBAL unsigned long p_UIMagRcpAct;
_GLOBAL unsigned long p_UIMcParamAct;
_GLOBAL unsigned long p_UIUsrMgmtAct;
_GLOBAL unsigned long p_UIOvenInfoAAct;
_GLOBAL unsigned long p_UIOvenInfoBAct;
_GLOBAL unsigned long p_UIBuffer1Act;
_GLOBAL unsigned long p_UIBuffer2Act;
_GLOBAL unsigned long p_UIBuffer3Act;
_GLOBAL unsigned long p_UIUSSMEMAAAct;
_GLOBAL unsigned long p_UIUSSMEMABAct;
_GLOBAL unsigned long p_UIInShutterAct;
_GLOBAL unsigned long p_UIOutShutterAct;
_GLOBAL unsigned long p_UIOutShutterAct2;
_GLOBAL unsigned long p_UIOutShutterAct3;
_GLOBAL unsigned long p_UIStopperAAct;
_GLOBAL unsigned long p_UIStopperBAct;
_GLOBAL unsigned long p_UIInStopperAct;
_GLOBAL unsigned long p_UIMag1SafetyBarAct;
_GLOBAL unsigned long p_UIMag2SafetyBarAct;
_GLOBAL unsigned long p_UIMag3SafetyBarAct;
_GLOBAL unsigned long p_UIMag1AWEngageAct;
_GLOBAL unsigned long p_UIMag2AWEngageAct;
_GLOBAL unsigned long p_UIMag3AWEngageAct;
_GLOBAL unsigned long p_UIPshrConvAct;
_GLOBAL unsigned long p_UIMagConvSelClp1Act;
_GLOBAL unsigned long p_UIMagConvSelClp2Act;
_GLOBAL unsigned long p_UIMagConvSelClp3Act;
_GLOBAL unsigned long p_UIMagConv2Clp1Act;
_GLOBAL unsigned long p_UIMagConv2Clp2Act;
_GLOBAL unsigned long p_UIMagConv2Clp3Act;
_GLOBAL unsigned long p_UIAWPushOrPullerAct;
_GLOBAL unsigned long p_UIAWOpenAct;
_GLOBAL unsigned long p_UILifterBtmAct;
_GLOBAL unsigned long p_UILifter2Act;
_GLOBAL unsigned long p_UITravAct;
_GLOBAL unsigned long p_UIMagAWOpen1Act;
_GLOBAL unsigned long p_UIMagAWOpen2Act;
_GLOBAL unsigned long p_UIMagAWOpen3Act;
_GLOBAL unsigned long p_UIDOAct;
_GLOBAL unsigned long p_UIHermesAct;
_GLOBAL unsigned long p_UILFLeaderAct;
_GLOBAL unsigned long p_UIOpsAct;
_GLOBAL unsigned long p_UIMcParamWr;
_GLOBAL unsigned long p_UIProdRcpInfoIn;
_GLOBAL unsigned long p_UIProdRcpSearch;
_GLOBAL unsigned long p_UIProdRcpScan;
_GLOBAL unsigned long p_UIProdRcpCurrRcpWr;
_GLOBAL unsigned long p_UIMagRcpInfoIn;
_GLOBAL unsigned long p_UIMagRcpSearch;
_GLOBAL unsigned long p_UIMagRcpCurrRcpWr;
_GLOBAL unsigned long p_UIUsrMgmtInfoIn;
_GLOBAL unsigned long p_UIUsrMgmtAccessRightLvl1Wr;
_GLOBAL unsigned long p_UIUsrMgmtAccessRightLvl2Wr;
_GLOBAL unsigned long p_UIUsrMgmtAccessRightLvl3Wr;
_GLOBAL unsigned long p_UIHermesUSParamWr;
_GLOBAL unsigned long p_UIHermesSvyParamWr;
_GLOBAL unsigned long p_UISectionLdr;
_GLOBAL unsigned long p_UISetIPAddr;
_GLOBAL unsigned long p_UISetSubnetMask;
_GLOBAL unsigned long p_UINetworkMode;
_GLOBAL unsigned long p_UIMnlMod;
_GLOBAL unsigned long p_UIUIMnlMod;
_GLOBAL unsigned long p_UIMuteBuz;
_GLOBAL unsigned long p_UISimuMod;
_GLOBAL unsigned long p_UINtWr;
_GLOBAL unsigned long p_UIMnlAWPushOrPullerGoWidth;
_GLOBAL unsigned long p_UIMnlAWPushOrPullerNomSpd;
_GLOBAL unsigned long p_UIMnlAWPushOrPullerTargetPos;
_GLOBAL unsigned long p_UIMnlAWPushOrPullerStepSize;
_GLOBAL unsigned long p_UIMnlAWPushOrPullerJogSpd;
_GLOBAL unsigned long p_UIMnlAWGoWidth;
_GLOBAL unsigned long p_UIMnlAWNomSpd;
_GLOBAL unsigned long p_UIMnlAWTargetPos;
_GLOBAL unsigned long p_UIMnlAWStepSize;
_GLOBAL unsigned long p_UIMnlAWJogSpd;
_GLOBAL unsigned long p_UIMnlLifterBtmGoSlt1Pos;
_GLOBAL unsigned long p_UIMnlLifterBtmMag1GoSlt;
_GLOBAL unsigned long p_UIMnlLifterBtmMag2GoSlt;
_GLOBAL unsigned long p_UIMnlLifterBtmMag3GoSlt;
_GLOBAL unsigned long p_UIMnlLifterBtmNomSpd;
_GLOBAL unsigned long p_UIMnlLifterBtmTargetPos;
_GLOBAL unsigned long p_UIMnlLifterBtmStepSize;
_GLOBAL unsigned long p_UIMnlLifterBtmJogSpd;
_GLOBAL unsigned long p_UIMnlLifter2GoSlt1Pos;
_GLOBAL unsigned long p_UIMnlLifter2Mag1GoSlt;
_GLOBAL unsigned long p_UIMnlLifter2Mag2GoSlt;
_GLOBAL unsigned long p_UIMnlLifter2Mag3GoSlt;
_GLOBAL unsigned long p_UIMnlLifter2NomSpd;
_GLOBAL unsigned long p_UIMnlLifter2TargetPos;
_GLOBAL unsigned long p_UIMnlLifter2StepSize;
_GLOBAL unsigned long p_UIMnlLifter2JogSpd;
_GLOBAL unsigned long p_UIMnlTravNomSpd;
_GLOBAL unsigned long p_UIMnlTravTargetPos;
_GLOBAL unsigned long p_UIMnlTravStepSize;
_GLOBAL unsigned long p_UIMnlTravJogSpd;
_GLOBAL unsigned long p_UIMnlMagAW1GoWidth;
_GLOBAL unsigned long p_UIMnlMagAW1NomSpd;
_GLOBAL unsigned long p_UIMnlMagAW1TargetPos;
_GLOBAL unsigned long p_UIMnlMagAW1StepSize;
_GLOBAL unsigned long p_UIMnlMagAW1JogSpd;
_GLOBAL unsigned long p_UIMnlMagAW2GoWidth;
_GLOBAL unsigned long p_UIMnlMagAW2NomSpd;
_GLOBAL unsigned long p_UIMnlMagAW2TargetPos;
_GLOBAL unsigned long p_UIMnlMagAW2StepSize;
_GLOBAL unsigned long p_UIMnlMagAW2JogSpd;
_GLOBAL unsigned long p_UIMnlMagAW3GoWidth;
_GLOBAL unsigned long p_UIMnlMagAW3NomSpd;
_GLOBAL unsigned long p_UIMnlMagAW3TargetPos;
_GLOBAL unsigned long p_UIMnlMagAW3StepSize;
_GLOBAL unsigned long p_UIMnlMagAW3JogSpd;
_GLOBAL unsigned long p_UIMnlPPNomSpd;
_GLOBAL unsigned long p_UIMnlPPTargetPos;
_GLOBAL unsigned long p_UIMnlPPStepSize;
_GLOBAL unsigned long p_UIMnlPPJogSpd;
_GLOBAL unsigned long p_UIVSMEMAUSAEn;
_GLOBAL unsigned long p_UIVSMEMAUSBEn;
_GLOBAL unsigned long p_UIVSMEMAUBAA;
_GLOBAL unsigned long p_UIVSMEMAUBAAStat;
_GLOBAL unsigned long p_UIVSMEMAUBAB;
_GLOBAL unsigned long p_UIVSMEMAUBABStat;
_GLOBAL unsigned long p_UIOvenInfoSetBrdInOvenA;
_GLOBAL unsigned long p_UIOvenInfoSetBrdInOvenB;
_GLOBAL unsigned long p_UILeaderRun;
_GLOBAL unsigned long p_UIProdAccData;
_GLOBAL unsigned long p_UIOpsBypsInitConv;
_GLOBAL unsigned long p_UINewMag1;
_GLOBAL unsigned long p_UINewMag2;
_GLOBAL unsigned long p_UINewMag3;
_GLOBAL unsigned long p_UIRlsMag1;
_GLOBAL unsigned long p_UIRlsMag2;
_GLOBAL unsigned long p_UIRlsMag3;
_GLOBAL unsigned long p_UIAGVSimulateOnline;
_GLOBAL unsigned long p_UIAGVSimulateSig;
_GLOBAL unsigned long p_UIAGVSimulationOn;
_GLOBAL unsigned long p_UIMismatchOverWriteConfig;
_GLOBAL unsigned long p_UITempAddrFillDone;
_GLOBAL unsigned long p_UIIPConfigChgDone;
_GLOBAL unsigned long p_UIOverwriteIP;
_GLOBAL unsigned long p_UIOverwriteSubnet;
_GLOBAL unsigned long p_UIOverwriteEthMode;
_GLOBAL unsigned long p_UIQueryBoardInfo;
_GLOBAL unsigned long p_UIQueryWorkOrderInfo;
_GLOBAL unsigned long p_UISaveHMIConfigure;
_GLOBAL unsigned long p_UISaveHMISvyConfig;
_GLOBAL unsigned long p_UITravLifTopBarcode;
_GLOBAL unsigned long p_UITravLifBottomBarcode;
_GLOBAL unsigned long p_UIMagazine1Id;
_GLOBAL unsigned long p_UIMagazine1PCBBarcode;
_GLOBAL unsigned long p_UIMagazine2Id;
_GLOBAL unsigned long p_UIMagazine2PCBBarcode;
_GLOBAL unsigned long p_UIMagazine3Id;
_GLOBAL unsigned long p_UIMagazine3PCBBarcode;
_GLOBAL unsigned long p_UIMagazineSlotId;
_GLOBAL unsigned long p_UITravLifPCBBarcode;
_GLOBAL unsigned long p_UISkipWorkOrder;
_GLOBAL unsigned long p_UIReadWorkOrder;
_GLOBAL unsigned long p_UIDeleteWorkOrder;
_GLOBAL unsigned long p_UISOTMagErr1;
_GLOBAL unsigned long p_UISOTMagErr2;
_GLOBAL unsigned long p_UISOTMagErr3;
_GLOBAL unsigned long p_UISOTMagErr4;
_GLOBAL unsigned long p_UISOTMagRdy1;
_GLOBAL unsigned long p_UISOTMagRdy2;
_GLOBAL unsigned long p_UISOTMagRdy3;
_GLOBAL unsigned long p_UISOTMagRdy4;
_GLOBAL unsigned long p_UISOTMagAvail1;
_GLOBAL unsigned long p_UISOTMagAvail2;
_GLOBAL unsigned long p_UISOTMagAvail3;
_GLOBAL unsigned long p_UISOTMagAvail4;
_GLOBAL unsigned long p_UISOTMagSLarge1;
_GLOBAL unsigned long p_UISOTMagSLarge2;
_GLOBAL unsigned long p_UISOTMagSLarge3;
_GLOBAL unsigned long p_UISOTMagSLarge4;
_GLOBAL unsigned long p_UIAIVReqBring1;
_GLOBAL unsigned long p_UIAIVReqBring2;
_GLOBAL unsigned long p_UIAIVReqBring3;
_GLOBAL unsigned long p_UIAIVReqBring4;
_GLOBAL unsigned long p_UIAIVReqGet1;
_GLOBAL unsigned long p_UIAIVReqGet2;
_GLOBAL unsigned long p_UIAIVReqGet3;
_GLOBAL unsigned long p_UIAIVReqGet4;
_GLOBAL unsigned long p_UIMagAWOpenLimByp1;
_GLOBAL unsigned long p_UIMagAWOpenLimByp2;
_GLOBAL unsigned long p_UIMagAWOpenLimByp3;
_GLOBAL unsigned long p_UIMagAWOpenLimByp4;
_GLOBAL unsigned long p_UIMagAWSmallLimSen1;
_GLOBAL unsigned long p_UIMagAWSmallLimSen2;
_GLOBAL unsigned long p_UIMagAWSmallLimSen3;
_GLOBAL unsigned long p_UIMagAWSmallLimSen4;
_GLOBAL unsigned long p_UISOTSimulationSig1;
_GLOBAL unsigned long p_UISOTSimulationSig2;
_GLOBAL unsigned long p_UISOTSimulationSig3;
_GLOBAL unsigned long p_UIMnlMtrPshrExtSpd;
_GLOBAL unsigned long p_UIMnlMtrPshrExtTorq;
_GLOBAL unsigned long p_UIUnloadMag;
_GLOBAL unsigned long p_UIOpsMnlUnloadMag;
_GLOBAL unsigned long p_UIOpsMnlUnloadMag2;
_GLOBAL unsigned long p_UIInMagConvAct;
_GLOBAL unsigned long p_UIOutMagConvAct;
_GLOBAL unsigned long p_UIInMagConv2Act;
_GLOBAL unsigned long p_UIOutMagConv2Act;
_GLOBAL unsigned long p_UILifterMagConvAct;
_GLOBAL unsigned long p_UILifterMagConv2Act;
_GLOBAL unsigned long p_UIStopper1Act;
_GLOBAL unsigned long p_UIStopper2Act;
_GLOBAL unsigned long p_UIStopper3Act;
_GLOBAL unsigned long p_UIStopper4Act;
_GLOBAL unsigned long p_UIStopper5Act;
_GLOBAL unsigned long p_UIStopper1Act2;
_GLOBAL unsigned long p_UIStopper2Act2;
_GLOBAL unsigned long p_UIStopper3Act2;
_GLOBAL unsigned long p_UIStopper4Act2;
_GLOBAL unsigned long p_UIStopper5Act2;
_GLOBAL unsigned long p_UISafetyCurtainReset;
_GLOBAL unsigned long p_UIMnlBypCurtainSen;
_GLOBAL unsigned long p_UIMnlBypCurtainPBLED;
_GLOBAL unsigned long p_SelProdRcpStep;
_GLOBAL unsigned long p_UIHcomModchanged;
_GLOBAL unsigned long p_UIStartScanSig;
_GLOBAL unsigned long p_UIMag1TransOut;
_GLOBAL unsigned long p_UIMag2TransOut;
_GLOBAL unsigned long p_UIMag3TransOut;
_GLOBAL unsigned long p_UIUpdtHMIIPAddr;
_GLOBAL unsigned long p_UISetHMIIPAddr;
_GLOBAL signed long c_diLFClntNum;
_GLOBAL signed long c_diHermesConfigMaxIdx;
