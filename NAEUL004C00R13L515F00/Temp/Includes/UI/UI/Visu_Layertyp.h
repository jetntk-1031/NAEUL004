/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_182_
#define _BUR_1701225410_182_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tyKeypad
{	struct tyUIString tyStringTitle;
	struct tyUITxt tyTxtTitle;
} tyKeypad;

typedef struct tyLyrC0001MotionStd
{	struct tyUIBitmap tyBitmapOrigin;
	struct tyUIBitmap tyBitmapPwr;
	struct tyUIBitmap tyBitmapRst;
	struct tyUIBitmap tyBitmapStop;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnPosLmtSen;
	struct tyUIBtn tyBtnNegLmtSen;
	struct tyUIBtn tyBtnJogPos;
	struct tyUIBtn tyBtnJogNeg;
	struct tyUIBtn tyBtnMovAbs;
	struct tyUIBtn tyBtnMovRel;
	struct tyUIBtn tyBtnOrigin;
	struct tyUIBtn tyBtnPwr;
	struct tyUIBtn tyBtnRst;
	struct tyUIBtn tyBtnStop;
	struct tyUINum tyNumCurrPos;
	struct tyUINum tyNumErrCode;
	struct tyUINum tyNumNomSpd;
	struct tyUINum tyNumSlwSpd;
	struct tyUINum tyNumStepSize;
	struct tyUINum tyNumTargetPos;
	struct tyUILString tyStringStat;
} tyLyrC0001MotionStd;

typedef struct tyLyrC0001MotionStdAW
{	struct tyUIBitmap tyBitmapOrigin;
	struct tyUIBitmap tyBitmapPwr;
	struct tyUIBitmap tyBitmapRst;
	struct tyUIBitmap tyBitmapStop;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnOpenLmtSen;
	struct tyUIBtn tyBtnCloseLmtSen;
	struct tyUIBtn tyBtnJogOpen;
	struct tyUIBtn tyBtnJogClose;
	struct tyUIBtn tyBtnMovAbs;
	struct tyUIBtn tyBtnMovRel;
	struct tyUIBtn tyBtnOrigin;
	struct tyUIBtn tyBtnPwr;
	struct tyUIBtn tyBtnRst;
	struct tyUIBtn tyBtnStop;
	struct tyUINum tyNumCurrPos;
	struct tyUINum tyNumErrCode;
	struct tyUINum tyNumNomSpd;
	struct tyUINum tyNumSlwSpd;
	struct tyUINum tyNumStepSize;
	struct tyUINum tyNumTargetPos;
	struct tyUILString tyStringStat;
} tyLyrC0001MotionStdAW;

typedef struct tyLyrC0001MotionStdLifter
{	struct tyUIBitmap tyBitmapOrigin;
	struct tyUIBitmap tyBitmapPwr;
	struct tyUIBitmap tyBitmapRst;
	struct tyUIBitmap tyBitmapStop;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnUpLmtSen;
	struct tyUIBtn tyBtnDownLmtSen;
	struct tyUIBtn tyBtnJogUp;
	struct tyUIBtn tyBtnJogDown;
	struct tyUIBtn tyBtnMovAbs;
	struct tyUIBtn tyBtnMovRel;
	struct tyUIBtn tyBtnOrigin;
	struct tyUIBtn tyBtnPwr;
	struct tyUIBtn tyBtnRst;
	struct tyUIBtn tyBtnStop;
	struct tyUINum tyNumCurrPos;
	struct tyUINum tyNumErrCode;
	struct tyUINum tyNumNomSpd;
	struct tyUINum tyNumSlwSpd;
	struct tyUINum tyNumStepSize;
	struct tyUINum tyNumTargetPos;
	struct tyUILString tyStringStat;
} tyLyrC0001MotionStdLifter;

typedef struct tyLyrC0001MotionStdMagAW
{	struct tyUIBitmap tyBitmapOrigin;
	struct tyUIBitmap tyBitmapPwr;
	struct tyUIBitmap tyBitmapRst;
	struct tyUIBitmap tyBitmapStop;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnOpenLmtSen;
	struct tyUIBtn tyBtnCloseLmtSen;
	struct tyUIBtn tyBtnJogOpen;
	struct tyUIBtn tyBtnJogClose;
	struct tyUIBtn tyBtnMovAbs;
	struct tyUIBtn tyBtnMovRel;
	struct tyUIBtn tyBtnOrigin;
	struct tyUIBtn tyBtnPwr;
	struct tyUIBtn tyBtnRst;
	struct tyUIBtn tyBtnStop;
	struct tyUINum tyNumCurrPos;
	struct tyUINum tyNumErrCode;
	struct tyUINum tyNumNomSpd;
	struct tyUINum tyNumSlwSpd;
	struct tyUINum tyNumStepSize;
	struct tyUINum tyNumTargetPos;
	struct tyUILString tyStringStat;
} tyLyrC0001MotionStdMagAW;

typedef struct tyLyrC0001MotionStdTrav
{	struct tyUIBitmap tyBitmapOrigin;
	struct tyUIBitmap tyBitmapPwr;
	struct tyUIBitmap tyBitmapRst;
	struct tyUIBitmap tyBitmapStop;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnFrontLmtSen;
	struct tyUIBtn tyBtnRearLmtSen;
	struct tyUIBtn tyBtnJogFront;
	struct tyUIBtn tyBtnJogRear;
	struct tyUIBtn tyBtnMovAbs;
	struct tyUIBtn tyBtnMovRel;
	struct tyUIBtn tyBtnOrigin;
	struct tyUIBtn tyBtnPwr;
	struct tyUIBtn tyBtnRst;
	struct tyUIBtn tyBtnStop;
	struct tyUINum tyNumCurrPos;
	struct tyUINum tyNumErrCode;
	struct tyUINum tyNumNomSpd;
	struct tyUINum tyNumSlwSpd;
	struct tyUINum tyNumStepSize;
	struct tyUINum tyNumTargetPos;
	struct tyUILString tyStringStat;
} tyLyrC0001MotionStdTrav;

typedef struct tyLyrC0002FullMask
{	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnMask;
} tyLyrC0002FullMask;

typedef struct tyLyrC0003DualMask
{	struct tyUIBtn tyBtnLeftMask;
	struct tyUIBtn tyBtnRgtMask;
	struct tyUILyr tyLyr;
} tyLyrC0003DualMask;

typedef struct tyLyrC0004Navi
{	struct tyUIBtn tyBtnLeft;
	struct tyUIBtn tyBtnRgt;
	struct tyUIBtn tyBtnBack;
	struct tyUIBitmap tyBitmapPageDisp;
	struct tyUILyr tyLyr;
} tyLyrC0004Navi;

typedef struct tyLyrC0005Main
{	struct tyUIBtn tyBtnNotification;
	struct tyUIBtn tyBtnHome;
	struct tyUIBtn tyBtnStart;
	struct tyUIBtn tyBtnAlarm;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnStep;
	struct tyUIBtn tyBtnReset;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnGoMain;
	struct tyUIBitmap tyBitmapStatBar;
	struct tyUIHotspot tyHotspotNaviStart;
} tyLyrC0005Main;

typedef struct tyLyrC0006Set
{	struct tyUIBtn tyBtnSave;
	struct tyUILyr tyLyr;
} tyLyrC0006Set;

typedef struct tyLyrC0007Notif
{	struct tyUITxt tyTxtUsrLv;
	struct tyUITxt tyTxtLFMc;
	struct tyUIHotspot tyHotspotClose;
	struct tyUIString tyStringUsrNm;
	struct tyUIHotspot tyHotspotShowInfo;
	struct tyUIBitmap tyBitmapShowInfo;
	struct tyUILyr tyLyr;
} tyLyrC0007Notif;

typedef struct tyLyrC0008MsgBox
{	struct tyUIBitmap tyBitmapIcon;
	struct tyUIBtn tyBtnNo;
	struct tyUIBtn tyBtnYes;
	struct tyUILyr tyLyr;
	struct tyUITxt tyTxtMsg;
	struct tyUITxt tyTxtTitle;
} tyLyrC0008MsgBox;

