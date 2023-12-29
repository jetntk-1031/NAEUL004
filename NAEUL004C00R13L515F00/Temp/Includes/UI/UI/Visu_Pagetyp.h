/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837633_179_
#define _BUR_1703837633_179_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct tyUICom
{	struct tyLyrC0005Main tyMain;
	struct tyLyrC0005Main tyMain1;
	struct tyLyrC0006Set tySet;
	struct tyLyrC0007Notif tyNotif;
	struct tyLyrC0009Info tyInfo;
} tyUICom;

typedef struct tyUIP0000SSaver
{	struct tyLyrP0000SSaver tySSaver;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxLoginAsk;
} tyUIP0000SSaver;

typedef struct tyUIP0001Startup
{	struct tyLyrP0001Startup tyStartup;
	struct tyLyrP0001Initial tyInitial;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxIPConfig;
} tyUIP0001Startup;

typedef struct tyUIP0002Menu
{	struct tyLyrP0002Menu tyMenu;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxRemoveMag;
} tyUIP0002Menu;

typedef struct tyLyrP0003MMenuGen
{	struct tyUITxt tyStatusTxt;
	struct tyUIString tyStringProdNm;
	struct tyUIBitmap tyBitmapUSIn;
	struct tyUIBitmap tyBitmapUSOut;
	struct tyUIBitmap tyBitmapUSIn1;
	struct tyUIBitmap tyBitmapUSOut1;
	struct tyUIBitmap tyBitmapUSAComm;
	struct tyUIBitmap tyBitmapUSAComm1;
	struct tyUIBitmap tyBitmapUSBIn;
	struct tyUIBitmap tyBitmapUSBOut;
	struct tyUIBitmap tyBitmapUSBIn1;
	struct tyUIBitmap tyBitmapUSBOut1;
	struct tyUIBitmap tyBitmapUSBComm;
	struct tyUIBitmap tyBitmapUSBComm1;
} tyLyrP0003MMenuGen;

typedef struct tyOptBtn
{	struct tyUIBtn tyBtnAuto;
	struct tyUIBtn tyBtnStop;
	struct tyUIBtn tyBtnBuz;
	struct tyUIBtn tyBtnReset;
	struct tyUIBtn tyBtnMnlUnload;
	struct tyUIBtn tyBtnRlsNewMag1;
	struct tyUIBtn tyBtnRlsNewMag2;
	struct tyUIBtn tyBtnRlsNewMag3;
	struct tyUIBtn tyBtnAccDat;
	struct tyUIBtn tyBtn5;
	struct tyUIBtn tyBtn6;
	struct tyUIBtn tyBtn7;
	struct tyUIBtn tyBtnHide;
	struct tyUIBtn tyBtnRlsNewMagBk1;
	struct tyUIBtn tyBtnRlsNewMagBk2;
	struct tyUIBtn tyBtnRlsNewMagBk3;
} tyOptBtn;

typedef struct tyUIP0003MMenu
{	struct tyLyrP0003MMenuGen tyMMenuGen;
	struct tyOptBtn tyMMenuBtn;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	struct tyLyrC0008MsgBox tyMsgBoxResumeAsk;
} tyUIP0003MMenu;

typedef struct tyUIP0100Login
{	struct tyLyrP0100Login tyLogin;
	struct tyLyrP0100Logout tyLogout;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxPwMismatch;
	struct tyLyrC0008MsgBox tyMsgBoxNmNotExist;
} tyUIP0100Login;

typedef struct tyUIP0200OpsGen
{	struct tyLyrP0200OpsGen tyOps;
	struct tyLyrP0200OpsOven tyOven;
	struct tyLyrP0200OpsUSCommB tyUSCommB;
	struct tyLyrP0200OpsUSAVSMEMA tyUSAVSMEMA;
	struct tyLyrP0200OpsUSBVSMEMA tyUSBVSMEMA;
	struct tyLyrP0200OpsUSAVSMEMA tyUSAVSMEMA1;
	struct tyLyrP0200OpsUSBVSMEMA tyUSBVSMEMA1;
	struct tyLyrP0200OpsBypsInitConv tyBypsInitConv;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxRcpSelMsg;
	struct tyLyrC0010RcyMsg tyRcyMsgHide;
	struct tyLyrC0010RcyMsg tyRcyMsg;
} tyUIP0200OpsGen;

