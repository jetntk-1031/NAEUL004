#ifndef __AS__TYPE_ePage
#define __AS__TYPE_ePage
typedef enum ePage
{	UIP0000SSaver = 0,
	UIP0001Startup = 1,
	UIP0002Menu = 2,
	UIP0003MMenu = 3,
	UIP0100Login = 100,
	UIP0200OpsGen = 200,
	UIP0201OpsTravLifter = 201,
	UIP0202OpsMag1 = 202,
	UIP0203OpsMag2 = 203,
	UIP0204OpsMag3 = 204,
	UIP0205OpsAIV = 205,
	UIP0206OpsMagConv1 = 206,
	UIP0207OpsMagConv2 = 207,
	UIP0300McInfo = 300,
	UIP0400ProdSel = 400,
	UIP0410MagSel = 410,
	UIP0600Alm = 600,
	UIP0700LFCtrl = 700,
	UIP0800MagInfo = 800,
	UIP0850OvenInfo = 850,
	UIP0900GenIn = 900,
	UIP0910GenOut = 910,
	UIP0920MtrNPneuCtrl = 920,
	UIP0921Shutter = 921,
	UIP0922Stopper = 922,
	UIP0923SafetyBar = 923,
	UIP0926LifterConv = 926,
	UIP0927LifterConv2 = 927,
	UIP0928MagConv = 928,
	UIP0929MagConv2 = 929,
	UIP0930MagConv1 = 930,
	UIP0931MagConv2 = 931,
	UIP0932MagConv3 = 932,
	UIP0933PusherConv = 933,
	UIP0934AW = 934,
	UIP0935Lifter = 935,
	UIP0936Trav = 936,
	UIP0937AWPushOrPuller = 937,
	UIP0938MagAW = 938,
	UIP0939Lifter2 = 939,
	UIP0940CommCtrl = 940,
	UIP0950Simu = 950,
	UIP1000Lang = 1000,
	UIP1020McSetNavi = 1020,
	UIP1021McSetGen = 1021,
	UIP1022McSetVComm = 1022,
	UIP1023McSetHComm = 1023,
	UIP1024McSetAntiGap = 1024,
	UIP1025McSetScan = 1025,
	UIP1026McSetTeach = 1026,
	UIP1027McSetOpCon = 1027,
	UIP1030MagSet = 1030,
	UIP1031MagSetTeach = 1031,
	UIP1040ProdSet = 1040,
	UIP1050LFSet = 1050,
	UIP1080UsrMgmt = 1080,
	UIP1081UsrMgmtUsrAccessRgt = 1081,
} ePage;
#endif

#ifndef __AS__TYPE_tyTable
#define __AS__TYPE_tyTable
typedef struct tyTable
{	plcbit bSliderActive;
	plcbit bTableActive;
	plcstring sVisuNm[81];
	unsigned short uiSelectedRow;
	unsigned short uiSelectedRowOld;
	unsigned short uiTablePos;
} tyTable;
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

#ifndef __AS__TYPE_tyLyrC0005Main
#define __AS__TYPE_tyLyrC0005Main
typedef struct tyLyrC0005Main
{	tyUIBtn tyBtnNotification;
	tyUIBtn tyBtnHome;
	tyUIBtn tyBtnStart;
	tyUIBtn tyBtnAlarm;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnStep;
	tyUIBtn tyBtnReset;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnGoMain;
	tyUIBitmap tyBitmapStatBar;
	tyUIHotspot tyHotspotNaviStart;
} tyLyrC0005Main;
#endif

#ifndef __AS__TYPE_tyUILyr
#define __AS__TYPE_tyUILyr
typedef struct tyUILyr
{	unsigned short uiRtStat;
} tyUILyr;
#endif

#ifndef __AS__TYPE_tyLyrC0006Set
#define __AS__TYPE_tyLyrC0006Set
typedef struct tyLyrC0006Set
{	tyUIBtn tyBtnSave;
	tyUILyr tyLyr;
} tyLyrC0006Set;
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

#ifndef __AS__TYPE_tyLyrC0007Notif
#define __AS__TYPE_tyLyrC0007Notif
typedef struct tyLyrC0007Notif
{	tyUITxt tyTxtUsrLv;
	tyUITxt tyTxtLFMc;
	tyUIHotspot tyHotspotClose;
	tyUIString tyStringUsrNm;
	tyUIHotspot tyHotspotShowInfo;
	tyUIBitmap tyBitmapShowInfo;
	tyUILyr tyLyr;
} tyLyrC0007Notif;
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