typedef struct tyLyrC0009Info
{	struct tyUILString tyStringInfo;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrC0009Info;

typedef struct tyLyrC0010RcyMsg
{	struct tyUILString tyTxtMsg;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrC0010RcyMsg;

typedef struct tyLyrC0011RcpPopUp
{	struct tyUILString tyStringInfo;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrC0011RcpPopUp;

typedef struct tyLyrE0001OpsQueryBoardInfo
{	struct tyUIBtn tyBtnOk;
	struct tyUIBtn tyBtnCancel;
	struct tyUIBtn tyBtnBarcodeScanner;
	struct tyUILString tyStringTopBarcode;
	struct tyUILString tyStringBottomBarcode;
	struct tyUILyr tyLyr;
} tyLyrE0001OpsQueryBoardInfo;

typedef struct tyLyrE0003OpsQueryWorkOrder
{	struct tyUIBtn tyBtnOk;
	struct tyUIBtn tyBtnCancel;
	struct tyUIBtn tyBtnBarcodeScanner;
	struct tyUILString tyStringMagazineId;
	struct tyUINum tyNumSlotId;
	struct tyUILString tyStringBarcode;
	struct tyUILyr tyLyr;
	struct tyUIBitmap tyBitmapMask;
} tyLyrE0003OpsQueryWorkOrder;

typedef struct tyLyrE0002OpsCurrWorkOrder
{	struct tyUIBtn tyBtnQuery;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnDelete;
	struct tyUILString tyStringWorkOrder;
	struct tyUILyr tyLyr;
	struct tyUIBitmap tyBitmapMask;
} tyLyrE0002OpsCurrWorkOrder;

typedef struct tyLyrE0004OpsBarcodeScanner
{	struct tyUIBtn tyBtnOk;
	struct tyUIBtn tyBtnCancel;
	struct tyUILString tyStringBarcode;
	struct tyUILString tyStringTopBarcode;
	struct tyUILString tyStringTopBarcodeBK;
	struct tyUILString tyStringBottomBarcode;
	struct tyUILString tyStringBottomBarcodeBK;
	struct tyUILString tyStringMagazineBarcode;
	struct tyUILString tyStringMagazineBarcodeBK;
	struct tyUILString tyStringPCBBarcode;
	struct tyUILString tyStringPCBBarcodeBK;
	struct tyUIBtn tyBtnTop;
	struct tyUIBtn tyBtnBottom;
	struct tyUIBtn tyBtnMagazine;
	struct tyUIBtn tyBtnPCB;
	struct tyUILyr tyLyr;
} tyLyrE0004OpsBarcodeScanner;

typedef struct tyLyrP0000SSaver
{	struct tyUITxt tyTxtMcStat;
	struct tyUILString tyTxtMcNm;
	struct tyUIBitmap tyBitmapStat;
} tyLyrP0000SSaver;

typedef struct tyLyrP0001Initial
{	struct tyUILyr tyLyr;
} tyLyrP0001Initial;

typedef struct tyLyrP0001Startup
{	struct tyUIBarGraph tyBarGraphStartup;
	struct tyUITxt tyTxtStartupStat;
} tyLyrP0001Startup;

typedef struct tyLyrP0002Menu
{	struct tyUIBtn tyBtnAlm;
	struct tyUIBtn tyBtnCommCtrl;
	struct tyUIBtn tyBtnGenInput;
	struct tyUIBtn tyBtnGenOutput;
	struct tyUIBtn tyBtnLang;
	struct tyUIBtn tyBtnLFCtrl;
	struct tyUIBtn tyBtnLFSet;
	struct tyUIBtn tyBtnLogin;
	struct tyUIBtn tyBtnMcInfo;
	struct tyUIBtn tyBtnMcSet;
	struct tyUIBtn tyBtnMnlRst;
	struct tyUIBtn tyBtnMovCtrl;
	struct tyUIBtn tyBtnOpt;
	struct tyUIBtn tyBtnProdSel;
	struct tyUIBtn tyBtnProdSet;
	struct tyUIBtn tyBtnMagInfo;
	struct tyUIBtn tyBtnMagSet;
	struct tyUIBtn tyBtnMagSel;
	struct tyUIBtn tyBtnSimu;
	struct tyUIBtn tyBtnUsrMgmt;
	struct tyUIBtn tyBtnOvenInfo;
	struct tyUIBitmap tyBitmapMaskProdSetLCS;
	struct tyUIHotspot tyHotspotProdSel;
	struct tyUIHotspot tyHotspotMagSel;
	struct tyUIBitmap tyBitmapGen;
	struct tyUIBitmap tyBitmapSet;
	struct tyUIBtn tyBtnHotspotActSimu;
} tyLyrP0002Menu;

typedef struct tyLyrP0100Login
{	struct tyUIString tyStringUsrNm;
	struct tyUIString tyStringPw;
	struct tyUIBtn tyBtnLogin;
	struct tyUIHotspot tyHotspotBypassLogin;
	struct tyUILyr tyLyr;
} tyLyrP0100Login;

typedef struct tyLyrP0100Logout
{	struct tyUIBtn tyBtnLogout;
	struct tyUILyr tyLyr;
} tyLyrP0100Logout;

typedef struct tyLyrP0200OpsBypsInitConv
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0200OpsBypsInitConv;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyLyrP0200OpsGen
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUIHotspot tyHotspotOpsTravLifter;
	struct tyUIHotspot tyHotspotOpsTravRToL;
	struct tyUIHotspot tyHotspotOps2Mag1;
	struct tyUIHotspot tyHotspotOps2Mag1RToL;
	struct tyUIHotspot tyHotspotOps2Mag2;
	struct tyUIHotspot tyHotspotOps2Mag2RToL;
	struct tyUIHotspot tyHotspotOps3Mag1;
	struct tyUIHotspot tyHotspotOps3Mag1RToL;
	struct tyUIHotspot tyHotspotOps3Mag2;
	struct tyUIHotspot tyHotspotOps3Mag2RToL;
	struct tyUIHotspot tyHotspotOps3Mag3;
	struct tyUIHotspot tyHotspotOps3Mag3RToL;
	struct tyUIHotspot tyHotspotOpsAIV;
	struct tyUIHotspot tyHotspotOpsMagInfo;
	struct tyUIHotspot tyHotspotOpsMagInfoRToL;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMinSltRangeRToL;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumMaxSltRangeRToL;
	struct tyUINum tyNumPitch;
	struct tyUINum tyNumPitchRToL;
	struct tyUITxt tyTxtMagSlt;
	struct tyUITxt tyTxtMagSltRToL;
	struct tyUINum tyNumMag1AvlQty;
	struct tyUINum tyNumMag1AvlQtyRToL;
	struct tyUINum tyNumMag2AvlQty;
	struct tyUINum tyNumMag2AvlQtyRToL;
	struct tyUINum tyNumMag3AvlQty;
	struct tyUINum tyNumMag3AvlQtyRToL;
	struct tyUINum tyNumMag1TtlSlt;
	struct tyUINum tyNumMag1TtlSltRToL;
	struct tyUINum tyNumMag2TtlSlt;
	struct tyUINum tyNumMag2TtlSltRToL;
	struct tyUINum tyNumMag3TtlSlt;
	struct tyUINum tyNumMag3TtlSltRToL;
	struct tyUIHotspot tyHotspotAlm;
	struct tyUILString a_tyStringAlm[6];
	struct tyUIHotspot a_tyHotspotRcyMsg[6];
	struct tyUIBitmap tyBitmapUSIn;
	struct tyUIBitmap tyBitmapUSOut;
	struct tyUIBitmap tyBitmapUSIn1;
	struct tyUIBitmap tyBitmapUSOut1;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBitmap tyBitmapPCB;
	struct tyUIBitmap tyBitmapDir1;
	struct tyUIBitmap tyBitmapDir2;
	struct tyUITxt tyTxtMag1Slt;
	struct tyUITxt tyTxtMag1Backslash;
	struct tyUITxt tyTxtMag2Slt;
	struct tyUITxt tyTxtMag2Backslash;
	struct tyUITxt tyTxtMag3Slt;
	struct tyUITxt tyTxtBackslash3;
	struct tyUITxt tyTxtLane;
	struct tyUITxt tyTxtLane1;
	struct tyUITxt tyTxtMag1SltRToL;
	struct tyUITxt tyTxtMag1BackslashRToL;
	struct tyUITxt tyTxtMag2SltRToL;
	struct tyUITxt tyTxtMag2BackslashRToL;
	struct tyUITxt tyTxtMag3SltRToL;
	struct tyUITxt tyTxtMag3BackslashRToL;
	struct tyUITxt tyTxtPitchSltRToL;
	struct tyUITxt tyTxtMagSltBackslash;
	struct tyUITxt tyTxtMagSltBackslashRToL;
	struct tyUITxt tyTxtPitchSlt;
	struct tyUIBitmap tyBitmapUSAComm;
	struct tyUIBitmap tyBitmapUSAComm1;
	struct tyUIHotspot tyHotspotUSAVSMEMA;
	struct tyUIHotspot tyHotspotUSAVSMEMA1;
	struct tyUIHotspot tyHotspotOvenGroup;
	struct tyUIHotspot tyHotspotOvenGroupRL;
	struct tyUIBitmap tyBitmapAIVTCP;
	struct tyUIHotspot tyHotspotAIVGroup;
	struct tyUIHotspot tyHotspotAIVGroup1;
	struct tyUIHotspot tyHotspotAIVGroup1Mask;
	struct tyUIHotspot tyHotspotOpsMagLane1;
	struct tyUIHotspot tyHotspotOpsMagLane2;
} tyLyrP0200OpsGen;
#else
/* Data type tyLyrP0200OpsGen not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyLyrP0200OpsOven
{	struct tyUIBtn tyBtnOvenA;
	struct tyUIBtn tyBtnOvenARToL;
	struct tyUIBtn tyBtnOvenB;
	struct tyUIBtn tyBtnOvenBRToL;
	struct tyUIBtn tyBtnCntrA;
	struct tyUIBtn tyBtnCntrARToL;
	struct tyUIBtn tyBtnCntrB;
	struct tyUIBtn tyBtnCntrBRToL;
	struct tyUIHotspot tyHotspotOven;
	struct tyUIHotspot tyHotspotOvenRToL;
	struct tyUITxt tyTxtA;
	struct tyUITxt tyTxtARToL;
	struct tyUITxt tyTxtB;
	struct tyUITxt tyTxtBRToL;
	struct tyUITxt tyTxtCntr;
	struct tyUITxt tyTxtCntrRToL;
	struct tyUILyr tyLyr;
} tyLyrP0200OpsOven;

typedef struct tyLyrP0200OpsUSAVSMEMA
{	struct tyUIBtn tyBtnNom;
	struct tyUIBtn tyBtnStat;
	struct tyUIBtn tyBtnDual;
	struct tyUILyr tyLyr;
} tyLyrP0200OpsUSAVSMEMA;

typedef struct tyLyrP0200OpsUSBVSMEMA
{	struct tyUIBtn tyBtnNom;
	struct tyUIBtn tyBtnStat;
	struct tyUIBtn tyBtnDual;
	struct tyUILyr tyLyr;
} tyLyrP0200OpsUSBVSMEMA;

typedef struct tyLyrP0200OpsUSCommB
{	struct tyUIBitmap tyBitmapUSIn;
	struct tyUIBitmap tyBitmapUSOut;
	struct tyUIBitmap tyBitmapUSIn1;
	struct tyUIBitmap tyBitmapUSOut1;
	struct tyUIHotspot tyHotspotUSBVSMEMA;
	struct tyUIHotspot tyHotspotUSBVSMEMA1;
	struct tyUIBitmap tyBitmapUSBComm;
	struct tyUIBitmap tyBitmapUSBComm1;
	struct tyUITxt tyTxtLane;
	struct tyUITxt tyTxtLane1;
	struct tyUILyr tyLyr;
} tyLyrP0200OpsUSCommB;

typedef struct tyLyrP0201OpsTravLif
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUITxt tyTxtWidth;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUILString tyStringMcStat;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBitmap tyBitmapPCB;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUINum tyNumMtrPshrExtSpd;
	struct tyUINum tyNumMtrPshrExtTorq;
	struct tyUITxt tyTxtMtrPshrExtSpd;
	struct tyUITxt tyTxtMtrPshrExtTorq;
	struct tyUITxt tyTxtPshrOffset;
	struct tyUINum tyNumPshrOffset;
	struct tyUIBtn tyBtnQueryBoardInfo;
	struct tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0201OpsTravLif;

typedef struct tyLyrP0201OpsTravLifBypsInitConv
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0201OpsTravLifBypsInitConv;

typedef struct tyLyrP0201OpsTravLifIOMonitor
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnUBAA;
	struct tyUIBtn tyBtnUBAB;
	struct tyUIBtn tyBtnUBAAStat;
	struct tyUIBtn tyBtnUBABStat;
	struct tyUIBtn tyBtnUSBA;
	struct tyUIBtn tyBtnUSBB;
	struct tyUIBtn tyBtnPshrExtRS;
	struct tyUIBtn tyBtnPshrRetRS;
	struct tyUIBtn tyBtnConvLftSen;
	struct tyUIBtn tyBtnConvMidSen;
	struct tyUIBtn tyBtnConvRgtSen;
	struct tyUIBtn tyBtnConvClrSen;
	struct tyUIBtn tyBtnOvenInfeedSigA;
	struct tyUIBtn tyBtnOvenInfeedSigB;
	struct tyUIBtn tyBtnOvenInfoSigA;
	struct tyUIBtn tyBtnOvenInfoSigB;
	struct tyUIBtn tyBtnLifterTmBeltSen;
	struct tyUIBtn tyBtnLimitSafetySw1;
	struct tyUIBtn tyBtnLimitSafetySw2;
	struct tyUIBtn tyBtnMag1ClmpRS;
	struct tyUIBtn tyBtnMag1UnclmpRS;
	struct tyUIBtn tyBtnMag2ClmpRS;
	struct tyUIBtn tyBtnMag2UnclmpRS;
	struct tyUIBtn tyBtnMag3ClmpRS;
	struct tyUIBtn tyBtnMag3UnclmpRS;
	struct tyUIBtn tyBtnInletShutterOpenSen;
	struct tyUIBtn tyBtnInletShutterCloseSen;
	struct tyUIBtn tyBtnOutletShutterOpenSen;
	struct tyUIBtn tyBtnOutletShutterCloseSen;
	struct tyUIBtn tyBtnOutletShutterOpenSen2;
	struct tyUIBtn tyBtnOutletShutterCloseSen2;
	struct tyUIBtn tyBtnOutletShutterOpenSen3;
	struct tyUIBtn tyBtnOutletShutterCloseSen3;
	struct tyUIBtn tyBtnMag1PresentSen;
	struct tyUIBtn tyBtnMag2PresentSen;
	struct tyUIBtn tyBtnMag3PresentSen;
	struct tyUIBtn tyBtnMag1ConvEntrySen;
	struct tyUIBtn tyBtnMag2ConvEntrySen;
	struct tyUIBtn tyBtnMag3ConvEntrySen;
	struct tyUIBtn tyBtnMag1AIVInPosSen1;
	struct tyUIBtn tyBtnMag1AIVInPosSen2;
	struct tyUIBtn tyBtnMag2AIVInPosSen1;
	struct tyUIBtn tyBtnMag2AIVInPosSen2;
	struct tyUIBtn tyBtnMag3AIVInPosSen1;
	struct tyUIBtn tyBtnMag3AIVInPosSen2;
	struct tyUIBtn tyBtnMag1OrientationChkSen1;
	struct tyUIBtn tyBtnMag2OrientationChkSen1;
	struct tyUIBtn tyBtnMag3OrientationChkSen1;
	struct tyUIBtn tyBtnMag1OrientationChkSen2;
	struct tyUIBtn tyBtnMag2OrientationChkSen2;
	struct tyUIBtn tyBtnMag3OrientationChkSen2;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnPshrExtCtrl;
	struct tyUIBtn tyBtnInShutterOpenCtrl;
	struct tyUIBtn tyBtnInShutterCloseCtrl;
	struct tyUIBtn tyBtnOutShutterOpenCtrl;
	struct tyUIBtn tyBtnOutShutterCloseCtrl;
	struct tyUIBtn tyBtnOutShutterOpenCtrl2;
	struct tyUIBtn tyBtnOutShutterCloseCtrl2;
	struct tyUIBtn tyBtnOutShutterOpenCtrl3;
	struct tyUIBtn tyBtnOutShutterCloseCtrl3;
	struct tyUIBtn tyBtnPshrMtrOn;
	struct tyUIBtn tyBtnStopperUnBlkCtrlA;
	struct tyUIBtn tyBtnStopperUnBlkCtrlB;
	struct tyUIBtn tyBtnAntiJamSen;
	struct tyUIBtn tyBtnMagWidthChk;
	struct tyUIBtn tyBtnInletStopperASensor;
} tyLyrP0201OpsTravLifIOMonitor;

typedef struct tyLyrP0201OpsTravLifIOMonitor1
{	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnPCBExitMag1;
	struct tyUIBtn tyBtnPCBExitMag2;
	struct tyUIBtn tyBtnPCBExitMag3;
	struct tyUIBtn tyBtnPCBPresentSen;
	struct tyUIBtn tyBtnTrigScannerSig;
	struct tyUIBtn tyBtnScannerComplSig;
} tyLyrP0201OpsTravLifIOMonitor1;

typedef struct tyLyrP0201OpsParam
{	struct tyUIDrpDn tyDrpDnMcMode;
	struct tyUINum tyNumMinSlt;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumPshrExtTorque;
	struct tyUINum tyNumPshrExtSpeed;
	struct tyUINum tyNumPshrOffset;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP0201OpsParam;

typedef struct tyLyrP0202BypsInitConv
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0202BypsInitConv;

typedef struct tyLyrP0202IOMonitor
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnUBAA;
	struct tyUIBtn tyBtnUBAB;
	struct tyUIBtn tyBtnUBAAStat;
	struct tyUIBtn tyBtnUBABStat;
	struct tyUIBtn tyBtnUSBA;
	struct tyUIBtn tyBtnUSBB;
	struct tyUIBtn tyBtnPshrExtRS;
	struct tyUIBtn tyBtnPshrRetRS;
	struct tyUIBtn tyBtnConvLftSen;
	struct tyUIBtn tyBtnConvMidSen;
	struct tyUIBtn tyBtnConvRgtSen;
	struct tyUIBtn tyBtnConvClrSen;
	struct tyUIBtn tyBtnOvenInfeedSigA;
	struct tyUIBtn tyBtnOvenInfeedSigB;
	struct tyUIBtn tyBtnOvenInfoSigA;
	struct tyUIBtn tyBtnOvenInfoSigB;
	struct tyUIBtn tyBtnLifterTmBeltSen;
	struct tyUIBtn tyBtnLimitSafetySw1;
	struct tyUIBtn tyBtnLimitSafetySw2;
	struct tyUIBtn tyBtnMag1FixedClmpRS;
	struct tyUIBtn tyBtnMag1FixedUnclmpRS;
	struct tyUIBtn tyBtnMag1RmtClmpRS;
	struct tyUIBtn tyBtnMag1RmtUnclmpRS;
	struct tyUIBtn tyBtnMag2FixedClmpRS;
	struct tyUIBtn tyBtnMag2FixedUnclmpRS;
	struct tyUIBtn tyBtnMag2RmtClmpRS;
	struct tyUIBtn tyBtnMag2RmtUnclmpRS;
	struct tyUIBtn tyBtnMag3FixedClmpRS;
	struct tyUIBtn tyBtnMag3FixedUnclmpRS;
	struct tyUIBtn tyBtnMag3RmtClmpRS;
	struct tyUIBtn tyBtnMag3RmtUnclmpRS;
	struct tyUIBtn tyBtnInletShutterOpenSen;
	struct tyUIBtn tyBtnInletShutterCloseSen;
	struct tyUIBtn tyBtnOutletShutterOpenSen;
	struct tyUIBtn tyBtnOutletShutterCloseSen;
	struct tyUIBtn tyBtnMag1PresentSen;
	struct tyUIBtn tyBtnMag2PresentSen;
	struct tyUIBtn tyBtnMag3PresentSen;
	struct tyUIBtn tyBtnMag1ConvEntrySen;
	struct tyUIBtn tyBtnMag2ConvEntrySen;
	struct tyUIBtn tyBtnMag3ConvEntrySen;
	struct tyUIBtn tyBtnMag1AIVInPosSen1;
	struct tyUIBtn tyBtnMag1AIVInPosSen2;
	struct tyUIBtn tyBtnMag2AIVInPosSen1;
	struct tyUIBtn tyBtnMag2AIVInPosSen2;
	struct tyUIBtn tyBtnMag3AIVInPosSen1;
	struct tyUIBtn tyBtnMag3AIVInPosSen2;
	struct tyUIBtn tyBtnMag1OrientationChkSen1;
	struct tyUIBtn tyBtnMag2OrientationChkSen1;
	struct tyUIBtn tyBtnMag3OrientationChkSen1;
	struct tyUIBtn tyBtnMag1OrientationChkSen2;
	struct tyUIBtn tyBtnMag2OrientationChkSen2;
	struct tyUIBtn tyBtnMag3OrientationChkSen2;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnMag1FixedClampCtrl;
	struct tyUIBtn tyBtnMag1RemoteClampCtrl;
	struct tyUIBtn tyBtnMag1ConvMtrIn;
	struct tyUIBtn tyBtnMag1ConvMtrOut;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUIBtn tyBtnMagSelClampCtrl;
	struct tyUIBtn tyBtnMagSelUnClampCtrl;
	struct tyUIBtn tyBtnCurtainSenPB;
	struct tyUIBtn tyBtnCurtainSenPBLED;
	struct tyUIBtn tyBtnCurtainSen;
	struct tyUIBtn tyBtnMag1DetSen;
} tyLyrP0202IOMonitor;

typedef struct tyLyrP0202Ops
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUITxt tyTxtWidth;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUITxt tyTxtMag1Stat;
	struct tyUILString tyStringMcStat;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIHotspot tyHotspotMagInfo;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIString tyStringMagNm;
	struct tyUITxt tyTxtMagSlt;
	struct tyUINum tyNumMag1AvlQty;
	struct tyUINum tyNumMag1TtlSlt;
	struct tyUIBitmap tyBitmapMc;
	struct tyUITxt tyTxtLblAIV;
	struct tyUIBtn tyBtnAIVWifi;
	struct tyUIBtn tyBtnChgMag;
	struct tyUIBitmap tyBitmapChgMag;
	struct tyUITxt tyTxtLdrInActiveCtrl;
	struct tyUIBitmap tyBitmapWarningLF;
	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUIBitmap tyBitmapUnloadMag;
	struct tyUIBtn tyBtnUnloadMag;
	struct tyUIBtn tyBtnQueryBoardInfo;
	struct tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0202Ops;

typedef struct tyLyrP0202OpsParam
{	struct tyUIDrpDn tyDrpDnMcMode;
	struct tyUINum tyNumMinSlt;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumPshrExtTorque;
	struct tyUINum tyNumPshrExtSpeed;
	struct tyUINum tyNumPshrOffset;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP0202OpsParam;

typedef struct tyLyrP0202OpsChgMagL1
{	struct tyUIBitmap tyBitmapChgMag;
	struct tyUIBtn tyBtnMnlUnloadMag;
	struct tyUIBtn tyBtnChgMag;
	struct tyUILyr tyLyr;
} tyLyrP0202OpsChgMagL1;

typedef struct tyLyrP0203BypsInitConv
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0203BypsInitConv;

typedef struct tyLyrP0203IOMonitor
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnUBAA;
	struct tyUIBtn tyBtnUBAB;
	struct tyUIBtn tyBtnUBAAStat;
	struct tyUIBtn tyBtnUBABStat;
	struct tyUIBtn tyBtnUSBA;
	struct tyUIBtn tyBtnUSBB;
	struct tyUIBtn tyBtnPshrExtRS;
	struct tyUIBtn tyBtnPshrRetRS;
	struct tyUIBtn tyBtnConvLftSen;
	struct tyUIBtn tyBtnConvMidSen;
	struct tyUIBtn tyBtnConvRgtSen;
	struct tyUIBtn tyBtnConvClrSen;
	struct tyUIBtn tyBtnOvenInfeedSigA;
	struct tyUIBtn tyBtnOvenInfeedSigB;
	struct tyUIBtn tyBtnOvenInfoSigA;
	struct tyUIBtn tyBtnOvenInfoSigB;
	struct tyUIBtn tyBtnLifterTmBeltSen;
	struct tyUIBtn tyBtnLimitSafetySw1;
	struct tyUIBtn tyBtnLimitSafetySw2;
	struct tyUIBtn tyBtnMag1FixedClmpRS;
	struct tyUIBtn tyBtnMag1FixedUnclmpRS;
	struct tyUIBtn tyBtnMag1RmtClmpRS;
	struct tyUIBtn tyBtnMag1RmtUnclmpRS;
	struct tyUIBtn tyBtnMag2FixedClmpRS;
	struct tyUIBtn tyBtnMag2FixedUnclmpRS;
	struct tyUIBtn tyBtnMag2RmtClmpRS;
	struct tyUIBtn tyBtnMag2RmtUnclmpRS;
	struct tyUIBtn tyBtnMag3FixedClmpRS;
	struct tyUIBtn tyBtnMag3FixedUnclmpRS;
	struct tyUIBtn tyBtnMag3RmtClmpRS;
	struct tyUIBtn tyBtnMag3RmtUnclmpRS;
	struct tyUIBtn tyBtnInletShutterOpenSen;
	struct tyUIBtn tyBtnInletShutterCloseSen;
	struct tyUIBtn tyBtnOutletShutterOpenSen;
	struct tyUIBtn tyBtnOutletShutterCloseSen;
	struct tyUIBtn tyBtnMag1PresentSen;
	struct tyUIBtn tyBtnMag2PresentSen;
	struct tyUIBtn tyBtnMag3PresentSen;
	struct tyUIBtn tyBtnMag1ConvEntrySen;
	struct tyUIBtn tyBtnMag2ConvEntrySen;
	struct tyUIBtn tyBtnMag3ConvEntrySen;
	struct tyUIBtn tyBtnMag1AIVInPosSen1;
	struct tyUIBtn tyBtnMag1AIVInPosSen2;
	struct tyUIBtn tyBtnMag2AIVInPosSen1;
	struct tyUIBtn tyBtnMag2AIVInPosSen2;
	struct tyUIBtn tyBtnMag3AIVInPosSen1;
	struct tyUIBtn tyBtnMag3AIVInPosSen2;
	struct tyUIBtn tyBtnMag1OrientationChkSen1;
	struct tyUIBtn tyBtnMag2OrientationChkSen1;
	struct tyUIBtn tyBtnMag3OrientationChkSen1;
	struct tyUIBtn tyBtnMag1OrientationChkSen2;
	struct tyUIBtn tyBtnMag2OrientationChkSen2;
	struct tyUIBtn tyBtnMag3OrientationChkSen2;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnMag2FixedClampCtrl;
	struct tyUIBtn tyBtnMag2RemoteClampCtrl;
	struct tyUIBtn tyBtnMag2ConvMtrIn;
	struct tyUIBtn tyBtnMag2ConvMtrOut;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUIBtn tyBtnMagSelClampCtrl;
	struct tyUIBtn tyBtnMagSelUnClampCtrl;
	struct tyUIBtn tyBtnCurtainSen;
	struct tyUIBtn tyBtnCurtainSenPB;
	struct tyUIBtn tyBtnCurtainSenPBLED;
	struct tyUIBtn tyBtnMag2DetSen;
} tyLyrP0203IOMonitor;

typedef struct tyLyrP0203Ops
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUITxt tyTxtWidth;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUITxt tyTxtMag2Stat;
	struct tyUILString tyStringMcStat;
	struct tyUIHotspot tyHotspotMagInfo;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIString tyStringMagNm;
	struct tyUITxt tyTxtMagSlt;
	struct tyUINum tyNumMag2AvlQty;
	struct tyUINum tyNumMag2TtlSlt;
	struct tyUIBitmap tyBitmapMc;
	struct tyUITxt tyTxtLblAIV;
	struct tyUIBtn tyBtnAIVWifi;
	struct tyUIBtn tyBtnChgMag;
	struct tyUIBitmap tyBitmapChgMag;
	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUIBitmap tyBitmapUnloadMag;
	struct tyUIBtn tyBtnUnloadMag;
	struct tyUIBtn tyBtnQueryBoardInfo;
	struct tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0203Ops;

typedef struct tyLyrP0203OpsParam
{	struct tyUIDrpDn tyDrpDnMcMode;
	struct tyUINum tyNumMinSlt;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumPshrExtTorque;
	struct tyUINum tyNumPshrExtSpeed;
	struct tyUINum tyNumPshrOffset;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP0203OpsParam;

typedef struct tyLyrP0203OpsChgMagL2
{	struct tyUIBitmap tyBitmapChgMag;
	struct tyUIBtn tyBtnMnlUnloadMag;
	struct tyUIBtn tyBtnChgMag;
	struct tyUILyr tyLyr;
} tyLyrP0203OpsChgMagL2;

typedef struct tyLyrP0204BypsInitConv
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0204BypsInitConv;

typedef struct tyLyrP0204IOMonitor
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnUBAA;
	struct tyUIBtn tyBtnUBAB;
	struct tyUIBtn tyBtnUBAAStat;
	struct tyUIBtn tyBtnUBABStat;
	struct tyUIBtn tyBtnUSBA;
	struct tyUIBtn tyBtnUSBB;
	struct tyUIBtn tyBtnPshrExtRS;
	struct tyUIBtn tyBtnPshrRetRS;
	struct tyUIBtn tyBtnConvLftSen;
	struct tyUIBtn tyBtnConvMidSen;
	struct tyUIBtn tyBtnConvRgtSen;
	struct tyUIBtn tyBtnConvClrSen;
	struct tyUIBtn tyBtnOvenInfeedSigA;
	struct tyUIBtn tyBtnOvenInfeedSigB;
	struct tyUIBtn tyBtnOvenInfoSigA;
	struct tyUIBtn tyBtnOvenInfoSigB;
	struct tyUIBtn tyBtnLifterTmBeltSen;
	struct tyUIBtn tyBtnLimitSafetySw1;
	struct tyUIBtn tyBtnLimitSafetySw2;
	struct tyUIBtn tyBtnMag1FixedClmpRS;
	struct tyUIBtn tyBtnMag1FixedUnclmpRS;
	struct tyUIBtn tyBtnMag1RmtClmpRS;
	struct tyUIBtn tyBtnMag1RmtUnclmpRS;
	struct tyUIBtn tyBtnMag2FixedClmpRS;
	struct tyUIBtn tyBtnMag2FixedUnclmpRS;
	struct tyUIBtn tyBtnMag2RmtClmpRS;
	struct tyUIBtn tyBtnMag2RmtUnclmpRS;
	struct tyUIBtn tyBtnMag3FixedClmpRS;
	struct tyUIBtn tyBtnMag3FixedUnclmpRS;
	struct tyUIBtn tyBtnMag3RmtClmpRS;
	struct tyUIBtn tyBtnMag3RmtUnclmpRS;
	struct tyUIBtn tyBtnInletShutterOpenSen;
	struct tyUIBtn tyBtnInletShutterCloseSen;
	struct tyUIBtn tyBtnOutletShutterOpenSen;
	struct tyUIBtn tyBtnOutletShutterCloseSen;
	struct tyUIBtn tyBtnMag1PresentSen;
	struct tyUIBtn tyBtnMag2PresentSen;
	struct tyUIBtn tyBtnMag3PresentSen;
	struct tyUIBtn tyBtnMag1ConvEntrySen;
	struct tyUIBtn tyBtnMag2ConvEntrySen;
	struct tyUIBtn tyBtnMag3ConvEntrySen;
	struct tyUIBtn tyBtnMag1AIVInPosSen1;
	struct tyUIBtn tyBtnMag1AIVInPosSen2;
	struct tyUIBtn tyBtnMag2AIVInPosSen1;
	struct tyUIBtn tyBtnMag2AIVInPosSen2;
	struct tyUIBtn tyBtnMag3AIVInPosSen1;
	struct tyUIBtn tyBtnMag3AIVInPosSen2;
	struct tyUIBtn tyBtnMag1OrientationChkSen1;
	struct tyUIBtn tyBtnMag2OrientationChkSen1;
	struct tyUIBtn tyBtnMag3OrientationChkSen1;
	struct tyUIBtn tyBtnMag1OrientationChkSen2;
	struct tyUIBtn tyBtnMag2OrientationChkSen2;
	struct tyUIBtn tyBtnMag3OrientationChkSen2;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnMag3FixedClampCtrl;
	struct tyUIBtn tyBtnMag3RemoteClampCtrl;
	struct tyUIBtn tyBtnMag3ConvMtrIn;
	struct tyUIBtn tyBtnMag3ConvMtrOut;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUIBtn tyBtnMagSelClampCtrl;
	struct tyUIBtn tyBtnMagSelUnClampCtrl;
	struct tyUIBtn tyBtnCurtainSen;
	struct tyUIBtn tyBtnCurtainSenPB;
	struct tyUIBtn tyBtnCurtainSenPBLED;
	struct tyUIBtn tyBtnMag3DetSen;
} tyLyrP0204IOMonitor;

typedef struct tyLyrP0204Ops
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUITxt tyTxtWidth;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUITxt tyTxtMag3Stat;
	struct tyUILString tyStringMcStat;
	struct tyUIHotspot tyHotspotMagInfo;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIString tyStringMagNm;
	struct tyUITxt tyTxtMagSlt;
	struct tyUINum tyNumMag3AvlQty;
	struct tyUINum tyNumMag3TtlSlt;
	struct tyUIBitmap tyBitmapMc;
	struct tyUITxt tyTxtLblAIV;
	struct tyUIBtn tyBtnAIVWifi;
	struct tyUIBtn tyBtnChgMag;
	struct tyUIBitmap tyBitmapChgMag;
	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUIBitmap tyBitmapUnloadMag;
	struct tyUIBtn tyBtnUnloadMag;
	struct tyUIBtn tyBtnQueryBoardInfo;
	struct tyUIBtn tyBtnQueryWorkOrderInfo;
} tyLyrP0204Ops;

typedef struct tyLyrP0204OpsParam
{	struct tyUIDrpDn tyDrpDnMcMode;
	struct tyUINum tyNumMinSlt;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumPshrExtTorque;
	struct tyUINum tyNumPshrExtSpeed;
	struct tyUINum tyNumPshrOffset;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP0204OpsParam;

typedef struct tyLyrP0205IOMonitor
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBitmap tyBitmapAIVErr1;
	struct tyUIBitmap tyBitmapAIVErr2;
	struct tyUIBitmap tyBitmapAIVErr3;
	struct tyUIBitmap tyBitmapAIVErr4;
	struct tyUIBitmap tyBitmapAIVRdy1;
	struct tyUIBitmap tyBitmapAIVRdy2;
	struct tyUIBitmap tyBitmapAIVRdy3;
	struct tyUIBitmap tyBitmapAIVRdy4;
	struct tyUIBitmap tyBitmapAIVAvail1;
	struct tyUIBitmap tyBitmapAIVAvail2;
	struct tyUIBitmap tyBitmapAIVAvail3;
	struct tyUIBitmap tyBitmapAIVAvail4;
	struct tyUIBitmap tyBitmapAIVSLarge1;
	struct tyUIBitmap tyBitmapAIVSLarge2;
	struct tyUIBitmap tyBitmapAIVSLarge3;
	struct tyUIBitmap tyBitmapAIVSLarge4;
	struct tyUIBtn tyBtnAIVSotRCVOk1;
	struct tyUIBtn tyBtnAIVSotRCVOk2;
	struct tyUIBtn tyBtnAIVSotRCVOk3;
	struct tyUIBtn tyBtnAIVSotRCVOk4;
	struct tyUIBtn tyBtnReqAIVToBring1;
	struct tyUIBtn tyBtnReqAIVToBring2;
	struct tyUIBtn tyBtnReqAIVToBring3;
	struct tyUIBtn tyBtnReqAIVToBring4;
	struct tyUIBtn tyBtnReqAIVToGet1;
	struct tyUIBtn tyBtnReqAIVToGet2;
	struct tyUIBtn tyBtnReqAIVToGet3;
	struct tyUIBtn tyBtnReqAIVToGet4;
	struct tyUIBitmap tyBitmapMagErr1;
	struct tyUIBitmap tyBitmapMagErr2;
	struct tyUIBitmap tyBitmapMagErr3;
	struct tyUIBitmap tyBitmapMagErr4;
	struct tyUIBitmap tyBitmapMagRdy1;
	struct tyUIBitmap tyBitmapMagRdy2;
	struct tyUIBitmap tyBitmapMagRdy3;
	struct tyUIBitmap tyBitmapMagRdy4;
	struct tyUIBitmap tyBitmapMagAvail1;
	struct tyUIBitmap tyBitmapMagAvail2;
	struct tyUIBitmap tyBitmapMagAvail3;
	struct tyUIBitmap tyBitmapMagAvail4;
	struct tyUIBitmap tyBitmapMagSLarge1;
	struct tyUIBitmap tyBitmapMagSLarge2;
	struct tyUIBitmap tyBitmapMagSLarge3;
	struct tyUIBitmap tyBitmapMagSLarge4;
	struct tyUIBtn tyBtnMESActive;
	struct tyUILString tyStringMesName;
	struct tyUILyr tyTripleMagLyr;
	struct tyUILyr tyDualMagLyr;
	struct tyUITxt tyTxtAIVCommProtocol;
	struct tyUIHotspot tyHotspotGroupError2;
	struct tyUIHotspot tyHotspotGroupError1;
} tyLyrP0205IOMonitor;

typedef struct tyLyrP0206OpsMagConv1
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUILString tyStringMcTopStat;
	struct tyUILString tyStringMcBtmStat;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBitmap tyBitmapPCB;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnAIVWifi;
	struct tyUIHotspot tyHotspotShowLRcp;
} tyLyrP0206OpsMagConv1;

typedef struct tyLyrP0206OpsMagConvBypsInit1
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0206OpsMagConvBypsInit1;

typedef struct tyLyrP0206OpsMagConvIOMonitor1
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUIBtn tyBtnMidStprExt1;
	struct tyUIBtn tyBtnMidStprRet1;
	struct tyUIBtn tyBtnExtStprExt1;
	struct tyUIBtn tyBtnExtStprRet1;
	struct tyUIBtn tyBtnTopEntSen;
	struct tyUIBtn tyBtnTopMidSen;
	struct tyUIBtn tyBtnTopExtSen;
	struct tyUIBtn tyBtnBtmEntSen;
	struct tyUIBtn tyBtnBtmMidSen;
	struct tyUIBtn tyBtnBtmExtSen;
	struct tyUILyr tyLyr;
} tyLyrP0206OpsMagConvIOMonitor1;

typedef struct tyLyrP0207OpsMagConv2
{	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIHotspot tyHotspotIOMonitor;
	struct tyUIBitmap tyBitmapAccDat;
	struct tyUITxt tyTxtMod;
	struct tyUINum tyNumWidth;
	struct tyUINum tyNumWidth2;
	struct tyUILString tyStringMcTopStat;
	struct tyUILString tyStringMcBtmStat;
	struct tyUILString tyStringProdNm;
	struct tyUINum tyNumMinSltRange;
	struct tyUINum tyNumMaxSltRange;
	struct tyUINum tyNumPitch;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBitmap tyBitmapPCB;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnAIVWifi;
	struct tyUIHotspot tyHotspotShowLRcp;
} tyLyrP0207OpsMagConv2;

typedef struct tyLyrP0207OpsMagConvBypsInit2
{	struct tyUIBtn tyBtnBypsInitConv;
	struct tyUIHotspot tyHotspotClose;
	struct tyUILyr tyLyr;
} tyLyrP0207OpsMagConvBypsInit2;

typedef struct tyLyrP0207OpsMagConvIOMonitor2
{	struct tyUIHotspot tyHotspotClose;
	struct tyUIBtn tyBtnSafetyRlySig;
	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSWSig;
	struct tyUIBtn tyBtnSafetyRlyRst;
	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUIBtn tyBtnMidStprExt1;
	struct tyUIBtn tyBtnMidStprRet1;
	struct tyUIBtn tyBtnExtStprExt1;
	struct tyUIBtn tyBtnExtStprRet1;
	struct tyUIBtn tyBtnTopEntSen;
	struct tyUIBtn tyBtnTopMidSen;
	struct tyUIBtn tyBtnTopExtSen;
	struct tyUIBtn tyBtnBtmEntSen;
	struct tyUIBtn tyBtnBtmMidSen;
	struct tyUIBtn tyBtnBtmExtSen;
	struct tyUILyr tyLyr;
} tyLyrP0207OpsMagConvIOMonitor2;

typedef struct tyLyrP0300McInfo
{	struct tyUIString tyStringMcNm;
	struct tyUIString tyStringJobNo;
	struct tyUITxt tyTxtNtAddr;
	struct tyUIString tyStringSoftwareVer;
	struct tyUILyr tyLyr;
} tyLyrP0300McInfo;

typedef struct tyLyrP0400ProdSel
{	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUILString tyStringRecipeNm;
	struct tyUINum tyNumProdWidth;
	struct tyUINum tyNumProdWidth2;
	struct tyUINum tyNumMinSlt;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumPitch;
	struct tyUINum tyNumBrdPerSlt;
	struct tyUINum tyNumMinReqFreeBffr;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnGapBetBrds;
	struct tyUIBtn tyBtnLongBrd;
	struct tyUIBtn tyBtnPreview;
	struct tyUITable tyTableRecipe;
	struct tyUILString tyStringSearch;
	struct tyUIBtn tyBtnLoad;
	struct tyUITxt tyTxtMcMode;
	struct tyUITxt tyTxtBrdPerSlt;
	struct tyUITxt tyTxtMinReqFreeBffr;
	struct tyUIBtn tyBtnSort;
	struct tyUINum tyNumMtrPshrExtSpd;
	struct tyUINum tyNumMtrPshrExtTorq;
	struct tyUITxt tyTxtMtrPshrExtSpd;
	struct tyUITxt tyTxtMtrPshrExtTorq;
	struct tyUITxt tyTxtPshrOffset;
	struct tyUINum tyNumPshrOffset;
	struct tyUIBtn tyBtnSafetyBar;
} tyLyrP0400ProdSel;

typedef struct tyLyrP0400RcpDet
{	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUILString tyStringRecipeNm;
	struct tyUINum tyNumRecipeNum;
	struct tyUINum tyNumProdWidth;
	struct tyUINum tyNumProdWidth2;
	struct tyUINum tyNumFirstSlt;
	struct tyUINum tyNumLastSlt;
	struct tyUINum tyNumPitch;
	struct tyUINum tyNumBrdPerSlt;
	struct tyUINum tyNumMinReqFreeBffr;
	struct tyUINum tyNumOvenCap;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnGapBetBrd;
	struct tyUIBtn tyBtnLongBrd;
	struct tyUITxt tyTxtMcMode;
	struct tyUINum tyTxtBrdPerSlt;
	struct tyUITxt tyTxtMinReqFreeBffr;
	struct tyUITxt tyTxtOvenCap;
	struct tyUIHotspot tyHotspotClose;
	struct tyUINum tyNumMagMaxBrdWidth;
	struct tyUINum tyNumMtrPshrExtSpd;
	struct tyUINum tyNumMtrPshrExtTorq;
	struct tyUITxt tyTxtMtrPshrExtSpd;
	struct tyUITxt tyTxtMtrPshrExtTorq;
	struct tyUINum tyNumPshrOffset;
	struct tyUITxt tyTxtPshrOffset;
	struct tyUILyr tyLyr;
} tyLyrP0400RcpDet;

typedef struct tyLyrP0410MagSel
{	struct tyUIString tyStringRecipeNm;
	struct tyUINum tyNumSltToSltDist;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumLifterMag1Slt1Pos;
	struct tyUINum tyNumLifterMag2Slt1Pos;
	struct tyUINum tyNumLifterMag3Slt1Pos;
	struct tyUINum tyNumTravPosMag1;
	struct tyUINum tyNumTravPosMag2;
	struct tyUINum tyNumTravPosMag3;
	struct tyUITxt tyTxtLifMag3Slt1PosLbl;
	struct tyUITxt tyTxtTravPosMag3Lbl;
	struct tyUIBtn tyBtnLoad;
	struct tyUIBtn tyBtnPreview;
	struct tyUITable tyTableRecipe;
	struct tyUIDrpDn tyDrpDnMagModel;
	struct tyUITxt tyTxtMagModel;
	struct tyUINum tyNumMagMaxBrdWidth;
	struct tyUIBtn tyBtnSort;
	struct tyUIBtn tyBtnSafetyBar;
	struct tyUIBtn tyBtnMagHeightChkEn;
	struct tyUIBitmap tyBitmapBrder;
} tyLyrP0410MagSel;

typedef struct tyLyrP0410MagDet
{	struct tyUIString tyStringRecipeNm;
	struct tyUINum tyNumSltToSltDist;
	struct tyUINum tyNumMaxSlt;
	struct tyUINum tyNumLifterMag1Slt1Pos;
	struct tyUINum tyNumLifterMag2Slt1Pos;
	struct tyUINum tyNumLifterMag3Slt1Pos;
	struct tyUINum tyNumTravPosMag1;
	struct tyUINum tyNumTravPosMag2;
	struct tyUINum tyNumTravPosMag3;
	struct tyUITxt tyTxtLifMag3Slt1PosLbl;
	struct tyUITxt tyTxtTravPosMag3Lbl;
	struct tyUIHotspot tyHotspotClose;
	struct tyUINum tyNumMagMaxBrdWidth;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnSafetyBar;
	struct tyUIBtn tyBtnMagHeightChkEn;
} tyLyrP0410MagDet;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyLyrP0600Alm
{	struct tyUIBtn tyBtnCurr;
	struct tyUIBtn tyBtnHistory;
	struct tyUILString a_tyStringAlm[18];
	struct tyUIHotspot a_tyHotspotAlm[18];
	struct tyUILyr tyLyr;
	struct tyUIAlarm tyAlarm;
	struct tyUIBtn tyBtnHistoryUp;
	struct tyUIBtn tyBtnHistoryDown;
} tyLyrP0600Alm;
#else
/* Data type tyLyrP0600Alm not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyLyrP0700LFCtrl
{	struct tyUIBtn tyBtnChgAll;
	struct tyUIBtn tyBtnChgSeqAuto;
	struct tyUIBtn tyBtnChgSeqMnl;
	struct tyUIBtn tyBtnSyncTm;
	struct tyUIBitmap tyBitmapChgAll;
	struct tyUIBitmap tyBitmapChgSeqAuto;
	struct tyUIBitmap tyBitmapChgSeqMnl;
	struct tyUIBitmap tyBitmapSyncTm;
	struct tyUITable1 tyTable1List;
	struct tyUILyr tyLyr;
} tyLyrP0700LFCtrl;

typedef struct tyLyrP0800MagInfo1
{	struct tyUITable1 tyTable1List;
	struct tyUITable1 tyTable2List;
	struct tyUITxt tyTxtMag1Stat;
	struct tyUITxt tyTxtMag2Stat;
	struct tyUIBtn tyBtnMag1SetFull;
	struct tyUIBtn tyBtnMag2SetFull;
	struct tyUILyr tyLyr;
} tyLyrP0800MagInfo1;

typedef struct tyLyrP0800MagInfo2
{	struct tyUITable1 tyTable3List;
	struct tyUITxt tyTxtMag3Stat;
	struct tyUIBtn tyBtnMag3SetFull;
	struct tyUILyr tyLyr;
} tyLyrP0800MagInfo2;

typedef struct tyLyrP0850OvenCom
{	struct tyUITxt tyTxtTittle;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnOvenA;
	struct tyUIBtn tyBtnCntrA;
	struct tyUIBtn tyBtnOvenB;
	struct tyUIBtn tyBtnCntrB;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenCom;

typedef struct tyLyrP0850OvenExtddDualMix
{	struct tyUINum tyNumAddBffrA;
	struct tyUINum tyNumBrdInOvenA;
	struct tyUINum tyNumAddBffrB;
	struct tyUINum tyNumBrdInOvenB;
	struct tyUINum tyNumBffrEmptySlt;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenExtddDualMix;

typedef struct tyLyrP0850OvenExtddDualSeparate
{	struct tyUINum tyNumAddBffrA;
	struct tyUINum tyNumBrdInOvenA;
	struct tyUINum tyNumBffrEmptySltA;
	struct tyUINum tyNumAddBffrB;
	struct tyUINum tyNumBrdInOvenB;
	struct tyUINum tyNumBffrEmptySltB;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenExtddDualSeparate;

typedef struct tyLyrP0850OvenExtddSingle
{	struct tyUINum tyNumAddBffr;
	struct tyUINum tyNumBrdInOven;
	struct tyUINum tyNumBffrEmptySlt;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenExtddSingle;

typedef struct tyLyrP0850OvenStdDual
{	struct tyUINum tyNumBffrEmptySltA;
	struct tyUINum tyNumMinReqFreeBffrA;
	struct tyUINum tyNumBffrEmptySltB;
	struct tyUINum tyNumMinReqFreeBffrB;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenStdDual;

typedef struct tyLyrP0850OvenStdSingle
{	struct tyUITxt tyTxtTittle;
	struct tyUINum tyNumBffrEmptySlt;
	struct tyUINum tyNumMinReqFreeBffr;
	struct tyUILyr tyLyr;
} tyLyrP0850OvenStdSingle;

typedef struct tyLyrP0900GenIn1
{	struct tyUIBtn tyBtnEStop;
	struct tyUIBtn tyBtnCoverSW;
	struct tyUIBtn tyBtnSafetyRly;
	struct tyUIBtn tyBtnLifterTimingBeltSen;
	struct tyUIBtn tyBtnLifterSafetyLmtSW1;
	struct tyUIBtn tyBtnLifterSafetyLmtSW2;
	struct tyUIBtn tyBtnMag1PresentSen;
	struct tyUIBtn tyBtnMag2PresentSen;
	struct tyUIBtn tyBtnMag3PresentSen;
	struct tyUIBtn tyBtnOvenInfeedSigA;
	struct tyUIBtn tyBtnOvenInfeedSigB;
	struct tyUIBtn tyBtnMagWidthChk;
} tyLyrP0900GenIn1;

typedef struct tyLyrP0900GenIn2
{	struct tyUIBtn tyBtnMag1OrientationChkSen1;
	struct tyUIBtn tyBtnMag2OrientationChkSen1;
	struct tyUIBtn tyBtnMag3OrientationChkSen1;
	struct tyUIBtn tyBtnMag1OrientationChkSen2;
	struct tyUIBtn tyBtnMag2OrientationChkSen2;
	struct tyUIBtn tyBtnMag3OrientationChkSen2;
	struct tyUIBtn tyBtnMag1HeightSen;
	struct tyUIBtn tyBtnMag2HeightSen;
	struct tyUIBtn tyBtnMag3HeightSen;
	struct tyUILyr tyLyr;
} tyLyrP0900GenIn2;

typedef struct tyLyrP0900GenIn3
{	struct tyUIBtn tyBtnCurtainSen;
	struct tyUIBtn tyBtnCurtainSenPB;
	struct tyUILyr tyLyr;
} tyLyrP0900GenIn3;

typedef struct tyLyrP0910GenOut
{	struct tyUIBtn tyBtnTLGreen;
	struct tyUIBtn tyBtnTLRed;
	struct tyUIBtn tyBtnTLAmber;
	struct tyUIBtn tyBtnBuzzer;
	struct tyUIBtn tyBtnSafetyRst;
} tyLyrP0910GenOut;

typedef struct tyLyrP0910GenOutCurtainSen
{	struct tyUIBtn tyBtnBypCurtainSenPBLED;
	struct tyUIBtn tyBtnBypCurtainSen;
	struct tyUIBtn tyBtnRstCurtainSen;
	struct tyUILyr tyLyr;
} tyLyrP0910GenOutCurtainSen;

typedef struct tyLyrP0910GenOutOven
{	struct tyUIBtn tyBtnOvenInfoA;
	struct tyUIBtn tyBtnOvenInfoB;
	struct tyUILyr tyLyr;
} tyLyrP0910GenOutOven;

typedef struct tyLyrP0910MagAW
{	struct tyUIBtn tyBtnMagAWOpenLimByp1;
	struct tyUIBtn tyBtnMagAWOpenLimByp2;
	struct tyUIBtn tyBtnMagAWOpenLimByp3;
	struct tyUIBtn tyBtnMagAWOpenLimByp4;
	struct tyUIBtn tyBtnSmallMagAWLimSen1;
	struct tyUIBtn tyBtnSmallMagAWLimSen2;
	struct tyUIBtn tyBtnSmallMagAWLimSen3;
	struct tyUIBtn tyBtnSmallMagAWLimSen4;
	struct tyUILyr tyLyr12;
	struct tyUILyr tyLyr3;
	struct tyUILyr tyLyr4;
} tyLyrP0910MagAW;

typedef struct tyLyrP0920MtrNPneuCtrl
{	struct tyUIBtn tyBtnAW;
	struct tyUIBtn tyBtnAWPushPul;
	struct tyUIBtn tyBtnMagAW;
	struct tyUIBtn tyBtnTrav;
	struct tyUIBtn tyBtnLifter;
	struct tyUIBtn tyBtnLifterBigBtn;
	struct tyUIBtn tyBtnLifter2;
	struct tyUIBtn tyBtnPusherConv;
	struct tyUIBtn tyBtnLifterConv;
	struct tyUIBtn tyBtnLifterConv2;
	struct tyUIBtn tyBtnMagConvTopBtm;
	struct tyUIBtn tyBtnMag1Conv;
	struct tyUIBtn tyBtnMag2Conv;
	struct tyUIBtn tyBtnMag3Conv;
	struct tyUILyr tyLyr;
} tyLyrP0920MtrNPneuCtrl;

typedef struct tyLyrP0920MtrNPneuCtrlPneu
{	struct tyUIBtn tyBtnShutter;
	struct tyUIBtn tyBtnStopper;
	struct tyUIBtn tyBtnSafetyBar;
	struct tyUILyr tyLyr;
} tyLyrP0920MtrNPneuCtrlPneu;

typedef struct tyLyrP0921InletShutterCom
{	struct tyUIBtn tyBtnSwitch;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnOpenRS;
	struct tyUIBtn tyBtnCloseRS;
	struct tyUITxt tyTxtTit;
	struct tyUILyr tyLyr;
} tyLyrP0921InletShutterCom;

typedef struct tyLyrP0921InletShutterDC
{	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUILyr tyLyr;
} tyLyrP0921InletShutterDC;

typedef struct tyLyrP0921InletShutterDis
{	struct tyUILyr tyLyr;
} tyLyrP0921InletShutterDis;

typedef struct tyLyrP0921InletShutterFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUILyr tyLyr;
} tyLyrP0921InletShutterFB;

typedef struct tyLyrP0921OutletShutterCom
{	struct tyUIBtn tyBtnSwitch;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnOpenRS;
	struct tyUIBtn tyBtnCloseRS;
	struct tyUITxt tyTxtTit;
	struct tyUILyr tyLyr;
} tyLyrP0921OutletShutterCom;

typedef struct tyLyrP0921OutletShutterDC
{	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUILyr tyLyr;
} tyLyrP0921OutletShutterDC;

typedef struct tyLyrP0921OutletShutterFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUIBtn tyBtnOpen2;
	struct tyUIBtn tyBtnOpen3;
	struct tyUILyr tyLyr;
} tyLyrP0921OutletShutterFB;

typedef struct tyLyrP0922InStopperCom
{	struct tyUIBtn tyBtnSwitch;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnBlkRS;
	struct tyUIBtn tyBtnUnblkRS;
	struct tyUITxt tyTxtTit;
	struct tyUILyr tyLyr;
} tyLyrP0922InStopperCom;

typedef struct tyLyrP0922InStopperDC
{	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922InStopperDC;

typedef struct tyLyrP0922InStopperDis
{	struct tyUILyr tyLyr;
} tyLyrP0922InStopperDis;

typedef struct tyLyrP0922InStopperFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922InStopperFB;

typedef struct tyLyrP0922StopperACom
{	struct tyUIBtn tyBtnSwitch;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnBlkRS;
	struct tyUIBtn tyBtnUnblkRS;
	struct tyUITxt tyTxtTit;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperACom;

typedef struct tyLyrP0922StopperADC
{	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperADC;

typedef struct tyLyrP0922StopperADis
{	struct tyUILyr tyLyr;
} tyLyrP0922StopperADis;

typedef struct tyLyrP0922StopperAFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperAFB;

typedef struct tyLyrP0922StopperBCom
{	struct tyUIBtn tyBtnSwitch;
	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnBlkRS;
	struct tyUIBtn tyBtnUnblkRS;
	struct tyUITxt tyTxtTit;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperBCom;

typedef struct tyLyrP0922StopperBDC
{	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperBDC;

typedef struct tyLyrP0922StopperBDis
{	struct tyUILyr tyLyr;
} tyLyrP0922StopperBDis;

typedef struct tyLyrP0922StopperBFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnBlk;
	struct tyUIBtn tyBtnUnblk;
	struct tyUILyr tyLyr;
} tyLyrP0922StopperBFB;

typedef struct tyLyrP0923LftSafetyBarCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnExtRS;
	struct tyUIBtn tyBtnRetRS;
	struct tyUITxt tyTxtSubTitle;
	struct tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarCom;

typedef struct tyLyrP0923LftSafetyBarDC
{	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarDC;

typedef struct tyLyrP0923LftSafetyBarFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarFB;

typedef struct tyLyrP0923RgtSafetyBarCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnExtRS;
	struct tyUIBtn tyBtnRetRS;
	struct tyUITxt tyTxtSubTitle;
	struct tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarCom;

typedef struct tyLyrP0923RgtSafetyBarDC
{	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarDC;

typedef struct tyLyrP0923RgtSafetyBarFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarFB;

typedef struct tyLyrP0926LifterMagConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnDCCtrl;
	struct tyUIBtn tyBtnLifterLmtSW;
	struct tyUIBtn tyBtnClampRS;
	struct tyUIBtn tyBtnUnclampRS;
	struct tyUILyr tyLyr;
} tyLyrP0926LifterMagConvCom;

typedef struct tyLyrP0926LifterMagConvDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnClamp;
	struct tyUIBtn tyBtnUnclamp;
	struct tyUILyr tyLyr;
} tyLyrP0926LifterMagConvDC;

typedef struct tyLyrP0926LifterMagConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnter;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnClamp;
	struct tyUIBtn tyBtnUnclamp;
	struct tyUILyr tyLyr;
} tyLyrP0926LifterMagConvFB;

typedef struct tyLyrP0927LifterMagConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnDCCtrl;
	struct tyUIBtn tyBtnLifterLmtSW;
	struct tyUIBtn tyBtnClampRS;
	struct tyUIBtn tyBtnUnclampRS;
	struct tyUILyr tyLyr;
} tyLyrP0927LifterMagConvCom;

typedef struct tyLyrP0927LifterMagConvDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnClamp;
	struct tyUIBtn tyBtnUnclamp;
	struct tyUILyr tyLyr;
} tyLyrP0927LifterMagConvDC;

typedef struct tyLyrP0927LifterMagConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnter;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnClamp;
	struct tyUIBtn tyBtnUnclamp;
	struct tyUILyr tyLyr;
} tyLyrP0927LifterMagConvFB;

typedef struct tyLyrP0928MagConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnTopEntSen;
	struct tyUIBtn tyBtnTopMidSen;
	struct tyUIBtn tyBtnTopExtSen;
	struct tyUIBtn tyBtnBtmEntSen;
	struct tyUIBtn tyBtnBtmMidSen;
	struct tyUIBtn tyBtnBtmExtSen;
	struct tyUIBtn tyBtnTopEntStprExtRS;
	struct tyUIBtn tyBtnTopMidStprExtRS;
	struct tyUIBtn tyBtnTopExtStprExtRS;
	struct tyUIBtn tyBtnTopEntStprRetRS;
	struct tyUIBtn tyBtnTopMidStprRetRS;
	struct tyUIBtn tyBtnTopExtStprRetRS;
	struct tyUIBtn tyBtnBtmMidStprExtRS;
	struct tyUIBtn tyBtnBtmExtStprExtRS;
	struct tyUIBtn tyBtnBtmMidStprRetRS;
	struct tyUIBtn tyBtnBtmExtStprRetRS;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnLane;
} tyLyrP0928MagConvCom;

typedef struct tyLyrP0928MagConvTopFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0928MagConvTopFB;

typedef struct tyLyrP0928MagConvTopDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0928MagConvTopDC;

typedef struct tyLyrP0928MagConvBtmFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0928MagConvBtmFB;

typedef struct tyLyrP0928MagConvBtmDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0928MagConvBtmDC;

typedef struct tyLyrP0929MagConv2Com
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnTopEntSen;
	struct tyUIBtn tyBtnTopMidSen;
	struct tyUIBtn tyBtnTopExtSen;
	struct tyUIBtn tyBtnBtmEntSen;
	struct tyUIBtn tyBtnBtmMidSen;
	struct tyUIBtn tyBtnBtmExtSen;
	struct tyUIBtn tyBtnTopEntStprExtRS;
	struct tyUIBtn tyBtnTopMidStprExtRS;
	struct tyUIBtn tyBtnTopExtStprExtRS;
	struct tyUIBtn tyBtnTopEntStprRetRS;
	struct tyUIBtn tyBtnTopMidStprRetRS;
	struct tyUIBtn tyBtnTopExtStprRetRS;
	struct tyUIBtn tyBtnBtmMidStprExtRS;
	struct tyUIBtn tyBtnBtmExtStprExtRS;
	struct tyUIBtn tyBtnBtmMidStprRetRS;
	struct tyUIBtn tyBtnBtmExtStprRetRS;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnLane;
} tyLyrP0929MagConv2Com;

typedef struct tyLyrP0929MagConv2TopFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0929MagConv2TopFB;

typedef struct tyLyrP0929MagConv2TopDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnEntStprExt;
	struct tyUIBtn tyBtnEntStprRet;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0929MagConv2TopDC;

typedef struct tyLyrP0929MagConv2BtmFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0929MagConv2BtmFB;

typedef struct tyLyrP0929MagConv2BtmDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnMidStprExt;
	struct tyUIBtn tyBtnMidStprRet;
	struct tyUIBtn tyBtnExtStprExt;
	struct tyUIBtn tyBtnExtStprRet;
	struct tyUILyr tyLyr;
} tyLyrP0929MagConv2BtmDC;

typedef struct tyLyrP0930Mag1ConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnMagPresentSen;
	struct tyUIBtn tyBtnMagOrientationChkSen1;
	struct tyUIBtn tyBtnMagOrientationChkSen2;
	struct tyUIBtn tyBtnMagDetectSen;
	struct tyUIBtn tyBtnMagConvEntSen;
	struct tyUIBtn tyBtnMagAIVPosSen1;
	struct tyUIBtn tyBtnMagAIVPosSen2;
	struct tyUIBtn tyBtnSelClampRS;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnFixedClampRS;
	struct tyUIBtn tyBtnFixedUnclampRS;
	struct tyUIBtn tyBtnRemoteClampRS;
	struct tyUIBtn tyBtnRemoteUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvCom;

typedef struct tyLyrP0930Mag1ConvDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvDC;

typedef struct tyLyrP0930Mag1ConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvFB;

typedef struct tyLyrP0931Mag2ConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnMagPresentSen;
	struct tyUIBtn tyBtnMagOrientationChkSen1;
	struct tyUIBtn tyBtnMagOrientationChkSen2;
	struct tyUIBtn tyBtnMagDetectSen;
	struct tyUIBtn tyBtnMagConvEntSen;
	struct tyUIBtn tyBtnMagAIVPosSen1;
	struct tyUIBtn tyBtnMagAIVPosSen2;
	struct tyUIBtn tyBtnSelClampRS;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnFixedClampRS;
	struct tyUIBtn tyBtnFixedUnclampRS;
	struct tyUIBtn tyBtnRemoteClampRS;
	struct tyUIBtn tyBtnRemoteUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUILyr tyLyr;
} tyLyrP0931Mag2ConvCom;

typedef struct tyLyrP0931Mag2ConvDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0931Mag2ConvDC;

typedef struct tyLyrP0931Mag2ConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0931Mag2ConvFB;

typedef struct tyLyrP0932Mag3ConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnMagPresentSen;
	struct tyUIBtn tyBtnMagOrientationChkSen1;
	struct tyUIBtn tyBtnMagOrientationChkSen2;
	struct tyUIBtn tyBtnMagDetectSen;
	struct tyUIBtn tyBtnMagConvEntSen;
	struct tyUIBtn tyBtnMagAIVPosSen1;
	struct tyUIBtn tyBtnMagAIVPosSen2;
	struct tyUIBtn tyBtnSelClampRS;
	struct tyUIBtn tyBtnSelUnclampRS;
	struct tyUIBtn tyBtnFixedClampRS;
	struct tyUIBtn tyBtnFixedUnclampRS;
	struct tyUIBtn tyBtnRemoteClampRS;
	struct tyUIBtn tyBtnRemoteUnclampRS;
	struct tyUIBtn tyBtnHeightSen;
	struct tyUIBtn tyBtnCAB717Sen;
	struct tyUIBtn tyBtnMagSmallSen;
	struct tyUIBtn tyBtnMagLargeSen;
	struct tyUILyr tyLyr;
} tyLyrP0932Mag3ConvCom;

typedef struct tyLyrP0932Mag3ConvDC
{	struct tyUIBtn tyBtnMagIn;
	struct tyUIBtn tyBtnMagOut;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0932Mag3ConvDC;

typedef struct tyLyrP0932Mag3ConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnSelClamp;
	struct tyUIBtn tyBtnSelUnclamp;
	struct tyUIBtn tyBtnFixedClamp;
	struct tyUIBtn tyBtnFixedUnclamp;
	struct tyUIBtn tyBtnRemoteClamp;
	struct tyUIBtn tyBtnRemoteUnclamp;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0932Mag3ConvFB;

typedef struct tyLyrP0933PushConvCom
{	struct tyUIBitmap tyBitmapMc;
	struct tyUIBtn tyBtnSwitch;
	struct tyUIBtn tyBtnLftSen;
	struct tyUIBtn tyBtnMidSen;
	struct tyUIBtn tyBtnRgtSen;
	struct tyUIBtn tyBtnClrSen;
	struct tyUIBtn tyBtnExtRS;
	struct tyUIBtn tyBtnRetRS;
	struct tyUIBtn tyBtnAlarmSig;
	struct tyUIBtn tyBtnTorqueSig;
	struct tyUIBtn tyBtnExtSen;
	struct tyUIBtn tyBtnExtSlwSen;
	struct tyUIBtn tyBtnRetSen;
	struct tyUIBtn tyBtnRetSlwSen;
	struct tyUIBtn tyBtnAntiJamSen;
	struct tyUILString tyTxtExtWarning;
	struct tyUILyr tyLyr;
} tyLyrP0933PushConvCom;

typedef struct tyLyrP0933PushConvDC
{	struct tyUIBtn tyBtnStart;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUIBtn tyBtnSpdBinBit0;
	struct tyUIBtn tyBtnSpdBinBit1;
	struct tyUIBtn tyBtnSpdBinBit2;
	struct tyUIBtn tyBtnSigOn;
	struct tyUIBtn tyBtnBrake;
	struct tyUIBtn tyBtnAlarmRst;
	struct tyUILyr tyLyr;
} tyLyrP0933PushConvDC;

typedef struct tyLyrP0933PushConvFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnEnt;
	struct tyUIBtn tyBtnExit;
	struct tyUIBtn tyBtnCylExit;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnExt;
	struct tyUIBtn tyBtnRet;
	struct tyUINum tyNumExtSpd;
	struct tyUINum tyNumExtTorqPercent;
	struct tyUILyr tyLyr;
} tyLyrP0933PushConvFB;

typedef struct tyLyrP0934AW
{	struct tyUINum tyNumNewWidth;
	struct tyUIBtn tyBtnGo;
} tyLyrP0934AW;

typedef struct tyLyrP0935Lifter
{	struct tyUINum tyNumNewSlt;
	struct tyUIBtn tyBtnGo;
	struct tyUIBtn tyBtnGoLaneA;
	struct tyUIBtn tyBtnGoLaneB;
	struct tyUIBtn tyBtnGoLaneD_G;
	struct tyUIBtn tyBtnGoLaneE_H;
	struct tyUIBtn tyBtnNxtSlt;
	struct tyUIBtn tyBtnPrevSlt;
	struct tyUINum tyNumMagPos;
} tyLyrP0935Lifter;

typedef struct tyLyrP0936Trav
{	struct tyUIBtn tyBtnGoToLaneA;
	struct tyUIBtn tyBtnGoToLaneB;
	struct tyUIBtn tyBtnGoToMag1;
	struct tyUIBtn tyBtnGoToMag2;
	struct tyUIBtn tyBtnGoToMag3;
} tyLyrP0936Trav;

typedef struct tyLyrP0937AWPushOrPuller
{	struct tyUINum tyNumNewWidth;
	struct tyUIBtn tyBtnGo;
} tyLyrP0937AWPushOrPuller;

typedef struct tyLyrP0938MagAW
{	struct tyUITxt tyTxtSubTitle;
	struct tyUINum tyNumNewWidth;
	struct tyUIBtn tyBtnGo;
	struct tyUIBtn tyBtnMtrGearEngage;
	struct tyUIBtn tyBtnEngage;
	struct tyUIBtn tyBtnDisengage;
	struct tyUIBtn tyBtnEngageRS;
	struct tyUIBtn tyBtnDisengageRS;
} tyLyrP0938MagAW;

typedef struct tyLyrP0940CommCtrlUSSMEMA
{	struct tyUIBtn tyBtnUBA;
	struct tyUIBtn tyBtnUBAStat;
	struct tyUIBtn tyBtnUSB;
	struct tyUILyr tyLyr;
} tyLyrP0940CommCtrlUSSMEMA;

typedef struct tyLyrP0940SOTComm
{	struct tyUIBtn tyBtnAIVRcv1;
	struct tyUIBtn tyBtnAIVErr1;
	struct tyUIBtn tyBtnAIVRdy1;
	struct tyUIBtn tyBtnAIVAvail1;
	struct tyUIBtn tyBtnAIVSLarge1;
	struct tyUIBtn tyBtnMagErr1;
	struct tyUIBtn tyBtnMagRdy1;
	struct tyUIBtn tyBtnMagAvail1;
	struct tyUIBtn tyBtnMagSLarge1;
	struct tyUIBtn tyBtnAIVRcv2;
	struct tyUIBtn tyBtnAIVErr2;
	struct tyUIBtn tyBtnAIVRdy2;
	struct tyUIBtn tyBtnAIVAvail2;
	struct tyUIBtn tyBtnAIVSLarge2;
	struct tyUIBtn tyBtnMagErr2;
	struct tyUIBtn tyBtnMagRdy2;
	struct tyUIBtn tyBtnMagAvail2;
	struct tyUIBtn tyBtnMagSLarge2;
	struct tyUIBtn tyBtnAIVRcv3;
	struct tyUIBtn tyBtnAIVErr3;
	struct tyUIBtn tyBtnAIVRdy3;
	struct tyUIBtn tyBtnAIVAvail3;
	struct tyUIBtn tyBtnAIVSLarge3;
	struct tyUIBtn tyBtnMagErr3;
	struct tyUIBtn tyBtnMagRdy3;
	struct tyUIBtn tyBtnMagAvail3;
	struct tyUIBtn tyBtnMagSLarge3;
	struct tyUIBtn tyBtnAIVRcv4;
	struct tyUIBtn tyBtnAIVErr4;
	struct tyUIBtn tyBtnAIVRdy4;
	struct tyUIBtn tyBtnAIVAvail4;
	struct tyUIBtn tyBtnAIVSLarge4;
	struct tyUIBtn tyBtnMagErr4;
	struct tyUIBtn tyBtnMagRdy4;
	struct tyUIBtn tyBtnMagAvail4;
	struct tyUIBtn tyBtnMagSLarge4;
	struct tyUIBtn tyBtnFleetMgrActive;
	struct tyUIBtn tyBtnMagReqBring1;
	struct tyUIBtn tyBtnMagReqtGet1;
	struct tyUIBtn tyBtnMagReqBring2;
	struct tyUIBtn tyBtnMagReqtGet2;
	struct tyUIBtn tyBtnMagReqBring3;
	struct tyUIBtn tyBtnMagReqtGet3;
	struct tyUIBtn tyBtnMagReqBring4;
	struct tyUIBtn tyBtnMagReqtGet4;
	struct tyUILyr tySOTLyr1;
	struct tyUILyr tySOTLyr2;
	struct tyUILyr tySOTLyr3;
	struct tyUILyr tySOTLyr4;
	struct tyUITxt tyTxtAIVCommProtocol;
} tyLyrP0940SOTComm;

typedef struct tyLyrP0940DMCRFIDComm
{	struct tyUIBtn tyBtnScanComplSig;
	struct tyUIBtn tyBtnTrigStartScan;
	struct tyUIBtn tyBtnTrigTransMag1Out;
	struct tyUIBtn tyBtnTrigTransMag2Out;
	struct tyUIBtn tyBtnTrigTransMag3Out;
	struct tyUILyr tyLyr;
} tyLyrP0940DMCRFIDComm;

typedef struct tyLyrP0950SOTBtn
{	struct tyUIBtn tyBtnInPos;
	struct tyUIBtn tyBtnError;
	struct tyUIBtn tyBtnRdy;
	struct tyUIBtn tyBtnAvail;
	struct tyUIBtn tyBtnSize;
} tyLyrP0950SOTBtn;

typedef struct tyLyrP0950Simu
{	struct tyUIBtn tyBtnSimu;
	struct tyUIBtn tyBtnStart;
	struct tyUIBtn tyBtnStop;
	struct tyLyrP0950SOTBtn tyBtnSOT1;
	struct tyLyrP0950SOTBtn tyBtnSOT2;
	struct tyLyrP0950SOTBtn tyBtnSOT3;
	struct tyLyrP0950SOTBtn tyBtnMagSOT1;
	struct tyLyrP0950SOTBtn tyBtnMagSOT2;
	struct tyLyrP0950SOTBtn tyBtnMagSOT3;
	struct tyUIBtn tyBtnInShutterSim;
	struct tyUIBtn tyBtnBypassShutforCalib;
	struct tyUIBtn tyBtnTestTrav;
	struct tyUIBtn tyBtnNtParaWr;
	struct tyUIBtn tyBtnNtParaWr2;
	struct tyUILString tyStringJobNo;
	struct tyUINum tyNumAddr;
	struct tyUINum tyNumTravSpd;
	struct tyUINum tyNumLifterSpd;
	struct tyUIBtn tyBtnNavLeft;
	struct tyUIBtn tyBtnNavRight;
	struct tyUILyr tyLyr;
	struct tyUILyr tyLyr1;
	struct tyUILyr tyLyr2;
} tyLyrP0950Simu;

typedef struct tyLyrP0950SimuAGVToMC
{	struct tyUIBtn tyBtnAGVSimulateOn;
	struct tyUIBtn tyBtnAGVOnline;
	struct tyUIBtn tyBtnAGVInPos1;
	struct tyUIBtn tyBtnAGVInPos2;
	struct tyUIBtn tyBtnAGVInPos3;
	struct tyUIBtn tyBtnAGVAuto;
	struct tyUIBtn tyBtnAGV1Occupied;
	struct tyUIBtn tyBtnAGV2Occupied;
	struct tyUIBtn tyBtnAGV3Occupied;
	struct tyUIBtn tyBtnNavLeft;
	struct tyUIBtn tyBtnNavRight;
	struct tyUILyr tyLyr;
} tyLyrP0950SimuAGVToMC;

typedef struct tyLyrP0950SimuMCToAGV
{	struct tyUIBtn tyBtnMachineOnline;
	struct tyUIBtn tyBtnMachineEstop;
	struct tyUIBtn tyBtnMag1Empty;
	struct tyUIBtn tyBtnMag2Empty;
	struct tyUIBtn tyBtnMag3Empty;
	struct tyUIBtn tyBtnMag1Rdy;
	struct tyUIBtn tyBtnMag2Rdy;
	struct tyUIBtn tyBtnMag3Rdy;
	struct tyUIBtn tyBtnMag1Auto;
	struct tyUIBtn tyBtnMag2Auto;
	struct tyUIBtn tyBtnMag3Auto;
	struct tyUIBtn tyBtnMag1Occupied;
	struct tyUIBtn tyBtnMag2Occupied;
	struct tyUIBtn tyBtnMag3Occupied;
	struct tyUIBtn tyBtnMag1IncorrectModel;
	struct tyUIBtn tyBtnMag2IncorrectModel;
	struct tyUIBtn tyBtnMag3IncorrectModel;
} tyLyrP0950SimuMCToAGV;

typedef struct tyLyrP0950SimuCycleTim
{	struct tyUIDrpDn tyDrpDnMagSel;
	struct tyUITable1 tyTableList;
	struct tyUIBtn tyBtnNavLeft;
	struct tyUIBtn tyBtnNavRight;
	struct tyUILyr tyLyr;
	struct tyUITxt tyTxtMag3Stat;
} tyLyrP0950SimuCycleTim;

typedef struct tyLyrP0950SOTstatus
{	plcbit tyBtnInPos;
	plcbit tyBtnError;
	plcbit tyBtnRdy;
	plcbit tyBtnAvail;
} tyLyrP0950SOTstatus;

typedef struct tyLyrP1000Lang
{	struct tyUIBtn tyBtnChinese;
	struct tyUIBtn tyBtnEnglish;
	struct tyUIBtn tyBtnGerman;
	struct tyUINum tyNumYear;
	struct tyUINum tyNumMonth;
	struct tyUINum tyNumDay;
	struct tyUINum tyNumHour;
	struct tyUINum tyNumMinute;
	struct tyUINum tyNumSecond;
} tyLyrP1000Lang;

typedef struct tyLyrP1020McSetNavi
{	struct tyUIBtn tyBtnMcSet;
	struct tyUIBtn tyBtnVCommSet;
	struct tyUIBtn tyBtnHCommSet;
	struct tyUIBtn tyBtnAntiGapSet;
	struct tyUIBtn tyBtnScanSet;
	struct tyUIBtn tyBtnOpConSet;
	struct tyUILyr tyLyr;
} tyLyrP1020McSetNavi;

typedef struct tyLyrP1021McSetGen
{	struct tyUIString tyStringMcNm;
	struct tyUIDrpDn tyDrpDnDefaultMcMod;
	struct tyUIDrpDn tyDrpDnNetworkMod;
	struct tyUINum tyNumSSaverTm;
	struct tyUIBtn tyBtnSSaverEn;
	struct tyUITxt tyTxtLblSSaver;
	struct tyUIString tyStringIPAddr;
	struct tyUIString tyStringSubnetMask;
	struct tyUIString tyStringHMIIPAddr;
	struct tyUIString tyStringDefaultGWIP;
	struct tyUITxt tyTxtWidthAtHm;
	struct tyUINum tyNumWidthAtHm;
	struct tyUINum tyNumConvInitTm;
	struct tyUINum tyNumTranInErrDlyTm;
	struct tyUITxt tyTxtMag1ConvRunTm;
	struct tyUINum tyNumMag1ConvRunTm;
	struct tyUITxt tyTxtMag2ConvRunTm;
	struct tyUINum tyNumMag2ConvRunTm;
	struct tyUITxt tyTxtMag3ConvRunTm;
	struct tyUINum tyNumMag3ConvRunTm;
	struct tyUITxt tyTxtMaxBffr;
	struct tyUINum tyNumMaxBffr;
	struct tyUITxt tyTxtMag1WidthAtHm;
	struct tyUITxt tyTxtMag2WidthAtHm;
	struct tyUITxt tyTxtMag3WidthAtHm;
	struct tyUINum tyNumMag1WidthAtHm;
	struct tyUINum tyNumMag2WidthAtHm;
	struct tyUINum tyNumMag3WidthAtHm;
	struct tyUINum tyNumTravPosLaneA;
	struct tyUINum tyNumLiftPosLaneA;
	struct tyUITxt tyTxtLiftPosLaneA;
	struct tyUITxt tyTxtTravPosLaneB;
	struct tyUINum tyNumTravPosLaneB;
	struct tyUITxt tyTxtLiftPosLaneB;
	struct tyUINum tyNumLiftPosLaneB;
	struct tyUIBtn tyBtnTravPosATeach;
	struct tyUIBtn tyBtnTravPosBTeach;
	struct tyUIBtn tyBtnLiftPosATeach;
	struct tyUIBtn tyBtnLiftPosBTeach;
	struct tyUIBtn tyBtnAWDis;
	struct tyUIBtn tyBtnMnlAccDat;
	struct tyUIBtn tyBtnAutoStepEn;
	struct tyUIBtn tyBtnVSMEMAEn;
	struct tyUIBtn tyBtnHermesRmtEn;
	struct tyUIBtn tyBtnHermesSvyEn;
	struct tyUIBtn tyBtnGapBetBrdEn;
	struct tyUIBtn tyBtnLongBrdEn;
	struct tyUIBtn tyBtnOvenEn;
	struct tyUIBtn tyBtnExtdOvenEn;
	struct tyUIBtn tyBtnInShutterDis;
	struct tyUIBtn tyBtnStopperADis;
	struct tyUIBtn tyBtnStopperBDis;
	struct tyUIBtn tyBtnChgParamEn;
	struct tyUILyr tyLyrGen1;
	struct tyUILyr tyLyrGen2;
	struct tyUILyr tyLyrGen3;
	struct tyUILyr tyLyrGen4;
	struct tyUINum tyNumMagAutoDetSenTm;
	struct tyUITxt tyTxtWidthOffset;
	struct tyUINum tyNumWidthOffset;
	struct tyUIBtn tyBtnAGVComEn;
	struct tyUINum tyNumAutoLogoutTm;
	struct tyUITxt tyTxtLblAutoLogoutTm;
	struct tyUIBtn tyBtnAutoLogoutEn;
	struct tyUIBtn tyBtnMagAWDis;
	struct tyUIBtn tyBtnMagSafetyBarDis;
	struct tyUIBtn tyBtnLFBuzMute;
	struct tyUIDrpDn tyDrpDnAGVComProtocol;
	struct tyUIDrpDn tyDrpDnMagExchangeMode;
	struct tyUIBtn tyBtnAGVSizeDisabled;
	struct tyUINum tyNumAWPusherAtHm;
	struct tyUITxt tyTxtAWPusherAtHm;
	struct tyUIBtn tyBtnAWPusherDis;
	struct tyUINum tyNumTravFixtoFixPosInlet;
	struct tyUIBtn tyBtnDisableFMWarning;
	struct tyUINum tyNumInMagConvInitTm;
	struct tyUINum tyNumOutMagConvInitTm;
	struct tyUINum tyNumLifterMagConvInitTm;
	struct tyUINum tyNumInMagConv2InitTm;
	struct tyUINum tyNumOutMagConv2InitTm;
	struct tyUINum tyNumLifterMagConv2InitTm;
	struct tyUINum tyNumLifterTopPos;
	struct tyUINum tyNumLifterBtmPos;
	struct tyUIBtn tyBtnTeachTopPos;
	struct tyUIBtn tyBtnTeachBtmPos;
	struct tyUINum tyNumLifterTopPos2;
	struct tyUINum tyNumLifterBtmPos2;
	struct tyUIBtn tyBtnTeachTopPos2;
	struct tyUIBtn tyBtnTeachBtmPos2;
	struct tyUINum tyNumTCPSvrPort;
	struct tyUIBtn tyBtnMagWidthChkDis;
	struct tyUINum tyNumMag1WidthChkDetDist;
	struct tyUINum tyNumMag2WidthChkDetDist;
	struct tyUINum tyNumMag3WidthChkDetDist;
	struct tyUIBtn tyBtnDMCScannerEn;
	struct tyUINum tyNumDMCScanWriteTO;
	struct tyUINum tyNumInStprDelayTm;
	struct tyUIBtn tyBtnInletStopperDis;
	struct tyUINum tyNumMESResponseTO;
	struct tyUIBtn tyBtnMESEn;
	struct tyUIBtn tyBtnSwitchingProductType;
	struct tyUIBtn tyBtnBatchIDChgOverCmp;
	struct tyUIBtn tyBtnIgnoreTopClearance;
	struct tyUIBtn tyBtnIgnoreBottomClearance;
	struct tyUIBtn tyBtnIgnoreThickness;
	struct tyUIDrpDn tyDrpDnPos1;
	struct tyUIDrpDn tyDrpDnPos2;
	struct tyUIDrpDn tyDrpDnPos3;
} tyLyrP1021McSetGen;

typedef struct tyLyrP1021McSetNetwork
{	struct tyUIString tyStringIPAddr;
	struct tyUIString tyStringSubnetMask;
	struct tyUIString tyStringHMIIPAddr;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP1021McSetNetwork;

typedef struct tyLyrP1022McSetVCommLF
{	struct tyUIBtn tyBtnLeaderMc;
	struct tyUIBtn tyBtnSectionLdr;
	struct tyUIBtn tyBtnUSWidthChkEn;
	struct tyUIBtn tyBtnSeqStayActive;
	struct tyUIBtn tyBtnDBAOnWOAlign;
	struct tyUILyr tyLyr;
} tyLyrP1022McSetVCommLF;

typedef struct tyLyrP1022McSetVCommSvy
{	struct tyUINum tyNumSndAliveTm;
	struct tyUINum tyNumSvySystemPort;
	struct tyUIBtn tyBtnConfiguration;
	struct tyUIBtn tyBtnCheckAliveResponse;
	struct tyUIBtn tyBtnBoardTracking;
	struct tyUIBtn tyBtnQueryWorkOrderInfo;
	struct tyUIBtn tyBtnSendWorkOrderInfo;
	struct tyUIBitmap tyBitmapMask;
	struct tyUILyr tyLyr;
} tyLyrP1022McSetVCommSvy;

typedef struct tyLyrP1022McSetVCommSel
{	struct tyUIBtn tyBtnLF;
	struct tyUIBtn tyBtnLCSLF;
	struct tyUIBtn tyBtnLCSReqRcp;
	struct tyUIBtn tyBtnLCSManageRcp;
	struct tyUIBtn tyBtnLCSLiveDat;
	struct tyUILyr tyLyr;
} tyLyrP1022McSetVCommSel;

typedef struct tyLyrP1023McSetHCommSel
{	struct tyUIBtn tyBtnSMEMA;
	struct tyUIBtn tyBtnHermes;
	struct tyUITxt tyTxtHeader;
	struct tyUILyr tyLyr;
} tyLyrP1023McSetHCommSel;

typedef struct tyLyrP1023McSetHCommSMEMA
{	struct tyUIBtn tyBtnGdSig;
	struct tyUIDrpDn tyDrpDnSMEMAMod;
	struct tyUILyr tyLyr;
} tyLyrP1023McSetHCommSMEMA;

typedef struct tyLyrP1023McSetHCommUSHermes
{	struct tyUINum tyNumSndAliveTm;
	struct tyUINum tyNumLaneID;
	struct tyUINum tyNumHostPort;
	struct tyUIString tyStringHostAddr;
	struct tyUIBtn tyBtnCheckAliveResponse;
	struct tyUIBtn tyBtnOverWrite;
	struct tyUIBtn tyBtnCmpParam;
	struct tyUIBtn tyBtnCmpTypeId;
	struct tyUIBitmap tyBitmapMask;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnBoardForecast;
	struct tyUIBtn tyBtnQueryBoardInfo;
} tyLyrP1023McSetHCommUSHermes;

typedef struct tyLyrP1024McSetAntiGap
{	struct tyUINum tyNumMagConvEntOn;
	struct tyUINum tyNumMagConvEntOff;
	struct tyUINum tyNumLftSenOff;
	struct tyUINum tyNumMidSenOff;
	struct tyUINum tyNumRgtSenOff;
	struct tyUINum tyNumClrSenOff;
	struct tyUINum tyNumMagConvPresentOn;
	struct tyUINum tyNumMagConvPresentOff;
	struct tyUILyr tyLyr;
} tyLyrP1024McSetAntiGap;

typedef struct tyLyrP1025McSetScan
{	struct tyUIBtn tyBtnTopScanEn;
	struct tyUIBtn tyBtnBtmScanEn;
	struct tyUIString tyStringTopScanSvrIP;
	struct tyUINum tyNumTopScanSvrPort;
	struct tyUIString tyStringBtmScanSvrIP;
	struct tyUINum tyNumBtmScanSvrPort;
	struct tyUILyr tyLyr;
} tyLyrP1025McSetScan;

typedef struct tyLyrP1026InOutletShutterFB
{	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUILyr tyLyr;
	struct tyUILString tyStringStat;
} tyLyrP1026InOutletShutterFB;

typedef struct tyLyrP1026McSetTeach
{	struct tyUIBtn tyBtn1;
	struct tyUIBtn tyBtn2;
	struct tyUIBtn tyBtn3;
	struct tyUIBtn tyBtn4;
	struct tyUILyr tyLyr;
} tyLyrP1026McSetTeach;

typedef struct tyLyrP1027McSetOpCon
{	struct tyUINum tyNumLineNo;
	struct tyUINum tyNumStatNo;
	struct tyUINum tyNumStatIdx;
	struct tyUINum tyNumFuNo;
	struct tyUINum tyNumWorkPos;
	struct tyUINum tyNumToolPos;
	struct tyUIString tyStringProcessNm;
	struct tyUINum tyNumProcessNo;
	struct tyUIString tyStringApplication;
	struct tyUIString tyStringOpConSvrIP;
	struct tyUINum tyNumOpConSvrPort;
	struct tyUIBtn tyBtnOpConEn;
	struct tyUILyr tyLyr;
} tyLyrP1027McSetOpCon;

typedef struct tyLyrP1030MagSet
{	struct tyUIString tyStringRecipeNm;
	struct tyUINum tyNumSltToSltDist;
	struct tyUINum tyNumMaxSlt;
	struct tyUIBtn tyBtnLifterMag1Slt1Pos;
	struct tyUIBtn tyBtnLifterMag2Slt1Pos;
	struct tyUIBtn tyBtnLifterMag3Slt1Pos;
	struct tyUIBtn tyBtnTravPosMag1;
	struct tyUIBtn tyBtnTravPosMag2;
	struct tyUIBtn tyBtnTravPosMag3;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnDelete;
	struct tyUINum tyNumLifterMag1Slt1Pos;
	struct tyUINum tyNumLifterMag2Slt1Pos;
	struct tyUINum tyNumLifterMag3Slt1Pos;
	struct tyUINum tyNumTravPosMag1;
	struct tyUINum tyNumTravPosMag2;
	struct tyUINum tyNumTravPosMag3;
	struct tyUITxt tyTxtLifMag3Slt1PosLbl;
	struct tyUITxt tyTxtTravPosMag3Lbl;
	struct tyUITable tyTableRecipe;
	struct tyUIDrpDn tyDrpDnMagModel;
	struct tyUITxt tyTxtMagModel;
	struct tyUINum tyNumMagMaxBrdWidth;
	struct tyUIBtn tyBtnSort;
	struct tyUIBtn tyBtnSafetyBarDisabled;
	struct tyUIBtn tyBtnMagHeightChkEn;
	struct tyUIBitmap tyBitmapBrder;
} tyLyrP1030MagSet;

typedef struct tyLyrP1031InOutletShutterFB
{	struct tyUILString tyStringStat;
	struct tyUIBtn tyBtnOpen;
	struct tyUIBtn tyBtnClose;
	struct tyUILyr tyLyr;
} tyLyrP1031InOutletShutterFB;

typedef struct tyLyrP1031MagSetTeach
{	struct tyUIBtn tyBtn1;
	struct tyUIBtn tyBtn2;
	struct tyUIBtn tyBtn3;
	struct tyUIBtn tyBtn4;
	struct tyUILyr tyLyr;
	struct tyUINum tyNumNewSlt;
} tyLyrP1031MagSetTeach;

typedef struct tyLyrP1040ProdSet
{	struct tyUILString tyStringRecipeNm;
	struct tyUINum tyNumProdWidth;
	struct tyUINum tyNumProdWidth2;
	struct tyUINum tyNumFirstSlt;
	struct tyUINum tyNumLastSlt;
	struct tyUINum tyNumPitch;
	struct tyUINum tyNumBrdPerSlt;
	struct tyUINum tyNumMinReqFreeBffr;
	struct tyUITxt tyTxtBrdPerSlt;
	struct tyUITxt tyTxtMinReqFreeBffr;
	struct tyUIBtn tyBtnToptoBtm;
	struct tyUIBtn tyBtnGapBetBrds;
	struct tyUIBtn tyBtnLongBrd;
	struct tyUILString tyStringSearch;
	struct tyUITable tyTableRecipe;
	struct tyUIBtn tyBtnToXML;
	struct tyUIBtn tyBtnFromXML;
	struct tyUIBtn tyBtnSave;
	struct tyUIBtn tyBtnDelete;
	struct tyUIDrpDn tyDrpDnMcMode;
	struct tyUIBtn tyBtnSort;
	struct tyUIHotspot tyHotspotShowLRcp;
	struct tyUINum tyNumMtrPshrExtSpd;
	struct tyUINum tyNumMtrPshrExtTorq;
	struct tyUINum tyNumPshrOffset;
	struct tyUITxt tyTxtPshrOffset;
} tyLyrP1040ProdSet;

typedef struct tyLyrP1050LFSetLdr
{	struct tyUITable1 tyTable1List;
	struct tyUIBtn tyBtnEdit;
	struct tyUIBtn tyBtnDelete;
	struct tyUIBtn tyBtnOnline;
	struct tyUIBtn tyBtnOffline;
	struct tyUIBtn tyBtnShftUp;
	struct tyUIBtn tyBtnShftDwn;
	struct tyUINum tyNumBeforeOven;
	struct tyUINum tyNumAfterOven;
	struct tyUINum tyNumBeforeOven2;
	struct tyUINum tyNumAfterOven2;
	struct tyUILyr tyLyr;
} tyLyrP1050LFSetLdr;

typedef struct tyLyrP1050LFSetLdrEdit
{	struct tyUINum tyNumMcNum;
	struct tyUIString tyStringIPAddr;
	struct tyUIBtn tyBtnOk;
	struct tyUIBtn tyBtnCancel;
	struct tyUITxt tyTxtLblInfoThirdParty;
	struct tyUILyr tyLyr;
} tyLyrP1050LFSetLdrEdit;

typedef struct tyLyrP1080UsrMgmt
{	struct tyUIDrpDn tyDrpDnLvl;
	struct tyUITable1 tyTableList;
	struct tyUIBtn tyBtnNewUsr;
	struct tyUIBtn tyBtnEditDetail;
	struct tyUIBtn tyBtnDeleteUsr;
	struct tyUILyr tyLyr;
	struct tyUIBtn tyBtnEditAccess;
} tyLyrP1080UsrMgmt;

typedef struct tyLyrP1080UsrMgmtAct
{	struct tyUIString tyStringUsrNm;
	struct tyUIString tyStringPw;
	struct tyUIDrpDn tyDrpDnLvl;
	struct tyUIBtn tyBtnOk;
	struct tyUIBtn tyBtnCancel;
	struct tyUILyr tyLyr;
} tyLyrP1080UsrMgmtAct;

typedef struct tyLyrP1081UsrMgmtUsrAccessRgt
{	struct tyUIBtn tyBtnOps;
	struct tyUIBtn tyBtnProdSel;
	struct tyUIBtn tyBtnMagSel;
	struct tyUIBtn tyBtnMcInfo;
	struct tyUIBtn tyBtnAlm;
	struct tyUIBtn tyBtnBffrInfo;
	struct tyUIBtn tyBtnOvenInfo;
	struct tyUIBtn tyBtnMagInfo;
	struct tyUIBtn tyBtnLFCtrl;
	struct tyUIBtn tyBtnManual;
	struct tyUIBtn tyBtnSimu;
	struct tyUIBtn tyBtnChgParam;
	struct tyUIBtn tyBtnLFSet;
	struct tyUIBtn tyBtnBackup;
	struct tyUIBtn tyBtnLang;
	struct tyUIBtn tyBtnMcSet;
	struct tyUIBtn tyBtnProdSet;
	struct tyUIBtn tyBtnMagSet;
	struct tyUIBtn tyBtnManualFBOnly;
	struct tyUIString tyStringNm;
	struct tyUITxt tyTxtTitle;
	struct tyUILyr tyLyr;
} tyLyrP1081UsrMgmtUsrAccessRgt;

typedef struct tyLyrP1081UsrMgmtUsrAccessRgtSel
{	struct tyUIDrpDn tyDrpDnLevel;
	struct tyUILyr tyLyr;
} tyLyrP1081UsrMgmtUsrAccessRgtSel;

typedef struct tyTxtSnippets
{	plcstring sLibraryNm[11];
	plcstring sUsrMgmtUsrLv1Nm[81];
	plcstring sUsrMgmtUsrLv2Nm[81];
	plcstring sUsrMgmtUsrLv3Nm[81];
} tyTxtSnippets;

typedef struct tyVisu
{	unsigned short uiChgPage;
	unsigned short uiCurrPage;
	unsigned short uiSSaverTm;
	unsigned short uiScreenSaverRemainTm;
	unsigned char usiChgLang;
	unsigned char usiCurrLang;
} tyVisu;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI/Visu_Layer.typ\\\" scope \\\"local\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/UI/UI/Visu_Page.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_182_ */