typedef struct tyUIP0201OpsTravLifter
{	struct tyLyrP0201OpsTravLif tyOps;
	struct tyLyrP0201OpsTravLifIOMonitor tyIOMonitor;
	struct tyLyrP0201OpsTravLifIOMonitor1 tyIOMonitor1;
	struct tyLyrP0201OpsTravLifBypsInitConv tyBypsInitConv;
	struct tyLyrP0201OpsParam tyParam;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
	struct tyLyrC0008MsgBox tyMsgBoxAskDelete;
} tyUIP0201OpsTravLifter;

typedef struct tyUIP0202OpsMag1
{	struct tyLyrP0202Ops tyOps;
	struct tyLyrP0202IOMonitor tyIOMonitor;
	struct tyLyrP0202BypsInitConv tyBypsInitConv;
	struct tyLyrP0202OpsParam tyParam;
	struct tyLyrP0202OpsChgMagL1 tyChgMag;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	struct tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0202OpsMag1;

typedef struct tyUIP0203OpsMag2
{	struct tyLyrP0203Ops tyOps;
	struct tyLyrP0203IOMonitor tyIOMonitor;
	struct tyLyrP0203BypsInitConv tyBypsInitConv;
	struct tyLyrP0203OpsParam tyParam;
	struct tyLyrP0203OpsChgMagL2 tyChgMag;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	struct tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0203OpsMag2;

typedef struct tyUIP0204OpsMag3
{	struct tyLyrP0204Ops tyOps;
	struct tyLyrP0204IOMonitor tyIOMonitor;
	struct tyLyrP0204BypsInitConv tyBypsInitConv;
	struct tyLyrP0204OpsParam tyParam;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	struct tyLyrC0008MsgBox tyMsgBoxResumeAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfoHide;
	struct tyLyrE0001OpsQueryBoardInfo tyQueryBoardInfo;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfoHide;
	struct tyLyrE0002OpsCurrWorkOrder tyCurrWorkOrderInfo;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfoHide;
	struct tyLyrE0003OpsQueryWorkOrder tyQueryWorkOrderInfo;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScannerHide;
	struct tyLyrE0004OpsBarcodeScanner tyBarcodeScanner;
} tyUIP0204OpsMag3;

typedef struct tyUIP0205OpsAIV
{	struct tyLyrP0205IOMonitor tyIOMonitor;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0205OpsAIV;

typedef struct tyUIP0206OpsMagConv1
{	struct tyLyrP0206OpsMagConv1 tyOps;
	struct tyLyrP0206OpsMagConvIOMonitor1 tyIOMonitor;
	struct tyLyrP0206OpsMagConvBypsInit1 tyBypsInitConv;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0206OpsMagConv1;

typedef struct tyUIP0207OpsMagConv2
{	struct tyLyrP0207OpsMagConv2 tyOps;
	struct tyLyrP0207OpsMagConvIOMonitor2 tyIOMonitor;
	struct tyLyrP0207OpsMagConvBypsInit2 tyBypsInitConv;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrC0004Navi tyNaviHide;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0207OpsMagConv2;

typedef struct tyUIP0300McInfo
{	struct tyLyrP0300McInfo tyMcInfo;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0300McInfo;

typedef struct tyUIP0400ProdSel
{	struct tyLyrP0400ProdSel tyProdSel;
	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrP0400RcpDet tyRcpDet;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxListErr;
	struct tyLyrC0008MsgBox tyMsgBoxRcpParamErr;
	struct tyLyrC0008MsgBox tyMsgBoxLoadErr;
	struct tyLyrC0008MsgBox tyMsgBoxSelRcpAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSelRcpNoNm;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxGoToLFCtrlAsk;
} tyUIP0400ProdSel;

typedef struct tyUIP0410MagSel
{	struct tyLyrP0410MagSel tyMagSel;
	struct tyLyrP0410MagDet tyMagDet;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxListErr;
	struct tyLyrC0008MsgBox tyMsgBoxRcpParamErr;
	struct tyLyrC0008MsgBox tyMsgBoxLoadErr;
	struct tyLyrC0008MsgBox tyMsgBoxSelRcpAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSelRcpNoNm;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0410MagSel;

typedef struct tyUIP0600Alm
{	struct tyLyrP0600Alm tyAlm;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0010RcyMsg tyRcyMsg;
	struct tyLyrC0010RcyMsg tyRcyMsgHide;
	struct tyUIBtn tyBtnCurr;
	struct tyUIBtn tyBtnHistory;
	struct tyUIAlarm tyAlarm;
} tyUIP0600Alm;

typedef struct tyUIP0700LFCtrl
{	struct tyLyrP0700LFCtrl tyLdr;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxChgAllAsk;
	struct tyLyrC0008MsgBox tyMsgBoxChgSeqAutoAsk;
	struct tyLyrC0008MsgBox tyMsgBoxChgSeqMnlAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSyncPLCTmAsk;
	struct tyLyrC0008MsgBox tyMsgBoxTerminateOpsAsk;
	struct tyLyrC0008MsgBox tyMsgBoxErrorAsk;
} tyUIP0700LFCtrl;

typedef struct tyUIP0800MagInfo
{	struct tyLyrP0800MagInfo1 tyMagInfo1;
	struct tyLyrP0800MagInfo2 tyMagInfo2;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0800MagInfo;

typedef struct tyUIP0850OvenInfo
{	struct tyLyrP0850OvenCom tyCom;
	struct tyLyrP0850OvenStdSingle tyStdA;
	struct tyLyrP0850OvenStdSingle tyStdB;
	struct tyLyrP0850OvenStdDual tyStdAB;
	struct tyLyrP0850OvenExtddSingle tyExtddA;
	struct tyLyrP0850OvenExtddSingle tyExtddB;
	struct tyLyrP0850OvenExtddDualSeparate tyExtddABSeparate;
	struct tyLyrP0850OvenExtddDualMix tyExtddABMix;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0850OvenInfo;

typedef struct tyUIP0900GenIn
{	struct tyLyrP0900GenIn1 tyGenIn1;
	struct tyLyrP0900GenIn2 tyGenIn2;
	struct tyLyrP0900GenIn3 tyGenIn3;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0900GenIn;

typedef struct tyUIP0910GenOut
{	struct tyLyrP0910GenOut tyGenOut;
	struct tyLyrP0910GenOutCurtainSen tyGenOutCurtainSen;
	struct tyLyrP0910GenOutOven tyOven;
	struct tyLyrP0910MagAW tyMagAW;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0910GenOut;

typedef struct tyUIP0920MtrNPneuCtrl
{	struct tyLyrP0920MtrNPneuCtrl tyMtrNPneuCtrl;
	struct tyLyrP0920MtrNPneuCtrlPneu tyMtrNPneuCtrlPneu;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0920MtrNPneuCtrl;

typedef struct tyUIP0921InletNOutletShutter
{	struct tyLyrP0921InletShutterCom tyInletShutterCom;
	struct tyLyrP0921InletShutterDC tyInletShutterDC;
	struct tyLyrP0921InletShutterFB tyInletShutterFB;
	struct tyLyrP0921InletShutterDis tyInletShutterDis;
	struct tyLyrP0921OutletShutterCom tyOutletShutterCom;
	struct tyLyrP0921OutletShutterDC tyOutletShutterDC;
	struct tyLyrP0921OutletShutterFB tyOutletShutterFB;
	struct tyLyrP0921OutletShutterCom tyOutletShutterCom3;
	struct tyLyrP0921OutletShutterDC tyOutletShutterDC3;
	struct tyLyrP0921OutletShutterFB tyOutletShutterFB3;
	struct tyLyrP0921InletShutterCom tyOutletShutterCom2;
	struct tyLyrP0921InletShutterDC tyOutletShutterDC2;
	struct tyLyrP0921InletShutterFB tyOutletShutterFB2;
	struct tyLyrP0921InletShutterDis tyOutletShutterDis2;
	struct tyLyrC0003DualMask tyDualMaskHide;
	struct tyLyrC0003DualMask tyDualMaskEStop;
	struct tyLyrC0003DualMask tyDualMaskCWSig;
	struct tyLyrC0003DualMask tyDualMaskSafetyRly;
	struct tyLyrC0003DualMask tyDualMaskPshrInterruptInOutlet;
	struct tyLyrC0003DualMask tyDualMaskPshrInterruptOutlet;
	struct tyLyrC0003DualMask tyDualMaskLifMovInterrupt;
	struct tyLyrC0003DualMask tyDualMaskTravMovInterrupt;
	struct tyLyrC0003DualMask tyDualMaskAWMovInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0004Navi tyNaviLyr1;
	struct tyLyrC0004Navi tyNaviLyr2;
} tyUIP0921InletNOutletShutter;

typedef struct tyUIP0922Stopper
{	struct tyLyrP0922InStopperCom tyInStopperCom;
	struct tyLyrP0922InStopperDC tyInStopperDC;
	struct tyLyrP0922InStopperFB tyInStopperFB;
	struct tyLyrP0922InStopperDis tyInStopperDis;
	struct tyLyrP0922StopperACom tyStopperACom;
	struct tyLyrP0922StopperADC tyStopperADC;
	struct tyLyrP0922StopperAFB tyStopperAFB;
	struct tyLyrP0922StopperADis tyStopperADis;
	struct tyLyrP0922StopperBCom tyStopperBCom;
	struct tyLyrP0922StopperBDC tyStopperBDC;
	struct tyLyrP0922StopperBFB tyStopperBFB;
	struct tyLyrP0922StopperBDis tyStopperBDis;
	struct tyLyrC0003DualMask tyDualMaskHide;
	struct tyLyrC0003DualMask tyDualMaskEStop;
	struct tyLyrC0003DualMask tyDualMaskCWSig;
	struct tyLyrC0003DualMask tyDualMaskSafetyRly;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0922Stopper;

typedef struct tyUIP0923SafetyBar
{	struct tyLyrP0923RgtSafetyBarCom tyRgtSafetyBarComHide;
	struct tyLyrP0923RgtSafetyBarDC tyRgtSafetyBarDCHide;
	struct tyLyrP0923RgtSafetyBarFB tyRgtSafetyBarFBHide;
	struct tyLyrP0923LftSafetyBarCom tyMag1SafetyBarCom;
	struct tyLyrP0923LftSafetyBarDC tyMag1SafetyBarDC;
	struct tyLyrP0923LftSafetyBarFB tyMag1SafetyBarFB;
	struct tyLyrP0923RgtSafetyBarCom tyMag2SafetyBarCom;
	struct tyLyrP0923RgtSafetyBarDC tyMag2SafetyBarDC;
	struct tyLyrP0923RgtSafetyBarFB tyMag2SafetyBarFB;
	struct tyLyrP0923LftSafetyBarCom tyMag3SafetyBarCom;
	struct tyLyrP0923LftSafetyBarDC tyMag3SafetyBarDC;
	struct tyLyrP0923LftSafetyBarFB tyMag3SafetyBarFB;
	struct tyLyrC0003DualMask tyDualMaskHide;
	struct tyLyrC0003DualMask tyDualMaskEStop;
	struct tyLyrC0003DualMask tyDualMaskCWSig;
	struct tyLyrC0003DualMask tyDualMaskSafetyRly;
	struct tyLyrC0003DualMask tyDualMaskPshrInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNaviLyr1;
	struct tyLyrC0004Navi tyNaviLyr2;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0923SafetyBar;

typedef struct tyUIP0926LifterMagConv
{	struct tyLyrP0926LifterMagConvCom tyCom;
	struct tyLyrP0926LifterMagConvFB tyFB;
	struct tyLyrP0926LifterMagConvDC tyDC;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0926LifterMagConv;

typedef struct tyUIP0927LifterMagConv2
{	struct tyLyrP0927LifterMagConvCom tyCom;
	struct tyLyrP0927LifterMagConvFB tyFB;
	struct tyLyrP0927LifterMagConvDC tyDC;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0927LifterMagConv2;

typedef struct tyUIP0928MagConv
{	struct tyLyrP0928MagConvCom tyCom;
	struct tyLyrP0928MagConvBtmDC tyBtmDC;
	struct tyLyrP0928MagConvTopDC tyTopDC;
	struct tyLyrP0928MagConvBtmFB tyBtmFB;
	struct tyLyrP0928MagConvTopFB tyTopFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNavi2Lyr;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0928MagConv;

typedef struct tyUIP0929MagConv2
{	struct tyLyrP0929MagConv2Com tyCom;
	struct tyLyrP0929MagConv2BtmDC tyBtmDC;
	struct tyLyrP0929MagConv2TopDC tyTopDC;
	struct tyLyrP0929MagConv2BtmFB tyBtmFB;
	struct tyLyrP0929MagConv2TopFB tyTopFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNavi2Lyr;
	struct tyLyrC0004Navi tyNavi3Lyr;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0929MagConv2;

typedef struct tyUIP0930MagConv1
{	struct tyLyrP0930Mag1ConvCom tyCom;
	struct tyLyrP0930Mag1ConvDC tyDC;
	struct tyLyrP0930Mag1ConvFB tyFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNavi2Lyr1;
	struct tyLyrC0004Navi tyNavi3Lyr1;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0930MagConv1;

typedef struct tyUIP0931MagConv2
{	struct tyLyrP0931Mag2ConvCom tyCom;
	struct tyLyrP0931Mag2ConvDC tyDC;
	struct tyLyrP0931Mag2ConvFB tyFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNavi2Lyr2;
	struct tyLyrC0004Navi tyNavi3Lyr2;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0931MagConv2;

typedef struct tyUIP0932MagConv3
{	struct tyLyrP0932Mag3ConvCom tyCom;
	struct tyLyrP0932Mag3ConvDC tyDC;
	struct tyLyrP0932Mag3ConvFB tyFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNavi3Lyr3;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0932MagConv3;

typedef struct tyUIP0933PushConv
{	struct tyLyrP0933PushConvCom tyCom;
	struct tyLyrP0933PushConvDC tyDC;
	struct tyLyrP0933PushConvFB tyFB;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskOutShutterInterrupt;
	struct tyLyrC0002FullMask tyFullMaskAWConvInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0933PushConv;

typedef struct tyUIP0934AW
{	struct tyLyrP0934AW tyAW;
	struct tyLyrC0001MotionStdAW tyMotionStd;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskMidSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskRgtSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0934AW;

typedef struct tyUIP0935Lifter
{	struct tyLyrP0935Lifter tyLifter;
	struct tyLyrC0001MotionStdLifter tyMotionStd;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	struct tyLyrC0002FullMask tyFullMaskPshrNotRetInterrupt;
	struct tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	struct tyLyrC0002FullMask tyFullMaskTimingBelt;
	struct tyLyrC0002FullMask tyFullMaskMagClmpInt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0935Lifter;

typedef struct tyUIP0936Trav
{	struct tyLyrP0936Trav tyTrav;
	struct tyLyrC0001MotionStdTrav tyMotionStd;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	struct tyLyrC0002FullMask tyFullMaskPshrNotRetInterrupt;
	struct tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0936Trav;

typedef struct tyUIP0937AWPushOrPuller
{	struct tyLyrP0937AWPushOrPuller tyAW;
	struct tyLyrC0001MotionStdAW tyMotionStd;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskRgtSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0937AWPushOrPuller;

typedef struct tyUIP0938MagAW
{	struct tyLyrP0938MagAW tyMagAW1;
	struct tyLyrC0001MotionStdMagAW tyMotionStd1;
	struct tyLyrP0938MagAW tyMagAW2;
	struct tyLyrC0001MotionStdMagAW tyMotionStd2;
	struct tyLyrP0938MagAW tyMagAW3;
	struct tyLyrC0001MotionStdMagAW tyMotionStd3;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskMag1NotMty;
	struct tyLyrC0002FullMask tyFullMaskMag2NotMty;
	struct tyLyrC0002FullMask tyFullMaskMag3NotMty;
	struct tyLyrC0004Navi tyNavi2Lyr1;
	struct tyLyrC0004Navi tyNavi2Lyr2;
	struct tyLyrC0004Navi tyNavi3Lyr1;
	struct tyLyrC0004Navi tyNavi3Lyr2;
	struct tyLyrC0004Navi tyNavi3Lyr3;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0938MagAW;

typedef struct tyUIP0939Lifter2
{	struct tyLyrP0935Lifter tyLifter;
	struct tyLyrC0001MotionStdLifter tyMotionStd;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	struct tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	struct tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	struct tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	struct tyLyrC0002FullMask tyFullMaskTimingBelt;
	struct tyLyrC0002FullMask tyFullMaskMagClmpInt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0939Lifter2;

typedef struct tyUIP0940CommCtrl
{	struct tyLyrP0940CommCtrlUSSMEMA tyUSSMEMAA;
	struct tyLyrP0940CommCtrlUSSMEMA tyUSSMEMAB;
	struct tyLyrP0940SOTComm tySOT;
	struct tyLyrP0940DMCRFIDComm tyDMCRFID;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0940CommCtrl;

typedef struct tyUIP0950Simu
{	struct tyLyrP0950Simu tySimu;
	struct tyLyrP0950SimuCycleTim tySimuBffrCycleTm;
	struct tyLyrP0950SimuAGVToMC tyAGVToMc;
	struct tyLyrP0950SimuMCToAGV tyMcToAGV;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0950Simu;

typedef struct tyUIP1000Lang
{	struct tyLyrP1000Lang tyLang;
	struct tyLyrP1000Lang tyLangBkUp;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1000Lang;

typedef struct tyUIP1020McSetNavi
{	struct tyLyrP1020McSetNavi tyNavi;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP1020McSetNavi;

typedef struct tyUIP1021McSetGen
{	struct tyLyrP1021McSetGen tyGen;
	struct tyLyrP1021McSetGen tyGenBkUp;
	struct tyLyrP1021McSetNetwork tyNetwork;
	struct tyLyrC0004Navi tyNaviLyr1;
	struct tyLyrC0004Navi tyNaviLyr2;
	struct tyLyrC0004Navi tyNaviLyr3;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtSubnetAsk;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtSubnetErr;
	struct tyLyrC0008MsgBox tyMsgBoxSubnetInvalid;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtIPAddrAsk;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtIPAddrErr;
	struct tyLyrC0008MsgBox tyMsgBoxChgNetworkAsk;
	struct tyLyrC0008MsgBox tyMsgBoxIPAddrInvalidEdit;
	struct tyLyrC0008MsgBox tyMsgBoxSubnetInvalidEdit;
	struct tyLyrC0008MsgBox tyMsgBoxGetIPAddrErr;
	struct tyLyrC0008MsgBox tyMsgBoxGetSubnetErr;
	struct tyLyrC0008MsgBox tyMsgBoxSetDHCPError;
	struct tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
	struct tyLyrC0008MsgBox tyMsgBoxBtnPosDuplicate;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtHMIIPAddrAsk;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtHMIIPAddrErr;
	struct tyLyrC0008MsgBox tyMsgBoxHMIIPAddrInvalid;
	struct tyLyrC0008MsgBox tyMsgBoxHMIIPAddrInvalidEdit;
	struct tyLyrC0008MsgBox tyMsgBoxGetHMIIPAddrErr;
	struct tyLyrC0008MsgBox tyMsgBoxSetDefaultGWErr;
} tyUIP1021McSetGen;

typedef struct tyUIP1022McSetVComm
{	struct tyLyrP1022McSetVCommSel tyVComSel;
	struct tyLyrP1022McSetVCommLF tyLF;
	struct tyLyrP1022McSetVCommSel tyVComSelBkUp;
	struct tyLyrP1022McSetVCommLF tyLFBkUp;
	struct tyLyrC0004Navi tyNaviLyr1;
	struct tyLyrC0004Navi tyNaviLyr2;
	struct tyLyrC0004Navi tyNaviLyr3;
	struct tyLyrC0004Navi tyNaviLyr4;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrP1022McSetVCommSvy tyVComSvy;
	struct tyLyrP1022McSetVCommSvy tyVComSvyBkUp;
} tyUIP1022McSetVComm;

typedef struct tyUIP1023McSetHComm
{	struct tyLyrP1023McSetHCommSel tyUSSelA;
	struct tyLyrP1023McSetHCommSMEMA tyUSSMEMAA;
	struct tyLyrP1023McSetHCommUSHermes tyUSHermesA;
	struct tyLyrP1023McSetHCommSel tyUSSelB;
	struct tyLyrP1023McSetHCommSMEMA tyUSSMEMAB;
	struct tyLyrP1023McSetHCommUSHermes tyUSHermesB;
	struct tyLyrP1023McSetHCommSel tyUSSelABkUp;
	struct tyLyrP1023McSetHCommSMEMA tyUSSMEMAABkUp;
	struct tyLyrP1023McSetHCommUSHermes tyUSHermesABkUp;
	struct tyLyrP1023McSetHCommSel tyUSSelBBkUp;
	struct tyLyrP1023McSetHCommSMEMA tyUSSMEMABBkUp;
	struct tyLyrP1023McSetHCommUSHermes tyUSHermesBBkUp;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0004Navi tyNaviLyr1;
	struct tyLyrC0004Navi tyNaviLyr2;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
} tyUIP1023McSetHComm;

typedef struct tyUIP1024McSetAntiGap
{	struct tyLyrP1024McSetAntiGap tyAntiGap;
	struct tyLyrP1024McSetAntiGap tyAntiGapBkUp;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1024McSetAntiGap;

typedef struct tyUIP1025McSetScan
{	struct tyLyrP1025McSetScan tyScan;
	struct tyLyrP1025McSetScan tyScanBkUp;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1025McSetScan;

typedef struct tyUIP1026McSetTeach
{	struct tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
	struct tyLyrP1026McSetTeach tyTeachLifterTopPos;
	struct tyLyrP1026McSetTeach tyTeachLifterBtmPos;
	struct tyLyrP1026McSetTeach tyTeachLifterTopPos2;
	struct tyLyrP1026McSetTeach tyTeachLifterBtmPos2;
	struct tyLyrP1026McSetTeach tyTeachTravPosA;
	struct tyLyrP1026McSetTeach tyTeachTravPosB;
	struct tyLyrP1026McSetTeach tyTeachLifterPosA;
	struct tyLyrP1026McSetTeach tyTeachLifterPosB;
	struct tyLyrC0001MotionStdTrav tyMotionStdTrav;
	struct tyLyrC0001MotionStdLifter tyMotionStdLifter;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	struct tyLyrC0002FullMask tyFullMaskTimingBelt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtTravPosA;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtTravPosB;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterPosA;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterPosB;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterTopPos;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterBtmPos;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterTopPos2;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterBtmPos2;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1026McSetTeach;

typedef struct tyUIP1027McOpCon
{	struct tyLyrP1027McSetOpCon tyParam;
	struct tyLyrP1027McSetOpCon tyParamBkUp;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1027McOpCon;

typedef struct tyUIP1030MagSet
{	struct tyLyrP1030MagSet tyMagSet;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxListFull;
	struct tyLyrC0008MsgBox tyMsgBoxListErr;
	struct tyLyrC0008MsgBox tyMsgBoxSaveNoNm;
	struct tyLyrC0008MsgBox tyMsgBoxReloadCurrRcp;
	struct tyLyrC0008MsgBox tyMsgBoxDelCurrRcpAsk;
	struct tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	struct tyLyrC0008MsgBox tyMsgBoxDelNmEmpty;
	struct tyLyrC0008MsgBox tyMsgBoxDelErr;
	struct tyLyrC0008MsgBox tyMsgBoxDelAsk;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1030MagSet;

typedef struct tyUIP1031MagSetTeach
{	struct tyLyrP1031InOutletShutterFB tyInOutletShutterFB;
	struct tyLyrP1031MagSetTeach tyTeachLifterMag1Slt1Pos;
	struct tyLyrP1031MagSetTeach tyTeachLifterMag2Slt1Pos;
	struct tyLyrP1031MagSetTeach tyTeachLifterMag3Slt1Pos;
	struct tyLyrP1031MagSetTeach tyTeachTravPosMag1;
	struct tyLyrP1031MagSetTeach tyTeachTravPosMag2;
	struct tyLyrP1031MagSetTeach tyTeachTravPosMag3;
	struct tyLyrC0001MotionStdTrav tyMotionStdTrav;
	struct tyLyrC0001MotionStdLifter tyMotionStdLifter;
	struct tyLyrC0002FullMask tyFullMaskHide;
	struct tyLyrC0002FullMask tyFullMaskEStop;
	struct tyLyrC0002FullMask tyFullMaskCWSig;
	struct tyLyrC0002FullMask tyFullMaskSafetyRly;
	struct tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	struct tyLyrC0002FullMask tyFullMaskTimingBelt;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag1Slt1Pos;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag2Slt1Pos;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag3Slt1Pos;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag1;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag2;
	struct tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag3;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1031MagSetTeach;

typedef struct tyUIP1040ProdSet
{	struct tyLyrC0011RcpPopUp tyRcpPopUp;
	struct tyLyrP1040ProdSet tyProdSet;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxSaveAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxListFull;
	struct tyLyrC0008MsgBox tyMsgBoxListErr;
	struct tyLyrC0008MsgBox tyMsgBoxSaveNoNm;
	struct tyLyrC0008MsgBox tyMsgBoxReloadCurrRcp;
	struct tyLyrC0008MsgBox tyMsgBoxDelCurrRcpAsk;
	struct tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	struct tyLyrC0008MsgBox tyMsgBoxDelNmEmpty;
	struct tyLyrC0008MsgBox tyMsgBoxDelErr;
	struct tyLyrC0008MsgBox tyMsgBoxDelAsk;
	struct tyLyrC0008MsgBox tyMsgBoxToXMLAsk;
	struct tyLyrC0008MsgBox tyMsgBoxToXMLErr;
	struct tyLyrC0008MsgBox tyMsgBoxFromXMLAsk;
	struct tyLyrC0008MsgBox tyMsgBoxFromXMLErr;
	struct tyLyrC0008MsgBox tyMsgBoxSaveListErr;
} tyUIP1040ProdSet;

typedef struct tyUIP1050LFSet
{	struct tyLyrP1050LFSetLdr tyLdr;
	struct tyLyrP1050LFSetLdr tyLdrBkUp;
	struct tyLyrP1050LFSetLdrEdit tyLdrEdit;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
	struct tyLyrC0008MsgBox tyMsgBoxDelAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
	struct tyLyrC0008MsgBox tyMsgBoxIPAddrDuplicate;
} tyUIP1050LFSet;

typedef struct tyUIP1080UsrMgmt
{	struct tyLyrP1080UsrMgmt tyUsrMgmt;
	struct tyLyrP1080UsrMgmtAct tyActHide;
	struct tyLyrP1080UsrMgmtAct tyCreate;
	struct tyLyrP1080UsrMgmtAct tyEdit;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxAddErr;
	struct tyLyrC0008MsgBox tyMsgBoxEditErr;
	struct tyLyrC0008MsgBox tyMsgBoxAddNmExist;
	struct tyLyrC0008MsgBox tyMsgBoxEditParamErr;
	struct tyLyrC0008MsgBox tyMsgBoxAddParamErr;
	struct tyLyrC0008MsgBox tyMsgBoxListFull;
	struct tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	struct tyLyrC0008MsgBox tyMsgBoxDelParamErr;
	struct tyLyrC0008MsgBox tyMsgBoxDelLastAdminErr;
	struct tyLyrC0008MsgBox tyMsgBoxDelAsk;
	struct tyLyrC0008MsgBox tyMsgBoxDelErr;
} tyUIP1080UsrMgmt;

typedef struct tyUIP1081UsrAccessRgt
{	struct tyLyrP1081UsrMgmtUsrAccessRgtSel tyUsrAccessRgtSel;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl1;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl2;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl3;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl1BkUp;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl2BkUp;
	struct tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl3BkUp;
	struct tyLyrC0004Navi tyNaviBack;
	struct tyLyrC0008MsgBox tyMsgBoxHide;
	struct tyLyrC0008MsgBox tyMsgBoxExitAsk;
	struct tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1081UsrAccessRgt;

typedef struct tyUIProperty
{	struct tyVisu tyVisu;
	struct tyKeypad tyKeypad;
	struct tyTxtSnippets tyUITxtSnippets;
} tyUIProperty;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI/Visu_Page.typ\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837633_179_ */