#ifndef __AS__TYPE_tyLyrC0009Info
#define __AS__TYPE_tyLyrC0009Info
typedef struct tyLyrC0009Info
{	tyUILString tyStringInfo;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrC0009Info;
#endif

#ifndef __AS__TYPE_tyUICom
#define __AS__TYPE_tyUICom
typedef struct tyUICom
{	tyLyrC0005Main tyMain;
	tyLyrC0005Main tyMain1;
	tyLyrC0006Set tySet;
	tyLyrC0007Notif tyNotif;
	tyLyrC0009Info tyInfo;
} tyUICom;
#endif

#ifndef __AS__TYPE_tyLyrP0000SSaver
#define __AS__TYPE_tyLyrP0000SSaver
typedef struct tyLyrP0000SSaver
{	tyUITxt tyTxtMcStat;
	tyUILString tyTxtMcNm;
	tyUIBitmap tyBitmapStat;
} tyLyrP0000SSaver;
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

#ifndef __AS__TYPE_tyUIP0000SSaver
#define __AS__TYPE_tyUIP0000SSaver
typedef struct tyUIP0000SSaver
{	tyLyrP0000SSaver tySSaver;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxLoginAsk;
} tyUIP0000SSaver;
#endif

#ifndef __AS__TYPE_tyUIBarGraph
#define __AS__TYPE_tyUIBarGraph
typedef struct tyUIBarGraph
{	signed short iValue;
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
} tyUIBarGraph;
#endif

#ifndef __AS__TYPE_tyLyrP0001Startup
#define __AS__TYPE_tyLyrP0001Startup
typedef struct tyLyrP0001Startup
{	tyUIBarGraph tyBarGraphStartup;
	tyUITxt tyTxtStartupStat;
} tyLyrP0001Startup;
#endif

#ifndef __AS__TYPE_tyLyrP0001Initial
#define __AS__TYPE_tyLyrP0001Initial
typedef struct tyLyrP0001Initial
{	tyUILyr tyLyr;
} tyLyrP0001Initial;
#endif

#ifndef __AS__TYPE_tyUIP0001Startup
#define __AS__TYPE_tyUIP0001Startup
typedef struct tyUIP0001Startup
{	tyLyrP0001Startup tyStartup;
	tyLyrP0001Initial tyInitial;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxIPConfig;
} tyUIP0001Startup;
#endif

#ifndef __AS__TYPE_tyLyrP0002Menu
#define __AS__TYPE_tyLyrP0002Menu
typedef struct tyLyrP0002Menu
{	tyUIBtn tyBtnAlm;
	tyUIBtn tyBtnCommCtrl;
	tyUIBtn tyBtnGenInput;
	tyUIBtn tyBtnGenOutput;
	tyUIBtn tyBtnLang;
	tyUIBtn tyBtnLFCtrl;
	tyUIBtn tyBtnLFSet;
	tyUIBtn tyBtnLogin;
	tyUIBtn tyBtnMcInfo;
	tyUIBtn tyBtnMcSet;
	tyUIBtn tyBtnMnlRst;
	tyUIBtn tyBtnMovCtrl;
	tyUIBtn tyBtnOpt;
	tyUIBtn tyBtnProdSel;
	tyUIBtn tyBtnProdSet;
	tyUIBtn tyBtnMagInfo;
	tyUIBtn tyBtnMagSet;
	tyUIBtn tyBtnMagSel;
	tyUIBtn tyBtnSimu;
	tyUIBtn tyBtnUsrMgmt;
	tyUIBtn tyBtnOvenInfo;
	tyUIBitmap tyBitmapMaskProdSetLCS;
	tyUIHotspot tyHotspotProdSel;
	tyUIHotspot tyHotspotMagSel;
	tyUIBitmap tyBitmapGen;
	tyUIBitmap tyBitmapSet;
	tyUIBtn tyBtnHotspotActSimu;
} tyLyrP0002Menu;
#endif

#ifndef __AS__TYPE_tyUIP0002Menu
#define __AS__TYPE_tyUIP0002Menu
typedef struct tyUIP0002Menu
{	tyLyrP0002Menu tyMenu;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxRemoveMag;
} tyUIP0002Menu;
#endif

#ifndef __AS__TYPE_tyLyrP0003MMenuGen
#define __AS__TYPE_tyLyrP0003MMenuGen
typedef struct tyLyrP0003MMenuGen
{	tyUITxt tyStatusTxt;
	tyUIString tyStringProdNm;
	tyUIBitmap tyBitmapUSIn;
	tyUIBitmap tyBitmapUSOut;
	tyUIBitmap tyBitmapUSIn1;
	tyUIBitmap tyBitmapUSOut1;
	tyUIBitmap tyBitmapUSAComm;
	tyUIBitmap tyBitmapUSAComm1;
	tyUIBitmap tyBitmapUSBIn;
	tyUIBitmap tyBitmapUSBOut;
	tyUIBitmap tyBitmapUSBIn1;
	tyUIBitmap tyBitmapUSBOut1;
	tyUIBitmap tyBitmapUSBComm;
	tyUIBitmap tyBitmapUSBComm1;
} tyLyrP0003MMenuGen;
#endif

#ifndef __AS__TYPE_tyOptBtn
#define __AS__TYPE_tyOptBtn
typedef struct tyOptBtn
{	tyUIBtn tyBtnAuto;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnBuz;
	tyUIBtn tyBtnReset;
	tyUIBtn tyBtnMnlUnload;
	tyUIBtn tyBtnRlsNewMag1;
	tyUIBtn tyBtnRlsNewMag2;
	tyUIBtn tyBtnRlsNewMag3;
	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtn5;
	tyUIBtn tyBtn6;
	tyUIBtn tyBtn7;
	tyUIBtn tyBtnHide;
	tyUIBtn tyBtnRlsNewMagBk1;
	tyUIBtn tyBtnRlsNewMagBk2;
	tyUIBtn tyBtnRlsNewMagBk3;
} tyOptBtn;
#endif

#ifndef __AS__TYPE_tyUIP0003MMenu
#define __AS__TYPE_tyUIP0003MMenu
typedef struct tyUIP0003MMenu
{	tyLyrP0003MMenuGen tyMMenuGen;
	tyOptBtn tyMMenuBtn;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUnloadAsk;
	tyLyrC0008MsgBox tyMsgBoxResumeAsk;
} tyUIP0003MMenu;
#endif

#ifndef __AS__TYPE_tyLyrP0100Login
#define __AS__TYPE_tyLyrP0100Login
typedef struct tyLyrP0100Login
{	tyUIString tyStringUsrNm;
	tyUIString tyStringPw;
	tyUIBtn tyBtnLogin;
	tyUIHotspot tyHotspotBypassLogin;
	tyUILyr tyLyr;
} tyLyrP0100Login;
#endif

#ifndef __AS__TYPE_tyLyrP0100Logout
#define __AS__TYPE_tyLyrP0100Logout
typedef struct tyLyrP0100Logout
{	tyUIBtn tyBtnLogout;
	tyUILyr tyLyr;
} tyLyrP0100Logout;
#endif

#ifndef __AS__TYPE_tyUIP0100Login
#define __AS__TYPE_tyUIP0100Login
typedef struct tyUIP0100Login
{	tyLyrP0100Login tyLogin;
	tyLyrP0100Logout tyLogout;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxPwMismatch;
	tyLyrC0008MsgBox tyMsgBoxNmNotExist;
} tyUIP0100Login;
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

#ifndef __AS__TYPE_tyLyrP0200OpsGen
#define __AS__TYPE_tyLyrP0200OpsGen
typedef struct tyLyrP0200OpsGen
{	tyUIBtn tyBtnAccDat;
	tyUIBitmap tyBitmapAccDat;
	tyUIHotspot tyHotspotOpsTravLifter;
	tyUIHotspot tyHotspotOpsTravRToL;
	tyUIHotspot tyHotspotOps2Mag1;
	tyUIHotspot tyHotspotOps2Mag1RToL;
	tyUIHotspot tyHotspotOps2Mag2;
	tyUIHotspot tyHotspotOps2Mag2RToL;
	tyUIHotspot tyHotspotOps3Mag1;
	tyUIHotspot tyHotspotOps3Mag1RToL;
	tyUIHotspot tyHotspotOps3Mag2;
	tyUIHotspot tyHotspotOps3Mag2RToL;
	tyUIHotspot tyHotspotOps3Mag3;
	tyUIHotspot tyHotspotOps3Mag3RToL;
	tyUIHotspot tyHotspotOpsAIV;
	tyUIHotspot tyHotspotOpsMagInfo;
	tyUIHotspot tyHotspotOpsMagInfoRToL;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMinSltRangeRToL;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumMaxSltRangeRToL;
	tyUINum tyNumPitch;
	tyUINum tyNumPitchRToL;
	tyUITxt tyTxtMagSlt;
	tyUITxt tyTxtMagSltRToL;
	tyUINum tyNumMag1AvlQty;
	tyUINum tyNumMag1AvlQtyRToL;
	tyUINum tyNumMag2AvlQty;
	tyUINum tyNumMag2AvlQtyRToL;
	tyUINum tyNumMag3AvlQty;
	tyUINum tyNumMag3AvlQtyRToL;
	tyUINum tyNumMag1TtlSlt;
	tyUINum tyNumMag1TtlSltRToL;
	tyUINum tyNumMag2TtlSlt;
	tyUINum tyNumMag2TtlSltRToL;
	tyUINum tyNumMag3TtlSlt;
	tyUINum tyNumMag3TtlSltRToL;
	tyUIHotspot tyHotspotAlm;
	struct tyUILString a_tyStringAlm[6];
	struct tyUIHotspot a_tyHotspotRcyMsg[6];
	tyUIBitmap tyBitmapUSIn;
	tyUIBitmap tyBitmapUSOut;
	tyUIBitmap tyBitmapUSIn1;
	tyUIBitmap tyBitmapUSOut1;
	tyUIBitmap tyBitmapMc;
	tyUIBitmap tyBitmapPCB;
	tyUIBitmap tyBitmapDir1;
	tyUIBitmap tyBitmapDir2;
	tyUITxt tyTxtMag1Slt;
	tyUITxt tyTxtMag1Backslash;
	tyUITxt tyTxtMag2Slt;
	tyUITxt tyTxtMag2Backslash;
	tyUITxt tyTxtMag3Slt;
	tyUITxt tyTxtBackslash3;
	tyUITxt tyTxtLane;
	tyUITxt tyTxtLane1;
	tyUITxt tyTxtMag1SltRToL;
	tyUITxt tyTxtMag1BackslashRToL;
	tyUITxt tyTxtMag2SltRToL;
	tyUITxt tyTxtMag2BackslashRToL;
	tyUITxt tyTxtMag3SltRToL;
	tyUITxt tyTxtMag3BackslashRToL;
	tyUITxt tyTxtPitchSltRToL;
	tyUITxt tyTxtMagSltBackslash;
	tyUITxt tyTxtMagSltBackslashRToL;
	tyUITxt tyTxtPitchSlt;
	tyUIBitmap tyBitmapUSAComm;
	tyUIBitmap tyBitmapUSAComm1;
	tyUIHotspot tyHotspotUSAVSMEMA;
	tyUIHotspot tyHotspotUSAVSMEMA1;
	tyUIHotspot tyHotspotOvenGroup;
	tyUIHotspot tyHotspotOvenGroupRL;
	tyUIBitmap tyBitmapAIVTCP;
	tyUIHotspot tyHotspotAIVGroup;
	tyUIHotspot tyHotspotAIVGroup1;
	tyUIHotspot tyHotspotAIVGroup1Mask;
	tyUIHotspot tyHotspotOpsMagLane1;
	tyUIHotspot tyHotspotOpsMagLane2;
} tyLyrP0200OpsGen;
#endif

#ifndef __AS__TYPE_tyLyrP0200OpsOven
#define __AS__TYPE_tyLyrP0200OpsOven
typedef struct tyLyrP0200OpsOven
{	tyUIBtn tyBtnOvenA;
	tyUIBtn tyBtnOvenARToL;
	tyUIBtn tyBtnOvenB;
	tyUIBtn tyBtnOvenBRToL;
	tyUIBtn tyBtnCntrA;
	tyUIBtn tyBtnCntrARToL;
	tyUIBtn tyBtnCntrB;
	tyUIBtn tyBtnCntrBRToL;
	tyUIHotspot tyHotspotOven;
	tyUIHotspot tyHotspotOvenRToL;
	tyUITxt tyTxtA;
	tyUITxt tyTxtARToL;
	tyUITxt tyTxtB;
	tyUITxt tyTxtBRToL;
	tyUITxt tyTxtCntr;
	tyUITxt tyTxtCntrRToL;
	tyUILyr tyLyr;
} tyLyrP0200OpsOven;
#endif

#ifndef __AS__TYPE_tyLyrP0200OpsUSCommB
#define __AS__TYPE_tyLyrP0200OpsUSCommB
typedef struct tyLyrP0200OpsUSCommB
{	tyUIBitmap tyBitmapUSIn;
	tyUIBitmap tyBitmapUSOut;
	tyUIBitmap tyBitmapUSIn1;
	tyUIBitmap tyBitmapUSOut1;
	tyUIHotspot tyHotspotUSBVSMEMA;
	tyUIHotspot tyHotspotUSBVSMEMA1;
	tyUIBitmap tyBitmapUSBComm;
	tyUIBitmap tyBitmapUSBComm1;
	tyUITxt tyTxtLane;
	tyUITxt tyTxtLane1;
	tyUILyr tyLyr;
} tyLyrP0200OpsUSCommB;
#endif

#ifndef __AS__TYPE_tyLyrP0200OpsUSAVSMEMA
#define __AS__TYPE_tyLyrP0200OpsUSAVSMEMA
typedef struct tyLyrP0200OpsUSAVSMEMA
{	tyUIBtn tyBtnNom;
	tyUIBtn tyBtnStat;
	tyUIBtn tyBtnDual;
	tyUILyr tyLyr;
} tyLyrP0200OpsUSAVSMEMA;
#endif

#ifndef __AS__TYPE_tyLyrP0200OpsUSBVSMEMA
#define __AS__TYPE_tyLyrP0200OpsUSBVSMEMA
typedef struct tyLyrP0200OpsUSBVSMEMA
{	tyUIBtn tyBtnNom;
	tyUIBtn tyBtnStat;
	tyUIBtn tyBtnDual;
	tyUILyr tyLyr;
} tyLyrP0200OpsUSBVSMEMA;
#endif

#ifndef __AS__TYPE_tyLyrP0200OpsBypsInitConv
#define __AS__TYPE_tyLyrP0200OpsBypsInitConv
typedef struct tyLyrP0200OpsBypsInitConv
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0200OpsBypsInitConv;
#endif

#ifndef __AS__TYPE_tyLyrC0010RcyMsg
#define __AS__TYPE_tyLyrC0010RcyMsg
typedef struct tyLyrC0010RcyMsg
{	tyUILString tyTxtMsg;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrC0010RcyMsg;
#endif

#ifndef __AS__TYPE_tyUIP0200OpsGen
#define __AS__TYPE_tyUIP0200OpsGen
typedef struct tyUIP0200OpsGen
{	tyLyrP0200OpsGen tyOps;
	tyLyrP0200OpsOven tyOven;
	tyLyrP0200OpsUSCommB tyUSCommB;
	tyLyrP0200OpsUSAVSMEMA tyUSAVSMEMA;
	tyLyrP0200OpsUSBVSMEMA tyUSBVSMEMA;
	tyLyrP0200OpsUSAVSMEMA tyUSAVSMEMA1;
	tyLyrP0200OpsUSBVSMEMA tyUSBVSMEMA1;
	tyLyrP0200OpsBypsInitConv tyBypsInitConv;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxRcpSelMsg;
	tyLyrC0010RcyMsg tyRcyMsgHide;
	tyLyrC0010RcyMsg tyRcyMsg;
} tyUIP0200OpsGen;
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

#ifndef __AS__TYPE_tyLyrP0205IOMonitor
#define __AS__TYPE_tyLyrP0205IOMonitor
typedef struct tyLyrP0205IOMonitor
{	tyUIHotspot tyHotspotClose;
	tyUIBitmap tyBitmapMc;
	tyUIBitmap tyBitmapAIVErr1;
	tyUIBitmap tyBitmapAIVErr2;
	tyUIBitmap tyBitmapAIVErr3;
	tyUIBitmap tyBitmapAIVErr4;
	tyUIBitmap tyBitmapAIVRdy1;
	tyUIBitmap tyBitmapAIVRdy2;
	tyUIBitmap tyBitmapAIVRdy3;
	tyUIBitmap tyBitmapAIVRdy4;
	tyUIBitmap tyBitmapAIVAvail1;
	tyUIBitmap tyBitmapAIVAvail2;
	tyUIBitmap tyBitmapAIVAvail3;
	tyUIBitmap tyBitmapAIVAvail4;
	tyUIBitmap tyBitmapAIVSLarge1;
	tyUIBitmap tyBitmapAIVSLarge2;
	tyUIBitmap tyBitmapAIVSLarge3;
	tyUIBitmap tyBitmapAIVSLarge4;
	tyUIBtn tyBtnAIVSotRCVOk1;
	tyUIBtn tyBtnAIVSotRCVOk2;
	tyUIBtn tyBtnAIVSotRCVOk3;
	tyUIBtn tyBtnAIVSotRCVOk4;
	tyUIBtn tyBtnReqAIVToBring1;
	tyUIBtn tyBtnReqAIVToBring2;
	tyUIBtn tyBtnReqAIVToBring3;
	tyUIBtn tyBtnReqAIVToBring4;
	tyUIBtn tyBtnReqAIVToGet1;
	tyUIBtn tyBtnReqAIVToGet2;
	tyUIBtn tyBtnReqAIVToGet3;
	tyUIBtn tyBtnReqAIVToGet4;
	tyUIBitmap tyBitmapMagErr1;
	tyUIBitmap tyBitmapMagErr2;
	tyUIBitmap tyBitmapMagErr3;
	tyUIBitmap tyBitmapMagErr4;
	tyUIBitmap tyBitmapMagRdy1;
	tyUIBitmap tyBitmapMagRdy2;
	tyUIBitmap tyBitmapMagRdy3;
	tyUIBitmap tyBitmapMagRdy4;
	tyUIBitmap tyBitmapMagAvail1;
	tyUIBitmap tyBitmapMagAvail2;
	tyUIBitmap tyBitmapMagAvail3;
	tyUIBitmap tyBitmapMagAvail4;
	tyUIBitmap tyBitmapMagSLarge1;
	tyUIBitmap tyBitmapMagSLarge2;
	tyUIBitmap tyBitmapMagSLarge3;
	tyUIBitmap tyBitmapMagSLarge4;
	tyUIBtn tyBtnMESActive;
	tyUILString tyStringMesName;
	tyUILyr tyTripleMagLyr;
	tyUILyr tyDualMagLyr;
	tyUITxt tyTxtAIVCommProtocol;
	tyUIHotspot tyHotspotGroupError2;
	tyUIHotspot tyHotspotGroupError1;
} tyLyrP0205IOMonitor;
#endif

#ifndef __AS__TYPE_tyUIP0205OpsAIV
#define __AS__TYPE_tyUIP0205OpsAIV
typedef struct tyUIP0205OpsAIV
{	tyLyrP0205IOMonitor tyIOMonitor;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0205OpsAIV;
#endif

#ifndef __AS__TYPE_tyLyrP0206OpsMagConv1
#define __AS__TYPE_tyLyrP0206OpsMagConv1
typedef struct tyLyrP0206OpsMagConv1
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUILString tyStringMcTopStat;
	tyUILString tyStringMcBtmStat;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBitmap tyBitmapPCB;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnAIVWifi;
	tyUIHotspot tyHotspotShowLRcp;
} tyLyrP0206OpsMagConv1;
#endif

#ifndef __AS__TYPE_tyLyrP0206OpsMagConvIOMonitor1
#define __AS__TYPE_tyLyrP0206OpsMagConvIOMonitor1
typedef struct tyLyrP0206OpsMagConvIOMonitor1
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUIBtn tyBtnMidStprExt1;
	tyUIBtn tyBtnMidStprRet1;
	tyUIBtn tyBtnExtStprExt1;
	tyUIBtn tyBtnExtStprRet1;
	tyUIBtn tyBtnTopEntSen;
	tyUIBtn tyBtnTopMidSen;
	tyUIBtn tyBtnTopExtSen;
	tyUIBtn tyBtnBtmEntSen;
	tyUIBtn tyBtnBtmMidSen;
	tyUIBtn tyBtnBtmExtSen;
	tyUILyr tyLyr;
} tyLyrP0206OpsMagConvIOMonitor1;
#endif

#ifndef __AS__TYPE_tyLyrP0206OpsMagConvBypsInit1
#define __AS__TYPE_tyLyrP0206OpsMagConvBypsInit1
typedef struct tyLyrP0206OpsMagConvBypsInit1
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0206OpsMagConvBypsInit1;
#endif

#ifndef __AS__TYPE_tyUIP0206OpsMagConv1
#define __AS__TYPE_tyUIP0206OpsMagConv1
typedef struct tyUIP0206OpsMagConv1
{	tyLyrP0206OpsMagConv1 tyOps;
	tyLyrP0206OpsMagConvIOMonitor1 tyIOMonitor;
	tyLyrP0206OpsMagConvBypsInit1 tyBypsInitConv;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0206OpsMagConv1;
#endif

#ifndef __AS__TYPE_tyLyrP0207OpsMagConv2
#define __AS__TYPE_tyLyrP0207OpsMagConv2
typedef struct tyLyrP0207OpsMagConv2
{	tyUIBtn tyBtnAccDat;
	tyUIBtn tyBtnChgParam;
	tyUIHotspot tyHotspotIOMonitor;
	tyUIBitmap tyBitmapAccDat;
	tyUITxt tyTxtMod;
	tyUINum tyNumWidth;
	tyUINum tyNumWidth2;
	tyUILString tyStringMcTopStat;
	tyUILString tyStringMcBtmStat;
	tyUILString tyStringProdNm;
	tyUINum tyNumMinSltRange;
	tyUINum tyNumMaxSltRange;
	tyUINum tyNumPitch;
	tyUIBtn tyBtnToptoBtm;
	tyUIBitmap tyBitmapPCB;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnAIVWifi;
	tyUIHotspot tyHotspotShowLRcp;
} tyLyrP0207OpsMagConv2;
#endif

#ifndef __AS__TYPE_tyLyrP0207OpsMagConvIOMonitor2
#define __AS__TYPE_tyLyrP0207OpsMagConvIOMonitor2
typedef struct tyLyrP0207OpsMagConvIOMonitor2
{	tyUIHotspot tyHotspotClose;
	tyUIBtn tyBtnSafetyRlySig;
	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSWSig;
	tyUIBtn tyBtnSafetyRlyRst;
	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUIBtn tyBtnMidStprExt1;
	tyUIBtn tyBtnMidStprRet1;
	tyUIBtn tyBtnExtStprExt1;
	tyUIBtn tyBtnExtStprRet1;
	tyUIBtn tyBtnTopEntSen;
	tyUIBtn tyBtnTopMidSen;
	tyUIBtn tyBtnTopExtSen;
	tyUIBtn tyBtnBtmEntSen;
	tyUIBtn tyBtnBtmMidSen;
	tyUIBtn tyBtnBtmExtSen;
	tyUILyr tyLyr;
} tyLyrP0207OpsMagConvIOMonitor2;
#endif

#ifndef __AS__TYPE_tyLyrP0207OpsMagConvBypsInit2
#define __AS__TYPE_tyLyrP0207OpsMagConvBypsInit2
typedef struct tyLyrP0207OpsMagConvBypsInit2
{	tyUIBtn tyBtnBypsInitConv;
	tyUIHotspot tyHotspotClose;
	tyUILyr tyLyr;
} tyLyrP0207OpsMagConvBypsInit2;
#endif

#ifndef __AS__TYPE_tyUIP0207OpsMagConv2
#define __AS__TYPE_tyUIP0207OpsMagConv2
typedef struct tyUIP0207OpsMagConv2
{	tyLyrP0207OpsMagConv2 tyOps;
	tyLyrP0207OpsMagConvIOMonitor2 tyIOMonitor;
	tyLyrP0207OpsMagConvBypsInit2 tyBypsInitConv;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrC0004Navi tyNaviHide;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0207OpsMagConv2;
#endif

#ifndef __AS__TYPE_tyLyrP0300McInfo
#define __AS__TYPE_tyLyrP0300McInfo
typedef struct tyLyrP0300McInfo
{	tyUIString tyStringMcNm;
	tyUIString tyStringJobNo;
	tyUITxt tyTxtNtAddr;
	tyUIString tyStringSoftwareVer;
	tyUILyr tyLyr;
} tyLyrP0300McInfo;
#endif

#ifndef __AS__TYPE_tyUIP0300McInfo
#define __AS__TYPE_tyUIP0300McInfo
typedef struct tyUIP0300McInfo
{	tyLyrP0300McInfo tyMcInfo;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0300McInfo;
#endif

#ifndef __AS__TYPE_tyUISlider
#define __AS__TYPE_tyUISlider
typedef struct tyUISlider
{	plcbit bRtCompl;
	plcbit bRtLk;
	signed short iCurrValue;
	signed short iMaxValue;
	signed short iMinValue;
	signed short iValue;
	unsigned short uiMaskRtStat;
	unsigned short uiRtStat;
	unsigned char usiColor;
} tyUISlider;
#endif

#ifndef __AS__TYPE_tyUITable
#define __AS__TYPE_tyUITable
typedef struct tyUITable
{	struct tyUIHotspot a_tyHotspot[15];
	struct tyUILString a_tyStringDataCol0[15];
	struct tyUILString a_tyStringDataCol1[15];
	struct tyUILString a_tyStringDataCol2[15];
	struct tyUILString a_tyStringDataCol3[15];
	struct tyUILString a_tyStringDataCol4[15];
	tyUISlider tyUISlider;
	tyUIString tyStringTitle0Col0Row0;
	tyUIString tyStringTitle1Col1Row0;
	tyUIString tyStringTitle2Col2Row0;
	tyUIString tyStringTitle3Col3Row0;
	tyUIString tyStringTitle4Col4Row0;
	unsigned short uiMaskRtStat;
} tyUITable;
#endif

#ifndef __AS__TYPE_tyLyrP0400ProdSel
#define __AS__TYPE_tyLyrP0400ProdSel
typedef struct tyLyrP0400ProdSel
{	tyUIHotspot tyHotspotShowLRcp;
	tyUILString tyStringRecipeNm;
	tyUINum tyNumProdWidth;
	tyUINum tyNumProdWidth2;
	tyUINum tyNumMinSlt;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumPitch;
	tyUINum tyNumBrdPerSlt;
	tyUINum tyNumMinReqFreeBffr;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnGapBetBrds;
	tyUIBtn tyBtnLongBrd;
	tyUIBtn tyBtnPreview;
	tyUITable tyTableRecipe;
	tyUILString tyStringSearch;
	tyUIBtn tyBtnLoad;
	tyUITxt tyTxtMcMode;
	tyUITxt tyTxtBrdPerSlt;
	tyUITxt tyTxtMinReqFreeBffr;
	tyUIBtn tyBtnSort;
	tyUINum tyNumMtrPshrExtSpd;
	tyUINum tyNumMtrPshrExtTorq;
	tyUITxt tyTxtMtrPshrExtSpd;
	tyUITxt tyTxtMtrPshrExtTorq;
	tyUITxt tyTxtPshrOffset;
	tyUINum tyNumPshrOffset;
	tyUIBtn tyBtnSafetyBar;
} tyLyrP0400ProdSel;
#endif

#ifndef __AS__TYPE_tyLyrP0400RcpDet
#define __AS__TYPE_tyLyrP0400RcpDet
typedef struct tyLyrP0400RcpDet
{	tyUIHotspot tyHotspotShowLRcp;
	tyUILString tyStringRecipeNm;
	tyUINum tyNumRecipeNum;
	tyUINum tyNumProdWidth;
	tyUINum tyNumProdWidth2;
	tyUINum tyNumFirstSlt;
	tyUINum tyNumLastSlt;
	tyUINum tyNumPitch;
	tyUINum tyNumBrdPerSlt;
	tyUINum tyNumMinReqFreeBffr;
	tyUINum tyNumOvenCap;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnGapBetBrd;
	tyUIBtn tyBtnLongBrd;
	tyUITxt tyTxtMcMode;
	tyUINum tyTxtBrdPerSlt;
	tyUITxt tyTxtMinReqFreeBffr;
	tyUITxt tyTxtOvenCap;
	tyUIHotspot tyHotspotClose;
	tyUINum tyNumMagMaxBrdWidth;
	tyUINum tyNumMtrPshrExtSpd;
	tyUINum tyNumMtrPshrExtTorq;
	tyUITxt tyTxtMtrPshrExtSpd;
	tyUITxt tyTxtMtrPshrExtTorq;
	tyUINum tyNumPshrOffset;
	tyUITxt tyTxtPshrOffset;
	tyUILyr tyLyr;
} tyLyrP0400RcpDet;
#endif

#ifndef __AS__TYPE_tyUIP0400ProdSel
#define __AS__TYPE_tyUIP0400ProdSel
typedef struct tyUIP0400ProdSel
{	tyLyrP0400ProdSel tyProdSel;
	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrP0400RcpDet tyRcpDet;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxListErr;
	tyLyrC0008MsgBox tyMsgBoxRcpParamErr;
	tyLyrC0008MsgBox tyMsgBoxLoadErr;
	tyLyrC0008MsgBox tyMsgBoxSelRcpAsk;
	tyLyrC0008MsgBox tyMsgBoxSelRcpNoNm;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxGoToLFCtrlAsk;
} tyUIP0400ProdSel;
#endif

#ifndef __AS__TYPE_tyLyrP0410MagSel
#define __AS__TYPE_tyLyrP0410MagSel
typedef struct tyLyrP0410MagSel
{	tyUIString tyStringRecipeNm;
	tyUINum tyNumSltToSltDist;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumLifterMag1Slt1Pos;
	tyUINum tyNumLifterMag2Slt1Pos;
	tyUINum tyNumLifterMag3Slt1Pos;
	tyUINum tyNumTravPosMag1;
	tyUINum tyNumTravPosMag2;
	tyUINum tyNumTravPosMag3;
	tyUITxt tyTxtLifMag3Slt1PosLbl;
	tyUITxt tyTxtTravPosMag3Lbl;
	tyUIBtn tyBtnLoad;
	tyUIBtn tyBtnPreview;
	tyUITable tyTableRecipe;
	tyUIDrpDn tyDrpDnMagModel;
	tyUITxt tyTxtMagModel;
	tyUINum tyNumMagMaxBrdWidth;
	tyUIBtn tyBtnSort;
	tyUIBtn tyBtnSafetyBar;
	tyUIBtn tyBtnMagHeightChkEn;
	tyUIBitmap tyBitmapBrder;
} tyLyrP0410MagSel;
#endif

#ifndef __AS__TYPE_tyLyrP0410MagDet
#define __AS__TYPE_tyLyrP0410MagDet
typedef struct tyLyrP0410MagDet
{	tyUIString tyStringRecipeNm;
	tyUINum tyNumSltToSltDist;
	tyUINum tyNumMaxSlt;
	tyUINum tyNumLifterMag1Slt1Pos;
	tyUINum tyNumLifterMag2Slt1Pos;
	tyUINum tyNumLifterMag3Slt1Pos;
	tyUINum tyNumTravPosMag1;
	tyUINum tyNumTravPosMag2;
	tyUINum tyNumTravPosMag3;
	tyUITxt tyTxtLifMag3Slt1PosLbl;
	tyUITxt tyTxtTravPosMag3Lbl;
	tyUIHotspot tyHotspotClose;
	tyUINum tyNumMagMaxBrdWidth;
	tyUILyr tyLyr;
	tyUIBtn tyBtnSafetyBar;
	tyUIBtn tyBtnMagHeightChkEn;
} tyLyrP0410MagDet;
#endif

#ifndef __AS__TYPE_tyUIP0410MagSel
#define __AS__TYPE_tyUIP0410MagSel
typedef struct tyUIP0410MagSel
{	tyLyrP0410MagSel tyMagSel;
	tyLyrP0410MagDet tyMagDet;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxListErr;
	tyLyrC0008MsgBox tyMsgBoxRcpParamErr;
	tyLyrC0008MsgBox tyMsgBoxLoadErr;
	tyLyrC0008MsgBox tyMsgBoxSelRcpAsk;
	tyLyrC0008MsgBox tyMsgBoxSelRcpNoNm;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP0410MagSel;
#endif

#ifndef __AS__TYPE_tyAlm
#define __AS__TYPE_tyAlm
typedef struct tyAlm
{	unsigned char usiColor;
	signed short udiCntrllDp;
	unsigned long udiGrpDp;
	unsigned long udiAlrmDp;
	unsigned long udiPrioDp;
	plcdt udiTimeDp;
	unsigned short uiRtStat;
} tyAlm;
#endif

#ifndef __AS__TYPE_tyUIAlarm
#define __AS__TYPE_tyUIAlarm
typedef struct tyUIAlarm
{	tyAlm tyUIAlmCur;
	tyAlm tyUIAlmHis;
} tyUIAlarm;
#endif

#ifndef __AS__TYPE_tyLyrP0600Alm
#define __AS__TYPE_tyLyrP0600Alm
typedef struct tyLyrP0600Alm
{	tyUIBtn tyBtnCurr;
	tyUIBtn tyBtnHistory;
	struct tyUILString a_tyStringAlm[18];
	struct tyUIHotspot a_tyHotspotAlm[18];
	tyUILyr tyLyr;
	tyUIAlarm tyAlarm;
	tyUIBtn tyBtnHistoryUp;
	tyUIBtn tyBtnHistoryDown;
} tyLyrP0600Alm;
#endif

#ifndef __AS__TYPE_tyUIP0600Alm
#define __AS__TYPE_tyUIP0600Alm
typedef struct tyUIP0600Alm
{	tyLyrP0600Alm tyAlm;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0010RcyMsg tyRcyMsg;
	tyLyrC0010RcyMsg tyRcyMsgHide;
	tyUIBtn tyBtnCurr;
	tyUIBtn tyBtnHistory;
	tyUIAlarm tyAlarm;
} tyUIP0600Alm;
#endif

#ifndef __AS__TYPE_tyUITable1
#define __AS__TYPE_tyUITable1
typedef struct tyUITable1
{	struct tyUIHotspot a_tyHotspot[15];
	struct tyUILString a_tyStringDataCol0[15];
	struct tyUILString a_tyStringDataCol1[15];
	struct tyUILString a_tyStringDataCol2[15];
	struct tyUILString a_tyStringDataCol4[15];
	struct tyUITxt a_tyTxtDataCol3[15];
	tyUIString tyStringTitle0Col0Row0;
	tyUIString tyStringTitle1Col1Row0;
	tyUIString tyStringTitle2Col2Row0;
	tyUIString tyStringTitle3Col3Row0;
	tyUIString tyStringTitle4Col4Row0;
	tyUISlider tyUISlider;
	unsigned short uiMaskRtStat;
} tyUITable1;
#endif

#ifndef __AS__TYPE_tyLyrP0700LFCtrl
#define __AS__TYPE_tyLyrP0700LFCtrl
typedef struct tyLyrP0700LFCtrl
{	tyUIBtn tyBtnChgAll;
	tyUIBtn tyBtnChgSeqAuto;
	tyUIBtn tyBtnChgSeqMnl;
	tyUIBtn tyBtnSyncTm;
	tyUIBitmap tyBitmapChgAll;
	tyUIBitmap tyBitmapChgSeqAuto;
	tyUIBitmap tyBitmapChgSeqMnl;
	tyUIBitmap tyBitmapSyncTm;
	tyUITable1 tyTable1List;
	tyUILyr tyLyr;
} tyLyrP0700LFCtrl;
#endif

#ifndef __AS__TYPE_tyUIP0700LFCtrl
#define __AS__TYPE_tyUIP0700LFCtrl
typedef struct tyUIP0700LFCtrl
{	tyLyrP0700LFCtrl tyLdr;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxChgAllAsk;
	tyLyrC0008MsgBox tyMsgBoxChgSeqAutoAsk;
	tyLyrC0008MsgBox tyMsgBoxChgSeqMnlAsk;
	tyLyrC0008MsgBox tyMsgBoxSyncPLCTmAsk;
	tyLyrC0008MsgBox tyMsgBoxTerminateOpsAsk;
	tyLyrC0008MsgBox tyMsgBoxErrorAsk;
} tyUIP0700LFCtrl;
#endif

#ifndef __AS__TYPE_tyLyrP0800MagInfo1
#define __AS__TYPE_tyLyrP0800MagInfo1
typedef struct tyLyrP0800MagInfo1
{	tyUITable1 tyTable1List;
	tyUITable1 tyTable2List;
	tyUITxt tyTxtMag1Stat;
	tyUITxt tyTxtMag2Stat;
	tyUIBtn tyBtnMag1SetFull;
	tyUIBtn tyBtnMag2SetFull;
	tyUILyr tyLyr;
} tyLyrP0800MagInfo1;
#endif

#ifndef __AS__TYPE_tyLyrP0800MagInfo2
#define __AS__TYPE_tyLyrP0800MagInfo2
typedef struct tyLyrP0800MagInfo2
{	tyUITable1 tyTable3List;
	tyUITxt tyTxtMag3Stat;
	tyUIBtn tyBtnMag3SetFull;
	tyUILyr tyLyr;
} tyLyrP0800MagInfo2;
#endif

#ifndef __AS__TYPE_tyUIP0800MagInfo
#define __AS__TYPE_tyUIP0800MagInfo
typedef struct tyUIP0800MagInfo
{	tyLyrP0800MagInfo1 tyMagInfo1;
	tyLyrP0800MagInfo2 tyMagInfo2;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0800MagInfo;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenCom
#define __AS__TYPE_tyLyrP0850OvenCom
typedef struct tyLyrP0850OvenCom
{	tyUITxt tyTxtTittle;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnOvenA;
	tyUIBtn tyBtnCntrA;
	tyUIBtn tyBtnOvenB;
	tyUIBtn tyBtnCntrB;
	tyUILyr tyLyr;
} tyLyrP0850OvenCom;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenStdSingle
#define __AS__TYPE_tyLyrP0850OvenStdSingle
typedef struct tyLyrP0850OvenStdSingle
{	tyUITxt tyTxtTittle;
	tyUINum tyNumBffrEmptySlt;
	tyUINum tyNumMinReqFreeBffr;
	tyUILyr tyLyr;
} tyLyrP0850OvenStdSingle;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenStdDual
#define __AS__TYPE_tyLyrP0850OvenStdDual
typedef struct tyLyrP0850OvenStdDual
{	tyUINum tyNumBffrEmptySltA;
	tyUINum tyNumMinReqFreeBffrA;
	tyUINum tyNumBffrEmptySltB;
	tyUINum tyNumMinReqFreeBffrB;
	tyUILyr tyLyr;
} tyLyrP0850OvenStdDual;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenExtddSingle
#define __AS__TYPE_tyLyrP0850OvenExtddSingle
typedef struct tyLyrP0850OvenExtddSingle
{	tyUINum tyNumAddBffr;
	tyUINum tyNumBrdInOven;
	tyUINum tyNumBffrEmptySlt;
	tyUILyr tyLyr;
} tyLyrP0850OvenExtddSingle;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenExtddDualSeparate
#define __AS__TYPE_tyLyrP0850OvenExtddDualSeparate
typedef struct tyLyrP0850OvenExtddDualSeparate
{	tyUINum tyNumAddBffrA;
	tyUINum tyNumBrdInOvenA;
	tyUINum tyNumBffrEmptySltA;
	tyUINum tyNumAddBffrB;
	tyUINum tyNumBrdInOvenB;
	tyUINum tyNumBffrEmptySltB;
	tyUILyr tyLyr;
} tyLyrP0850OvenExtddDualSeparate;
#endif

#ifndef __AS__TYPE_tyLyrP0850OvenExtddDualMix
#define __AS__TYPE_tyLyrP0850OvenExtddDualMix
typedef struct tyLyrP0850OvenExtddDualMix
{	tyUINum tyNumAddBffrA;
	tyUINum tyNumBrdInOvenA;
	tyUINum tyNumAddBffrB;
	tyUINum tyNumBrdInOvenB;
	tyUINum tyNumBffrEmptySlt;
	tyUILyr tyLyr;
} tyLyrP0850OvenExtddDualMix;
#endif

#ifndef __AS__TYPE_tyUIP0850OvenInfo
#define __AS__TYPE_tyUIP0850OvenInfo
typedef struct tyUIP0850OvenInfo
{	tyLyrP0850OvenCom tyCom;
	tyLyrP0850OvenStdSingle tyStdA;
	tyLyrP0850OvenStdSingle tyStdB;
	tyLyrP0850OvenStdDual tyStdAB;
	tyLyrP0850OvenExtddSingle tyExtddA;
	tyLyrP0850OvenExtddSingle tyExtddB;
	tyLyrP0850OvenExtddDualSeparate tyExtddABSeparate;
	tyLyrP0850OvenExtddDualMix tyExtddABMix;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0850OvenInfo;
#endif

#ifndef __AS__TYPE_tyLyrP0900GenIn1
#define __AS__TYPE_tyLyrP0900GenIn1
typedef struct tyLyrP0900GenIn1
{	tyUIBtn tyBtnEStop;
	tyUIBtn tyBtnCoverSW;
	tyUIBtn tyBtnSafetyRly;
	tyUIBtn tyBtnLifterTimingBeltSen;
	tyUIBtn tyBtnLifterSafetyLmtSW1;
	tyUIBtn tyBtnLifterSafetyLmtSW2;
	tyUIBtn tyBtnMag1PresentSen;
	tyUIBtn tyBtnMag2PresentSen;
	tyUIBtn tyBtnMag3PresentSen;
	tyUIBtn tyBtnOvenInfeedSigA;
	tyUIBtn tyBtnOvenInfeedSigB;
	tyUIBtn tyBtnMagWidthChk;
} tyLyrP0900GenIn1;
#endif

#ifndef __AS__TYPE_tyLyrP0900GenIn2
#define __AS__TYPE_tyLyrP0900GenIn2
typedef struct tyLyrP0900GenIn2
{	tyUIBtn tyBtnMag1OrientationChkSen1;
	tyUIBtn tyBtnMag2OrientationChkSen1;
	tyUIBtn tyBtnMag3OrientationChkSen1;
	tyUIBtn tyBtnMag1OrientationChkSen2;
	tyUIBtn tyBtnMag2OrientationChkSen2;
	tyUIBtn tyBtnMag3OrientationChkSen2;
	tyUIBtn tyBtnMag1HeightSen;
	tyUIBtn tyBtnMag2HeightSen;
	tyUIBtn tyBtnMag3HeightSen;
	tyUILyr tyLyr;
} tyLyrP0900GenIn2;
#endif

#ifndef __AS__TYPE_tyLyrP0900GenIn3
#define __AS__TYPE_tyLyrP0900GenIn3
typedef struct tyLyrP0900GenIn3
{	tyUIBtn tyBtnCurtainSen;
	tyUIBtn tyBtnCurtainSenPB;
	tyUILyr tyLyr;
} tyLyrP0900GenIn3;
#endif

#ifndef __AS__TYPE_tyUIP0900GenIn
#define __AS__TYPE_tyUIP0900GenIn
typedef struct tyUIP0900GenIn
{	tyLyrP0900GenIn1 tyGenIn1;
	tyLyrP0900GenIn2 tyGenIn2;
	tyLyrP0900GenIn3 tyGenIn3;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0900GenIn;
#endif

#ifndef __AS__TYPE_tyLyrP0910GenOut
#define __AS__TYPE_tyLyrP0910GenOut
typedef struct tyLyrP0910GenOut
{	tyUIBtn tyBtnTLGreen;
	tyUIBtn tyBtnTLRed;
	tyUIBtn tyBtnTLAmber;
	tyUIBtn tyBtnBuzzer;
	tyUIBtn tyBtnSafetyRst;
} tyLyrP0910GenOut;
#endif

#ifndef __AS__TYPE_tyLyrP0910GenOutCurtainSen
#define __AS__TYPE_tyLyrP0910GenOutCurtainSen
typedef struct tyLyrP0910GenOutCurtainSen
{	tyUIBtn tyBtnBypCurtainSenPBLED;
	tyUIBtn tyBtnBypCurtainSen;
	tyUIBtn tyBtnRstCurtainSen;
	tyUILyr tyLyr;
} tyLyrP0910GenOutCurtainSen;
#endif

#ifndef __AS__TYPE_tyLyrP0910GenOutOven
#define __AS__TYPE_tyLyrP0910GenOutOven
typedef struct tyLyrP0910GenOutOven
{	tyUIBtn tyBtnOvenInfoA;
	tyUIBtn tyBtnOvenInfoB;
	tyUILyr tyLyr;
} tyLyrP0910GenOutOven;
#endif

#ifndef __AS__TYPE_tyLyrP0910MagAW
#define __AS__TYPE_tyLyrP0910MagAW
typedef struct tyLyrP0910MagAW
{	tyUIBtn tyBtnMagAWOpenLimByp1;
	tyUIBtn tyBtnMagAWOpenLimByp2;
	tyUIBtn tyBtnMagAWOpenLimByp3;
	tyUIBtn tyBtnMagAWOpenLimByp4;
	tyUIBtn tyBtnSmallMagAWLimSen1;
	tyUIBtn tyBtnSmallMagAWLimSen2;
	tyUIBtn tyBtnSmallMagAWLimSen3;
	tyUIBtn tyBtnSmallMagAWLimSen4;
	tyUILyr tyLyr12;
	tyUILyr tyLyr3;
	tyUILyr tyLyr4;
} tyLyrP0910MagAW;
#endif

#ifndef __AS__TYPE_tyUIP0910GenOut
#define __AS__TYPE_tyUIP0910GenOut
typedef struct tyUIP0910GenOut
{	tyLyrP0910GenOut tyGenOut;
	tyLyrP0910GenOutCurtainSen tyGenOutCurtainSen;
	tyLyrP0910GenOutOven tyOven;
	tyLyrP0910MagAW tyMagAW;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0910GenOut;
#endif

#ifndef __AS__TYPE_tyLyrP0920MtrNPneuCtrl
#define __AS__TYPE_tyLyrP0920MtrNPneuCtrl
typedef struct tyLyrP0920MtrNPneuCtrl
{	tyUIBtn tyBtnAW;
	tyUIBtn tyBtnAWPushPul;
	tyUIBtn tyBtnMagAW;
	tyUIBtn tyBtnTrav;
	tyUIBtn tyBtnLifter;
	tyUIBtn tyBtnLifterBigBtn;
	tyUIBtn tyBtnLifter2;
	tyUIBtn tyBtnPusherConv;
	tyUIBtn tyBtnLifterConv;
	tyUIBtn tyBtnLifterConv2;
	tyUIBtn tyBtnMagConvTopBtm;
	tyUIBtn tyBtnMag1Conv;
	tyUIBtn tyBtnMag2Conv;
	tyUIBtn tyBtnMag3Conv;
	tyUILyr tyLyr;
} tyLyrP0920MtrNPneuCtrl;
#endif

#ifndef __AS__TYPE_tyLyrP0920MtrNPneuCtrlPneu
#define __AS__TYPE_tyLyrP0920MtrNPneuCtrlPneu
typedef struct tyLyrP0920MtrNPneuCtrlPneu
{	tyUIBtn tyBtnShutter;
	tyUIBtn tyBtnStopper;
	tyUIBtn tyBtnSafetyBar;
	tyUILyr tyLyr;
} tyLyrP0920MtrNPneuCtrlPneu;
#endif

#ifndef __AS__TYPE_tyLyrC0002FullMask
#define __AS__TYPE_tyLyrC0002FullMask
typedef struct tyLyrC0002FullMask
{	tyUILyr tyLyr;
	tyUIBtn tyBtnMask;
} tyLyrC0002FullMask;
#endif

#ifndef __AS__TYPE_tyUIP0920MtrNPneuCtrl
#define __AS__TYPE_tyUIP0920MtrNPneuCtrl
typedef struct tyUIP0920MtrNPneuCtrl
{	tyLyrP0920MtrNPneuCtrl tyMtrNPneuCtrl;
	tyLyrP0920MtrNPneuCtrlPneu tyMtrNPneuCtrlPneu;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0920MtrNPneuCtrl;
#endif

#ifndef __AS__TYPE_tyLyrP0921InletShutterCom
#define __AS__TYPE_tyLyrP0921InletShutterCom
typedef struct tyLyrP0921InletShutterCom
{	tyUIBtn tyBtnSwitch;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnOpenRS;
	tyUIBtn tyBtnCloseRS;
	tyUITxt tyTxtTit;
	tyUILyr tyLyr;
} tyLyrP0921InletShutterCom;
#endif

#ifndef __AS__TYPE_tyLyrP0921InletShutterDC
#define __AS__TYPE_tyLyrP0921InletShutterDC
typedef struct tyLyrP0921InletShutterDC
{	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUILyr tyLyr;
} tyLyrP0921InletShutterDC;
#endif

#ifndef __AS__TYPE_tyLyrP0921InletShutterFB
#define __AS__TYPE_tyLyrP0921InletShutterFB
typedef struct tyLyrP0921InletShutterFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUILyr tyLyr;
} tyLyrP0921InletShutterFB;
#endif

#ifndef __AS__TYPE_tyLyrP0921InletShutterDis
#define __AS__TYPE_tyLyrP0921InletShutterDis
typedef struct tyLyrP0921InletShutterDis
{	tyUILyr tyLyr;
} tyLyrP0921InletShutterDis;
#endif

#ifndef __AS__TYPE_tyLyrP0921OutletShutterCom
#define __AS__TYPE_tyLyrP0921OutletShutterCom
typedef struct tyLyrP0921OutletShutterCom
{	tyUIBtn tyBtnSwitch;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnOpenRS;
	tyUIBtn tyBtnCloseRS;
	tyUITxt tyTxtTit;
	tyUILyr tyLyr;
} tyLyrP0921OutletShutterCom;
#endif

#ifndef __AS__TYPE_tyLyrP0921OutletShutterDC
#define __AS__TYPE_tyLyrP0921OutletShutterDC
typedef struct tyLyrP0921OutletShutterDC
{	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUILyr tyLyr;
} tyLyrP0921OutletShutterDC;
#endif

#ifndef __AS__TYPE_tyLyrP0921OutletShutterFB
#define __AS__TYPE_tyLyrP0921OutletShutterFB
typedef struct tyLyrP0921OutletShutterFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUIBtn tyBtnOpen2;
	tyUIBtn tyBtnOpen3;
	tyUILyr tyLyr;
} tyLyrP0921OutletShutterFB;
#endif

#ifndef __AS__TYPE_tyLyrC0003DualMask
#define __AS__TYPE_tyLyrC0003DualMask
typedef struct tyLyrC0003DualMask
{	tyUIBtn tyBtnLeftMask;
	tyUIBtn tyBtnRgtMask;
	tyUILyr tyLyr;
} tyLyrC0003DualMask;
#endif

#ifndef __AS__TYPE_tyUIP0921InletNOutletShutter
#define __AS__TYPE_tyUIP0921InletNOutletShutter
typedef struct tyUIP0921InletNOutletShutter
{	tyLyrP0921InletShutterCom tyInletShutterCom;
	tyLyrP0921InletShutterDC tyInletShutterDC;
	tyLyrP0921InletShutterFB tyInletShutterFB;
	tyLyrP0921InletShutterDis tyInletShutterDis;
	tyLyrP0921OutletShutterCom tyOutletShutterCom;
	tyLyrP0921OutletShutterDC tyOutletShutterDC;
	tyLyrP0921OutletShutterFB tyOutletShutterFB;
	tyLyrP0921OutletShutterCom tyOutletShutterCom3;
	tyLyrP0921OutletShutterDC tyOutletShutterDC3;
	tyLyrP0921OutletShutterFB tyOutletShutterFB3;
	tyLyrP0921InletShutterCom tyOutletShutterCom2;
	tyLyrP0921InletShutterDC tyOutletShutterDC2;
	tyLyrP0921InletShutterFB tyOutletShutterFB2;
	tyLyrP0921InletShutterDis tyOutletShutterDis2;
	tyLyrC0003DualMask tyDualMaskHide;
	tyLyrC0003DualMask tyDualMaskEStop;
	tyLyrC0003DualMask tyDualMaskCWSig;
	tyLyrC0003DualMask tyDualMaskSafetyRly;
	tyLyrC0003DualMask tyDualMaskPshrInterruptInOutlet;
	tyLyrC0003DualMask tyDualMaskPshrInterruptOutlet;
	tyLyrC0003DualMask tyDualMaskLifMovInterrupt;
	tyLyrC0003DualMask tyDualMaskTravMovInterrupt;
	tyLyrC0003DualMask tyDualMaskAWMovInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0004Navi tyNaviLyr1;
	tyLyrC0004Navi tyNaviLyr2;
} tyUIP0921InletNOutletShutter;
#endif

#ifndef __AS__TYPE_tyLyrP0922InStopperCom
#define __AS__TYPE_tyLyrP0922InStopperCom
typedef struct tyLyrP0922InStopperCom
{	tyUIBtn tyBtnSwitch;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnBlkRS;
	tyUIBtn tyBtnUnblkRS;
	tyUITxt tyTxtTit;
	tyUILyr tyLyr;
} tyLyrP0922InStopperCom;
#endif

#ifndef __AS__TYPE_tyLyrP0922InStopperDC
#define __AS__TYPE_tyLyrP0922InStopperDC
typedef struct tyLyrP0922InStopperDC
{	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922InStopperDC;
#endif

#ifndef __AS__TYPE_tyLyrP0922InStopperFB
#define __AS__TYPE_tyLyrP0922InStopperFB
typedef struct tyLyrP0922InStopperFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922InStopperFB;
#endif

#ifndef __AS__TYPE_tyLyrP0922InStopperDis
#define __AS__TYPE_tyLyrP0922InStopperDis
typedef struct tyLyrP0922InStopperDis
{	tyUILyr tyLyr;
} tyLyrP0922InStopperDis;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperACom
#define __AS__TYPE_tyLyrP0922StopperACom
typedef struct tyLyrP0922StopperACom
{	tyUIBtn tyBtnSwitch;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnBlkRS;
	tyUIBtn tyBtnUnblkRS;
	tyUITxt tyTxtTit;
	tyUILyr tyLyr;
} tyLyrP0922StopperACom;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperADC
#define __AS__TYPE_tyLyrP0922StopperADC
typedef struct tyLyrP0922StopperADC
{	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922StopperADC;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperAFB
#define __AS__TYPE_tyLyrP0922StopperAFB
typedef struct tyLyrP0922StopperAFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922StopperAFB;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperADis
#define __AS__TYPE_tyLyrP0922StopperADis
typedef struct tyLyrP0922StopperADis
{	tyUILyr tyLyr;
} tyLyrP0922StopperADis;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperBCom
#define __AS__TYPE_tyLyrP0922StopperBCom
typedef struct tyLyrP0922StopperBCom
{	tyUIBtn tyBtnSwitch;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnBlkRS;
	tyUIBtn tyBtnUnblkRS;
	tyUITxt tyTxtTit;
	tyUILyr tyLyr;
} tyLyrP0922StopperBCom;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperBDC
#define __AS__TYPE_tyLyrP0922StopperBDC
typedef struct tyLyrP0922StopperBDC
{	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922StopperBDC;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperBFB
#define __AS__TYPE_tyLyrP0922StopperBFB
typedef struct tyLyrP0922StopperBFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnBlk;
	tyUIBtn tyBtnUnblk;
	tyUILyr tyLyr;
} tyLyrP0922StopperBFB;
#endif

#ifndef __AS__TYPE_tyLyrP0922StopperBDis
#define __AS__TYPE_tyLyrP0922StopperBDis
typedef struct tyLyrP0922StopperBDis
{	tyUILyr tyLyr;
} tyLyrP0922StopperBDis;
#endif

#ifndef __AS__TYPE_tyUIP0922Stopper
#define __AS__TYPE_tyUIP0922Stopper
typedef struct tyUIP0922Stopper
{	tyLyrP0922InStopperCom tyInStopperCom;
	tyLyrP0922InStopperDC tyInStopperDC;
	tyLyrP0922InStopperFB tyInStopperFB;
	tyLyrP0922InStopperDis tyInStopperDis;
	tyLyrP0922StopperACom tyStopperACom;
	tyLyrP0922StopperADC tyStopperADC;
	tyLyrP0922StopperAFB tyStopperAFB;
	tyLyrP0922StopperADis tyStopperADis;
	tyLyrP0922StopperBCom tyStopperBCom;
	tyLyrP0922StopperBDC tyStopperBDC;
	tyLyrP0922StopperBFB tyStopperBFB;
	tyLyrP0922StopperBDis tyStopperBDis;
	tyLyrC0003DualMask tyDualMaskHide;
	tyLyrC0003DualMask tyDualMaskEStop;
	tyLyrC0003DualMask tyDualMaskCWSig;
	tyLyrC0003DualMask tyDualMaskSafetyRly;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0922Stopper;
#endif

#ifndef __AS__TYPE_tyLyrP0923RgtSafetyBarCom
#define __AS__TYPE_tyLyrP0923RgtSafetyBarCom
typedef struct tyLyrP0923RgtSafetyBarCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnExtRS;
	tyUIBtn tyBtnRetRS;
	tyUITxt tyTxtSubTitle;
	tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarCom;
#endif

#ifndef __AS__TYPE_tyLyrP0923RgtSafetyBarDC
#define __AS__TYPE_tyLyrP0923RgtSafetyBarDC
typedef struct tyLyrP0923RgtSafetyBarDC
{	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarDC;
#endif

#ifndef __AS__TYPE_tyLyrP0923RgtSafetyBarFB
#define __AS__TYPE_tyLyrP0923RgtSafetyBarFB
typedef struct tyLyrP0923RgtSafetyBarFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUILyr tyLyr;
} tyLyrP0923RgtSafetyBarFB;
#endif

#ifndef __AS__TYPE_tyLyrP0923LftSafetyBarCom
#define __AS__TYPE_tyLyrP0923LftSafetyBarCom
typedef struct tyLyrP0923LftSafetyBarCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnExtRS;
	tyUIBtn tyBtnRetRS;
	tyUITxt tyTxtSubTitle;
	tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarCom;
#endif

#ifndef __AS__TYPE_tyLyrP0923LftSafetyBarDC
#define __AS__TYPE_tyLyrP0923LftSafetyBarDC
typedef struct tyLyrP0923LftSafetyBarDC
{	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarDC;
#endif

#ifndef __AS__TYPE_tyLyrP0923LftSafetyBarFB
#define __AS__TYPE_tyLyrP0923LftSafetyBarFB
typedef struct tyLyrP0923LftSafetyBarFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUILyr tyLyr;
} tyLyrP0923LftSafetyBarFB;
#endif

#ifndef __AS__TYPE_tyUIP0923SafetyBar
#define __AS__TYPE_tyUIP0923SafetyBar
typedef struct tyUIP0923SafetyBar
{	tyLyrP0923RgtSafetyBarCom tyRgtSafetyBarComHide;
	tyLyrP0923RgtSafetyBarDC tyRgtSafetyBarDCHide;
	tyLyrP0923RgtSafetyBarFB tyRgtSafetyBarFBHide;
	tyLyrP0923LftSafetyBarCom tyMag1SafetyBarCom;
	tyLyrP0923LftSafetyBarDC tyMag1SafetyBarDC;
	tyLyrP0923LftSafetyBarFB tyMag1SafetyBarFB;
	tyLyrP0923RgtSafetyBarCom tyMag2SafetyBarCom;
	tyLyrP0923RgtSafetyBarDC tyMag2SafetyBarDC;
	tyLyrP0923RgtSafetyBarFB tyMag2SafetyBarFB;
	tyLyrP0923LftSafetyBarCom tyMag3SafetyBarCom;
	tyLyrP0923LftSafetyBarDC tyMag3SafetyBarDC;
	tyLyrP0923LftSafetyBarFB tyMag3SafetyBarFB;
	tyLyrC0003DualMask tyDualMaskHide;
	tyLyrC0003DualMask tyDualMaskEStop;
	tyLyrC0003DualMask tyDualMaskCWSig;
	tyLyrC0003DualMask tyDualMaskSafetyRly;
	tyLyrC0003DualMask tyDualMaskPshrInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNaviLyr1;
	tyLyrC0004Navi tyNaviLyr2;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0923SafetyBar;
#endif

#ifndef __AS__TYPE_tyLyrP0926LifterMagConvCom
#define __AS__TYPE_tyLyrP0926LifterMagConvCom
typedef struct tyLyrP0926LifterMagConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnDCCtrl;
	tyUIBtn tyBtnLifterLmtSW;
	tyUIBtn tyBtnClampRS;
	tyUIBtn tyBtnUnclampRS;
	tyUILyr tyLyr;
} tyLyrP0926LifterMagConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0926LifterMagConvFB
#define __AS__TYPE_tyLyrP0926LifterMagConvFB
typedef struct tyLyrP0926LifterMagConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnter;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnClamp;
	tyUIBtn tyBtnUnclamp;
	tyUILyr tyLyr;
} tyLyrP0926LifterMagConvFB;
#endif

#ifndef __AS__TYPE_tyLyrP0926LifterMagConvDC
#define __AS__TYPE_tyLyrP0926LifterMagConvDC
typedef struct tyLyrP0926LifterMagConvDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnClamp;
	tyUIBtn tyBtnUnclamp;
	tyUILyr tyLyr;
} tyLyrP0926LifterMagConvDC;
#endif

#ifndef __AS__TYPE_tyUIP0926LifterMagConv
#define __AS__TYPE_tyUIP0926LifterMagConv
typedef struct tyUIP0926LifterMagConv
{	tyLyrP0926LifterMagConvCom tyCom;
	tyLyrP0926LifterMagConvFB tyFB;
	tyLyrP0926LifterMagConvDC tyDC;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0926LifterMagConv;
#endif

#ifndef __AS__TYPE_tyLyrP0927LifterMagConvCom
#define __AS__TYPE_tyLyrP0927LifterMagConvCom
typedef struct tyLyrP0927LifterMagConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnDCCtrl;
	tyUIBtn tyBtnLifterLmtSW;
	tyUIBtn tyBtnClampRS;
	tyUIBtn tyBtnUnclampRS;
	tyUILyr tyLyr;
} tyLyrP0927LifterMagConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0927LifterMagConvFB
#define __AS__TYPE_tyLyrP0927LifterMagConvFB
typedef struct tyLyrP0927LifterMagConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnter;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnClamp;
	tyUIBtn tyBtnUnclamp;
	tyUILyr tyLyr;
} tyLyrP0927LifterMagConvFB;
#endif

#ifndef __AS__TYPE_tyLyrP0927LifterMagConvDC
#define __AS__TYPE_tyLyrP0927LifterMagConvDC
typedef struct tyLyrP0927LifterMagConvDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnClamp;
	tyUIBtn tyBtnUnclamp;
	tyUILyr tyLyr;
} tyLyrP0927LifterMagConvDC;
#endif

#ifndef __AS__TYPE_tyUIP0927LifterMagConv2
#define __AS__TYPE_tyUIP0927LifterMagConv2
typedef struct tyUIP0927LifterMagConv2
{	tyLyrP0927LifterMagConvCom tyCom;
	tyLyrP0927LifterMagConvFB tyFB;
	tyLyrP0927LifterMagConvDC tyDC;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0927LifterMagConv2;
#endif

#ifndef __AS__TYPE_tyLyrP0928MagConvCom
#define __AS__TYPE_tyLyrP0928MagConvCom
typedef struct tyLyrP0928MagConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnTopEntSen;
	tyUIBtn tyBtnTopMidSen;
	tyUIBtn tyBtnTopExtSen;
	tyUIBtn tyBtnBtmEntSen;
	tyUIBtn tyBtnBtmMidSen;
	tyUIBtn tyBtnBtmExtSen;
	tyUIBtn tyBtnTopEntStprExtRS;
	tyUIBtn tyBtnTopMidStprExtRS;
	tyUIBtn tyBtnTopExtStprExtRS;
	tyUIBtn tyBtnTopEntStprRetRS;
	tyUIBtn tyBtnTopMidStprRetRS;
	tyUIBtn tyBtnTopExtStprRetRS;
	tyUIBtn tyBtnBtmMidStprExtRS;
	tyUIBtn tyBtnBtmExtStprExtRS;
	tyUIBtn tyBtnBtmMidStprRetRS;
	tyUIBtn tyBtnBtmExtStprRetRS;
	tyUILyr tyLyr;
	tyUIBtn tyBtnLane;
} tyLyrP0928MagConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0928MagConvBtmDC
#define __AS__TYPE_tyLyrP0928MagConvBtmDC
typedef struct tyLyrP0928MagConvBtmDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0928MagConvBtmDC;
#endif

#ifndef __AS__TYPE_tyLyrP0928MagConvTopDC
#define __AS__TYPE_tyLyrP0928MagConvTopDC
typedef struct tyLyrP0928MagConvTopDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0928MagConvTopDC;
#endif

#ifndef __AS__TYPE_tyLyrP0928MagConvBtmFB
#define __AS__TYPE_tyLyrP0928MagConvBtmFB
typedef struct tyLyrP0928MagConvBtmFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0928MagConvBtmFB;
#endif

#ifndef __AS__TYPE_tyLyrP0928MagConvTopFB
#define __AS__TYPE_tyLyrP0928MagConvTopFB
typedef struct tyLyrP0928MagConvTopFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0928MagConvTopFB;
#endif

#ifndef __AS__TYPE_tyUIP0928MagConv
#define __AS__TYPE_tyUIP0928MagConv
typedef struct tyUIP0928MagConv
{	tyLyrP0928MagConvCom tyCom;
	tyLyrP0928MagConvBtmDC tyBtmDC;
	tyLyrP0928MagConvTopDC tyTopDC;
	tyLyrP0928MagConvBtmFB tyBtmFB;
	tyLyrP0928MagConvTopFB tyTopFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNavi2Lyr;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0928MagConv;
#endif

#ifndef __AS__TYPE_tyLyrP0929MagConv2Com
#define __AS__TYPE_tyLyrP0929MagConv2Com
typedef struct tyLyrP0929MagConv2Com
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnTopEntSen;
	tyUIBtn tyBtnTopMidSen;
	tyUIBtn tyBtnTopExtSen;
	tyUIBtn tyBtnBtmEntSen;
	tyUIBtn tyBtnBtmMidSen;
	tyUIBtn tyBtnBtmExtSen;
	tyUIBtn tyBtnTopEntStprExtRS;
	tyUIBtn tyBtnTopMidStprExtRS;
	tyUIBtn tyBtnTopExtStprExtRS;
	tyUIBtn tyBtnTopEntStprRetRS;
	tyUIBtn tyBtnTopMidStprRetRS;
	tyUIBtn tyBtnTopExtStprRetRS;
	tyUIBtn tyBtnBtmMidStprExtRS;
	tyUIBtn tyBtnBtmExtStprExtRS;
	tyUIBtn tyBtnBtmMidStprRetRS;
	tyUIBtn tyBtnBtmExtStprRetRS;
	tyUILyr tyLyr;
	tyUIBtn tyBtnLane;
} tyLyrP0929MagConv2Com;
#endif

#ifndef __AS__TYPE_tyLyrP0929MagConv2BtmDC
#define __AS__TYPE_tyLyrP0929MagConv2BtmDC
typedef struct tyLyrP0929MagConv2BtmDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0929MagConv2BtmDC;
#endif

#ifndef __AS__TYPE_tyLyrP0929MagConv2TopDC
#define __AS__TYPE_tyLyrP0929MagConv2TopDC
typedef struct tyLyrP0929MagConv2TopDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0929MagConv2TopDC;
#endif

#ifndef __AS__TYPE_tyLyrP0929MagConv2BtmFB
#define __AS__TYPE_tyLyrP0929MagConv2BtmFB
typedef struct tyLyrP0929MagConv2BtmFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0929MagConv2BtmFB;
#endif

#ifndef __AS__TYPE_tyLyrP0929MagConv2TopFB
#define __AS__TYPE_tyLyrP0929MagConv2TopFB
typedef struct tyLyrP0929MagConv2TopFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnEntStprExt;
	tyUIBtn tyBtnEntStprRet;
	tyUIBtn tyBtnMidStprExt;
	tyUIBtn tyBtnMidStprRet;
	tyUIBtn tyBtnExtStprExt;
	tyUIBtn tyBtnExtStprRet;
	tyUILyr tyLyr;
} tyLyrP0929MagConv2TopFB;
#endif

#ifndef __AS__TYPE_tyUIP0929MagConv2
#define __AS__TYPE_tyUIP0929MagConv2
typedef struct tyUIP0929MagConv2
{	tyLyrP0929MagConv2Com tyCom;
	tyLyrP0929MagConv2BtmDC tyBtmDC;
	tyLyrP0929MagConv2TopDC tyTopDC;
	tyLyrP0929MagConv2BtmFB tyBtmFB;
	tyLyrP0929MagConv2TopFB tyTopFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNavi2Lyr;
	tyLyrC0004Navi tyNavi3Lyr;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0929MagConv2;
#endif

#ifndef __AS__TYPE_tyLyrP0930Mag1ConvCom
#define __AS__TYPE_tyLyrP0930Mag1ConvCom
typedef struct tyLyrP0930Mag1ConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnMagPresentSen;
	tyUIBtn tyBtnMagOrientationChkSen1;
	tyUIBtn tyBtnMagOrientationChkSen2;
	tyUIBtn tyBtnMagDetectSen;
	tyUIBtn tyBtnMagConvEntSen;
	tyUIBtn tyBtnMagAIVPosSen1;
	tyUIBtn tyBtnMagAIVPosSen2;
	tyUIBtn tyBtnSelClampRS;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnFixedClampRS;
	tyUIBtn tyBtnFixedUnclampRS;
	tyUIBtn tyBtnRemoteClampRS;
	tyUIBtn tyBtnRemoteUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0930Mag1ConvDC
#define __AS__TYPE_tyLyrP0930Mag1ConvDC
typedef struct tyLyrP0930Mag1ConvDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvDC;
#endif

#ifndef __AS__TYPE_tyLyrP0930Mag1ConvFB
#define __AS__TYPE_tyLyrP0930Mag1ConvFB
typedef struct tyLyrP0930Mag1ConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0930Mag1ConvFB;
#endif

#ifndef __AS__TYPE_tyUIP0930MagConv1
#define __AS__TYPE_tyUIP0930MagConv1
typedef struct tyUIP0930MagConv1
{	tyLyrP0930Mag1ConvCom tyCom;
	tyLyrP0930Mag1ConvDC tyDC;
	tyLyrP0930Mag1ConvFB tyFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNavi2Lyr1;
	tyLyrC0004Navi tyNavi3Lyr1;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0930MagConv1;
#endif

#ifndef __AS__TYPE_tyLyrP0931Mag2ConvCom
#define __AS__TYPE_tyLyrP0931Mag2ConvCom
typedef struct tyLyrP0931Mag2ConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnMagPresentSen;
	tyUIBtn tyBtnMagOrientationChkSen1;
	tyUIBtn tyBtnMagOrientationChkSen2;
	tyUIBtn tyBtnMagDetectSen;
	tyUIBtn tyBtnMagConvEntSen;
	tyUIBtn tyBtnMagAIVPosSen1;
	tyUIBtn tyBtnMagAIVPosSen2;
	tyUIBtn tyBtnSelClampRS;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnFixedClampRS;
	tyUIBtn tyBtnFixedUnclampRS;
	tyUIBtn tyBtnRemoteClampRS;
	tyUIBtn tyBtnRemoteUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUILyr tyLyr;
} tyLyrP0931Mag2ConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0931Mag2ConvDC
#define __AS__TYPE_tyLyrP0931Mag2ConvDC
typedef struct tyLyrP0931Mag2ConvDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0931Mag2ConvDC;
#endif

#ifndef __AS__TYPE_tyLyrP0931Mag2ConvFB
#define __AS__TYPE_tyLyrP0931Mag2ConvFB
typedef struct tyLyrP0931Mag2ConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0931Mag2ConvFB;
#endif

#ifndef __AS__TYPE_tyUIP0931MagConv2
#define __AS__TYPE_tyUIP0931MagConv2
typedef struct tyUIP0931MagConv2
{	tyLyrP0931Mag2ConvCom tyCom;
	tyLyrP0931Mag2ConvDC tyDC;
	tyLyrP0931Mag2ConvFB tyFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNavi2Lyr2;
	tyLyrC0004Navi tyNavi3Lyr2;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0931MagConv2;
#endif

#ifndef __AS__TYPE_tyLyrP0932Mag3ConvCom
#define __AS__TYPE_tyLyrP0932Mag3ConvCom
typedef struct tyLyrP0932Mag3ConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnMagPresentSen;
	tyUIBtn tyBtnMagOrientationChkSen1;
	tyUIBtn tyBtnMagOrientationChkSen2;
	tyUIBtn tyBtnMagDetectSen;
	tyUIBtn tyBtnMagConvEntSen;
	tyUIBtn tyBtnMagAIVPosSen1;
	tyUIBtn tyBtnMagAIVPosSen2;
	tyUIBtn tyBtnSelClampRS;
	tyUIBtn tyBtnSelUnclampRS;
	tyUIBtn tyBtnFixedClampRS;
	tyUIBtn tyBtnFixedUnclampRS;
	tyUIBtn tyBtnRemoteClampRS;
	tyUIBtn tyBtnRemoteUnclampRS;
	tyUIBtn tyBtnHeightSen;
	tyUIBtn tyBtnCAB717Sen;
	tyUIBtn tyBtnMagSmallSen;
	tyUIBtn tyBtnMagLargeSen;
	tyUILyr tyLyr;
} tyLyrP0932Mag3ConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0932Mag3ConvDC
#define __AS__TYPE_tyLyrP0932Mag3ConvDC
typedef struct tyLyrP0932Mag3ConvDC
{	tyUIBtn tyBtnMagIn;
	tyUIBtn tyBtnMagOut;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0932Mag3ConvDC;
#endif

#ifndef __AS__TYPE_tyLyrP0932Mag3ConvFB
#define __AS__TYPE_tyLyrP0932Mag3ConvFB
typedef struct tyLyrP0932Mag3ConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnSelClamp;
	tyUIBtn tyBtnSelUnclamp;
	tyUIBtn tyBtnFixedClamp;
	tyUIBtn tyBtnFixedUnclamp;
	tyUIBtn tyBtnRemoteClamp;
	tyUIBtn tyBtnRemoteUnclamp;
	tyUILyr tyLyr;
	tyUILyr tyLyrWithoutSelClamp;
} tyLyrP0932Mag3ConvFB;
#endif

#ifndef __AS__TYPE_tyUIP0932MagConv3
#define __AS__TYPE_tyUIP0932MagConv3
typedef struct tyUIP0932MagConv3
{	tyLyrP0932Mag3ConvCom tyCom;
	tyLyrP0932Mag3ConvDC tyDC;
	tyLyrP0932Mag3ConvFB tyFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskAWMotorEngage;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNavi3Lyr3;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0932MagConv3;
#endif

#ifndef __AS__TYPE_tyLyrP0933PushConvCom
#define __AS__TYPE_tyLyrP0933PushConvCom
typedef struct tyLyrP0933PushConvCom
{	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnSwitch;
	tyUIBtn tyBtnLftSen;
	tyUIBtn tyBtnMidSen;
	tyUIBtn tyBtnRgtSen;
	tyUIBtn tyBtnClrSen;
	tyUIBtn tyBtnExtRS;
	tyUIBtn tyBtnRetRS;
	tyUIBtn tyBtnAlarmSig;
	tyUIBtn tyBtnTorqueSig;
	tyUIBtn tyBtnExtSen;
	tyUIBtn tyBtnExtSlwSen;
	tyUIBtn tyBtnRetSen;
	tyUIBtn tyBtnRetSlwSen;
	tyUIBtn tyBtnAntiJamSen;
	tyUILString tyTxtExtWarning;
	tyUILyr tyLyr;
} tyLyrP0933PushConvCom;
#endif

#ifndef __AS__TYPE_tyLyrP0933PushConvDC
#define __AS__TYPE_tyLyrP0933PushConvDC
typedef struct tyLyrP0933PushConvDC
{	tyUIBtn tyBtnStart;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUIBtn tyBtnSpdBinBit0;
	tyUIBtn tyBtnSpdBinBit1;
	tyUIBtn tyBtnSpdBinBit2;
	tyUIBtn tyBtnSigOn;
	tyUIBtn tyBtnBrake;
	tyUIBtn tyBtnAlarmRst;
	tyUILyr tyLyr;
} tyLyrP0933PushConvDC;
#endif

#ifndef __AS__TYPE_tyLyrP0933PushConvFB
#define __AS__TYPE_tyLyrP0933PushConvFB
typedef struct tyLyrP0933PushConvFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnEnt;
	tyUIBtn tyBtnExit;
	tyUIBtn tyBtnCylExit;
	tyUIBtn tyBtnStop;
	tyUIBtn tyBtnExt;
	tyUIBtn tyBtnRet;
	tyUINum tyNumExtSpd;
	tyUINum tyNumExtTorqPercent;
	tyUILyr tyLyr;
} tyLyrP0933PushConvFB;
#endif

#ifndef __AS__TYPE_tyLyrP1026InOutletShutterFB
#define __AS__TYPE_tyLyrP1026InOutletShutterFB
typedef struct tyLyrP1026InOutletShutterFB
{	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUILyr tyLyr;
	tyUILString tyStringStat;
} tyLyrP1026InOutletShutterFB;
#endif

#ifndef __AS__TYPE_tyUIP0933PushConv
#define __AS__TYPE_tyUIP0933PushConv
typedef struct tyUIP0933PushConv
{	tyLyrP0933PushConvCom tyCom;
	tyLyrP0933PushConvDC tyDC;
	tyLyrP0933PushConvFB tyFB;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskOutShutterInterrupt;
	tyLyrC0002FullMask tyFullMaskAWConvInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0933PushConv;
#endif

#ifndef __AS__TYPE_tyLyrP0934AW
#define __AS__TYPE_tyLyrP0934AW
typedef struct tyLyrP0934AW
{	tyUINum tyNumNewWidth;
	tyUIBtn tyBtnGo;
} tyLyrP0934AW;
#endif

#ifndef __AS__TYPE_tyLyrC0001MotionStdAW
#define __AS__TYPE_tyLyrC0001MotionStdAW
typedef struct tyLyrC0001MotionStdAW
{	tyUIBitmap tyBitmapOrigin;
	tyUIBitmap tyBitmapPwr;
	tyUIBitmap tyBitmapRst;
	tyUIBitmap tyBitmapStop;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnOpenLmtSen;
	tyUIBtn tyBtnCloseLmtSen;
	tyUIBtn tyBtnJogOpen;
	tyUIBtn tyBtnJogClose;
	tyUIBtn tyBtnMovAbs;
	tyUIBtn tyBtnMovRel;
	tyUIBtn tyBtnOrigin;
	tyUIBtn tyBtnPwr;
	tyUIBtn tyBtnRst;
	tyUIBtn tyBtnStop;
	tyUINum tyNumCurrPos;
	tyUINum tyNumErrCode;
	tyUINum tyNumNomSpd;
	tyUINum tyNumSlwSpd;
	tyUINum tyNumStepSize;
	tyUINum tyNumTargetPos;
	tyUILString tyStringStat;
} tyLyrC0001MotionStdAW;
#endif

#ifndef __AS__TYPE_tyUIP0934AW
#define __AS__TYPE_tyUIP0934AW
typedef struct tyUIP0934AW
{	tyLyrP0934AW tyAW;
	tyLyrC0001MotionStdAW tyMotionStd;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	tyLyrC0002FullMask tyFullMaskMidSenInterrupt;
	tyLyrC0002FullMask tyFullMaskRgtSenInterrupt;
	tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0934AW;
#endif

#ifndef __AS__TYPE_tyLyrP0935Lifter
#define __AS__TYPE_tyLyrP0935Lifter
typedef struct tyLyrP0935Lifter
{	tyUINum tyNumNewSlt;
	tyUIBtn tyBtnGo;
	tyUIBtn tyBtnGoLaneA;
	tyUIBtn tyBtnGoLaneB;
	tyUIBtn tyBtnGoLaneD_G;
	tyUIBtn tyBtnGoLaneE_H;
	tyUIBtn tyBtnNxtSlt;
	tyUIBtn tyBtnPrevSlt;
	tyUINum tyNumMagPos;
} tyLyrP0935Lifter;
#endif

#ifndef __AS__TYPE_tyLyrC0001MotionStdLifter
#define __AS__TYPE_tyLyrC0001MotionStdLifter
typedef struct tyLyrC0001MotionStdLifter
{	tyUIBitmap tyBitmapOrigin;
	tyUIBitmap tyBitmapPwr;
	tyUIBitmap tyBitmapRst;
	tyUIBitmap tyBitmapStop;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnUpLmtSen;
	tyUIBtn tyBtnDownLmtSen;
	tyUIBtn tyBtnJogUp;
	tyUIBtn tyBtnJogDown;
	tyUIBtn tyBtnMovAbs;
	tyUIBtn tyBtnMovRel;
	tyUIBtn tyBtnOrigin;
	tyUIBtn tyBtnPwr;
	tyUIBtn tyBtnRst;
	tyUIBtn tyBtnStop;
	tyUINum tyNumCurrPos;
	tyUINum tyNumErrCode;
	tyUINum tyNumNomSpd;
	tyUINum tyNumSlwSpd;
	tyUINum tyNumStepSize;
	tyUINum tyNumTargetPos;
	tyUILString tyStringStat;
} tyLyrC0001MotionStdLifter;
#endif

#ifndef __AS__TYPE_tyUIP0935Lifter
#define __AS__TYPE_tyUIP0935Lifter
typedef struct tyUIP0935Lifter
{	tyLyrP0935Lifter tyLifter;
	tyLyrC0001MotionStdLifter tyMotionStd;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	tyLyrC0002FullMask tyFullMaskPshrNotRetInterrupt;
	tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	tyLyrC0002FullMask tyFullMaskTimingBelt;
	tyLyrC0002FullMask tyFullMaskMagClmpInt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0935Lifter;
#endif

#ifndef __AS__TYPE_tyLyrP0936Trav
#define __AS__TYPE_tyLyrP0936Trav
typedef struct tyLyrP0936Trav
{	tyUIBtn tyBtnGoToLaneA;
	tyUIBtn tyBtnGoToLaneB;
	tyUIBtn tyBtnGoToMag1;
	tyUIBtn tyBtnGoToMag2;
	tyUIBtn tyBtnGoToMag3;
} tyLyrP0936Trav;
#endif

#ifndef __AS__TYPE_tyLyrC0001MotionStdTrav
#define __AS__TYPE_tyLyrC0001MotionStdTrav
typedef struct tyLyrC0001MotionStdTrav
{	tyUIBitmap tyBitmapOrigin;
	tyUIBitmap tyBitmapPwr;
	tyUIBitmap tyBitmapRst;
	tyUIBitmap tyBitmapStop;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnFrontLmtSen;
	tyUIBtn tyBtnRearLmtSen;
	tyUIBtn tyBtnJogFront;
	tyUIBtn tyBtnJogRear;
	tyUIBtn tyBtnMovAbs;
	tyUIBtn tyBtnMovRel;
	tyUIBtn tyBtnOrigin;
	tyUIBtn tyBtnPwr;
	tyUIBtn tyBtnRst;
	tyUIBtn tyBtnStop;
	tyUINum tyNumCurrPos;
	tyUINum tyNumErrCode;
	tyUINum tyNumNomSpd;
	tyUINum tyNumSlwSpd;
	tyUINum tyNumStepSize;
	tyUINum tyNumTargetPos;
	tyUILString tyStringStat;
} tyLyrC0001MotionStdTrav;
#endif

#ifndef __AS__TYPE_tyUIP0936Trav
#define __AS__TYPE_tyUIP0936Trav
typedef struct tyUIP0936Trav
{	tyLyrP0936Trav tyTrav;
	tyLyrC0001MotionStdTrav tyMotionStd;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	tyLyrC0002FullMask tyFullMaskPshrNotRetInterrupt;
	tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0936Trav;
#endif

#ifndef __AS__TYPE_tyLyrP0937AWPushOrPuller
#define __AS__TYPE_tyLyrP0937AWPushOrPuller
typedef struct tyLyrP0937AWPushOrPuller
{	tyUINum tyNumNewWidth;
	tyUIBtn tyBtnGo;
} tyLyrP0937AWPushOrPuller;
#endif

#ifndef __AS__TYPE_tyUIP0937AWPushOrPuller
#define __AS__TYPE_tyUIP0937AWPushOrPuller
typedef struct tyUIP0937AWPushOrPuller
{	tyLyrP0937AWPushOrPuller tyAW;
	tyLyrC0001MotionStdAW tyMotionStd;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	tyLyrC0002FullMask tyFullMaskRgtSenInterrupt;
	tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0937AWPushOrPuller;
#endif

#ifndef __AS__TYPE_tyLyrP0938MagAW
#define __AS__TYPE_tyLyrP0938MagAW
typedef struct tyLyrP0938MagAW
{	tyUITxt tyTxtSubTitle;
	tyUINum tyNumNewWidth;
	tyUIBtn tyBtnGo;
	tyUIBtn tyBtnMtrGearEngage;
	tyUIBtn tyBtnEngage;
	tyUIBtn tyBtnDisengage;
	tyUIBtn tyBtnEngageRS;
	tyUIBtn tyBtnDisengageRS;
} tyLyrP0938MagAW;
#endif

#ifndef __AS__TYPE_tyLyrC0001MotionStdMagAW
#define __AS__TYPE_tyLyrC0001MotionStdMagAW
typedef struct tyLyrC0001MotionStdMagAW
{	tyUIBitmap tyBitmapOrigin;
	tyUIBitmap tyBitmapPwr;
	tyUIBitmap tyBitmapRst;
	tyUIBitmap tyBitmapStop;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnOpenLmtSen;
	tyUIBtn tyBtnCloseLmtSen;
	tyUIBtn tyBtnJogOpen;
	tyUIBtn tyBtnJogClose;
	tyUIBtn tyBtnMovAbs;
	tyUIBtn tyBtnMovRel;
	tyUIBtn tyBtnOrigin;
	tyUIBtn tyBtnPwr;
	tyUIBtn tyBtnRst;
	tyUIBtn tyBtnStop;
	tyUINum tyNumCurrPos;
	tyUINum tyNumErrCode;
	tyUINum tyNumNomSpd;
	tyUINum tyNumSlwSpd;
	tyUINum tyNumStepSize;
	tyUINum tyNumTargetPos;
	tyUILString tyStringStat;
} tyLyrC0001MotionStdMagAW;
#endif

#ifndef __AS__TYPE_tyUIP0938MagAW
#define __AS__TYPE_tyUIP0938MagAW
typedef struct tyUIP0938MagAW
{	tyLyrP0938MagAW tyMagAW1;
	tyLyrC0001MotionStdMagAW tyMotionStd1;
	tyLyrP0938MagAW tyMagAW2;
	tyLyrC0001MotionStdMagAW tyMotionStd2;
	tyLyrP0938MagAW tyMagAW3;
	tyLyrC0001MotionStdMagAW tyMotionStd3;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskMag1NotMty;
	tyLyrC0002FullMask tyFullMaskMag2NotMty;
	tyLyrC0002FullMask tyFullMaskMag3NotMty;
	tyLyrC0004Navi tyNavi2Lyr1;
	tyLyrC0004Navi tyNavi2Lyr2;
	tyLyrC0004Navi tyNavi3Lyr1;
	tyLyrC0004Navi tyNavi3Lyr2;
	tyLyrC0004Navi tyNavi3Lyr3;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0938MagAW;
#endif

#ifndef __AS__TYPE_tyUIP0939Lifter2
#define __AS__TYPE_tyUIP0939Lifter2
typedef struct tyUIP0939Lifter2
{	tyLyrP0935Lifter tyLifter;
	tyLyrC0001MotionStdLifter tyMotionStd;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskPshrInterrupt;
	tyLyrC0002FullMask tyFullMaskLftSenInterrupt;
	tyLyrC0002FullMask tyFullMaskClrSenInterrupt;
	tyLyrC0002FullMask tyFullMaskInShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskOutShutOpnInterrupt;
	tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	tyLyrC0002FullMask tyFullMaskTimingBelt;
	tyLyrC0002FullMask tyFullMaskMagClmpInt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
} tyUIP0939Lifter2;
#endif

#ifndef __AS__TYPE_tyLyrP0940CommCtrlUSSMEMA
#define __AS__TYPE_tyLyrP0940CommCtrlUSSMEMA
typedef struct tyLyrP0940CommCtrlUSSMEMA
{	tyUIBtn tyBtnUBA;
	tyUIBtn tyBtnUBAStat;
	tyUIBtn tyBtnUSB;
	tyUILyr tyLyr;
} tyLyrP0940CommCtrlUSSMEMA;
#endif

#ifndef __AS__TYPE_tyLyrP0940SOTComm
#define __AS__TYPE_tyLyrP0940SOTComm
typedef struct tyLyrP0940SOTComm
{	tyUIBtn tyBtnAIVRcv1;
	tyUIBtn tyBtnAIVErr1;
	tyUIBtn tyBtnAIVRdy1;
	tyUIBtn tyBtnAIVAvail1;
	tyUIBtn tyBtnAIVSLarge1;
	tyUIBtn tyBtnMagErr1;
	tyUIBtn tyBtnMagRdy1;
	tyUIBtn tyBtnMagAvail1;
	tyUIBtn tyBtnMagSLarge1;
	tyUIBtn tyBtnAIVRcv2;
	tyUIBtn tyBtnAIVErr2;
	tyUIBtn tyBtnAIVRdy2;
	tyUIBtn tyBtnAIVAvail2;
	tyUIBtn tyBtnAIVSLarge2;
	tyUIBtn tyBtnMagErr2;
	tyUIBtn tyBtnMagRdy2;
	tyUIBtn tyBtnMagAvail2;
	tyUIBtn tyBtnMagSLarge2;
	tyUIBtn tyBtnAIVRcv3;
	tyUIBtn tyBtnAIVErr3;
	tyUIBtn tyBtnAIVRdy3;
	tyUIBtn tyBtnAIVAvail3;
	tyUIBtn tyBtnAIVSLarge3;
	tyUIBtn tyBtnMagErr3;
	tyUIBtn tyBtnMagRdy3;
	tyUIBtn tyBtnMagAvail3;
	tyUIBtn tyBtnMagSLarge3;
	tyUIBtn tyBtnAIVRcv4;
	tyUIBtn tyBtnAIVErr4;
	tyUIBtn tyBtnAIVRdy4;
	tyUIBtn tyBtnAIVAvail4;
	tyUIBtn tyBtnAIVSLarge4;
	tyUIBtn tyBtnMagErr4;
	tyUIBtn tyBtnMagRdy4;
	tyUIBtn tyBtnMagAvail4;
	tyUIBtn tyBtnMagSLarge4;
	tyUIBtn tyBtnFleetMgrActive;
	tyUIBtn tyBtnMagReqBring1;
	tyUIBtn tyBtnMagReqtGet1;
	tyUIBtn tyBtnMagReqBring2;
	tyUIBtn tyBtnMagReqtGet2;
	tyUIBtn tyBtnMagReqBring3;
	tyUIBtn tyBtnMagReqtGet3;
	tyUIBtn tyBtnMagReqBring4;
	tyUIBtn tyBtnMagReqtGet4;
	tyUILyr tySOTLyr1;
	tyUILyr tySOTLyr2;
	tyUILyr tySOTLyr3;
	tyUILyr tySOTLyr4;
	tyUITxt tyTxtAIVCommProtocol;
} tyLyrP0940SOTComm;
#endif

#ifndef __AS__TYPE_tyLyrP0940DMCRFIDComm
#define __AS__TYPE_tyLyrP0940DMCRFIDComm
typedef struct tyLyrP0940DMCRFIDComm
{	tyUIBtn tyBtnScanComplSig;
	tyUIBtn tyBtnTrigStartScan;
	tyUIBtn tyBtnTrigTransMag1Out;
	tyUIBtn tyBtnTrigTransMag2Out;
	tyUIBtn tyBtnTrigTransMag3Out;
	tyUILyr tyLyr;
} tyLyrP0940DMCRFIDComm;
#endif

#ifndef __AS__TYPE_tyUIP0940CommCtrl
#define __AS__TYPE_tyUIP0940CommCtrl
typedef struct tyUIP0940CommCtrl
{	tyLyrP0940CommCtrlUSSMEMA tyUSSMEMAA;
	tyLyrP0940CommCtrlUSSMEMA tyUSSMEMAB;
	tyLyrP0940SOTComm tySOT;
	tyLyrP0940DMCRFIDComm tyDMCRFID;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0940CommCtrl;
#endif

#ifndef __AS__TYPE_tyLyrP0950SOTBtn
#define __AS__TYPE_tyLyrP0950SOTBtn
typedef struct tyLyrP0950SOTBtn
{	tyUIBtn tyBtnInPos;
	tyUIBtn tyBtnError;
	tyUIBtn tyBtnRdy;
	tyUIBtn tyBtnAvail;
	tyUIBtn tyBtnSize;
} tyLyrP0950SOTBtn;
#endif

#ifndef __AS__TYPE_tyLyrP0950Simu
#define __AS__TYPE_tyLyrP0950Simu
typedef struct tyLyrP0950Simu
{	tyUIBtn tyBtnSimu;
	tyUIBtn tyBtnStart;
	tyUIBtn tyBtnStop;
	tyLyrP0950SOTBtn tyBtnSOT1;
	tyLyrP0950SOTBtn tyBtnSOT2;
	tyLyrP0950SOTBtn tyBtnSOT3;
	tyLyrP0950SOTBtn tyBtnMagSOT1;
	tyLyrP0950SOTBtn tyBtnMagSOT2;
	tyLyrP0950SOTBtn tyBtnMagSOT3;
	tyUIBtn tyBtnInShutterSim;
	tyUIBtn tyBtnBypassShutforCalib;
	tyUIBtn tyBtnTestTrav;
	tyUIBtn tyBtnNtParaWr;
	tyUIBtn tyBtnNtParaWr2;
	tyUILString tyStringJobNo;
	tyUINum tyNumAddr;
	tyUINum tyNumTravSpd;
	tyUINum tyNumLifterSpd;
	tyUIBtn tyBtnNavLeft;
	tyUIBtn tyBtnNavRight;
	tyUILyr tyLyr;
	tyUILyr tyLyr1;
	tyUILyr tyLyr2;
} tyLyrP0950Simu;
#endif

#ifndef __AS__TYPE_tyLyrP0950SimuCycleTim
#define __AS__TYPE_tyLyrP0950SimuCycleTim
typedef struct tyLyrP0950SimuCycleTim
{	tyUIDrpDn tyDrpDnMagSel;
	tyUITable1 tyTableList;
	tyUIBtn tyBtnNavLeft;
	tyUIBtn tyBtnNavRight;
	tyUILyr tyLyr;
	tyUITxt tyTxtMag3Stat;
} tyLyrP0950SimuCycleTim;
#endif

#ifndef __AS__TYPE_tyLyrP0950SimuAGVToMC
#define __AS__TYPE_tyLyrP0950SimuAGVToMC
typedef struct tyLyrP0950SimuAGVToMC
{	tyUIBtn tyBtnAGVSimulateOn;
	tyUIBtn tyBtnAGVOnline;
	tyUIBtn tyBtnAGVInPos1;
	tyUIBtn tyBtnAGVInPos2;
	tyUIBtn tyBtnAGVInPos3;
	tyUIBtn tyBtnAGVAuto;
	tyUIBtn tyBtnAGV1Occupied;
	tyUIBtn tyBtnAGV2Occupied;
	tyUIBtn tyBtnAGV3Occupied;
	tyUIBtn tyBtnNavLeft;
	tyUIBtn tyBtnNavRight;
	tyUILyr tyLyr;
} tyLyrP0950SimuAGVToMC;
#endif

#ifndef __AS__TYPE_tyLyrP0950SimuMCToAGV
#define __AS__TYPE_tyLyrP0950SimuMCToAGV
typedef struct tyLyrP0950SimuMCToAGV
{	tyUIBtn tyBtnMachineOnline;
	tyUIBtn tyBtnMachineEstop;
	tyUIBtn tyBtnMag1Empty;
	tyUIBtn tyBtnMag2Empty;
	tyUIBtn tyBtnMag3Empty;
	tyUIBtn tyBtnMag1Rdy;
	tyUIBtn tyBtnMag2Rdy;
	tyUIBtn tyBtnMag3Rdy;
	tyUIBtn tyBtnMag1Auto;
	tyUIBtn tyBtnMag2Auto;
	tyUIBtn tyBtnMag3Auto;
	tyUIBtn tyBtnMag1Occupied;
	tyUIBtn tyBtnMag2Occupied;
	tyUIBtn tyBtnMag3Occupied;
	tyUIBtn tyBtnMag1IncorrectModel;
	tyUIBtn tyBtnMag2IncorrectModel;
	tyUIBtn tyBtnMag3IncorrectModel;
} tyLyrP0950SimuMCToAGV;
#endif

#ifndef __AS__TYPE_tyUIP0950Simu
#define __AS__TYPE_tyUIP0950Simu
typedef struct tyUIP0950Simu
{	tyLyrP0950Simu tySimu;
	tyLyrP0950SimuCycleTim tySimuBffrCycleTm;
	tyLyrP0950SimuAGVToMC tyAGVToMc;
	tyLyrP0950SimuMCToAGV tyMcToAGV;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP0950Simu;
#endif

#ifndef __AS__TYPE_tyLyrP1000Lang
#define __AS__TYPE_tyLyrP1000Lang
typedef struct tyLyrP1000Lang
{	tyUIBtn tyBtnChinese;
	tyUIBtn tyBtnEnglish;
	tyUIBtn tyBtnGerman;
	tyUINum tyNumYear;
	tyUINum tyNumMonth;
	tyUINum tyNumDay;
	tyUINum tyNumHour;
	tyUINum tyNumMinute;
	tyUINum tyNumSecond;
} tyLyrP1000Lang;
#endif

#ifndef __AS__TYPE_tyUIP1000Lang
#define __AS__TYPE_tyUIP1000Lang
typedef struct tyUIP1000Lang
{	tyLyrP1000Lang tyLang;
	tyLyrP1000Lang tyLangBkUp;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1000Lang;
#endif

#ifndef __AS__TYPE_tyLyrP1020McSetNavi
#define __AS__TYPE_tyLyrP1020McSetNavi
typedef struct tyLyrP1020McSetNavi
{	tyUIBtn tyBtnMcSet;
	tyUIBtn tyBtnVCommSet;
	tyUIBtn tyBtnHCommSet;
	tyUIBtn tyBtnAntiGapSet;
	tyUIBtn tyBtnScanSet;
	tyUIBtn tyBtnOpConSet;
	tyUILyr tyLyr;
} tyLyrP1020McSetNavi;
#endif

#ifndef __AS__TYPE_tyUIP1020McSetNavi
#define __AS__TYPE_tyUIP1020McSetNavi
typedef struct tyUIP1020McSetNavi
{	tyLyrP1020McSetNavi tyNavi;
	tyLyrC0008MsgBox tyMsgBoxHide;
} tyUIP1020McSetNavi;
#endif

#ifndef __AS__TYPE_tyLyrP1021McSetGen
#define __AS__TYPE_tyLyrP1021McSetGen
typedef struct tyLyrP1021McSetGen
{	tyUIString tyStringMcNm;
	tyUIDrpDn tyDrpDnDefaultMcMod;
	tyUIDrpDn tyDrpDnNetworkMod;
	tyUINum tyNumSSaverTm;
	tyUIBtn tyBtnSSaverEn;
	tyUITxt tyTxtLblSSaver;
	tyUIString tyStringIPAddr;
	tyUIString tyStringSubnetMask;
	tyUIString tyStringHMIIPAddr;
	tyUIString tyStringDefaultGWIP;
	tyUITxt tyTxtWidthAtHm;
	tyUINum tyNumWidthAtHm;
	tyUINum tyNumConvInitTm;
	tyUINum tyNumTranInErrDlyTm;
	tyUITxt tyTxtMag1ConvRunTm;
	tyUINum tyNumMag1ConvRunTm;
	tyUITxt tyTxtMag2ConvRunTm;
	tyUINum tyNumMag2ConvRunTm;
	tyUITxt tyTxtMag3ConvRunTm;
	tyUINum tyNumMag3ConvRunTm;
	tyUITxt tyTxtMaxBffr;
	tyUINum tyNumMaxBffr;
	tyUITxt tyTxtMag1WidthAtHm;
	tyUITxt tyTxtMag2WidthAtHm;
	tyUITxt tyTxtMag3WidthAtHm;
	tyUINum tyNumMag1WidthAtHm;
	tyUINum tyNumMag2WidthAtHm;
	tyUINum tyNumMag3WidthAtHm;
	tyUINum tyNumTravPosLaneA;
	tyUINum tyNumLiftPosLaneA;
	tyUITxt tyTxtLiftPosLaneA;
	tyUITxt tyTxtTravPosLaneB;
	tyUINum tyNumTravPosLaneB;
	tyUITxt tyTxtLiftPosLaneB;
	tyUINum tyNumLiftPosLaneB;
	tyUIBtn tyBtnTravPosATeach;
	tyUIBtn tyBtnTravPosBTeach;
	tyUIBtn tyBtnLiftPosATeach;
	tyUIBtn tyBtnLiftPosBTeach;
	tyUIBtn tyBtnAWDis;
	tyUIBtn tyBtnMnlAccDat;
	tyUIBtn tyBtnAutoStepEn;
	tyUIBtn tyBtnVSMEMAEn;
	tyUIBtn tyBtnHermesRmtEn;
	tyUIBtn tyBtnHermesSvyEn;
	tyUIBtn tyBtnGapBetBrdEn;
	tyUIBtn tyBtnLongBrdEn;
	tyUIBtn tyBtnOvenEn;
	tyUIBtn tyBtnExtdOvenEn;
	tyUIBtn tyBtnInShutterDis;
	tyUIBtn tyBtnStopperADis;
	tyUIBtn tyBtnStopperBDis;
	tyUIBtn tyBtnChgParamEn;
	tyUILyr tyLyrGen1;
	tyUILyr tyLyrGen2;
	tyUILyr tyLyrGen3;
	tyUILyr tyLyrGen4;
	tyUINum tyNumMagAutoDetSenTm;
	tyUITxt tyTxtWidthOffset;
	tyUINum tyNumWidthOffset;
	tyUIBtn tyBtnAGVComEn;
	tyUINum tyNumAutoLogoutTm;
	tyUITxt tyTxtLblAutoLogoutTm;
	tyUIBtn tyBtnAutoLogoutEn;
	tyUIBtn tyBtnMagAWDis;
	tyUIBtn tyBtnMagSafetyBarDis;
	tyUIBtn tyBtnLFBuzMute;
	tyUIDrpDn tyDrpDnAGVComProtocol;
	tyUIDrpDn tyDrpDnMagExchangeMode;
	tyUIBtn tyBtnAGVSizeDisabled;
	tyUINum tyNumAWPusherAtHm;
	tyUITxt tyTxtAWPusherAtHm;
	tyUIBtn tyBtnAWPusherDis;
	tyUINum tyNumTravFixtoFixPosInlet;
	tyUIBtn tyBtnDisableFMWarning;
	tyUINum tyNumInMagConvInitTm;
	tyUINum tyNumOutMagConvInitTm;
	tyUINum tyNumLifterMagConvInitTm;
	tyUINum tyNumInMagConv2InitTm;
	tyUINum tyNumOutMagConv2InitTm;
	tyUINum tyNumLifterMagConv2InitTm;
	tyUINum tyNumLifterTopPos;
	tyUINum tyNumLifterBtmPos;
	tyUIBtn tyBtnTeachTopPos;
	tyUIBtn tyBtnTeachBtmPos;
	tyUINum tyNumLifterTopPos2;
	tyUINum tyNumLifterBtmPos2;
	tyUIBtn tyBtnTeachTopPos2;
	tyUIBtn tyBtnTeachBtmPos2;
	tyUINum tyNumTCPSvrPort;
	tyUIBtn tyBtnMagWidthChkDis;
	tyUINum tyNumMag1WidthChkDetDist;
	tyUINum tyNumMag2WidthChkDetDist;
	tyUINum tyNumMag3WidthChkDetDist;
	tyUIBtn tyBtnDMCScannerEn;
	tyUINum tyNumDMCScanWriteTO;
	tyUINum tyNumInStprDelayTm;
	tyUIBtn tyBtnInletStopperDis;
	tyUINum tyNumMESResponseTO;
	tyUIBtn tyBtnMESEn;
	tyUIBtn tyBtnSwitchingProductType;
	tyUIBtn tyBtnBatchIDChgOverCmp;
	tyUIBtn tyBtnIgnoreTopClearance;
	tyUIBtn tyBtnIgnoreBottomClearance;
	tyUIBtn tyBtnIgnoreThickness;
	tyUIDrpDn tyDrpDnPos1;
	tyUIDrpDn tyDrpDnPos2;
	tyUIDrpDn tyDrpDnPos3;
} tyLyrP1021McSetGen;
#endif

#ifndef __AS__TYPE_tyLyrP1021McSetNetwork
#define __AS__TYPE_tyLyrP1021McSetNetwork
typedef struct tyLyrP1021McSetNetwork
{	tyUIString tyStringIPAddr;
	tyUIString tyStringSubnetMask;
	tyUIString tyStringHMIIPAddr;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP1021McSetNetwork;
#endif

#ifndef __AS__TYPE_tyUIP1021McSetGen
#define __AS__TYPE_tyUIP1021McSetGen
typedef struct tyUIP1021McSetGen
{	tyLyrP1021McSetGen tyGen;
	tyLyrP1021McSetGen tyGenBkUp;
	tyLyrP1021McSetNetwork tyNetwork;
	tyLyrC0004Navi tyNaviLyr1;
	tyLyrC0004Navi tyNaviLyr2;
	tyLyrC0004Navi tyNaviLyr3;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxUpdtSubnetAsk;
	tyLyrC0008MsgBox tyMsgBoxUpdtSubnetErr;
	tyLyrC0008MsgBox tyMsgBoxSubnetInvalid;
	tyLyrC0008MsgBox tyMsgBoxUpdtIPAddrAsk;
	tyLyrC0008MsgBox tyMsgBoxUpdtIPAddrErr;
	tyLyrC0008MsgBox tyMsgBoxChgNetworkAsk;
	tyLyrC0008MsgBox tyMsgBoxIPAddrInvalidEdit;
	tyLyrC0008MsgBox tyMsgBoxSubnetInvalidEdit;
	tyLyrC0008MsgBox tyMsgBoxGetIPAddrErr;
	tyLyrC0008MsgBox tyMsgBoxGetSubnetErr;
	tyLyrC0008MsgBox tyMsgBoxSetDHCPError;
	tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
	tyLyrC0008MsgBox tyMsgBoxBtnPosDuplicate;
	tyLyrC0008MsgBox tyMsgBoxUpdtHMIIPAddrAsk;
	tyLyrC0008MsgBox tyMsgBoxUpdtHMIIPAddrErr;
	tyLyrC0008MsgBox tyMsgBoxHMIIPAddrInvalid;
	tyLyrC0008MsgBox tyMsgBoxHMIIPAddrInvalidEdit;
	tyLyrC0008MsgBox tyMsgBoxGetHMIIPAddrErr;
	tyLyrC0008MsgBox tyMsgBoxSetDefaultGWErr;
} tyUIP1021McSetGen;
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

#ifndef __AS__TYPE_tyLyrP1023McSetHCommSel
#define __AS__TYPE_tyLyrP1023McSetHCommSel
typedef struct tyLyrP1023McSetHCommSel
{	tyUIBtn tyBtnSMEMA;
	tyUIBtn tyBtnHermes;
	tyUITxt tyTxtHeader;
	tyUILyr tyLyr;
} tyLyrP1023McSetHCommSel;
#endif

#ifndef __AS__TYPE_tyLyrP1023McSetHCommSMEMA
#define __AS__TYPE_tyLyrP1023McSetHCommSMEMA
typedef struct tyLyrP1023McSetHCommSMEMA
{	tyUIBtn tyBtnGdSig;
	tyUIDrpDn tyDrpDnSMEMAMod;
	tyUILyr tyLyr;
} tyLyrP1023McSetHCommSMEMA;
#endif

#ifndef __AS__TYPE_tyLyrP1023McSetHCommUSHermes
#define __AS__TYPE_tyLyrP1023McSetHCommUSHermes
typedef struct tyLyrP1023McSetHCommUSHermes
{	tyUINum tyNumSndAliveTm;
	tyUINum tyNumLaneID;
	tyUINum tyNumHostPort;
	tyUIString tyStringHostAddr;
	tyUIBtn tyBtnCheckAliveResponse;
	tyUIBtn tyBtnOverWrite;
	tyUIBtn tyBtnCmpParam;
	tyUIBtn tyBtnCmpTypeId;
	tyUIBitmap tyBitmapMask;
	tyUILyr tyLyr;
	tyUIBtn tyBtnBoardForecast;
	tyUIBtn tyBtnQueryBoardInfo;
} tyLyrP1023McSetHCommUSHermes;
#endif

#ifndef __AS__TYPE_tyUIP1023McSetHComm
#define __AS__TYPE_tyUIP1023McSetHComm
typedef struct tyUIP1023McSetHComm
{	tyLyrP1023McSetHCommSel tyUSSelA;
	tyLyrP1023McSetHCommSMEMA tyUSSMEMAA;
	tyLyrP1023McSetHCommUSHermes tyUSHermesA;
	tyLyrP1023McSetHCommSel tyUSSelB;
	tyLyrP1023McSetHCommSMEMA tyUSSMEMAB;
	tyLyrP1023McSetHCommUSHermes tyUSHermesB;
	tyLyrP1023McSetHCommSel tyUSSelABkUp;
	tyLyrP1023McSetHCommSMEMA tyUSSMEMAABkUp;
	tyLyrP1023McSetHCommUSHermes tyUSHermesABkUp;
	tyLyrP1023McSetHCommSel tyUSSelBBkUp;
	tyLyrP1023McSetHCommSMEMA tyUSSMEMABBkUp;
	tyLyrP1023McSetHCommUSHermes tyUSHermesBBkUp;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0004Navi tyNaviLyr1;
	tyLyrC0004Navi tyNaviLyr2;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
} tyUIP1023McSetHComm;
#endif

#ifndef __AS__TYPE_tyLyrP1024McSetAntiGap
#define __AS__TYPE_tyLyrP1024McSetAntiGap
typedef struct tyLyrP1024McSetAntiGap
{	tyUINum tyNumMagConvEntOn;
	tyUINum tyNumMagConvEntOff;
	tyUINum tyNumLftSenOff;
	tyUINum tyNumMidSenOff;
	tyUINum tyNumRgtSenOff;
	tyUINum tyNumClrSenOff;
	tyUINum tyNumMagConvPresentOn;
	tyUINum tyNumMagConvPresentOff;
	tyUILyr tyLyr;
} tyLyrP1024McSetAntiGap;
#endif

#ifndef __AS__TYPE_tyUIP1024McSetAntiGap
#define __AS__TYPE_tyUIP1024McSetAntiGap
typedef struct tyUIP1024McSetAntiGap
{	tyLyrP1024McSetAntiGap tyAntiGap;
	tyLyrP1024McSetAntiGap tyAntiGapBkUp;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1024McSetAntiGap;
#endif

#ifndef __AS__TYPE_tyLyrP1025McSetScan
#define __AS__TYPE_tyLyrP1025McSetScan
typedef struct tyLyrP1025McSetScan
{	tyUIBtn tyBtnTopScanEn;
	tyUIBtn tyBtnBtmScanEn;
	tyUIString tyStringTopScanSvrIP;
	tyUINum tyNumTopScanSvrPort;
	tyUIString tyStringBtmScanSvrIP;
	tyUINum tyNumBtmScanSvrPort;
	tyUILyr tyLyr;
} tyLyrP1025McSetScan;
#endif

#ifndef __AS__TYPE_tyUIP1025McSetScan
#define __AS__TYPE_tyUIP1025McSetScan
typedef struct tyUIP1025McSetScan
{	tyLyrP1025McSetScan tyScan;
	tyLyrP1025McSetScan tyScanBkUp;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1025McSetScan;
#endif

#ifndef __AS__TYPE_tyLyrP1026McSetTeach
#define __AS__TYPE_tyLyrP1026McSetTeach
typedef struct tyLyrP1026McSetTeach
{	tyUIBtn tyBtn1;
	tyUIBtn tyBtn2;
	tyUIBtn tyBtn3;
	tyUIBtn tyBtn4;
	tyUILyr tyLyr;
} tyLyrP1026McSetTeach;
#endif

#ifndef __AS__TYPE_tyUIP1026McSetTeach
#define __AS__TYPE_tyUIP1026McSetTeach
typedef struct tyUIP1026McSetTeach
{	tyLyrP1026InOutletShutterFB tyInOutletShutterFB;
	tyLyrP1026McSetTeach tyTeachLifterTopPos;
	tyLyrP1026McSetTeach tyTeachLifterBtmPos;
	tyLyrP1026McSetTeach tyTeachLifterTopPos2;
	tyLyrP1026McSetTeach tyTeachLifterBtmPos2;
	tyLyrP1026McSetTeach tyTeachTravPosA;
	tyLyrP1026McSetTeach tyTeachTravPosB;
	tyLyrP1026McSetTeach tyTeachLifterPosA;
	tyLyrP1026McSetTeach tyTeachLifterPosB;
	tyLyrC0001MotionStdTrav tyMotionStdTrav;
	tyLyrC0001MotionStdLifter tyMotionStdLifter;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	tyLyrC0002FullMask tyFullMaskTimingBelt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUpdtTravPosA;
	tyLyrC0008MsgBox tyMsgBoxUpdtTravPosB;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterPosA;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterPosB;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterTopPos;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterBtmPos;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterTopPos2;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterBtmPos2;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1026McSetTeach;
#endif

#ifndef __AS__TYPE_tyLyrP1027McSetOpCon
#define __AS__TYPE_tyLyrP1027McSetOpCon
typedef struct tyLyrP1027McSetOpCon
{	tyUINum tyNumLineNo;
	tyUINum tyNumStatNo;
	tyUINum tyNumStatIdx;
	tyUINum tyNumFuNo;
	tyUINum tyNumWorkPos;
	tyUINum tyNumToolPos;
	tyUIString tyStringProcessNm;
	tyUINum tyNumProcessNo;
	tyUIString tyStringApplication;
	tyUIString tyStringOpConSvrIP;
	tyUINum tyNumOpConSvrPort;
	tyUIBtn tyBtnOpConEn;
	tyUILyr tyLyr;
} tyLyrP1027McSetOpCon;
#endif

#ifndef __AS__TYPE_tyUIP1027McOpCon
#define __AS__TYPE_tyUIP1027McOpCon
typedef struct tyUIP1027McOpCon
{	tyLyrP1027McSetOpCon tyParam;
	tyLyrP1027McSetOpCon tyParamBkUp;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1027McOpCon;
#endif

#ifndef __AS__TYPE_tyLyrP1030MagSet
#define __AS__TYPE_tyLyrP1030MagSet
typedef struct tyLyrP1030MagSet
{	tyUIString tyStringRecipeNm;
	tyUINum tyNumSltToSltDist;
	tyUINum tyNumMaxSlt;
	tyUIBtn tyBtnLifterMag1Slt1Pos;
	tyUIBtn tyBtnLifterMag2Slt1Pos;
	tyUIBtn tyBtnLifterMag3Slt1Pos;
	tyUIBtn tyBtnTravPosMag1;
	tyUIBtn tyBtnTravPosMag2;
	tyUIBtn tyBtnTravPosMag3;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnDelete;
	tyUINum tyNumLifterMag1Slt1Pos;
	tyUINum tyNumLifterMag2Slt1Pos;
	tyUINum tyNumLifterMag3Slt1Pos;
	tyUINum tyNumTravPosMag1;
	tyUINum tyNumTravPosMag2;
	tyUINum tyNumTravPosMag3;
	tyUITxt tyTxtLifMag3Slt1PosLbl;
	tyUITxt tyTxtTravPosMag3Lbl;
	tyUITable tyTableRecipe;
	tyUIDrpDn tyDrpDnMagModel;
	tyUITxt tyTxtMagModel;
	tyUINum tyNumMagMaxBrdWidth;
	tyUIBtn tyBtnSort;
	tyUIBtn tyBtnSafetyBarDisabled;
	tyUIBtn tyBtnMagHeightChkEn;
	tyUIBitmap tyBitmapBrder;
} tyLyrP1030MagSet;
#endif

#ifndef __AS__TYPE_tyUIP1030MagSet
#define __AS__TYPE_tyUIP1030MagSet
typedef struct tyUIP1030MagSet
{	tyLyrP1030MagSet tyMagSet;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxListFull;
	tyLyrC0008MsgBox tyMsgBoxListErr;
	tyLyrC0008MsgBox tyMsgBoxSaveNoNm;
	tyLyrC0008MsgBox tyMsgBoxReloadCurrRcp;
	tyLyrC0008MsgBox tyMsgBoxDelCurrRcpAsk;
	tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	tyLyrC0008MsgBox tyMsgBoxDelNmEmpty;
	tyLyrC0008MsgBox tyMsgBoxDelErr;
	tyLyrC0008MsgBox tyMsgBoxDelAsk;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1030MagSet;
#endif

#ifndef __AS__TYPE_tyLyrP1031InOutletShutterFB
#define __AS__TYPE_tyLyrP1031InOutletShutterFB
typedef struct tyLyrP1031InOutletShutterFB
{	tyUILString tyStringStat;
	tyUIBtn tyBtnOpen;
	tyUIBtn tyBtnClose;
	tyUILyr tyLyr;
} tyLyrP1031InOutletShutterFB;
#endif

#ifndef __AS__TYPE_tyLyrP1031MagSetTeach
#define __AS__TYPE_tyLyrP1031MagSetTeach
typedef struct tyLyrP1031MagSetTeach
{	tyUIBtn tyBtn1;
	tyUIBtn tyBtn2;
	tyUIBtn tyBtn3;
	tyUIBtn tyBtn4;
	tyUILyr tyLyr;
	tyUINum tyNumNewSlt;
} tyLyrP1031MagSetTeach;
#endif

#ifndef __AS__TYPE_tyUIP1031MagSetTeach
#define __AS__TYPE_tyUIP1031MagSetTeach
typedef struct tyUIP1031MagSetTeach
{	tyLyrP1031InOutletShutterFB tyInOutletShutterFB;
	tyLyrP1031MagSetTeach tyTeachLifterMag1Slt1Pos;
	tyLyrP1031MagSetTeach tyTeachLifterMag2Slt1Pos;
	tyLyrP1031MagSetTeach tyTeachLifterMag3Slt1Pos;
	tyLyrP1031MagSetTeach tyTeachTravPosMag1;
	tyLyrP1031MagSetTeach tyTeachTravPosMag2;
	tyLyrP1031MagSetTeach tyTeachTravPosMag3;
	tyLyrC0001MotionStdTrav tyMotionStdTrav;
	tyLyrC0001MotionStdLifter tyMotionStdLifter;
	tyLyrC0002FullMask tyFullMaskHide;
	tyLyrC0002FullMask tyFullMaskEStop;
	tyLyrC0002FullMask tyFullMaskCWSig;
	tyLyrC0002FullMask tyFullMaskSafetyRly;
	tyLyrC0002FullMask tyFullMaskSafetyLmtSW;
	tyLyrC0002FullMask tyFullMaskTimingBelt;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag1Slt1Pos;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag2Slt1Pos;
	tyLyrC0008MsgBox tyMsgBoxUpdtLifterMag3Slt1Pos;
	tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag1;
	tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag2;
	tyLyrC0008MsgBox tyMsgBoxUpdtTravPosMag3;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
} tyUIP1031MagSetTeach;
#endif

#ifndef __AS__TYPE_tyLyrP1040ProdSet
#define __AS__TYPE_tyLyrP1040ProdSet
typedef struct tyLyrP1040ProdSet
{	tyUILString tyStringRecipeNm;
	tyUINum tyNumProdWidth;
	tyUINum tyNumProdWidth2;
	tyUINum tyNumFirstSlt;
	tyUINum tyNumLastSlt;
	tyUINum tyNumPitch;
	tyUINum tyNumBrdPerSlt;
	tyUINum tyNumMinReqFreeBffr;
	tyUITxt tyTxtBrdPerSlt;
	tyUITxt tyTxtMinReqFreeBffr;
	tyUIBtn tyBtnToptoBtm;
	tyUIBtn tyBtnGapBetBrds;
	tyUIBtn tyBtnLongBrd;
	tyUILString tyStringSearch;
	tyUITable tyTableRecipe;
	tyUIBtn tyBtnToXML;
	tyUIBtn tyBtnFromXML;
	tyUIBtn tyBtnSave;
	tyUIBtn tyBtnDelete;
	tyUIDrpDn tyDrpDnMcMode;
	tyUIBtn tyBtnSort;
	tyUIHotspot tyHotspotShowLRcp;
	tyUINum tyNumMtrPshrExtSpd;
	tyUINum tyNumMtrPshrExtTorq;
	tyUINum tyNumPshrOffset;
	tyUITxt tyTxtPshrOffset;
} tyLyrP1040ProdSet;
#endif

#ifndef __AS__TYPE_tyUIP1040ProdSet
#define __AS__TYPE_tyUIP1040ProdSet
typedef struct tyUIP1040ProdSet
{	tyLyrC0011RcpPopUp tyRcpPopUp;
	tyLyrP1040ProdSet tyProdSet;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxSaveAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxListFull;
	tyLyrC0008MsgBox tyMsgBoxListErr;
	tyLyrC0008MsgBox tyMsgBoxSaveNoNm;
	tyLyrC0008MsgBox tyMsgBoxReloadCurrRcp;
	tyLyrC0008MsgBox tyMsgBoxDelCurrRcpAsk;
	tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	tyLyrC0008MsgBox tyMsgBoxDelNmEmpty;
	tyLyrC0008MsgBox tyMsgBoxDelErr;
	tyLyrC0008MsgBox tyMsgBoxDelAsk;
	tyLyrC0008MsgBox tyMsgBoxToXMLAsk;
	tyLyrC0008MsgBox tyMsgBoxToXMLErr;
	tyLyrC0008MsgBox tyMsgBoxFromXMLAsk;
	tyLyrC0008MsgBox tyMsgBoxFromXMLErr;
	tyLyrC0008MsgBox tyMsgBoxSaveListErr;
} tyUIP1040ProdSet;
#endif

#ifndef __AS__TYPE_tyLyrP1050LFSetLdr
#define __AS__TYPE_tyLyrP1050LFSetLdr
typedef struct tyLyrP1050LFSetLdr
{	tyUITable1 tyTable1List;
	tyUIBtn tyBtnEdit;
	tyUIBtn tyBtnDelete;
	tyUIBtn tyBtnOnline;
	tyUIBtn tyBtnOffline;
	tyUIBtn tyBtnShftUp;
	tyUIBtn tyBtnShftDwn;
	tyUINum tyNumBeforeOven;
	tyUINum tyNumAfterOven;
	tyUINum tyNumBeforeOven2;
	tyUINum tyNumAfterOven2;
	tyUILyr tyLyr;
} tyLyrP1050LFSetLdr;
#endif

#ifndef __AS__TYPE_tyLyrP1050LFSetLdrEdit
#define __AS__TYPE_tyLyrP1050LFSetLdrEdit
typedef struct tyLyrP1050LFSetLdrEdit
{	tyUINum tyNumMcNum;
	tyUIString tyStringIPAddr;
	tyUIBtn tyBtnOk;
	tyUIBtn tyBtnCancel;
	tyUITxt tyTxtLblInfoThirdParty;
	tyUILyr tyLyr;
} tyLyrP1050LFSetLdrEdit;
#endif

#ifndef __AS__TYPE_tyUIP1050LFSet
#define __AS__TYPE_tyUIP1050LFSet
typedef struct tyUIP1050LFSet
{	tyLyrP1050LFSetLdr tyLdr;
	tyLyrP1050LFSetLdr tyLdrBkUp;
	tyLyrP1050LFSetLdrEdit tyLdrEdit;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxIPAddrInvalid;
	tyLyrC0008MsgBox tyMsgBoxDelAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
	tyLyrC0008MsgBox tyMsgBoxIPAddrDuplicate;
} tyUIP1050LFSet;
#endif

#ifndef __AS__TYPE_tyLyrP1080UsrMgmt
#define __AS__TYPE_tyLyrP1080UsrMgmt
typedef struct tyLyrP1080UsrMgmt
{	tyUIDrpDn tyDrpDnLvl;
	tyUITable1 tyTableList;
	tyUIBtn tyBtnNewUsr;
	tyUIBtn tyBtnEditDetail;
	tyUIBtn tyBtnDeleteUsr;
	tyUILyr tyLyr;
	tyUIBtn tyBtnEditAccess;
} tyLyrP1080UsrMgmt;
#endif

#ifndef __AS__TYPE_tyLyrP1080UsrMgmtAct
#define __AS__TYPE_tyLyrP1080UsrMgmtAct
typedef struct tyLyrP1080UsrMgmtAct
{	tyUIString tyStringUsrNm;
	tyUIString tyStringPw;
	tyUIDrpDn tyDrpDnLvl;
	tyUIBtn tyBtnOk;
	tyUIBtn tyBtnCancel;
	tyUILyr tyLyr;
} tyLyrP1080UsrMgmtAct;
#endif

#ifndef __AS__TYPE_tyUIP1080UsrMgmt
#define __AS__TYPE_tyUIP1080UsrMgmt
typedef struct tyUIP1080UsrMgmt
{	tyLyrP1080UsrMgmt tyUsrMgmt;
	tyLyrP1080UsrMgmtAct tyActHide;
	tyLyrP1080UsrMgmtAct tyCreate;
	tyLyrP1080UsrMgmtAct tyEdit;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxAddErr;
	tyLyrC0008MsgBox tyMsgBoxEditErr;
	tyLyrC0008MsgBox tyMsgBoxAddNmExist;
	tyLyrC0008MsgBox tyMsgBoxEditParamErr;
	tyLyrC0008MsgBox tyMsgBoxAddParamErr;
	tyLyrC0008MsgBox tyMsgBoxListFull;
	tyLyrC0008MsgBox tyMsgBoxDelNmNotExist;
	tyLyrC0008MsgBox tyMsgBoxDelParamErr;
	tyLyrC0008MsgBox tyMsgBoxDelLastAdminErr;
	tyLyrC0008MsgBox tyMsgBoxDelAsk;
	tyLyrC0008MsgBox tyMsgBoxDelErr;
} tyUIP1080UsrMgmt;
#endif

#ifndef __AS__TYPE_tyLyrP1081UsrMgmtUsrAccessRgtSel
#define __AS__TYPE_tyLyrP1081UsrMgmtUsrAccessRgtSel
typedef struct tyLyrP1081UsrMgmtUsrAccessRgtSel
{	tyUIDrpDn tyDrpDnLevel;
	tyUILyr tyLyr;
} tyLyrP1081UsrMgmtUsrAccessRgtSel;
#endif

#ifndef __AS__TYPE_tyLyrP1081UsrMgmtUsrAccessRgt
#define __AS__TYPE_tyLyrP1081UsrMgmtUsrAccessRgt
typedef struct tyLyrP1081UsrMgmtUsrAccessRgt
{	tyUIBtn tyBtnOps;
	tyUIBtn tyBtnProdSel;
	tyUIBtn tyBtnMagSel;
	tyUIBtn tyBtnMcInfo;
	tyUIBtn tyBtnAlm;
	tyUIBtn tyBtnBffrInfo;
	tyUIBtn tyBtnOvenInfo;
	tyUIBtn tyBtnMagInfo;
	tyUIBtn tyBtnLFCtrl;
	tyUIBtn tyBtnManual;
	tyUIBtn tyBtnSimu;
	tyUIBtn tyBtnChgParam;
	tyUIBtn tyBtnLFSet;
	tyUIBtn tyBtnBackup;
	tyUIBtn tyBtnLang;
	tyUIBtn tyBtnMcSet;
	tyUIBtn tyBtnProdSet;
	tyUIBtn tyBtnMagSet;
	tyUIBtn tyBtnManualFBOnly;
	tyUIString tyStringNm;
	tyUITxt tyTxtTitle;
	tyUILyr tyLyr;
} tyLyrP1081UsrMgmtUsrAccessRgt;
#endif

#ifndef __AS__TYPE_tyUIP1081UsrAccessRgt
#define __AS__TYPE_tyUIP1081UsrAccessRgt
typedef struct tyUIP1081UsrAccessRgt
{	tyLyrP1081UsrMgmtUsrAccessRgtSel tyUsrAccessRgtSel;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl1;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl2;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl3;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl1BkUp;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl2BkUp;
	tyLyrP1081UsrMgmtUsrAccessRgt tyUsrAccessRgtLvl3BkUp;
	tyLyrC0004Navi tyNaviBack;
	tyLyrC0008MsgBox tyMsgBoxHide;
	tyLyrC0008MsgBox tyMsgBoxExitAsk;
	tyLyrC0008MsgBox tyMsgBoxSaveErr;
} tyUIP1081UsrAccessRgt;
#endif

#ifndef __AS__TYPE_tyVisu
#define __AS__TYPE_tyVisu
typedef struct tyVisu
{	unsigned short uiChgPage;
	unsigned short uiCurrPage;
	unsigned short uiSSaverTm;
	unsigned short uiScreenSaverRemainTm;
	unsigned char usiChgLang;
	unsigned char usiCurrLang;
} tyVisu;
#endif

#ifndef __AS__TYPE_tyKeypad
#define __AS__TYPE_tyKeypad
typedef struct tyKeypad
{	tyUIString tyStringTitle;
	tyUITxt tyTxtTitle;
} tyKeypad;
#endif

#ifndef __AS__TYPE_tyTxtSnippets
#define __AS__TYPE_tyTxtSnippets
typedef struct tyTxtSnippets
{	plcstring sLibraryNm[11];
	plcstring sUsrMgmtUsrLv1Nm[81];
	plcstring sUsrMgmtUsrLv2Nm[81];
	plcstring sUsrMgmtUsrLv3Nm[81];
} tyTxtSnippets;
#endif

#ifndef __AS__TYPE_tyUIProperty
#define __AS__TYPE_tyUIProperty
typedef struct tyUIProperty
{	tyVisu tyVisu;
	tyKeypad tyKeypad;
	tyTxtSnippets tyUITxtSnippets;
} tyUIProperty;
#endif

#ifndef __AS__TYPE_tyLyrC0001MotionStd
#define __AS__TYPE_tyLyrC0001MotionStd
typedef struct tyLyrC0001MotionStd
{	tyUIBitmap tyBitmapOrigin;
	tyUIBitmap tyBitmapPwr;
	tyUIBitmap tyBitmapRst;
	tyUIBitmap tyBitmapStop;
	tyUIBitmap tyBitmapMc;
	tyUIBtn tyBtnPosLmtSen;
	tyUIBtn tyBtnNegLmtSen;
	tyUIBtn tyBtnJogPos;
	tyUIBtn tyBtnJogNeg;
	tyUIBtn tyBtnMovAbs;
	tyUIBtn tyBtnMovRel;
	tyUIBtn tyBtnOrigin;
	tyUIBtn tyBtnPwr;
	tyUIBtn tyBtnRst;
	tyUIBtn tyBtnStop;
	tyUINum tyNumCurrPos;
	tyUINum tyNumErrCode;
	tyUINum tyNumNomSpd;
	tyUINum tyNumSlwSpd;
	tyUINum tyNumStepSize;
	tyUINum tyNumTargetPos;
	tyUILString tyStringStat;
} tyLyrC0001MotionStd;
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

#ifndef __AS__TYPE_eUIInitial
#define __AS__TYPE_eUIInitial
typedef enum eUIInitial
{	UIInitialC0005 = 0,
	UIInitialC0007 = 1,
	UIInitialP0000 = 2,
	UIInitialP0002 = 3,
	UIInitialP0003 = 4,
	UIInitialP0200 = 5,
	UIInitialP0201 = 6,
	UIInitialP0202 = 7,
	UIInitialP0203 = 8,
	UIInitialP0204 = 9,
	UIInitialP0205 = 10,
	UIInitialP0206 = 11,
	UIInitialP0207 = 12,
	UIInitialP0300 = 13,
	UIInitialP0400 = 14,
	UIInitialP0410 = 15,
	UIInitialP0800 = 16,
	UIInitialP0850 = 17,
	UIInitialP0900 = 18,
	UIInitialP0910 = 19,
	UIInitialP0920 = 20,
	UIInitialP0921 = 21,
	UIInitialP0922 = 22,
	UIInitialP0923 = 23,
	UIInitialP0928 = 24,
	UIInitialP0929 = 25,
	UIInitialP0930 = 26,
	UIInitialP0931 = 27,
	UIInitialP0932 = 28,
	UIInitialP0933 = 29,
	UIInitialP0934 = 30,
	UIInitialP0935 = 31,
	UIInitialP0936 = 32,
	UIInitialP0937 = 33,
	UIInitialP0938 = 34,
	UIInitialP0939 = 35,
	UIInitialP0940 = 36,
	UIInitialP0950 = 37,
	UIInitialP1000 = 38,
	UIInitialP1020 = 39,
	UIInitialP1021 = 40,
	UIInitialP1022 = 41,
	UIInitialP1023 = 42,
	UIInitialP1024 = 43,
	UIInitialP1026 = 44,
	UIInitialP1027 = 45,
	UIInitialP1030 = 46,
	UIInitialP1031 = 47,
	UIInitialP1040 = 48,
	UIInitialP1050 = 49,
	UIInitialP1080 = 50,
	UIInitialP1081 = 51,
	UIInitialDone = 52,
} eUIInitial;
#endif

#ifndef __AS__TYPE_tyUIAllAlm
#define __AS__TYPE_tyUIAllAlm
typedef struct tyUIAllAlm
{	plcbit bAlm[10000];
	plcbit bWarning[10000];
} tyUIAllAlm;
#endif

#ifndef __AS__TYPE_tyIPAddress
#define __AS__TYPE_tyIPAddress
typedef struct tyIPAddress
{	plcstring sSetIPAddress[16];
	plcstring sSetSubnetMask[16];
	plcstring sSelectedNetworkMode[31];
	plcstring sTempIpAddress[16];
	plcstring sTempSubnetMask[16];
	plcstring sTempNetworkMode[31];
} tyIPAddress;
#endif

#ifndef __AS__TYPE_eStartupAction
#define __AS__TYPE_eStartupAction
typedef enum eStartupAction
{	StartupActIdle = 0,
	StartupActRun = 1,
} eStartupAction;
#endif

#ifndef __AS__TYPE_eStartupStep
#define __AS__TYPE_eStartupStep
typedef enum eStartupStep
{	StartupStepUsrFolder = 0,
	StartupStepParameter = 1,
	StartupStepGetHWInfo = 2,
	StartupStepLibVer = 3,
	StartupStepRecipe = 4,
	StartupStepAutoRcp = 5,
	StartupStepUsrMgmt = 6,
	StartupStepBffr = 7,
	StartupStepAlarm = 8,
	StartupStepHermes = 9,
	StartupStepSDOWrite = 10,
	StartupStepSetupUI = 11,
	StartupStepDone = 12,
} eStartupStep;
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
} tyNtParam;
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

#ifndef __AS__TYPE_tyUsrMgmtFullDat
#define __AS__TYPE_tyUsrMgmtFullDat
typedef struct tyUsrMgmtFullDat
{	struct tyUsrMgmtParam a_tyAllList[50];
	tyUsrMgmtAccessRight tyAccessRightLvl1;
	tyUsrMgmtAccessRight tyAccessRightLvl2;
	tyUsrMgmtAccessRight tyAccessRightLvl3;
} tyUsrMgmtFullDat;
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

#ifndef __AS__TYPE_tyDigitalInput
#define __AS__TYPE_tyDigitalInput
typedef struct tyDigitalInput
{	plcbit bSafetyRlySig;
	plcbit bEStopSig;
	plcbit bCoverSWSig;
	plcbit bUBAA;
	plcbit bUBAB;
	plcbit bUBAAStat;
	plcbit bUBABStat;
	plcbit bPusherExtRS;
	plcbit bPusherRetRS;
	plcbit bConvLftSen;
	plcbit bConvMidSen;
	plcbit bConvRgtSen;
	plcbit bConvClrSen;
	plcbit bOvenInfeedSigA;
	plcbit bOvenInfeedSigB;
	plcbit bLifterTimingBeltSen;
	plcbit bLifterSafetyLmtSW1;
	plcbit bLifterSafetyLmtSW2;
	plcbit bMag1FixedClampRS;
	plcbit bMag1FixedUnclampRS;
	plcbit bMag1RemoteClampRS;
	plcbit bMag1RemoteUnclampRS;
	plcbit bMag2FixedClampRS;
	plcbit bMag2FixedUnclampRS;
	plcbit bMag2RemoteClampRS;
	plcbit bMag2RemoteUnclampRS;
	plcbit bMag3FixedClampRS;
	plcbit bMag3FixedUnclampRS;
	plcbit bMag3RemoteClampRS;
	plcbit bMag3RemoteUnclampRS;
	plcbit bInShutterOpenRS;
	plcbit bInShutterCloseRS;
	plcbit bOutShutterOpenRS;
	plcbit bOutShutterCloseRS;
	plcbit bMagPresentSen1;
	plcbit bMagPresentSen2;
	plcbit bMagPresentSen3;
	plcbit bMagConvEntSen1;
	plcbit bMagConvEntSen2;
	plcbit bMagConvEntSen3;
	plcbit bMag1AIVInPosSen1;
	plcbit bMag1AIVInPosSen2;
	plcbit bMag2AIVInPosSen1;
	plcbit bMag2AIVInPosSen2;
	plcbit bMag3AIVInPosSen1;
	plcbit bMag3AIVInPosSen2;
	plcbit bMag1OrientChkSen1;
	plcbit bMag1OrientChkSen2;
	plcbit bMag2OrientChkSen1;
	plcbit bMag2OrientChkSen2;
	plcbit bMag3OrientChkSen1;
	plcbit bMag3OrientChkSen2;
	plcbit bUSWidthChkSen;
	plcbit bConvLineAInletSen;
	plcbit bConvLineBInletSen;
	plcbit bMagConvHeightSen1;
	plcbit bMagConvHeightSen2;
	plcbit bMagConvHeightSen3;
	plcbit bMagConvSmallMagSen1;
	plcbit bMagConvSmallMagSen2;
	plcbit bMagConvSmallMagSen3;
	plcbit bMagConvLargeMagSen1;
	plcbit bMagConvLargeMagSen2;
	plcbit bMagConvLargeMagSen3;
	plcbit bMagConvCAB717MagSen1;
	plcbit bMagConvCAB717MagSen2;
	plcbit bMagConvCAB717MagSen3;
	plcbit bMag1SelUnClampRS;
	plcbit bMag2SelUnClampRS;
	plcbit bMag3SelUnClampRS;
	plcbit bMag1WallEngageRS;
	plcbit bMag1WallDisengageRS;
	plcbit bMag2WallEngageRS;
	plcbit bMag2WallDisengageRS;
	plcbit bMag3WallEngageRS;
	plcbit bMag3WallDisengageRS;
	plcbit bMag1SafetyBarExtRS;
	plcbit bMag1SafetyBarRetRS;
	plcbit bMag2SafetyBarExtRS;
	plcbit bMag2SafetyBarRetRS;
	plcbit bMag3SafetyBarExtRS;
	plcbit bMag3SafetyBarRetRS;
	plcbit bSOT1Receive;
	plcbit bSOT1AIVError;
	plcbit bSOT1AIVSizeLarge;
	plcbit bSOT1AIVReady;
	plcbit bSOT1AIVAvailable;
	plcbit bSOT2Receive;
	plcbit bSOT2AIVError;
	plcbit bSOT2AIVSizeLarge;
	plcbit bSOT2AIVReady;
	plcbit bSOT2AIVAvailable;
	plcbit bSOT3Receive;
	plcbit bSOT3AIVError;
	plcbit bSOT3AIVSizeLarge;
	plcbit bSOT3AIVReady;
	plcbit bSOT3AIVAvailable;
	plcbit bSOT4Receive;
	plcbit bSOT4AIVError;
	plcbit bSOT4AIVSizeLarge;
	plcbit bSOT4AIVReady;
	plcbit bSOT4AIVAvailable;
	plcbit bFleetManagerReady;
	plcbit bPusherExtSlwSen;
	plcbit bPusherRetSlwSen;
	plcbit bMtrPshrTorqueSig;
	plcbit bMtrPshrAlmSig;
	plcbit bMagWidthChkSen;
	plcbit bPshrAntiJam;
	plcbit bInMagConvEntSen;
	plcbit bInMagConvExtSen;
	plcbit bInMagConvMidSen;
	plcbit bOutMagConvEntSen;
	plcbit bOutMagConvExtSen;
	plcbit bOutMagConvMidSen;
	plcbit bInMagConv2EntSen;
	plcbit bInMagConv2ExtSen;
	plcbit bInMagConv2MidSen;
	plcbit bOutMagConv2EntSen;
	plcbit bOutMagConv2ExtSen;
	plcbit bOutMagConv2MidSen;
	plcbit bLifterLmtSW;
	plcbit bLifter2LmtSW;
	plcbit bMtrOverloadSig;
	plcbit bOutShutterOpenRS2;
	plcbit bOutShutterCloseRS2;
	plcbit bOutShutterOpenRS3;
	plcbit bOutShutterCloseRS3;
	plcbit bMag1FixedClampSen;
	plcbit bMag2FixedClampSen;
	plcbit bMag3FixedClampSen;
	plcbit bCurtainSenPB;
	plcbit bCurtainSen;
	plcbit bCurtainSafetySig;
	plcbit bHighMagDetSen1;
	plcbit bHighMagDetSen2;
	plcbit bHighMagDetSen3;
	plcbit bInletStopperASen;
	plcbit diScanComplSig;
	plcbit diPCBScanSen;
	plcbit bSPARE17;
	plcbit bSPARE18;
	plcbit bSPARE19;
	plcbit bSPARE20;
} tyDigitalInput;
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

#ifndef __AS__TYPE_tyHermesDSParam
#define __AS__TYPE_tyHermesDSParam
typedef struct tyHermesDSParam
{	plctime tSndAlive;
	plctime tRcvAlive;
	plcstring sDownstreamInterfaceId[81];
	unsigned short uiSvrPort;
	signed short iLaneID;
	plcstring sMachineId[81];
	plcstring sClientAddress[16];
	unsigned short uiClientPort;
	plcbit bFeatureCheckAliveResponse;
	plcbit bFeatureBoardForecast;
	plcbit bFeatureSendBoardInfo;
} tyHermesDSParam;
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

#ifndef __AS__TYPE_tyHermesConfiguration
#define __AS__TYPE_tyHermesConfiguration
typedef struct tyHermesConfiguration
{	struct tyHermesUSParam a_tyUSParam[4];
	struct tyHermesDSParam a_tyDSParam[4];
	tyHermesSvyParam tySvyParam;
} tyHermesConfiguration;
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

#ifndef __AS__TYPE_eOperationsStatus
#define __AS__TYPE_eOperationsStatus
typedef enum eOperationsStatus
{	OperationsStatusRun = 0,
	OperationsStatusStop = 1,
	OperationsStatusCycleStopping = 2,
	OperationsStatusStep = 3,
} eOperationsStatus;
#endif

#ifndef __AS__TYPE_tyTagDTMagToAGV
#define __AS__TYPE_tyTagDTMagToAGV
typedef struct tyTagDTMagToAGV
{	plcbit bEStopErr;
	plcbit bCI1MagazineFull;
	plcbit bCI1Rdy;
	plcbit bCI1Auto;
	plcbit bCI1Occupied;
	plcbit bCI1Running;
	plcbit bCI1IncorrectMagazineModel;
	plcbit bCI2MagazineFull;
	plcbit bCI2Rdy;
	plcbit bCI2Auto;
	plcbit bCI2Occupied;
	plcbit bCI2Running;
	plcbit bCI2IncorrectMagazineModel;
	plcbit bCI3MagazineFull;
	plcbit bCI3Rdy;
	plcbit bCI3Auto;
	plcbit bCI3Occupied;
	plcbit bCI3Running;
	plcbit bCI3IncorrectMagazineModel;
	plcbit bCI4MagazineFull;
	plcbit bCI4Rdy;
	plcbit bCI4Auto;
	plcbit bCI4Occupied;
	plcbit bCI4Running;
	plcbit bCI4IncorrectMagazineModel;
} tyTagDTMagToAGV;
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

#ifndef __AS__TYPE_tyStatPlatform
#define __AS__TYPE_tyStatPlatform
typedef struct tyStatPlatform
{	plcbit bMagLoaded;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bReqAIVToBring;
	plcbit bReqAIVToGet;
	plcbit bReadRFID;
	plcbit bWriteRFID;
} tyStatPlatform;
#endif

#ifndef __AS__TYPE_tyStatToMES
#define __AS__TYPE_tyStatToMES
typedef struct tyStatToMES
{	plcstring sMachineName[31];
	plcbit bActive;
	plcbit bAuto_Run;
	plcbit bError;
	plcbit bWarning;
	unsigned char nNumberOfPlatforms;
	struct tyStatPlatform tyTagStatOfPlatforms[4];
} tyStatToMES;
#endif

#ifndef __AS__TYPE_tyStatPlatformFromMES
#define __AS__TYPE_tyStatPlatformFromMES
typedef struct tyStatPlatformFromMES
{	signed short iAcceptCondition;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bRFIDWriteComplete;
	plcbit bTrigMagFull;
} tyStatPlatformFromMES;
#endif

#ifndef __AS__TYPE_tyStatFromMES
#define __AS__TYPE_tyStatFromMES
typedef struct tyStatFromMES
{	plcstring sMESName[31];
	plcbit bActive;
	struct tyStatPlatformFromMES tyTagStatOfPlatforms[4];
} tyStatFromMES;
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

#ifndef __AS__TYPE_eSimulationsStatus
#define __AS__TYPE_eSimulationsStatus
typedef enum eSimulationsStatus
{	SimulationsStatusRun = 0,
	SimulationsStatusStop = 1,
	SimulationsStatusCycleStopping = 2,
	SimulationsStatusStep = 3,
} eSimulationsStatus;
#endif

#ifndef __AS__TYPE_tyDispBffrCycTmDat
#define __AS__TYPE_tyDispBffrCycTmDat
typedef struct tyDispBffrCycTmDat
{	plcstring sSlttoSltIdx[81];
	plcstring sCycleTm[81];
	plcdword dwColor;
} tyDispBffrCycTmDat;
#endif

#ifndef __AS__TYPE_tyDispBffrCycTm
#define __AS__TYPE_tyDispBffrCycTm
typedef struct tyDispBffrCycTm
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrCycTmDat a_tyDispBffrDat[120];
} tyDispBffrCycTm;
#endif

#ifndef __AS__TYPE_eMtrPshrAction
#define __AS__TYPE_eMtrPshrAction
typedef enum eMtrPshrAction
{	MtrPshrActIdle = 0,
	MtrPshrActExt = 1,
	MtrPshrActRet = 2,
	MtrPshrActStop = 3,
	MtrPshrActSetExt = 4,
	MtrPshrActRstExt = 5,
	MtrPshrActSetRet = 6,
	MtrPshrActRstRet = 7,
	MtrPshrActSetSpdBit0 = 8,
	MtrPshrActRstSpdBit0 = 9,
	MtrPshrActSetSpdBit1 = 10,
	MtrPshrActRstSpdBit1 = 11,
	MtrPshrActSetSpdBit2 = 12,
	MtrPshrActRstSpdBit2 = 13,
	MtrPshrActSetSigOn = 14,
	MtrPshrActRstSigOn = 15,
	MtrPshrActSetBrake = 16,
	MtrPshrActRstBrake = 17,
	MtrPshrActSetAlmRst = 18,
	MtrPshrActRstAlmRst = 19,
	MtrPshrActSetAll = 20,
	MtrPshrActRstAll = 21,
} eMtrPshrAction;
#endif

#ifndef __AS__TYPE_eHermesFailedBoard
#define __AS__TYPE_eHermesFailedBoard
typedef enum eHermesFailedBoard
{	HermesUnknownBoard = 0,
	HermesGoodBoard = 1,
	HermesFailedBoard = 2,
} eHermesFailedBoard;
#endif

#ifndef __AS__TYPE_eHermesFlippedBoard
#define __AS__TYPE_eHermesFlippedBoard
typedef enum eHermesFlippedBoard
{	HermesFlippedBoardUnknownSide = 0,
	HermesFlippedBoardTopSideUp = 1,
	HermesFlippedBoardBtmSideUp = 2,
} eHermesFlippedBoard;
#endif

#ifndef __AS__TYPE_tyBoardProperty
#define __AS__TYPE_tyBoardProperty
typedef struct tyBoardProperty
{	plcstring sWorkOrderId[81];
	plcstring sBatchId[81];
	plcstring sBoardId[37];
	plcstring sBoardIdCreatedBy[81];
	eHermesFailedBoard eFailedBoard;
	plcstring sProductTypeId[255];
	eHermesFlippedBoard eFlippedBoard;
	plcstring sTopBarcode[255];
	plcstring sBottomBarcode[255];
	float rLength;
	float rWidth;
	float rThickness;
	float rConveyorSpeed;
	float rTopClearanceHeight;
	float rBottomClearanceHeight;
	float rWeight;
} tyBoardProperty;
#endif

#ifndef __AS__TYPE_tyMagProperties
#define __AS__TYPE_tyMagProperties
typedef struct tyMagProperties
{	plcstring sRcpNm[255];
	signed long diWidth;
	signed long diPitch;
	signed long diMinSlt;
	signed long diMaxSlt;
} tyMagProperties;
#endif

#ifndef __AS__TYPE_TouchAction
#define __AS__TYPE_TouchAction
typedef struct TouchAction
{	unsigned long status;
	unsigned long y;
	unsigned long x;
} TouchAction;
#endif

#ifndef __AS__TYPE_tyBffrStat
#define __AS__TYPE_tyBffrStat
typedef struct tyBffrStat
{	plcbit bBffrFull;
	plcbit bBffrMty;
	signed long diTtlBrdCap;
	signed long diTtlGdBrd;
	signed long diTtlBadBrd;
} tyBffrStat;
#endif

#ifndef __AS__TYPE_tyDispBffrDat
#define __AS__TYPE_tyDispBffrDat
typedef struct tyDispBffrDat
{	plcstring sSltIdx[81];
	plcstring sSltTm[81];
	plcstring sBrdStoreTm[11];
	plcstring sRemainCoolTm[11];
	plcdword dwColor;
} tyDispBffrDat;
#endif

#ifndef __AS__TYPE_tyDispBffr
#define __AS__TYPE_tyDispBffr
typedef struct tyDispBffr
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrDat a_tyDispBffrDat[120];
} tyDispBffr;
#endif

#ifndef __AS__TYPE_eMachineStat
#define __AS__TYPE_eMachineStat
typedef enum eMachineStat
{	Run = 0,
	Stop = 1,
	Manual = 2,
	Warning = 3,
	InError = 4,
} eMachineStat;
#endif

#ifndef __AS__TYPE_tyLFFollowerToLeaderTag
#define __AS__TYPE_tyLFFollowerToLeaderTag
typedef struct tyLFFollowerToLeaderTag
{	plcstring sCurrProdRcp[255];
	signed long diCurrProdWidthUS;
	signed long diCurrProdWidthDS;
	plcstring sCurrMagRcp[31];
	plcstring sIPAddr[16];
	plcstring sMcNm[31];
	plcbit bSectionLeader;
	unsigned char usiRunTm;
	plcbit bProdRcpErr;
	plcbit bProdWidthErr;
	plcbit bMagRcpErr;
	plcbit bSyncTmErr;
	eMachineStat eCurrMachineStat;
	plcbit bProdChgOverActive;
} tyLFFollowerToLeaderTag;
#endif

#ifndef __AS__TYPE_tyLFFollowerInfo
#define __AS__TYPE_tyLFFollowerInfo
typedef struct tyLFFollowerInfo
{	plcbit bOnline;
	unsigned char usiRunTmOld;
} tyLFFollowerInfo;
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

#ifndef __AS__TYPE_tyTouchGetActionInternal
#define __AS__TYPE_tyTouchGetActionInternal
typedef struct tyTouchGetActionInternal
{	unsigned long udiHandle;
	TouchAction tyTouchAction;
} tyTouchGetActionInternal;
#endif

#ifndef __AS__TYPE_tyTouchFilterInternal
#define __AS__TYPE_tyTouchFilterInternal
typedef struct tyTouchFilterInternal
{	unsigned long udiXOld;
	unsigned long udiYOld;
} tyTouchFilterInternal;
#endif

struct R_TRIG
{	plcbit CLK;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void R_TRIG(struct R_TRIG* inst);
#ifndef __AS__TYPE_tyTouchGetSlideDistInternal
#define __AS__TYPE_tyTouchGetSlideDistInternal
typedef struct tyTouchGetSlideDistInternal
{	struct R_TRIG fbPressedRise;
	struct R_TRIG fbInternalPressedRise;
	plcbit bValidStartPress;
	plcbit bPressed;
	unsigned long udiXTemp;
	unsigned long udiYTemp;
} tyTouchGetSlideDistInternal;
#endif

struct F_TRIG
{	plcbit CLK;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void F_TRIG(struct F_TRIG* inst);
#ifndef __AS__TYPE_tyTouchGetTapInternal
#define __AS__TYPE_tyTouchGetTapInternal
typedef struct tyTouchGetTapInternal
{	struct R_TRIG fbInternalPressedRise;
	struct F_TRIG fbInternalPressedFall;
	plcbit bPressed;
	plctime tTmTemp;
	unsigned long udiXTemp;
	unsigned long udiYTemp;
	plctime tTmPrev;
	unsigned long udiXPrev;
	unsigned long udiYPrev;
} tyTouchGetTapInternal;
#endif

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
struct fbTouchFilter
{	unsigned long udiXIn;
	unsigned long udiYIn;
	unsigned long udiXOut;
	unsigned long udiYOut;
	tyTouchFilterInternal tyInternal;
	plcbit bPressedIn;
	plcbit bPressedOut;
};
_BUR_PUBLIC void fbTouchFilter(struct fbTouchFilter* inst);
struct fbTouchGetAction
{	plcstring sVisuNm[81];
	unsigned long udiX;
	unsigned long udiY;
	tyTouchGetActionInternal tyInternal;
	plcbit bPressed;
};
_BUR_PUBLIC void fbTouchGetAction(struct fbTouchGetAction* inst);
struct fbTouchGetSlideDist
{	unsigned long udiWorkAreaStartX;
	unsigned long udiWorkAreaStartY;
	unsigned long udiWorkAreaEndX;
	unsigned long udiWorkAreaEndY;
	unsigned long udiMinXDist;
	unsigned long udiMinYDist;
	unsigned long udiX;
	unsigned long udiY;
	signed long diXDist;
	signed long diYDist;
	tyTouchGetSlideDistInternal tyInternal;
	plcbit bPressed;
};
_BUR_PUBLIC void fbTouchGetSlideDist(struct fbTouchGetSlideDist* inst);
struct fbTouchGetTap
{	unsigned long udiWorkAreaStartX;
	unsigned long udiWorkAreaStartY;
	unsigned long udiWorkAreaEndX;
	unsigned long udiWorkAreaEndY;
	unsigned long udiMinSingleTapXDiff;
	unsigned long udiMinSingleTapYDiff;
	plctime tMaxDoubleTapTm;
	unsigned long udiMinDoubleTapXDiff;
	unsigned long udiMinDoubleTapYDiff;
	unsigned long udiX;
	unsigned long udiY;
	unsigned long udiSingleTapX;
	unsigned long udiSingleTapY;
	unsigned long udiDoubleTapX;
	unsigned long udiDoubleTapY;
	tyTouchGetTapInternal tyInternal;
	plcbit bPressed;
	plcbit bSingleTap;
	plcbit bDoubleTap;
};
_BUR_PUBLIC void fbTouchGetTap(struct fbTouchGetTap* inst);
#ifndef __AS__TYPE_tyTableCtrlInternal
#define __AS__TYPE_tyTableCtrlInternal
typedef struct tyTableCtrlInternal
{	struct TON fbSingleTapChkDlyTm;
	struct TON fbSliderOffTm;
	struct R_TRIG fbSelectedRowMnlRise;
	struct R_TRIG fbTablePosUpRise;
	struct R_TRIG fbTablePosDownRise;
	struct F_TRIG fbSliderRelease;
	struct fbTouchFilter fbTouchFilter;
	struct fbTouchGetAction fbTouchGetAction;
	struct fbTouchGetSlideDist fbTouchGetSlideDist;
	struct fbTouchGetTap fbTouchGetTap;
	signed short i;
	signed short iTablePos;
	signed short iTablePosTemp;
} tyTableCtrlInternal;
#endif

#ifndef __AS__TYPE_tyHermesSendWorkOrderInfoData
#define __AS__TYPE_tyHermesSendWorkOrderInfoData
typedef struct tyHermesSendWorkOrderInfoData
{	plcstring sQueryId[81];
	plcstring sWorkOrderId[81];
	plcstring sBatchId[81];
	plcstring sBoardId[37];
	plcstring sBoardIdCreatedBy[81];
	eHermesFailedBoard eFailedBoard;
	plcstring sProductTypeId[255];
	eHermesFlippedBoard eFlippedBoard;
	plcstring sTopBarcode[255];
	plcstring sBottomBarcode[255];
	float rLength;
	float rWidth;
	float rThickness;
	float rConveyorSpeed;
	float rTopClearanceHeight;
	float rBottomClearanceHeight;
	float rWeight;
} tyHermesSendWorkOrderInfoData;
#endif

#ifndef __AS__TYPE_tyHermesSendWorkOrderInfoAvl
#define __AS__TYPE_tyHermesSendWorkOrderInfoAvl
typedef struct tyHermesSendWorkOrderInfoAvl
{	plcbit bQueryId;
	plcbit bWorkOrderId;
	plcbit bBatchId;
	plcbit bBoardId;
	plcbit bBoardIdCreatedBy;
	plcbit bFailedBoard;
	plcbit bProductTypeId;
	plcbit bFlippedBoard;
	plcbit bTopBarcode;
	plcbit bBottomBarcode;
	plcbit bLength;
	plcbit bWidth;
	plcbit bThickness;
	plcbit bConveyorSpeed;
	plcbit bTopClearanceHeight;
	plcbit bBottomClearanceHeight;
	plcbit bWeight;
} tyHermesSendWorkOrderInfoAvl;
#endif

#ifndef __AS__TYPE_tyHermesSendWorkOrderInfo
#define __AS__TYPE_tyHermesSendWorkOrderInfo
typedef struct tyHermesSendWorkOrderInfo
{	tyHermesSendWorkOrderInfoData tyData;
	tyHermesSendWorkOrderInfoAvl tyAvl;
} tyHermesSendWorkOrderInfo;
#endif

struct fbTableCtrl
{	plcstring sVisuNm[81];
	unsigned long udiWorkAreaStartX;
	unsigned long udiWorkAreaStartY;
	unsigned long udiWorkAreaEndX;
	unsigned long udiWorkAreaEndY;
	unsigned long udiMinXDist;
	unsigned long udiMinYDist;
	unsigned short uiSlideScale;
	signed short iTotalData;
	signed short iTotalRow;
	unsigned short uiSelectedRowMnl;
	unsigned short uiSelectedRow;
	unsigned short(* uiSliderStatus);
	struct tyUIHotspot(* a_tyUIHotspot)[15];
	unsigned short(* uiTablePos);
	signed short(* iSliderPos);
	tyTableCtrlInternal tyInternal;
	plcbit bSelectedRowMnl;
	plcbit bTablePosPlus;
	plcbit bTablePosMinus;
	plcbit bTableActive;
	plcbit bSliderActive;
};
_BUR_PUBLIC void fbTableCtrl(struct fbTableCtrl* inst);
struct fbTableCtrl_v2
{	plcstring sVisuNm[81];
	unsigned long udiWorkAreaStartX;
	unsigned long udiWorkAreaStartY;
	unsigned long udiWorkAreaEndX;
	unsigned long udiWorkAreaEndY;
	unsigned long udiMinXDist;
	unsigned long udiMinYDist;
	unsigned short uiSlideScale;
	signed short iTotalData;
	signed short iTotalRow;
	unsigned short uiSelectedRowMnl;
	plcbit(* p_bTableActive);
	plcbit(* p_bSliderActive);
	unsigned short(* p_uiSelectedRow);
	unsigned short(* p_uiSliderStatus);
	struct tyUIHotspot(* pa_tyUIHotspot)[15];
	unsigned short(* p_uiTablePos);
	signed short(* p_iSliderPos);
	tyTableCtrlInternal tyInternal;
	plcbit bSelectedRowMnl;
	plcbit bTablePosPlus;
	plcbit bTablePosMinus;
};
_BUR_PUBLIC void fbTableCtrl_v2(struct fbTableCtrl_v2* inst);
_BUR_LOCAL unsigned long(* p_eAct);
_BUR_LOCAL plcbit(* p_bOpsRun);
_BUR_LOCAL plcbit(* p_bAGVOnline);
_BUR_LOCAL plcbit(* p_bMachineOnline);
_BUR_LOCAL plcbit(* p_bAGVSimulationOn);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV);
_BUR_LOCAL plcbit(* p_bStartupRun);
_BUR_LOCAL eStartupAction(* p_eStartupStat);
_BUR_LOCAL eFBStatus(* p_eStartupStatus);
_BUR_LOCAL plcstring(* p_sStartupStatTxt)[201];
_BUR_LOCAL eStartupStep(* p_eStartupStep);
_BUR_LOCAL plcstring(* p_sStartupStepTxt)[81];
_BUR_LOCAL plcbit(* p_bStartupGetConfigDone);
_BUR_LOCAL plcbit(* p_bStartupMismatchSetConfigDone);
_BUR_LOCAL plcbit(* p_bStartupUISettingsLoadDone);
_BUR_LOCAL eHWInfoAction(* p_eHWInfoStat);
_BUR_LOCAL eFBStatus(* p_eHWInfoStatus);
_BUR_LOCAL plcstring(* p_sHWInfoStatTxt)[201];
_BUR_LOCAL plcstring(* p_sHWInfoIPAddr)[16];
_BUR_LOCAL plcstring(* p_sHWInfoSubnetMask)[16];
_BUR_LOCAL unsigned long(* p_udiHWInfoEthMode);
_BUR_LOCAL eTLBuzAction(* p_eTLBuzStat);
_BUR_LOCAL eFBStatus(* p_eTLBuzStatus);
_BUR_LOCAL plcstring(* p_sTLBuzStatTxt)[201];
_BUR_LOCAL struct tyAlarmCurr(* p_tyAlarmCurrList)[200];
_BUR_LOCAL unsigned long(* p_tyAlarmRcyList)[200];
_BUR_LOCAL plcstring(* p_tyAlarmHistoryList)[300][201];
_BUR_LOCAL plcbit(* p_bAlarmWarning);
_BUR_LOCAL plcbit(* p_bAlarmErr);
_BUR_LOCAL plcbit(* p_bAlarmInfo);
_BUR_LOCAL plcstring(* p_sAlarmInfoMsg)[201];
_BUR_LOCAL plcbit(* p_bAlarmInfoLF);
_BUR_LOCAL eRstErrAction(* p_eRstErrStat);
_BUR_LOCAL eFBStatus(* p_eRstErrStatus);
_BUR_LOCAL plcstring(* p_sRstErrStatTxt)[201];
_BUR_LOCAL eProdRcpAction(* p_eProdRcpStat);
_BUR_LOCAL eFBStatus(* p_eProdRcpStatus);
_BUR_LOCAL plcstring(* p_sProdRcpStatTxt)[201];
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpFilterList)[2000];
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpSortedList)[2000];
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpCurrList)[2000];
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpCurrRcp0);
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpCurrRcp1);
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpCurrRcp2);
_BUR_LOCAL struct tyProdRcpParam(* p_tyProdRcpInfoOut);
_BUR_LOCAL plcbit(* p_bProdRcpNmEmpty);
_BUR_LOCAL plcbit(* p_bProdRcpListFull);
_BUR_LOCAL plcbit(* p_bProdRcpNmNotExist);
_BUR_LOCAL eMpProdRcpAction(* p_eMpProdRcpStat);
_BUR_LOCAL eFBStatus(* p_eMpProdRcpStatus);
_BUR_LOCAL eMagRcpAction(* p_eMagRcpStat);
_BUR_LOCAL eFBStatus(* p_eMagRcpStatus);
_BUR_LOCAL plcstring(* p_sMagRcpStatTxt)[201];
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpFilterList)[10];
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpSortedList)[2000];
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpCurrList)[10];
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpInfoOut);
_BUR_LOCAL struct tyMagRcpParam(* p_tyMagRcpCurrRcp);
_BUR_LOCAL plcbit(* p_bMagRcpNmEmpty);
_BUR_LOCAL plcbit(* p_bMagRcpListFull);
_BUR_LOCAL plcbit(* p_bMagRcpNmNotExist);
_BUR_LOCAL eMcParamAction(* p_eMcParamStat);
_BUR_LOCAL eFBStatus(* p_eMcParamStatus);
_BUR_LOCAL plcstring(* p_sMcParamStatTxt)[201];
_BUR_LOCAL struct tyMcParam(* p_tyMcParamCurr);
_BUR_LOCAL plcbit(* p_bSiemensMcModeChgPrep);
_BUR_LOCAL struct tyNtParam(* p_tyNtParamCurr);
_BUR_LOCAL eUsrMgmtAction(* p_eUsrMgmtStat);
_BUR_LOCAL eFBStatus(* p_eUsrMgmtStatus);
_BUR_LOCAL plcstring(* p_sUsrMgmtStatTxt)[201];
_BUR_LOCAL struct tyUsrMgmtParam(* p_tyUsrMgmtCurrUsr);
_BUR_LOCAL struct tyUsrMgmtAccessRight(* p_tyUsrMgmtCurrAccessRgt);
_BUR_LOCAL struct tyUsrMgmtParam(* p_tyUsrMgmtAllList)[50];
_BUR_LOCAL struct tyUsrMgmtParam(* p_tyUsrMgmtLv2List)[50];
_BUR_LOCAL struct tyUsrMgmtParam(* p_tyUsrMgmtLv3List)[50];
_BUR_LOCAL struct tyUsrMgmtParam(* p_tyUsrMgmtAdminList)[50];
_BUR_LOCAL plcbit(* p_bUsrMgmtNmEmpty);
_BUR_LOCAL plcbit(* p_bUsrMgmtListFull);
_BUR_LOCAL plcbit(* p_bUsrMgmtNmExist);
_BUR_LOCAL plcbit(* p_bUsrMgmtNmNotExist);
_BUR_LOCAL plcbit(* p_bUsrMgmtLastAdmin);
_BUR_LOCAL plcbit(* p_bUsrMgmtLoginSuccess);
_BUR_LOCAL plcbit(* p_bUsrMgmtPwMismatch);
_BUR_LOCAL plcbit(* p_bUsrMgmtUnableDelete);
_BUR_LOCAL struct tyUsrMgmtFullDat(* p_tyUsrMgmtFullData);
_BUR_LOCAL eOvenInfoAction(* p_eOvenInfoAStat);
_BUR_LOCAL eFBStatus(* p_eOvenInfoAStatus);
_BUR_LOCAL plcstring(* p_sOvenInfoAStatTxt)[201];
_BUR_LOCAL signed long(* p_diOvenInfoABrdInOven);
_BUR_LOCAL eOvenInfoAction(* p_eOvenInfoBStat);
_BUR_LOCAL eFBStatus(* p_eOvenInfoBStatus);
_BUR_LOCAL plcstring(* p_sOvenInfoBStatTxt)[201];
_BUR_LOCAL signed long(* p_diOvenInfoBBrdInOven);
_BUR_LOCAL eBufferAction(* p_eBuffer1Stat);
_BUR_LOCAL eFBStatus(* p_eBuffer1Status);
_BUR_LOCAL plcstring(* p_sBuffer1StatTxt)[201];
_BUR_LOCAL struct tyDispBffr(* p_tyBuffer1DispBffr);
_BUR_LOCAL struct tyBffrStat(* p_tyBuffer1BffrStat);
_BUR_LOCAL plcbit(* p_bBuffer1MagPresent);
_BUR_LOCAL plcbit(* p_bBufferMagRemoved2);
_BUR_LOCAL plcbit(* p_bBufferMagRemoved1);
_BUR_LOCAL eBufferAction(* p_eBuffer2Stat);
_BUR_LOCAL eFBStatus(* p_eBuffer2Status);
_BUR_LOCAL plcstring(* p_sBuffer2StatTxt)[201];
_BUR_LOCAL struct tyDispBffr(* p_tyBuffer2DispBffr);
_BUR_LOCAL struct tyBffrStat(* p_tyBuffer2BffrStat);
_BUR_LOCAL plcbit(* p_bBuffer2MagPresent);
_BUR_LOCAL eBufferAction(* p_eBuffer3Stat);
_BUR_LOCAL eFBStatus(* p_eBuffer3Status);
_BUR_LOCAL plcstring(* p_sBuffer3StatTxt)[201];
_BUR_LOCAL struct tyDispBffr(* p_tyBuffer3DispBffr);
_BUR_LOCAL struct tyBffrStat(* p_tyBuffer3BffrStat);
_BUR_LOCAL plcbit(* p_bBuffer3MagPresent);
_BUR_LOCAL plcbit(* p_bBufferMagRemoved3);
_BUR_LOCAL signed long(* p_diBufferMagABffrMtySlt);
_BUR_LOCAL signed long(* p_diBufferMagBBffrMtySlt);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMAAStat);
_BUR_LOCAL eFBStatus(* p_eUSSMEMAAStatus);
_BUR_LOCAL plcstring(* p_sUSSMEMAAStatTxt)[201];
_BUR_LOCAL plcbit(* p_bUSSMEMAAUSRdy);
_BUR_LOCAL plcbit(* p_bUSSMEMAAUSGdBrdRdy);
_BUR_LOCAL plcbit(* p_bUSSMEMAADSRdy);
_BUR_LOCAL eSMEMAAction(* p_eUSSMEMABStat);
_BUR_LOCAL eFBStatus(* p_eUSSMEMABStatus);
_BUR_LOCAL plcstring(* p_sUSSMEMABStatTxt)[201];
_BUR_LOCAL plcbit(* p_bUSSMEMABUSRdy);
_BUR_LOCAL plcbit(* p_bUSSMEMABUSGdBrdRdy);
_BUR_LOCAL plcbit(* p_bUSSMEMABDSRdy);
_BUR_LOCAL ePneuAction(* p_eInShutterStat);
_BUR_LOCAL eFBStatus(* p_eInShutterStatus);
_BUR_LOCAL plcstring(* p_sInShutterStatTxt)[201];
_BUR_LOCAL plcbit(* p_bInShutterExtCtrl);
_BUR_LOCAL plcbit(* p_bInShutterRetCtrl);
_BUR_LOCAL plcbit(* p_bInShutterTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bInShutterExtended);
_BUR_LOCAL plcbit(* p_bInShutterRetracted);
_BUR_LOCAL ePneuAction(* p_eOutShutterStat);
_BUR_LOCAL eFBStatus(* p_eOutShutterStatus);
_BUR_LOCAL plcstring(* p_sOutShutterStatTxt)[201];
_BUR_LOCAL plcbit(* p_bOutShutterExtCtrl);
_BUR_LOCAL plcbit(* p_bOutShutterRetCtrl);
_BUR_LOCAL plcbit(* p_bOutShutterTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bOutShutterExtended);
_BUR_LOCAL plcbit(* p_bOutShutterRetracted);
_BUR_LOCAL ePneuAction(* p_eOutShutterStat3);
_BUR_LOCAL eFBStatus(* p_eOutShutterStatus3);
_BUR_LOCAL plcstring(* p_sOutShutterStatTxt3)[201];
_BUR_LOCAL plcbit(* p_bOutShutterExtCtrl3);
_BUR_LOCAL plcbit(* p_bOutShutterRetCtrl3);
_BUR_LOCAL plcbit(* p_bOutShutterTwoCtrlOut3);
_BUR_LOCAL plcbit(* p_bOutShutterExtended3);
_BUR_LOCAL plcbit(* p_bOutShutterRetracted3);
_BUR_LOCAL ePneuAction(* p_eOutShutterStat2);
_BUR_LOCAL eFBStatus(* p_eOutShutterStatus2);
_BUR_LOCAL plcstring(* p_sOutShutterStatTxt2)[201];
_BUR_LOCAL plcbit(* p_bOutShutterExtCtrl2);
_BUR_LOCAL plcbit(* p_bOutShutterRetCtrl2);
_BUR_LOCAL plcbit(* p_bOutShutterTwoCtrlOut2);
_BUR_LOCAL plcbit(* p_bOutShutterExtended2);
_BUR_LOCAL plcbit(* p_bOutShutterRetracted2);
_BUR_LOCAL ePneuAction(* p_eSelClamp1Stat);
_BUR_LOCAL eFBStatus(* p_eSelClamp1Status);
_BUR_LOCAL plcstring(* p_sSelClamp1StatTxt)[201];
_BUR_LOCAL plcbit(* p_bSelClamp1ExtCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp1RetCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp1TwoCtrlOut);
_BUR_LOCAL plcbit(* p_bSelClamp1Extended);
_BUR_LOCAL plcbit(* p_bSelClamp1Retracted);
_BUR_LOCAL ePneuAction(* p_eSelClamp2Stat);
_BUR_LOCAL eFBStatus(* p_eSelClamp2Status);
_BUR_LOCAL plcstring(* p_sSelClamp2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bSelClamp2ExtCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp2RetCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp2TwoCtrlOut);
_BUR_LOCAL plcbit(* p_bSelClamp2Extended);
_BUR_LOCAL plcbit(* p_bSelClamp2Retracted);
_BUR_LOCAL ePneuAction(* p_eSelClamp3Stat);
_BUR_LOCAL eFBStatus(* p_eSelClamp3Status);
_BUR_LOCAL plcstring(* p_sSelClamp3StatTxt)[201];
_BUR_LOCAL plcbit(* p_bSelClamp3ExtCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp3RetCtrl);
_BUR_LOCAL plcbit(* p_bSelClamp3TwoCtrlOut);
_BUR_LOCAL plcbit(* p_bSelClamp3Extended);
_BUR_LOCAL plcbit(* p_bSelClamp3Retracted);
_BUR_LOCAL ePneuAction(* p_eStopperAStat);
_BUR_LOCAL eFBStatus(* p_eStopperAStatus);
_BUR_LOCAL plcstring(* p_sStopperAStatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopperAExtCtrl);
_BUR_LOCAL plcbit(* p_bStopperARetCtrl);
_BUR_LOCAL plcbit(* p_bStopperATwoCtrlOut);
_BUR_LOCAL plcbit(* p_bStopperAExtended);
_BUR_LOCAL plcbit(* p_bStopperARetracted);
_BUR_LOCAL ePneuAction(* p_eStopperBStat);
_BUR_LOCAL eFBStatus(* p_eStopperBStatus);
_BUR_LOCAL plcstring(* p_sStopperBStatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopperBExtCtrl);
_BUR_LOCAL plcbit(* p_bStopperBRetCtrl);
_BUR_LOCAL plcbit(* p_bStopperBTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bStopperBExtended);
_BUR_LOCAL plcbit(* p_bStopperBRetracted);
_BUR_LOCAL ePneuAction(* p_eInStopperStat);
_BUR_LOCAL eFBStatus(* p_eInStopperStatus);
_BUR_LOCAL plcstring(* p_sInStopperStatTxt)[201];
_BUR_LOCAL plcbit(* p_bInStopperExtCtrl);
_BUR_LOCAL plcbit(* p_bInStopperRetCtrl);
_BUR_LOCAL plcbit(* p_bInStopperTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bInStopperExtended);
_BUR_LOCAL plcbit(* p_bInStopperRetracted);
_BUR_LOCAL eMtrPshrAction(* p_eMtrPshrStat);
_BUR_LOCAL eFBStatus(* p_eMtrPshrStatus);
_BUR_LOCAL plcstring(* p_sMtrPshrStatTxt)[201];
_BUR_LOCAL eConvAction(* p_ePshrConvStat);
_BUR_LOCAL eFBStatus(* p_ePshrConvStatus);
_BUR_LOCAL plcstring(* p_sPshrConvStatTxt)[201];
_BUR_LOCAL plcbit(* p_bPshrConvHvBrd);
_BUR_LOCAL plcbit(* p_bPshrConvRejHvBrd);
_BUR_LOCAL plcbit(* p_bPshrConvInspHvBrd);
_BUR_LOCAL plcbit(* p_bPshrConvGdBrd);
_BUR_LOCAL plcbit(* p_bPshrConvLmtSenActivated);
_BUR_LOCAL plcbit(* p_bPshrConvMtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bPshrConvMtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bPshrConvPshrExtCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvPshrTwoOutputCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvPullerExtCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvPullerRetCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvPullerTwoOutputCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvRotRemoteCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvRotTwoOutputCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvRejectUpCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvRejectDownCtrl);
_BUR_LOCAL plcbit(* p_bPshrConvRejectTwoOutputCtrl);
_BUR_LOCAL eMagConvAction(* p_eInMagConvStat);
_BUR_LOCAL eFBStatus(* p_eInMagConvStatus);
_BUR_LOCAL plcstring(* p_sInMagConvStatTxt)[201];
_BUR_LOCAL eMagConvAction(* p_eOutMagConvStat);
_BUR_LOCAL eFBStatus(* p_eOutMagConvStatus);
_BUR_LOCAL plcstring(* p_sOutMagConvStatTxt)[201];
_BUR_LOCAL plcbit(* p_bOpsOutMagConvStepInitDone);
_BUR_LOCAL eMagConvAction(* p_eInMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eInMagConv2Status);
_BUR_LOCAL plcstring(* p_sInMagConv2StatTxt)[201];
_BUR_LOCAL eMagConvAction(* p_eOutMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eOutMagConv2Status);
_BUR_LOCAL plcstring(* p_sOutMagConv2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bOpsOutMagConv2StepInitDone);
_BUR_LOCAL eMagConvAction(* p_eLifterMagConvStat);
_BUR_LOCAL eFBStatus(* p_eLifterMagConvStatus);
_BUR_LOCAL plcstring(* p_sLifterMagConvStatTxt)[201];
_BUR_LOCAL plcbit(* p_bLifterMagConvHvMag);
_BUR_LOCAL plcbit(* p_bLifterMagConvMtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bLifterMagConvMtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bLifterMagConvClprClampCtrl);
_BUR_LOCAL plcbit(* p_bLifterMagConvClprTwoCtrlOut);
_BUR_LOCAL eMagConvAction(* p_eLifterMagConv2Stat);
_BUR_LOCAL eFBStatus(* p_eLifterMagConv2Status);
_BUR_LOCAL plcstring(* p_sLifterMagConv2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bLifterMagConv2HvMag);
_BUR_LOCAL plcbit(* p_bLifterMagConv2MtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bLifterMagConv2ClprClampCtrl);
_BUR_LOCAL plcbit(* p_bLifterMagConv2MtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bLifterMagConv2ClprTwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper1Stat);
_BUR_LOCAL eFBStatus(* p_eStopper1Status);
_BUR_LOCAL plcstring(* p_sStopper1StatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopper1RetCtrl);
_BUR_LOCAL plcbit(* p_bStopper1TwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper2Stat);
_BUR_LOCAL eFBStatus(* p_eStopper2Status);
_BUR_LOCAL plcstring(* p_sStopper2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopper2RetCtrl);
_BUR_LOCAL plcbit(* p_bStopper2TwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper3Stat);
_BUR_LOCAL eFBStatus(* p_eStopper3Status);
_BUR_LOCAL plcstring(* p_sStopper3StatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopper3RetCtrl);
_BUR_LOCAL plcbit(* p_bStopper3TwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper4Stat);
_BUR_LOCAL eFBStatus(* p_eStopper4Status);
_BUR_LOCAL plcstring(* p_sStopper4StatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopper4RetCtrl);
_BUR_LOCAL plcbit(* p_bStopper4TwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper5Stat);
_BUR_LOCAL eFBStatus(* p_eStopper5Status);
_BUR_LOCAL plcstring(* p_sStopper5StatTxt)[201];
_BUR_LOCAL plcbit(* p_bStopper5RetCtrl);
_BUR_LOCAL plcbit(* p_bStopper5TwoCtrlOut);
_BUR_LOCAL ePneuAction(* p_eStopper1Stat2);
_BUR_LOCAL eFBStatus(* p_eStopper1Status2);
_BUR_LOCAL plcstring(* p_sStopper1StatTxt2)[201];
_BUR_LOCAL plcbit(* p_bStopper1RetCtrl2);
_BUR_LOCAL plcbit(* p_bStopper1TwoCtrlOut2);
_BUR_LOCAL ePneuAction(* p_eStopper2Stat2);
_BUR_LOCAL eFBStatus(* p_eStopper2Status2);
_BUR_LOCAL plcstring(* p_sStopper2StatTxt2)[201];
_BUR_LOCAL plcbit(* p_bStopper2RetCtrl2);
_BUR_LOCAL plcbit(* p_bStopper2TwoCtrlOut2);
_BUR_LOCAL ePneuAction(* p_eStopper3Stat2);
_BUR_LOCAL eFBStatus(* p_eStopper3Status2);
_BUR_LOCAL plcstring(* p_sStopper3StatTxt2)[201];
_BUR_LOCAL plcbit(* p_bStopper3RetCtrl2);
_BUR_LOCAL plcbit(* p_bStopper3TwoCtrlOut2);
_BUR_LOCAL ePneuAction(* p_eStopper4Stat2);
_BUR_LOCAL eFBStatus(* p_eStopper4Status2);
_BUR_LOCAL plcstring(* p_sStopper4StatTxt2)[201];
_BUR_LOCAL plcbit(* p_bStopper4RetCtrl2);
_BUR_LOCAL plcbit(* p_bStopper4TwoCtrlOut2);
_BUR_LOCAL ePneuAction(* p_eStopper5Stat2);
_BUR_LOCAL eFBStatus(* p_eStopper5Status2);
_BUR_LOCAL plcstring(* p_sStopper5StatTxt2)[201];
_BUR_LOCAL plcbit(* p_bStopper5RetCtrl2);
_BUR_LOCAL plcbit(* p_bStopper5TwoCtrlOut2);
_BUR_LOCAL plcbit(* p_bTCPConnected);
_BUR_LOCAL plcbit(* p_bTCPSvrUBA);
_BUR_LOCAL plcbit(* p_bTCPSvrUBA2);
_BUR_LOCAL plcbit(* p_bTCPSvrDSB);
_BUR_LOCAL plcbit(* p_bTCPSvrDSB2);
_BUR_LOCAL eMagConv2ClpAction(* p_eMagConv2Clp1Stat);
_BUR_LOCAL eFBStatus(* p_eMagConv2Clp1Status);
_BUR_LOCAL plcstring(* p_sMagConv2Clp1StatTxt)[201];
_BUR_LOCAL plcbit(* p_bMagConv2Clp1HvMag);
_BUR_LOCAL plcbit(* p_bMagConv2Clp1MtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bMagConv2Clp1MtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bMagConv2Clp1ClprFixClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp1ClprRmtClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp1ClprTwoOutputCtrl);
_BUR_LOCAL eMagConv2ClpAction(* p_eMagConv2Clp2Stat);
_BUR_LOCAL eFBStatus(* p_eMagConv2Clp2Status);
_BUR_LOCAL plcstring(* p_sMagConv2Clp2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bMagConv2Clp2HvMag);
_BUR_LOCAL plcbit(* p_bMagConv2Clp2MtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bMagConv2Clp2MtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bMagConv2Clp2ClprFixClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp2ClprRmtClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp2ClprTwoOutputCtrl);
_BUR_LOCAL eMagConv2ClpAction(* p_eMagConv2Clp3Stat);
_BUR_LOCAL eFBStatus(* p_eMagConv2Clp3Status);
_BUR_LOCAL plcstring(* p_sMagConv2Clp3StatTxt)[201];
_BUR_LOCAL plcbit(* p_bMagConv2Clp3HvMag);
_BUR_LOCAL plcbit(* p_bMagConv2Clp3MtrSigOnOrLToR);
_BUR_LOCAL plcbit(* p_bMagConv2Clp3MtrDirOrRToL);
_BUR_LOCAL plcbit(* p_bMagConv2Clp3ClprFixClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp3ClprRmtClampCtrl);
_BUR_LOCAL plcbit(* p_bMagConv2Clp3ClprTwoOutputCtrl);
_BUR_LOCAL eAWAction(* p_eAWPushOrPullerStat);
_BUR_LOCAL eFBStatus(* p_eAWPushOrPullerStatus);
_BUR_LOCAL plcstring(* p_sAWPushOrPullerStatTxt)[201];
_BUR_LOCAL unsigned long(* p_udiAWPushOrPullerAxisErrID);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerAxisErr);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerPwrOn);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerIsHomed);
_BUR_LOCAL signed long(* p_diAWPushOrPullerActualPos);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerFwdLmtSen);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerRevLmtSen);
_BUR_LOCAL plcstring(* p_sAWPushOrPullerAxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bAWPushOrPullerJogging);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerOpenSen);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerCloseSen);
_BUR_LOCAL plcbit(* p_bAWPushOrPullerPrep);
_BUR_LOCAL eAWAction(* p_eAWOpenStat);
_BUR_LOCAL eFBStatus(* p_eAWOpenStatus);
_BUR_LOCAL plcstring(* p_sAWOpenStatTxt)[201];
_BUR_LOCAL unsigned long(* p_udiAWOpenAxisErrID);
_BUR_LOCAL plcbit(* p_bAWOpenAxisErr);
_BUR_LOCAL plcbit(* p_bAWOpenPwrOn);
_BUR_LOCAL plcbit(* p_bAWOpenIsHomed);
_BUR_LOCAL signed long(* p_diAWOpenActualPos);
_BUR_LOCAL plcbit(* p_bAWOpenFwdLmtSen);
_BUR_LOCAL plcbit(* p_bAWOpenRevLmtSen);
_BUR_LOCAL plcstring(* p_sAWOpenAxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bAWOpenJogging);
_BUR_LOCAL plcbit(* p_bAWOpenOpenSen);
_BUR_LOCAL plcbit(* p_bAWOpenCloseSen);
_BUR_LOCAL eLifterAction(* p_eLifterBtmStat);
_BUR_LOCAL eFBStatus(* p_eLifterBtmStatus);
_BUR_LOCAL plcstring(* p_sLifterBtmStatTxt)[201];
_BUR_LOCAL plcbit(* p_bLifterBtmPwrOn);
_BUR_LOCAL plcbit(* p_bLifterBtmIsHomed);
_BUR_LOCAL plcbit(* p_bLifterBtmPosDiff);
_BUR_LOCAL plcbit(* p_bLifterBtmAxisErr);
_BUR_LOCAL unsigned long(* p_udiLifterBtmAxisErrID);
_BUR_LOCAL plcstring(* p_sLifterBtmAxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bLifterBtmFwdLmtSen);
_BUR_LOCAL plcbit(* p_bLifterBtmRevLmtSen);
_BUR_LOCAL signed long(* p_diLifterBtmActualPos);
_BUR_LOCAL plcbit(* p_bLifterBtmJogging);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltA);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltB);
_BUR_LOCAL signed long(* p_diLifterBtmCurrSltC);
_BUR_LOCAL plcbit(* p_bLifterBtmUpSen);
_BUR_LOCAL plcbit(* p_bLifterBtmDownSen);
_BUR_LOCAL plcbit(* p_bLifterBtmSltAPosDiff);
_BUR_LOCAL eLifterAction(* p_eLifter2Stat);
_BUR_LOCAL eFBStatus(* p_eLifter2Status);
_BUR_LOCAL plcstring(* p_sLifter2StatTxt)[201];
_BUR_LOCAL plcbit(* p_bLifter2PwrOn);
_BUR_LOCAL plcbit(* p_bLifter2IsHomed);
_BUR_LOCAL plcbit(* p_bLifter2PosDiff);
_BUR_LOCAL plcbit(* p_bLifter2AxisErr);
_BUR_LOCAL unsigned long(* p_udiLifter2AxisErrID);
_BUR_LOCAL plcstring(* p_sLifter2AxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bLifter2FwdLmtSen);
_BUR_LOCAL plcbit(* p_bLifter2RevLmtSen);
_BUR_LOCAL signed long(* p_diLifter2ActualPos);
_BUR_LOCAL plcbit(* p_bLifter2Jogging);
_BUR_LOCAL signed long(* p_diLifter2CurrSltA);
_BUR_LOCAL signed long(* p_diLifter2CurrSltB);
_BUR_LOCAL signed long(* p_diLifter2CurrSltC);
_BUR_LOCAL plcbit(* p_bLifter2UpSen);
_BUR_LOCAL plcbit(* p_bLifter2DownSen);
_BUR_LOCAL plcbit(* p_bLifter2SltAPosDiff);
_BUR_LOCAL eTravAction(* p_eTravStat);
_BUR_LOCAL eFBStatus(* p_eTravStatus);
_BUR_LOCAL plcstring(* p_sTravStatTxt)[201];
_BUR_LOCAL plcbit(* p_bTravPwrOn);
_BUR_LOCAL plcbit(* p_bTravIsHomed);
_BUR_LOCAL plcbit(* p_bTravPosDiff);
_BUR_LOCAL plcbit(* p_bTravAxisErr);
_BUR_LOCAL unsigned long(* p_udiTravAxisErrID);
_BUR_LOCAL plcstring(* p_sTravAxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bTravFwdLmtSen);
_BUR_LOCAL plcbit(* p_bTravRevLmtSen);
_BUR_LOCAL signed long(* p_diTravActualPos);
_BUR_LOCAL plcbit(* p_bTravJogging);
_BUR_LOCAL plcbit(* p_bTravFrontSen);
_BUR_LOCAL plcbit(* p_bTravRearSen);
_BUR_LOCAL plcbit(* p_bTravAPosDiff);
_BUR_LOCAL plcbit(* p_bTravBPosDiff);
_BUR_LOCAL plcbit(* p_bTravCPosDiff);
_BUR_LOCAL plcbit(* p_bTravDPosDiff);
_BUR_LOCAL plcbit(* p_bTravEPosDiff);
_BUR_LOCAL plcbit(* p_bTravFPosDiff);
_BUR_LOCAL plcbit(* p_bTravGPosDiff);
_BUR_LOCAL plcbit(* p_bTravHPosDiff);
_BUR_LOCAL eMagAWAction(* p_eMagAWOpen1Stat);
_BUR_LOCAL eFBStatus(* p_eMagAWOpen1Status);
_BUR_LOCAL plcstring(* p_sMagAWOpen1StatTxt)[201];
_BUR_LOCAL unsigned long(* p_udiMagAWOpen1AxisErrID);
_BUR_LOCAL plcbit(* p_bMagAWOpen1AxisErr);
_BUR_LOCAL plcbit(* p_bMagAWOpen1PwrOn);
_BUR_LOCAL plcbit(* p_bMagAWOpen1IsHomed);
_BUR_LOCAL signed long(* p_diMagAWOpen1ActualPos);
_BUR_LOCAL plcbit(* p_bMagAWOpen1FwdLmtSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen1RevLmtSen);
_BUR_LOCAL plcstring(* p_sMagAWOpen1AxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bMagAWOpen1Jogging);
_BUR_LOCAL plcbit(* p_bMagAWOpen1Engaging);
_BUR_LOCAL plcbit(* p_bMagAWOpen1OpenSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen1CloseSen);
_BUR_LOCAL eMagAWAction(* p_eMagAWOpen2Stat);
_BUR_LOCAL eFBStatus(* p_eMagAWOpen2Status);
_BUR_LOCAL plcstring(* p_sMagAWOpen2StatTxt)[201];
_BUR_LOCAL unsigned long(* p_udiMagAWOpen2AxisErrID);
_BUR_LOCAL plcbit(* p_bMagAWOpen2AxisErr);
_BUR_LOCAL plcbit(* p_bMagAWOpen2PwrOn);
_BUR_LOCAL plcbit(* p_bMagAWOpen2IsHomed);
_BUR_LOCAL signed long(* p_diMagAWOpen2ActualPos);
_BUR_LOCAL plcbit(* p_bMagAWOpen2FwdLmtSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen2RevLmtSen);
_BUR_LOCAL plcstring(* p_sMagAWOpen2AxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bMagAWOpen2Jogging);
_BUR_LOCAL plcbit(* p_bMagAWOpen2Engaging);
_BUR_LOCAL plcbit(* p_bMagAWOpen2OpenSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen2CloseSen);
_BUR_LOCAL eMagAWAction(* p_eMagAWOpen3Stat);
_BUR_LOCAL eFBStatus(* p_eMagAWOpen3Status);
_BUR_LOCAL plcstring(* p_sMagAWOpen3StatTxt)[201];
_BUR_LOCAL unsigned long(* p_udiMagAWOpen3AxisErrID);
_BUR_LOCAL plcbit(* p_bMagAWOpen3AxisErr);
_BUR_LOCAL plcbit(* p_bMagAWOpen3PwrOn);
_BUR_LOCAL plcbit(* p_bMagAWOpen3IsHomed);
_BUR_LOCAL signed long(* p_diMagAWOpen3ActualPos);
_BUR_LOCAL plcbit(* p_bMagAWOpen3FwdLmtSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen3RevLmtSen);
_BUR_LOCAL plcstring(* p_sMagAWOpen3AxisErrTxt)[81];
_BUR_LOCAL plcbit(* p_bMagAWOpen3Jogging);
_BUR_LOCAL plcbit(* p_bMagAWOpen3Engaging);
_BUR_LOCAL plcbit(* p_bMagAWOpen3OpenSen);
_BUR_LOCAL plcbit(* p_bMagAWOpen3CloseSen);
_BUR_LOCAL ePneuAction(* p_eMag1SafetyBarStat);
_BUR_LOCAL eFBStatus(* p_eMag1SafetyBarStatus);
_BUR_LOCAL plcstring(* p_sMag1SafetyBarStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag1SafetyBarExtCtrl);
_BUR_LOCAL plcbit(* p_bMag1SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bMag1SafetyBarTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag1SafetyBarExtended);
_BUR_LOCAL plcbit(* p_bMag1SafetyBarRetracted);
_BUR_LOCAL ePneuAction(* p_eMag2SafetyBarStat);
_BUR_LOCAL eFBStatus(* p_eMag2SafetyBarStatus);
_BUR_LOCAL plcstring(* p_sMag2SafetyBarStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag2SafetyBarExtCtrl);
_BUR_LOCAL plcbit(* p_bMag2SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bMag2SafetyBarTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag2SafetyBarExtended);
_BUR_LOCAL plcbit(* p_bMag2SafetyBarRetracted);
_BUR_LOCAL ePneuAction(* p_eMag3SafetyBarStat);
_BUR_LOCAL eFBStatus(* p_eMag3SafetyBarStatus);
_BUR_LOCAL plcstring(* p_sMag3SafetyBarStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag3SafetyBarExtCtrl);
_BUR_LOCAL plcbit(* p_bMag3SafetyBarRetCtrl);
_BUR_LOCAL plcbit(* p_bMag3SafetyBarTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag3SafetyBarExtended);
_BUR_LOCAL plcbit(* p_bMag3SafetyBarRetracted);
_BUR_LOCAL ePneuAction(* p_eMag1AWEngageStat);
_BUR_LOCAL eFBStatus(* p_eMag1AWEngageStatus);
_BUR_LOCAL plcstring(* p_sMag1AWEngageStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag1AWEngageExtCtrl);
_BUR_LOCAL plcbit(* p_bMag1AWEngageRetCtrl);
_BUR_LOCAL plcbit(* p_bMag1AWEngageTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag1AWEngageExtended);
_BUR_LOCAL plcbit(* p_bMag1AWEngageRetracted);
_BUR_LOCAL ePneuAction(* p_eMag2AWEngageStat);
_BUR_LOCAL eFBStatus(* p_eMag2AWEngageStatus);
_BUR_LOCAL plcstring(* p_sMag2AWEngageStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag2AWEngageExtCtrl);
_BUR_LOCAL plcbit(* p_bMag2AWEngageRetCtrl);
_BUR_LOCAL plcbit(* p_bMag2AWEngageTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag2AWEngageExtended);
_BUR_LOCAL plcbit(* p_bMag2AWEngageRetracted);
_BUR_LOCAL ePneuAction(* p_eMag3AWEngageStat);
_BUR_LOCAL eFBStatus(* p_eMag3AWEngageStatus);
_BUR_LOCAL plcstring(* p_sMag3AWEngageStatTxt)[201];
_BUR_LOCAL plcbit(* p_bMag3AWEngageExtCtrl);
_BUR_LOCAL plcbit(* p_bMag3AWEngageRetCtrl);
_BUR_LOCAL plcbit(* p_bMag3AWEngageTwoCtrlOut);
_BUR_LOCAL plcbit(* p_bMag3AWEngageExtended);
_BUR_LOCAL plcbit(* p_bMag3AWEngageRetracted);
_BUR_LOCAL eSimulationsAction(* p_eSimuStat);
_BUR_LOCAL eFBStatus(* p_eSimuStatus);
_BUR_LOCAL eSimulationsStatus(* p_eSimuSimuStatus);
_BUR_LOCAL plcbit(* p_bSimuStatusRun);
_BUR_LOCAL plcbit(* p_bSimuStatusStop);
_BUR_LOCAL plcbit(* p_bSimuStatusCycleStop);
_BUR_LOCAL plcbit(* p_bSimuStatusStep);
_BUR_LOCAL plcstring(* p_sNtParamJobNo)[31];
_BUR_LOCAL unsigned char(* p_usiNtParamNtAddr);
_BUR_LOCAL eNtParamAction(* p_eNtParamStat);
_BUR_LOCAL eFBStatus(* p_eNtParamStatus);
_BUR_LOCAL signed long(* p_diNtParamLifterAutoSpd);
_BUR_LOCAL signed long(* p_diNtParamTravAutoSpd);
_BUR_LOCAL struct tyDigitalInput(* p_tyDI);
_BUR_LOCAL eDOAction(* p_eDOStat);
_BUR_LOCAL eFBStatus(* p_eDOStatus);
_BUR_LOCAL plcstring(* p_sDOStatTxt)[201];
_BUR_LOCAL struct tyDigitalOutput(* p_tyDO);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV1);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV2);
_BUR_LOCAL struct tyTagDTMagToAGV(* p_tyDTMagToAGV3);
_BUR_LOCAL struct tyTagAGVToDTMag(* p_tyAGVToDTMag);
_BUR_LOCAL struct tyStatToMES(* p_tyTagToMes);
_BUR_LOCAL struct tyStatFromMES(* p_tyTagFromMes);
_BUR_LOCAL eHermesAction(* p_eHermesStat);
_BUR_LOCAL eFBStatus(* p_eHermesStatus);
_BUR_LOCAL struct tyHermesConfiguration(* p_tyHermesConfiguration);
_BUR_LOCAL plcbit(* p_bRmtUpdateUIData);
_BUR_LOCAL plcbit(* p_bSvyUpdateUIData);
_BUR_LOCAL plcbit(* p_bRcvBoardInfoOk);
_BUR_LOCAL plcbit(* p_bRcvBoardInfoIncompl);
_BUR_LOCAL plcbit(* p_bTransportFinished);
_BUR_LOCAL plcbit(* p_bWaitDecision);
_BUR_LOCAL plcbit(* p_bOpsConvWaitForTopUpBrd);
_BUR_LOCAL signed long(* p_diReqLoaderWidthInUM);
_BUR_LOCAL plcstring(* p_sWorkOrderId)[81];
_BUR_LOCAL plcbit(* p_bQueryBypassWorkOrder);
_BUR_LOCAL plcbit(* p_bReplyBypassWorkOrderInfo);
_BUR_LOCAL plcbit(* p_bRcvWorkOrderInfo1);
_BUR_LOCAL plcbit(* p_bNewIncomingBoard);
_BUR_LOCAL struct tyHermesSendWorkOrderInfo(* p_tySendWorkOrderData);
_BUR_LOCAL struct tyHermesSendWorkOrderInfo(* p_tySvyHermesSendWorkOrderData);
_BUR_LOCAL struct tyHermesSendWorkOrderInfo(* p_tySvyHermesBypassSendWOData);
_BUR_LOCAL eHermesAction(* p_eUSHermesAStat);
_BUR_LOCAL eFBStatus(* p_eUSHermesAStatus);
_BUR_LOCAL plcstring(* p_sUSHermesAStatTxt)[201];
_BUR_LOCAL plcbit(* p_bUSHermesAUSRdy);
_BUR_LOCAL plcbit(* p_bUSHermesADSRdy);
_BUR_LOCAL plcbit(* p_bUSHermesAUSGdRdy);
_BUR_LOCAL plcbit(* p_bUSHermesADSGdRdy);
_BUR_LOCAL plcbit(* p_bUSHermesAConnected);
_BUR_LOCAL plcbit(* p_bUSHermesAAccDataMnl);
_BUR_LOCAL eHermesAction(* p_eUSHermesBStat);
_BUR_LOCAL eFBStatus(* p_eUSHermesBStatus);
_BUR_LOCAL plcstring(* p_sUSHermesBStatTxt)[201];
_BUR_LOCAL plcbit(* p_bUSHermesBUSRdy);
_BUR_LOCAL plcbit(* p_bUSHermesBDSRdy);
_BUR_LOCAL plcbit(* p_bUSHermesBUSGdRdy);
_BUR_LOCAL plcbit(* p_bUSHermesBDSGdRdy);
_BUR_LOCAL plcbit(* p_bUSHermesBConnected);
_BUR_LOCAL plcbit(* p_bUSHermesBAccDataMnl);
_BUR_LOCAL eLFAction(* p_eLFLeaderStat);
_BUR_LOCAL eFBStatus(* p_eLFLeaderStatus);
_BUR_LOCAL struct tyLFFollowerInfo(* p_tyLFLeaderFollowerInfo)[50];
_BUR_LOCAL struct tyLFFollowerToLeaderTag(* p_tyLFLeaderFollowerToLeaderTag)[50];
_BUR_LOCAL plcbit(* p_bLFFollowerProdAccDataMnl);
_BUR_LOCAL plcbit(* p_bLCSLFAccDataMnl);
_BUR_LOCAL eOperationsAction(* p_eOpsStat);
_BUR_LOCAL eFBStatus(* p_eOpsStatus);
_BUR_LOCAL plcstring(* p_sOpsStatTxt)[201];
_BUR_LOCAL eOperationsStatus(* p_eOpsOpsStatus);
_BUR_LOCAL plcbit(* p_bOpsStatusRun);
_BUR_LOCAL plcbit(* p_bOpsStatusStop);
_BUR_LOCAL plcbit(* p_bOpsStatusCycleStop);
_BUR_LOCAL plcbit(* p_bOpsStatusStep);
_BUR_LOCAL plcstring(* p_sOpsTravLifULStepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagUL1StepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagUL2StepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagUL3StepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagConvUL1StepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagConvUL2StepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsMagConvUL3StepTxt)[81];
_BUR_LOCAL plcbit(* p_bOpsTravLifULInitConv);
_BUR_LOCAL plcbit(* p_bOpsTravLifMov);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1InitDone);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2InitDone);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3InitDone);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1MagExitedWait);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2MagExitedWait);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3MagExitedWait);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1NewMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2NewMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3NewMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1RlsMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2RlsMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3RlsMagAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1EjectMESStep);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2EjectMESStep);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3EjectMESStep);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL1EjectMagNotAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL2EjectMagNotAllw);
_BUR_LOCAL plcbit(* p_bOpsMagConvUL3EjectMagNotAllw);
_BUR_LOCAL plcstring(* p_sOpsLifMagULStepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsLifMagULStepTxt1)[81];
_BUR_LOCAL plcbit(* p_bOpsLifMagULUnloading);
_BUR_LOCAL plcbit(* p_bOpsLifMagULLifMov);
_BUR_LOCAL plcbit(* p_bOpsLifMagULStepIdle2);
_BUR_LOCAL plcstring(* p_sOpsInMagConvStepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsInMagConvStepTxt1)[81];
_BUR_LOCAL plcstring(* p_sOpsOutMagConvStepTxt)[81];
_BUR_LOCAL plcstring(* p_sOpsOutMagConvStepTxt1)[81];
_BUR_LOCAL plcbit p_FrontUSHermesConnect;
_BUR_LOCAL eCustomer(* p_eNtParamCustomerReq);
_BUR_LOCAL struct PPTorqParam(* p_tyNtParamPPTorqParam);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDisable);
_BUR_LOCAL struct tyBoardProperty(* pa_tyAutoRcpBrdProps)[4];
_BUR_LOCAL signed short(* p_iOpsMagConvUL1MESAcptCond);
_BUR_LOCAL signed short(* p_iOpsMagConvUL2MESAcptCond);
_BUR_LOCAL signed short(* p_iOpsMagConvUL3MESAcptCond);
_BUR_LOCAL struct tyMagProperties(* pa_tyMagProps)[4];
_BUR_LOCAL plcbit(* p_bDIPCBScanComplSig);
_BUR_LOCAL struct tyDispBffrCycTm(* p_tyBufferDispCycleTmBffr);
_BUR_LOCAL plcbit(* p_bLocalMagPresent);
_BUR_LOCAL eOptBtn(* p_eCurrBtnPos);
_BUR_LOCAL tyIPAddress g_sIPAddress;
_BUR_LOCAL plcstring sSelectedNetworkMode[31];
_BUR_LOCAL plcstring sTempNetworkMode[31];
_BUR_LOCAL eUIAction eAct;
_BUR_LOCAL eUIAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyUIAllAlm tyUIAlmData;
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
_BUR_LOCAL eMtrPshrAction eMtrPshrAct;
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
_BUR_LOCAL struct TON fbCurtainRstDly;
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
_BUR_LOCAL signed long diConstant1;
_BUR_LOCAL signed long diConstant2;
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
_BUR_LOCAL plcbit bEjectMag1;
_BUR_LOCAL plcbit bEjectMag2;
_BUR_LOCAL plcbit bEjectMag3;
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
_BUR_LOCAL signed long diMnlPPGoWidth;
_BUR_LOCAL signed long diMnlPPTargetPos;
_BUR_LOCAL signed long diMnlPPStepSize;
_BUR_LOCAL signed long diMnlPPNomSpd;
_BUR_LOCAL signed long diMnlPPJogSpd;
_BUR_LOCAL signed long diMnlServoMtrMaxPulRatio;
_BUR_LOCAL unsigned char usiHComModChaged;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL eUIInitial eUIInit;
_BUR_LOCAL unsigned short i;
_BUR_LOCAL ePage eChgPage;
_BUR_LOCAL ePage eChgPageOld;
_BUR_LOCAL ePage eCurrPage;
_BUR_LOCAL plcbit bChgPage;
_BUR_LOCAL plcbit bJogFast;
_BUR_LOCAL plcbit bJogSlow;
_BUR_LOCAL plcbit bJogStopAWPushOrPuller;
_BUR_LOCAL plcbit bJogStopAW;
_BUR_LOCAL plcbit bJogStopTrav;
_BUR_LOCAL plcbit bJogStopLifter;
_BUR_LOCAL plcbit bLoginSuccess;
_BUR_LOCAL plcbit bRefreshMagRcpDetail;
_BUR_LOCAL plcbit bRefreshMagRcpTable;
_BUR_LOCAL plcbit bRefreshProdRcpDetail;
_BUR_LOCAL plcbit bRefreshProdRcpTable;
_BUR_LOCAL plcbit bRefreshUsrMgmtTable;
_BUR_LOCAL plcbit bIPDuplicate;
_BUR_LOCAL plcbit bOnlineTemp;
_BUR_LOCAL plcbit bTeachTravPosA;
_BUR_LOCAL plcbit bTeachTravPosB;
_BUR_LOCAL plcbit bTeachLifterPosA;
_BUR_LOCAL plcbit bTeachLifterPosB;
_BUR_LOCAL plcbit bTeachLifterTopPos;
_BUR_LOCAL plcbit bTeachLifterBtmPos;
_BUR_LOCAL plcbit bTeachLifterTopPos2;
_BUR_LOCAL plcbit bTeachLifterBtmPos2;
_BUR_LOCAL plcbit bTeachLifterMag1Slt1Pos;
_BUR_LOCAL plcbit bTeachLifterMag2Slt1Pos;
_BUR_LOCAL plcbit bTeachLifterMag3Slt1Pos;
_BUR_LOCAL plcbit bTeachTravPosMag1;
_BUR_LOCAL plcbit bTeachTravPosMag2;
_BUR_LOCAL plcbit bTeachTravPosMag3;
_BUR_LOCAL unsigned char usiLoginStep;
_BUR_LOCAL unsigned char usiSelProdRcpStep;
_BUR_LOCAL unsigned char usiSelMagRcpStep;
_BUR_LOCAL unsigned char usiSaveCommStep;
_BUR_LOCAL unsigned char usiSaveAIVCommStep;
_BUR_LOCAL unsigned char usiSaveSubnetMaskStep;
_BUR_LOCAL unsigned char usiSaveIPAddrStep;
_BUR_LOCAL unsigned char usiSaveUsrMgmtStep;
_BUR_LOCAL unsigned char usiEditUsrMgmtStep;
_BUR_LOCAL unsigned char usiDelUsrMgmtStep;
_BUR_LOCAL unsigned char usiSaveProdRcpStep;
_BUR_LOCAL unsigned char usiDelProdRcpStep;
_BUR_LOCAL unsigned char usiProdRcpToXMLStep;
_BUR_LOCAL unsigned char usiProdRcpFromXMLStep;
_BUR_LOCAL unsigned char usiSaveMagRcpStep;
_BUR_LOCAL unsigned char usiDelMagRcpStep;
_BUR_LOCAL unsigned char usiLFLeaderCtrlStep;
_BUR_LOCAL unsigned char usiChgPage;
_BUR_LOCAL unsigned char usiDelMcDetailsStep;
_BUR_LOCAL unsigned char usiTableShftStep;
_BUR_LOCAL plcbit bSimuMod;
_BUR_LOCAL eNtParamAction eNtWr;
_BUR_LOCAL unsigned char usiTestTravStep;
_BUR_LOCAL unsigned char usiSimuNtStep;
_BUR_LOCAL struct TON fbShutterSimChgOver;
_BUR_LOCAL struct TON fbActSimuTmr;
_BUR_LOCAL struct TON fbSSaverTm;
_BUR_LOCAL struct TON fbJogSlowToFastDlyTm;
_BUR_LOCAL struct TON fbLmtRstTm;
_BUR_LOCAL struct TON fbErrBlinkTm;
_BUR_LOCAL struct TON fbRstBlinkTm;
_BUR_LOCAL struct TON fbAccDatBlinkTm;
_BUR_LOCAL struct TON fbBypsInitConvBlinkTm;
_BUR_LOCAL struct TON fbMcStatUpdtTm;
_BUR_LOCAL struct TON fbStopBlinkTm;
_BUR_LOCAL struct TON fbLFLeaderCtrlBlinkTm;
_BUR_LOCAL struct TON fbMag1EntrySenOnTm;
_BUR_LOCAL struct TON fbMag2EntrySenOnTm;
_BUR_LOCAL struct TON fbMag3EntrySenOnTm;
_BUR_LOCAL tyTable tyP0400Table;
_BUR_LOCAL struct fbTableCtrl fbP0400Table;
_BUR_LOCAL tyTable tyP0410Table;
_BUR_LOCAL struct fbTableCtrl fbP0410Table;
_BUR_LOCAL tyTable tyP0700Table;
_BUR_LOCAL struct fbTableCtrl fbP0700Table;
_BUR_LOCAL tyTable tyP0800Table1;
_BUR_LOCAL struct fbTableCtrl fbP0800Table1;
_BUR_LOCAL tyTable tyP0800Table2;
_BUR_LOCAL struct fbTableCtrl fbP0800Table2;
_BUR_LOCAL tyTable tyP0800Table3;
_BUR_LOCAL struct fbTableCtrl fbP0800Table3;
_BUR_LOCAL tyTable tyP0950Table1;
_BUR_LOCAL struct fbTableCtrl fbP0950Table1;
_BUR_LOCAL tyTable tyP1030Table;
_BUR_LOCAL struct fbTableCtrl_v2 fbP1030Table;
_BUR_LOCAL tyTable tyP1040Table;
_BUR_LOCAL struct fbTableCtrl_v2 fbP1040Table;
_BUR_LOCAL tyTable tyP1050Table;
_BUR_LOCAL struct fbTableCtrl fbP1050Table;
_BUR_LOCAL tyTable tyP1080Table;
_BUR_LOCAL struct fbTableCtrl fbP1080Table;
_BUR_LOCAL unsigned long udiP1030SelectedRowOld;
_BUR_LOCAL unsigned long udiP1030SelectedRow;
_BUR_LOCAL unsigned long udiP1040SelectedRowOld;
_BUR_LOCAL unsigned long udiP1040SelectedRow;
_BUR_LOCAL unsigned char usiP1080SelectedLvl;
_BUR_LOCAL unsigned long udiP1080SelectedRow;
_BUR_LOCAL unsigned short uiSSaverCnt;
_BUR_LOCAL signed short a_iIPPart1[4];
_BUR_LOCAL signed short a_iIPPart2[4];
_BUR_LOCAL signed short a_iSubnetMaskPart1[4];
_BUR_LOCAL plcbit bCheckDone;
_BUR_LOCAL plcstring sLFIPAddrTemp[16];
_BUR_LOCAL plcbit bFilterSortP0400;
_BUR_LOCAL plcbit bFilterSortP1040;
_BUR_LOCAL unsigned short iSelectedRowValue;
_BUR_LOCAL plcbit bUpdateP0400Table;
_BUR_LOCAL plcbit bUpdateP0410Table;
_BUR_LOCAL plcbit bUpdateP1030Table;
_BUR_LOCAL plcbit bUpdateP1040Table;
_BUR_LOCAL plcbit bUpdateP1030LoadData;
_BUR_LOCAL plcbit bUpdateP1040LoadData;
_BUR_LOCAL plcbit bMismatchOverWriteConfig;
_BUR_LOCAL plcbit bTempAddrFillDone;
_BUR_LOCAL plcstring sTempIPAddr[16];
_BUR_LOCAL plcstring sTempSubnetMask[16];
_BUR_LOCAL plcbit bIPConfigChgDone;
_BUR_LOCAL plcbit bOverwriteIP;
_BUR_LOCAL plcbit bOverwriteSubnet;
_BUR_LOCAL plcbit bOverwriteEthMode;
_BUR_LOCAL plcbit bSaveNetworkPriority;
_BUR_LOCAL plcbit bNetworkConfigChanged;
_BUR_LOCAL plcbit bTeachServo;
_BUR_LOCAL unsigned char usiNetworkModeOld;
_BUR_LOCAL unsigned char usiNetworkModeNew;
_BUR_LOCAL unsigned char usiNetworkModeSelected;
_BUR_LOCAL unsigned char usiChgNetworkConfigStep;
_BUR_LOCAL unsigned char usiRefreshDetailStep;
_BUR_LOCAL unsigned long udiTempEthMode;
_BUR_LOCAL plcbit bUITravLifShowIOMonitor2;
_BUR_LOCAL plcbit bChgPageDone;
_BUR_LOCAL plcbit bPromptSessionExp;
_BUR_LOCAL struct TON fbAutoLogoutTm;
_BUR_LOCAL struct fbTouchGetAction fbTouchTm;
_BUR_LOCAL plcbit bLFRunInBG;
_BUR_LOCAL plcbit bUpdateP1021Network;
_BUR_LOCAL plcbit bUpdateP1050Table;
_BUR_LOCAL signed short iIPExtract;
_BUR_LOCAL plcstring sLFSettingCurrentIP[5];
_BUR_LOCAL signed short iLFSettingCurrentIP;
_BUR_LOCAL plcstring sLFSettingAutoFill[16];
_BUR_LOCAL plcstring sLFSettingTemp[16];
_BUR_LOCAL plcbit bLFSettingAutoFill;
_BUR_LOCAL plcbit bLFSettingAutoClear;
_BUR_LOCAL plcbit bDispSafetyBar1;
_BUR_LOCAL plcbit bDispSafetyBar2;
_BUR_LOCAL plcbit bDispMagAW1;
_BUR_LOCAL plcbit bDispMagAW2;
_BUR_LOCAL plcbit bDispMagAW3;
_BUR_LOCAL plcbit bDispMagConv1;
_BUR_LOCAL plcbit bDispMagConv2;
_BUR_LOCAL plcbit bDispMagConv3;
_BUR_LOCAL plcbit bJogStopMagAW1;
_BUR_LOCAL plcbit bJogStopMagAW2;
_BUR_LOCAL plcbit bJogStopMagAW3;
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
_BUR_LOCAL unsigned short uiLFStartEditNo;
_BUR_LOCAL plcbit bMagAWSelfTest;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep1;
_BUR_LOCAL struct TON fbMagAWSelfTestTim1;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep2;
_BUR_LOCAL struct TON fbMagAWSelfTestTim2;
_BUR_LOCAL unsigned char usiMagAWSelfTestStep;
_BUR_LOCAL struct TON fbMagAWSelfTestTim;
_BUR_LOCAL plcbit bUnloadMag;
_BUR_LOCAL struct TON fbUnloadBlinkTm;
_BUR_LOCAL plcbit bChgMag;
_BUR_LOCAL struct TON tChgMag;
_BUR_LOCAL struct TON fbChgMagBlinkTm;
_BUR_LOCAL plcbit bFllw2SetFull;
_BUR_LOCAL plcbit bChgMagSig;
_BUR_LOCAL plcbit bOpsMnlUnloadMag;
_BUR_LOCAL plcbit bOpsMnlUnloadMag2;
_BUR_LOCAL signed short IPshrSafeDistanceValue;
_BUR_LOCAL plcstring sPshrExtWarnMsg[255];
_BUR_LOCAL plcbit bNaviLyr1;
_BUR_LOCAL plcbit bNaviLyr2;
_BUR_LOCAL plcbit bQueryBoardInfo;
_BUR_LOCAL plcbit bQueryWorkOrderInfo;
_BUR_LOCAL plcbit bDeleteWorkOrder;
_BUR_LOCAL plcbit bSaveHMISvyConfig;
_BUR_LOCAL plcbit bSaveHMIConfigure;
_BUR_LOCAL plcbit bSkipWorkOrder;
_BUR_LOCAL plcbit bReadWorkOrder;
_BUR_LOCAL signed short iSlotId;
_BUR_LOCAL struct TON fbPushRetRestTmr;
_BUR_LOCAL struct TON fbPushExtRestTmr;
_BUR_LOCAL unsigned char usiExtRetTest;
_BUR_LOCAL plcbit bBypassShutForCalib;
_BUR_LOCAL unsigned char usiGenSaveStep;
_BUR_LOCAL unsigned char usiDuplicate;
_BUR_LOCAL unsigned char usiSaveHMIIPAddrStep;
_BUR_LOCAL plcstring sSetHMIIPAddr[16];
_BUR_LOCAL plcstring sHMIIPAddr[16];
_BUR_LOCAL plcbit bUpdtHMIIPAddr;
_BUR_LOCAL plcstring sDefaultGWBlkUp[31];
_BUR_LOCAL unsigned char usiPosidx;
_BUR_LOCAL unsigned char usidx;
_BUR_LOCAL unsigned long a_tyPtrtoAddr[7];
_BUR_LOCAL unsigned short c_uiP0200TableSize;
_BUR_LOCAL unsigned short c_uiP0400TableSize;
_BUR_LOCAL unsigned short c_uiP0410TableSize;
_BUR_LOCAL unsigned short c_uiP0600TableSize;
_BUR_LOCAL unsigned short c_uiP0700TableSize;
_BUR_LOCAL unsigned char c_uiP0800TableSize;
_BUR_LOCAL unsigned char c_uiP0950TableSize;
_BUR_LOCAL unsigned short c_uiP1030TableSize;
_BUR_LOCAL unsigned short c_uiP1040TableSize;
_BUR_LOCAL unsigned short c_uiP1050TableSize;
_BUR_LOCAL unsigned short c_uiP1080TableSize;
_BUR_LOCAL tyUIP0000SSaver tyP0000SSaver;
_BUR_LOCAL tyUIP0001Startup tyP0001Startup;
_BUR_LOCAL tyUIP0002Menu tyP0002Menu;
_BUR_LOCAL tyUIP0003MMenu tyP0003MMenu;
_BUR_LOCAL tyUIP0100Login tyP0100Login;
_BUR_LOCAL tyUIP0200OpsGen tyP0200OpsGen;
_BUR_LOCAL tyUIP0201OpsTravLifter tyP0201OpsTravLifter;
_BUR_LOCAL tyUIP0202OpsMag1 tyP0202OpsMag1;
_BUR_LOCAL tyUIP0203OpsMag2 tyP0203OpsMag2;
_BUR_LOCAL tyUIP0204OpsMag3 tyP0204OpsMag3;
_BUR_LOCAL tyUIP0205OpsAIV tyP0205OpsAIV;
_BUR_LOCAL tyUIP0206OpsMagConv1 tyP0206OpsMagConv1;
_BUR_LOCAL tyUIP0207OpsMagConv2 tyP0207OpsMagConv2;
_BUR_LOCAL tyUIP0300McInfo tyP0300McInfo;
_BUR_LOCAL tyUIP0400ProdSel tyP0400ProdSel;
_BUR_LOCAL tyUIP0410MagSel tyP0410MagSel;
_BUR_LOCAL tyUIP0600Alm tyP0600Alm;
_BUR_LOCAL tyUIP0700LFCtrl tyP0700LFCtrl;
_BUR_LOCAL tyUIP0800MagInfo tyP0800MagInfo;
_BUR_LOCAL tyUIP0850OvenInfo tyP0850OvenInfo;
_BUR_LOCAL tyUIP0900GenIn tyP0900GenIn;
_BUR_LOCAL tyUIP0910GenOut tyP0910GenOut;
_BUR_LOCAL tyUIP0920MtrNPneuCtrl tyP0920MtrNPneuCtrl;
_BUR_LOCAL tyUIP0921InletNOutletShutter tyP0921InletNOutletShutter;
_BUR_LOCAL tyUIP0922Stopper tyP0922Stopper;
_BUR_LOCAL tyUIP0923SafetyBar tyP0923SafetyBar;
_BUR_LOCAL tyUIP0926LifterMagConv tyP0926LifterMagConv;
_BUR_LOCAL tyUIP0927LifterMagConv2 tyP0927LifterMagConv2;
_BUR_LOCAL tyUIP0928MagConv tyP0928MagConv;
_BUR_LOCAL tyUIP0929MagConv2 tyP0929MagConv2;
_BUR_LOCAL tyUIP0930MagConv1 tyP0930MagConv1;
_BUR_LOCAL tyUIP0931MagConv2 tyP0931MagConv2;
_BUR_LOCAL tyUIP0932MagConv3 tyP0932MagConv3;
_BUR_LOCAL tyUIP0933PushConv tyP0933PushConv;
_BUR_LOCAL tyUIP0934AW tyP0934AW;
_BUR_LOCAL tyUIP0935Lifter tyP0935Lifter;
_BUR_LOCAL tyUIP0936Trav tyP0936Trav;
_BUR_LOCAL tyUIP0937AWPushOrPuller tyP0937AWPushOrPuller;
_BUR_LOCAL tyUIP0938MagAW tyP0938MagAW;
_BUR_LOCAL tyUIP0939Lifter2 tyP0939Lifter2;
_BUR_LOCAL tyUIP0940CommCtrl tyP0940CommCtrl;
_BUR_LOCAL tyUIP0950Simu tyP0950Simu;
_BUR_LOCAL tyUIP1000Lang tyP1000Lang;
_BUR_LOCAL tyUIP1020McSetNavi tyP1020McSetNavi;
_BUR_LOCAL tyUIP1021McSetGen tyP1021McSetGen;
_BUR_LOCAL tyUIP1022McSetVComm tyP1022McSetVComm;
_BUR_LOCAL tyUIP1023McSetHComm tyP1023McSetHComm;
_BUR_LOCAL tyUIP1024McSetAntiGap tyP1024McSetAntiGap;
_BUR_LOCAL tyUIP1025McSetScan tyP1025McSetScan;
_BUR_LOCAL tyUIP1026McSetTeach tyP1026McSetTeach;
_BUR_LOCAL tyUIP1027McOpCon tyP1027McSetOpCon;
_BUR_LOCAL tyUIP1030MagSet tyP1030MagSet;
_BUR_LOCAL tyUIP1031MagSetTeach tyP1031MagSetTeach;
_BUR_LOCAL tyUIP1040ProdSet tyP1040ProdSet;
_BUR_LOCAL tyUIP1050LFSet tyP1050LFSet;
_BUR_LOCAL tyUIP1080UsrMgmt tyP1080UsrMgmt;
_BUR_LOCAL tyUIP1081UsrAccessRgt tyP1081UsrMgmtUsrAccessRgt;
_BUR_LOCAL tyUICom tyCommon;
_BUR_LOCAL tyUIProperty tyProperty;
_BUR_LOCAL struct tyLyrC0001MotionStd(* p_tyC0001MotionStd);
_BUR_LOCAL struct tyLyrC0002FullMask(* p_tyC0002FullMask);
_BUR_LOCAL struct tyLyrC0003DualMask(* p_tyC0003DualMask);
_BUR_LOCAL struct tyLyrC0004Navi(* p_tyC0004Navi);
_BUR_LOCAL struct tyLyrC0005Main(* p_tyC0005Main);
_BUR_LOCAL struct tyLyrC0006Set(* p_tyC0006Set);
_BUR_LOCAL struct tyLyrC0007Notif(* p_tyC0007Notif);
_BUR_LOCAL struct tyLyrC0008MsgBox(* p_tyC0008MsgBox);
_BUR_LOCAL struct tyLyrC0009Info(* p_tyC0009Info);
_BUR_LOCAL struct tyLyrC0010RcyMsg(* p_tyC0010RcyMsg);
_BUR_LOCAL struct tyLyrC0011RcpPopUp(* p_tyC0011RcpPopUp);
_BUR_LOCAL struct tyLyrE0001OpsQueryBoardInfo(* p_tyE0001OpsQueryBoardInfo);
_BUR_LOCAL struct tyLyrE0002OpsCurrWorkOrder(* p_tyE0002OpsCurrWorkOrder);
_BUR_LOCAL struct tyLyrE0003OpsQueryWorkOrder(* p_tyE0003OpsQueryWorkOrder);
_BUR_LOCAL struct tyLyrE0004OpsBarcodeScanner(* p_tyE0004OpsBarcodeScanner);
_BUR_LOCAL struct tyLyrP0000SSaver(* p_tyP0000SSaver);
_BUR_LOCAL struct tyLyrP0001Startup(* p_tyP0001Startup);
_BUR_LOCAL struct tyLyrP0001Initial(* p_tyP0001Initial);
_BUR_LOCAL struct tyLyrP0002Menu(* p_tyP0002Menu);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003BtnAuto);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003BtnStop);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003BtnBuz);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003BtnReset);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003AcceptData);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn1);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn2);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn3);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn4);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn5);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn6);
_BUR_LOCAL struct tyUIBtn(* p_tyP0003Btn7);
_BUR_LOCAL struct tyLyrP0003MMenuGen(* p_tyP0003Gen);
_BUR_LOCAL struct tyLyrP0100Login(* p_tyP0100Login);
_BUR_LOCAL struct tyLyrP0100Logout(* p_tyP0100Logout);
_BUR_LOCAL struct tyLyrP0200OpsGen(* p_tyP0200OpsGen);
_BUR_LOCAL struct tyLyrP0200OpsOven(* p_tyP0200OpsOven);
_BUR_LOCAL struct tyLyrP0200OpsUSCommB(* p_tyP0200OpsUSCommB);
_BUR_LOCAL struct tyLyrP0200OpsUSAVSMEMA(* p_tyP0200OpsUSAVSMEMA);
_BUR_LOCAL struct tyLyrP0200OpsUSBVSMEMA(* p_tyP0200OpsUSBVSMEMA);
_BUR_LOCAL struct tyLyrP0200OpsUSAVSMEMA(* p_tyP0200OpsUSAVSMEMA1);
_BUR_LOCAL struct tyLyrP0200OpsUSBVSMEMA(* p_tyP0200OpsUSBVSMEMA1);
_BUR_LOCAL struct tyLyrP0200OpsBypsInitConv(* p_tyP0200OpsBypsInitConv);
_BUR_LOCAL struct tyLyrP0201OpsTravLif(* p_tyP0201OpsTravLif);
_BUR_LOCAL struct tyLyrP0201OpsTravLifIOMonitor(* p_tyP0201TravLifIOMonitor);
_BUR_LOCAL struct tyLyrP0201OpsTravLifIOMonitor1(* p_tyP0201TravLifIOMonitor1);
_BUR_LOCAL struct tyLyrP0201OpsTravLifBypsInitConv(* p_tyP0201TravLifBypsInitConv);
_BUR_LOCAL struct tyLyrP0201OpsParam(* p_tyP0201Param);
_BUR_LOCAL struct tyLyrP0202Ops(* p_tyP0202Ops);
_BUR_LOCAL struct tyLyrP0202IOMonitor(* p_tyP0202IOMonitor);
_BUR_LOCAL struct tyLyrP0202BypsInitConv(* p_tyP0202BypsInitConv);
_BUR_LOCAL struct tyLyrP0202OpsParam(* p_tyP0202Param);
_BUR_LOCAL struct tyLyrP0202OpsChgMagL1(* p_tyP0202ChgMagL1);
_BUR_LOCAL struct tyLyrP0203Ops(* p_tyP0203Ops);
_BUR_LOCAL struct tyLyrP0203IOMonitor(* p_tyP0203IOMonitor);
_BUR_LOCAL struct tyLyrP0203BypsInitConv(* p_tyP0203BypsInitConv);
_BUR_LOCAL struct tyLyrP0203OpsParam(* p_tyP0203Param);
_BUR_LOCAL struct tyLyrP0203OpsChgMagL2(* p_tyP0203ChgMagL2);
_BUR_LOCAL struct tyLyrP0204Ops(* p_tyP0204Ops);
_BUR_LOCAL struct tyLyrP0204IOMonitor(* p_tyP0204IOMonitor);
_BUR_LOCAL struct tyLyrP0204BypsInitConv(* p_tyP0204BypsInitConv);
_BUR_LOCAL struct tyLyrP0204OpsParam(* p_tyP0204Param);
_BUR_LOCAL struct tyLyrP0205IOMonitor(* p_tyP0205IOMonitor);
_BUR_LOCAL struct tyLyrP0206OpsMagConv1(* p_tyP0206OpsMagConv1);
_BUR_LOCAL struct tyLyrP0206OpsMagConvIOMonitor1(* p_tyP0206MagConvIOMonitor1);
_BUR_LOCAL struct tyLyrP0206OpsMagConvBypsInit1(* p_tyP0206MagConvBypsInitConv1);
_BUR_LOCAL struct tyLyrP0207OpsMagConv2(* p_tyP0207OpsMagConv2);
_BUR_LOCAL struct tyLyrP0207OpsMagConvIOMonitor2(* p_tyP0207MagConvIOMonitor2);
_BUR_LOCAL struct tyLyrP0207OpsMagConvBypsInit2(* p_tyP0207MagConvBypsInitConv2);
_BUR_LOCAL struct tyLyrP0300McInfo(* p_tyP0300McInfo);
_BUR_LOCAL struct tyLyrP0400ProdSel(* p_tyP0400ProdSel);
_BUR_LOCAL struct tyLyrP0400RcpDet(* p_tyP0400RcpDet);
_BUR_LOCAL struct tyLyrP0410MagSel(* p_tyP0410MagSel);
_BUR_LOCAL struct tyLyrP0410MagDet(* p_tyP0410MagDet);
_BUR_LOCAL struct tyLyrP0600Alm(* p_tyP0600Alm);
_BUR_LOCAL struct tyLyrP0700LFCtrl(* p_tyP0700LFCtrl);
_BUR_LOCAL struct tyLyrP0800MagInfo1(* p_tyP0800MagInfo1);
_BUR_LOCAL struct tyLyrP0800MagInfo2(* p_tyP0800MagInfo2);
_BUR_LOCAL struct tyLyrP0850OvenCom(* p_tyP0850OvenCom);
_BUR_LOCAL struct tyLyrP0850OvenStdSingle(* p_tyP0850OvenStdSingle);
_BUR_LOCAL struct tyLyrP0850OvenStdDual(* p_tyP0850OvenStdDual);
_BUR_LOCAL struct tyLyrP0850OvenExtddSingle(* p_tyP0850OvenExtddSingle);
_BUR_LOCAL struct tyLyrP0850OvenExtddDualSeparate(* p_tyP0850OvenExtddDualSeparate);
_BUR_LOCAL struct tyLyrP0850OvenExtddDualMix(* p_tyP0850OvenExtddDualMix);
_BUR_LOCAL struct tyLyrP0900GenIn1(* p_tyP0900GenIn1);
_BUR_LOCAL struct tyLyrP0900GenIn2(* p_tyP0900GenIn2);
_BUR_LOCAL struct tyLyrP0900GenIn3(* p_tyP0900GenIn3);
_BUR_LOCAL struct tyLyrP0910GenOut(* p_tyP0910GenOut);
_BUR_LOCAL struct tyLyrP0910GenOutCurtainSen(* p_tyP0910GenOutCurtainSen);
_BUR_LOCAL struct tyLyrP0910GenOutOven(* p_tyP0910GenOutOven);
_BUR_LOCAL struct tyLyrP0910MagAW(* p_tyP0910MagAW);
_BUR_LOCAL struct tyLyrP0920MtrNPneuCtrl(* p_tyP0920MtrNPneuCtrl);
_BUR_LOCAL struct tyLyrP0920MtrNPneuCtrlPneu(* p_tyP0920MtrNPneuCtrlPneu);
_BUR_LOCAL struct tyLyrP0921InletShutterCom(* p_tyP0921InletShutterCom);
_BUR_LOCAL struct tyLyrP0921InletShutterDC(* p_tyP0921InletShutterDC);
_BUR_LOCAL struct tyLyrP0921InletShutterFB(* p_tyP0921InletShutterFB);
_BUR_LOCAL struct tyLyrP0921InletShutterDis(* p_tyP0921InletShutterDis);
_BUR_LOCAL struct tyLyrP0921OutletShutterCom(* p_tyP0921OutletShutterCom);
_BUR_LOCAL struct tyLyrP0921OutletShutterDC(* p_tyP0921OutletShutterDC);
_BUR_LOCAL struct tyLyrP0921OutletShutterFB(* p_tyP0921OutletShutterFB);
_BUR_LOCAL struct tyLyrP0921OutletShutterCom(* p_tyP0921OutletShutterCom3);
_BUR_LOCAL struct tyLyrP0921OutletShutterDC(* p_tyP0921OutletShutterDC3);
_BUR_LOCAL struct tyLyrP0921OutletShutterFB(* p_tyP0921OutletShutterFB3);
_BUR_LOCAL struct tyLyrP0921OutletShutterCom(* p_tyP0921OutletShutterCom2);
_BUR_LOCAL struct tyLyrP0921OutletShutterDC(* p_tyP0921OutletShutterDC2);
_BUR_LOCAL struct tyLyrP0921OutletShutterFB(* p_tyP0921OutletShutterFB2);
_BUR_LOCAL struct tyLyrP0922StopperACom(* p_tyP0922StopperACom);
_BUR_LOCAL struct tyLyrP0922StopperADC(* p_tyP0922StopperADC);
_BUR_LOCAL struct tyLyrP0922StopperAFB(* p_tyP0922StopperAFB);
_BUR_LOCAL struct tyLyrP0922StopperADis(* p_tyP0922StopperADis);
_BUR_LOCAL struct tyLyrP0922StopperBCom(* p_tyP0922StopperBCom);
_BUR_LOCAL struct tyLyrP0922StopperBDC(* p_tyP0922StopperBDC);
_BUR_LOCAL struct tyLyrP0922StopperBFB(* p_tyP0922StopperBFB);
_BUR_LOCAL struct tyLyrP0922StopperBDis(* p_tyP0922StopperBDis);
_BUR_LOCAL struct tyLyrP0923LftSafetyBarCom(* p_tyP0923LftSafetyBarCom);
_BUR_LOCAL struct tyLyrP0923LftSafetyBarDC(* p_tyP0923LftSafetyBarDC);
_BUR_LOCAL struct tyLyrP0923LftSafetyBarFB(* p_tyP0923LftSafetyBarFB);
_BUR_LOCAL struct tyLyrP0923RgtSafetyBarCom(* p_tyP0923RgtSafetyBarCom);
_BUR_LOCAL struct tyLyrP0923RgtSafetyBarDC(* p_tyP0923RgtSafetyBarDC);
_BUR_LOCAL struct tyLyrP0923RgtSafetyBarFB(* p_tyP0923RgtSafetyBarFB);
_BUR_LOCAL struct tyLyrP0926LifterMagConvCom(* p_tyP0926LifterMagConvCom);
_BUR_LOCAL struct tyLyrP0926LifterMagConvDC(* p_tyP0926LifterMagConvDC);
_BUR_LOCAL struct tyLyrP0926LifterMagConvFB(* p_tyP0926LifterMagConvFB);
_BUR_LOCAL struct tyLyrP0927LifterMagConvCom(* p_tyP0927LifterMagConvCom);
_BUR_LOCAL struct tyLyrP0927LifterMagConvDC(* p_tyP0927LifterMagConvDC);
_BUR_LOCAL struct tyLyrP0927LifterMagConvFB(* p_tyP0927LifterMagConvFB);
_BUR_LOCAL struct tyLyrP0928MagConvCom(* p_tyP0928MagConvCom);
_BUR_LOCAL struct tyLyrP0928MagConvTopDC(* p_tyP0928MagConvTopDC);
_BUR_LOCAL struct tyLyrP0928MagConvBtmDC(* p_tyP0928MagConvBtmDC);
_BUR_LOCAL struct tyLyrP0928MagConvTopFB(* p_tyP0928MagConvTopFB);
_BUR_LOCAL struct tyLyrP0928MagConvBtmFB(* p_tyP0928MagConvBtmFB);
_BUR_LOCAL struct tyLyrP0929MagConv2Com(* p_tyP0929MagConv2Com);
_BUR_LOCAL struct tyLyrP0929MagConv2TopDC(* p_tyP0929MagConv2TopDC);
_BUR_LOCAL struct tyLyrP0929MagConv2BtmDC(* p_tyP0929MagConv2BtmDC);
_BUR_LOCAL struct tyLyrP0929MagConv2TopFB(* p_tyP0929MagConv2TopFB);
_BUR_LOCAL struct tyLyrP0929MagConv2BtmFB(* p_tyP0929MagConv2BtmFB);
_BUR_LOCAL struct tyLyrP0930Mag1ConvCom(* p_tyP0930Mag1ConvCom);
_BUR_LOCAL struct tyLyrP0930Mag1ConvDC(* p_tyP0930Mag1ConvDC);
_BUR_LOCAL struct tyLyrP0930Mag1ConvFB(* p_tyP0930Mag1ConvFB);
_BUR_LOCAL struct tyLyrP0931Mag2ConvCom(* p_tyP0931Mag2ConvCom);
_BUR_LOCAL struct tyLyrP0931Mag2ConvDC(* p_tyP0931Mag2ConvDC);
_BUR_LOCAL struct tyLyrP0931Mag2ConvFB(* p_tyP0931Mag2ConvFB);
_BUR_LOCAL struct tyLyrP0932Mag3ConvCom(* p_tyP0932Mag3ConvCom);
_BUR_LOCAL struct tyLyrP0932Mag3ConvDC(* p_tyP0932Mag3ConvDC);
_BUR_LOCAL struct tyLyrP0932Mag3ConvFB(* p_tyP0932Mag3ConvFB);
_BUR_LOCAL struct tyLyrP0933PushConvCom(* p_tyP0933PushConvCom);
_BUR_LOCAL struct tyLyrP0933PushConvDC(* p_tyP0933PushConvDC);
_BUR_LOCAL struct tyLyrP0933PushConvFB(* p_tyP0933PushlConvFB);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP0933InOutletShutterFB);
_BUR_LOCAL struct tyLyrP0934AW(* p_tyP0934AW);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP0934InOutletShutterFB);
_BUR_LOCAL struct tyLyrP0935Lifter(* p_tyP0935Lifter);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP0935InOutletShutterFB);
_BUR_LOCAL struct tyLyrP0936Trav(* p_tyP0936Trav);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP0936InOutletShutterFB);
_BUR_LOCAL struct tyLyrP0937AWPushOrPuller(* p_tyP0937AWPushOrPuller);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP0937InOutletShutterFB);
_BUR_LOCAL struct tyLyrP0938MagAW(* p_tyP0938MagAW);
_BUR_LOCAL struct tyLyrP0935Lifter(* p_tyP0939Lifter);
_BUR_LOCAL struct tyLyrP0940CommCtrlUSSMEMA(* p_tyP0940CommCtrlUSSMEMAA);
_BUR_LOCAL struct tyLyrP0940CommCtrlUSSMEMA(* p_tyP0940CommCtrlUSSMEMAB);
_BUR_LOCAL struct tyLyrP0940SOTComm(* p_tyP0940CommCtrlSOT);
_BUR_LOCAL struct tyLyrP0940DMCRFIDComm(* p_tyP0940CommDMCRFID);
_BUR_LOCAL struct tyLyrP0950Simu(* p_tyP0950Simu);
_BUR_LOCAL struct tyLyrP0950SimuCycleTim(* p_tyP0950SimuCycleTim);
_BUR_LOCAL struct tyLyrP0950SimuAGVToMC(* p_tyP0950SimuAGVtoMC);
_BUR_LOCAL struct tyLyrP0950SimuMCToAGV(* p_tyP0950SimuMCtoAGV);
_BUR_LOCAL struct tyLyrP1000Lang(* p_tyP1000Lang);
_BUR_LOCAL struct tyLyrP1020McSetNavi(* p_tyP1020McSetNavi);
_BUR_LOCAL struct tyLyrP1021McSetGen(* p_tyP1021McSetGen);
_BUR_LOCAL struct tyLyrP1021McSetNetwork(* p_tyP1021McSetNetwork);
_BUR_LOCAL struct tyLyrP1022McSetVCommSel(* p_tyP1022McSetVCommSel);
_BUR_LOCAL struct tyLyrP1022McSetVCommLF(* p_tyP1022McSetVCommLF);
_BUR_LOCAL struct tyLyrP1022McSetVCommSvy(* p_tyP1022McSetVCommSvy);
_BUR_LOCAL struct tyLyrP1023McSetHCommSel(* p_tyP1023McSetHCommUSSel);
_BUR_LOCAL struct tyLyrP1023McSetHCommSMEMA(* p_tyP1023McSetHCommUSSMEMA);
_BUR_LOCAL struct tyLyrP1023McSetHCommUSHermes(* p_tyP1023McSetHCommUSHermes);
_BUR_LOCAL struct tyLyrP1024McSetAntiGap(* p_tyP1024McSetAntiGap);
_BUR_LOCAL struct tyLyrP1025McSetScan(* p_tyP1025McSetScan);
_BUR_LOCAL struct tyLyrP1026McSetTeach(* p_tyP1026McSetTeach);
_BUR_LOCAL struct tyLyrP1026InOutletShutterFB(* p_tyP1026InOutletShutterFB);
_BUR_LOCAL struct tyLyrP1027McSetOpCon(* p_tyP1027McSetOpCon);
_BUR_LOCAL struct tyLyrP1030MagSet(* p_tyP1030MagSet);
_BUR_LOCAL struct tyLyrP1031MagSetTeach(* p_tyP1031MagSetTeach);
_BUR_LOCAL struct tyLyrP1031InOutletShutterFB(* p_tyP1031InOutletShutterFB);
_BUR_LOCAL struct tyLyrP1040ProdSet(* p_tyP1040ProdSet);
_BUR_LOCAL struct tyLyrP1050LFSetLdr(* p_tyP1050LFSetLdr);
_BUR_LOCAL struct tyLyrP1050LFSetLdrEdit(* p_tyP1050LFSetLdrEdit);
_BUR_LOCAL struct tyLyrP1080UsrMgmt(* p_tyP1080UsrMgmt);
_BUR_LOCAL struct tyLyrP1080UsrMgmtAct(* p_tyP1080UsrMgmtAct);
_BUR_LOCAL struct tyLyrP1081UsrMgmtUsrAccessRgt(* p_tyP1081UsrMgmtUsrAccessRgt);
_BUR_LOCAL struct tyLyrP1081UsrMgmtUsrAccessRgtSel(* p_tyP1081UsrMgmtUsrAccessRgtSel);
_BUR_LOCAL struct tyTxtSnippets(* p_tyTxtSnippets);
_BUR_LOCAL struct tyKeypad(* p_tyKeypad);
_BUR_LOCAL struct tyVisu(* p_tyVisu);
_GLOBAL unsigned long c_udiAlarmCurrMax;
_GLOBAL unsigned long c_udiAlarmHistoryMax;
_GLOBAL unsigned long c_udiProdRcpMax;
_GLOBAL unsigned long c_udiMagRcpMax;
_GLOBAL unsigned long c_udiUsrMgmtMax;
_GLOBAL signed long c_diDispBffrSize;
_GLOBAL signed long c_diLFClntNum;
_GLOBAL signed long c_diHermesConfigMaxIdx;
