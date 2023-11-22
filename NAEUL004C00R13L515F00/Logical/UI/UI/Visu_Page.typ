(*Pages*)
(**)
(*Common Layers*)

TYPE
	tyUICom : 	STRUCT 
		tyMain : tyLyrC0005Main := (tyBtnStep:=(uiRtStat:=1),tyBtnReset:=(uiMaskRtStat:=0),tyBtnStop:=(uiMaskRtStat:=0));
		tyMain1 : tyLyrC0005Main := (tyBtnStart:=(uiRtStat:=1),tyBtnAlarm:=(uiRtStat:=1),tyBtnBuzzer:=(uiRtStat:=1),tyBtnStep:=(uiRtStat:=1),tyBtnReset:=(uiRtStat:=1),tyBtnStop:=(uiRtStat:=1),tyBtnGoMain:=(uiRtStat:=1),tyHotspotNaviStart:=(uiRtStat:=1));
		tySet : tyLyrC0006Set := (tyBtnSave:=(uiMaskRtStat:=0));
		tyNotif : tyLyrC0007Notif := (tyLyr:=(uiRtStat:=1));
		tyInfo : tyLyrC0009Info := (tyLyr:=(uiRtStat:=1));
	END_STRUCT;
	tyUIP0000SSaver : 	STRUCT 
		tySSaver : tyLyrP0000SSaver := (tyTxtMcStat:=(usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxLoginAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=4,usiTxtIdx:=5),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=173),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0001Startup : 	STRUCT 
		tyStartup : tyLyrP0001Startup;
		tyInitial : tyLyrP0001Initial;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxIPConfig : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtTitle:=(usiValueIdx:=25));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0002Menu : 	STRUCT 
		tyMenu : tyLyrP0002Menu := (tyBtnAlm:=(uiMaskRtStat:=0),tyBtnCommCtrl:=(uiMaskRtStat:=0),tyBtnGenInput:=(uiMaskRtStat:=0),tyBtnGenOutput:=(uiMaskRtStat:=0),tyBtnLang:=(uiMaskRtStat:=0),tyBtnLFCtrl:=(uiMaskRtStat:=0,uiRtStat:=1),tyBtnLFSet:=(uiMaskRtStat:=0,uiRtStat:=1),tyBtnMcInfo:=(uiMaskRtStat:=0),tyBtnMcSet:=(uiMaskRtStat:=0),tyBtnMnlRst:=(uiRtStat:=1),tyBtnMovCtrl:=(uiMaskRtStat:=0),tyBtnOpt:=(uiMaskRtStat:=0),tyBtnProdSel:=(uiMaskRtStat:=0),tyBtnProdSet:=(uiMaskRtStat:=0),tyBtnMagInfo:=(uiMaskRtStat:=0),tyBtnMagSet:=(uiMaskRtStat:=0),tyBtnMagSel:=(uiMaskRtStat:=0),tyBtnUsrMgmt:=(uiMaskRtStat:=0),tyBitmapGen:=(uiRtStat:=1),tyBitmapSet:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxRemoveMag : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=10),tyTxtTitle:=(usiValueIdx:=24));
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyUIP0003MMenu : 	STRUCT 
		tyMMenuGen : tyLyrP0003MMenuGen;
		tyMMenuBtn : tyOptBtn;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
	tyOptBtn : 	STRUCT 
		tyBtnAuto : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnBuz : tyUIBtn;
		tyBtnReset : tyUIBtn;
		tyBtnMnlUnload : tyUIBtn := (usiTxtIdx:=5);
		tyBtnRlsNewMag1 : tyUIBtn;
		tyBtnRlsNewMag2 : tyUIBtn;
		tyBtnRlsNewMag3 : tyUIBtn;
		tyBtnAccDat : tyUIBtn := (uiRtStat:=1);
		tyBtn5 : tyUIBtn := (uiRtStat:=1);
		tyBtn6 : tyUIBtn := (uiRtStat:=1);
		tyBtn7 : tyUIBtn := (uiRtStat:=1);
		tyBtnHide : tyUIBtn := (uiRtStat:=1);
		tyBtnRlsNewMagBk1 : tyUIBtn := (usiTxtIdx:=6);
		tyBtnRlsNewMagBk2 : tyUIBtn := (usiTxtIdx:=8);
		tyBtnRlsNewMagBk3 : tyUIBtn := (usiTxtIdx:=10);
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0003MMenuGen : 	STRUCT 
		tyStatusTxt : tyUITxt;
		tyStringProdNm : tyUIString;
		tyBitmapUSIn : tyUIBitmap;
		tyBitmapUSOut : tyUIBitmap;
		tyBitmapUSIn1 : tyUIBitmap;
		tyBitmapUSOut1 : tyUIBitmap;
		tyBitmapUSAComm : tyUIBitmap;
		tyBitmapUSAComm1 : tyUIBitmap;
		tyBitmapUSBIn : tyUIBitmap;
		tyBitmapUSBOut : tyUIBitmap;
		tyBitmapUSBIn1 : tyUIBitmap;
		tyBitmapUSBOut1 : tyUIBitmap;
		tyBitmapUSBComm : tyUIBitmap;
		tyBitmapUSBComm1 : tyUIBitmap;
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyUIP0100Login : 	STRUCT 
		tyLogin : tyLyrP0100Login := (tyStringUsrNm:=(sKeypadTitle:='User Name'),tyStringPw:=(sKeypadTitle:='Password'));
		tyLogout : tyLyrP0100Logout := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxPwMismatch : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=24),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=23),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0200OpsGen : 	STRUCT 
		tyOps : tyLyrP0200OpsGen := (tyBtnAccDat:=(uiMaskRtStat:=1,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1));
		tyOven : tyLyrP0200OpsOven;
		tyUSCommB : tyLyrP0200OpsUSCommB := (tyLyr:=(uiRtStat:=1));
		tyUSAVSMEMA : tyLyrP0200OpsUSAVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyUSBVSMEMA : tyLyrP0200OpsUSBVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyUSAVSMEMA1 : tyLyrP0200OpsUSAVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyUSBVSMEMA1 : tyLyrP0200OpsUSBVSMEMA := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0200OpsBypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxRcpSelMsg : tyLyrC0008MsgBox;
		tyRcyMsgHide : tyLyrC0010RcyMsg := (tyLyr:=(uiRtStat:=1));
		tyRcyMsg : tyLyrC0010RcyMsg;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0201OpsTravLifter : 	STRUCT 
		tyOps : tyLyrP0201OpsTravLif := (tyBtnAccDat:=(uiMaskRtStat:=1,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1));
		tyIOMonitor : tyLyrP0201OpsTravLifIOMonitor := (tyLyr:=(uiRtStat:=1));
		tyIOMonitor1 : tyLyrP0201OpsTravLifIOMonitor1 := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0201OpsTravLifBypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0201OpsParam := (tyLyr:=(uiRtStat:=1));
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
		tyQueryBoardInfo : tyLyrE0001OpsQueryBoardInfo := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyLyr:=(uiRtStat:=1));
		tyCurrWorkOrderInfo : tyLyrE0002OpsCurrWorkOrder := (tyBtnQuery:=(usiBitmapIdx:=1),tyBtnExit:=(usiBitmapIdx:=2),tyBtnDelete:=(usiBitmapIdx:=3),tyLyr:=(uiRtStat:=1));
		tyQueryWorkOrderInfo : tyLyrE0003OpsQueryWorkOrder := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyStringMagazineId:=(sKeypadTitle:='Magazine Barcode'),tyNumSlotId:=(diValueMax:=49,diValueMin:=0,sKeypadTitle:='Slot ID'),tyStringBarcode:=(sKeypadTitle:='PCB Barcode'),tyLyr:=(uiRtStat:=1));
		tyBarcodeScanner : tyLyrE0004OpsBarcodeScanner := (tyBtnOk:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnCancel:=(usiBitmapIdx:=2,usiTxtIdx:=4),tyLyr:=(uiRtStat:=1));
		tyMsgBoxAskDelete : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=27),tyTxtMsg:=(usiValueIdx:=124),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0202OpsMag1 : 	STRUCT 
		tyOps : tyLyrP0202Ops := (tyBtnAccDat:=(uiMaskRtStat:=1,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=0));
		tyIOMonitor : tyLyrP0202IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0202BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0202OpsParam := (tyLyr:=(uiRtStat:=1));
		tyChgMag : tyLyrP0202OpsChgMagL1;
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
		tyQueryBoardInfoHide : tyLyrE0001OpsQueryBoardInfo := (tyLyr:=(uiRtStat:=1));
		tyQueryBoardInfo : tyLyrE0001OpsQueryBoardInfo;
		tyCurrWorkOrderInfoHide : tyLyrE0002OpsCurrWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyCurrWorkOrderInfo : tyLyrE0002OpsCurrWorkOrder;
		tyQueryWorkOrderInfoHide : tyLyrE0003OpsQueryWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyQueryWorkOrderInfo : tyLyrE0003OpsQueryWorkOrder;
		tyBarcodeScannerHide : tyLyrE0004OpsBarcodeScanner := (tyLyr:=(uiRtStat:=1));
		tyBarcodeScanner : tyLyrE0004OpsBarcodeScanner;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0203OpsMag2 : 	STRUCT 
		tyOps : tyLyrP0203Ops := (tyBtnAccDat:=(uiMaskRtStat:=1,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=0));
		tyIOMonitor : tyLyrP0203IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0203BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0203OpsParam := (tyLyr:=(uiRtStat:=1));
		tyChgMag : tyLyrP0203OpsChgMagL2;
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
		tyQueryBoardInfoHide : tyLyrE0001OpsQueryBoardInfo := (tyLyr:=(uiRtStat:=1));
		tyQueryBoardInfo : tyLyrE0001OpsQueryBoardInfo;
		tyCurrWorkOrderInfoHide : tyLyrE0002OpsCurrWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyCurrWorkOrderInfo : tyLyrE0002OpsCurrWorkOrder;
		tyQueryWorkOrderInfoHide : tyLyrE0003OpsQueryWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyQueryWorkOrderInfo : tyLyrE0003OpsQueryWorkOrder;
		tyBarcodeScannerHide : tyLyrE0004OpsBarcodeScanner := (tyLyr:=(uiRtStat:=1));
		tyBarcodeScanner : tyLyrE0004OpsBarcodeScanner;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0204OpsMag3 : 	STRUCT 
		tyOps : tyLyrP0204Ops := (tyBtnAccDat:=(uiMaskRtStat:=1,uiRtStat:=1),tyBitmapAccDat:=(uiRtStat:=1),tyBtnChgMag:=(uiMaskRtStat:=0));
		tyIOMonitor : tyLyrP0204IOMonitor := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0204BypsInitConv := (tyLyr:=(uiRtStat:=1));
		tyParam : tyLyrP0204OpsParam := (tyLyr:=(uiRtStat:=1));
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUnloadAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=11),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxResumeAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=12),tyTxtTitle:=(usiValueIdx:=7));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
		tyQueryBoardInfoHide : tyLyrE0001OpsQueryBoardInfo := (tyLyr:=(uiRtStat:=1));
		tyQueryBoardInfo : tyLyrE0001OpsQueryBoardInfo;
		tyCurrWorkOrderInfoHide : tyLyrE0002OpsCurrWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyCurrWorkOrderInfo : tyLyrE0002OpsCurrWorkOrder;
		tyQueryWorkOrderInfoHide : tyLyrE0003OpsQueryWorkOrder := (tyLyr:=(uiRtStat:=1));
		tyQueryWorkOrderInfo : tyLyrE0003OpsQueryWorkOrder;
		tyBarcodeScannerHide : tyLyrE0004OpsBarcodeScanner := (tyLyr:=(uiRtStat:=1));
		tyBarcodeScanner : tyLyrE0004OpsBarcodeScanner;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0205OpsAIV : 	STRUCT 
		tyIOMonitor : tyLyrP0205IOMonitor;
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
	tyUIP0206OpsMagConv1 : 	STRUCT 
		tyOps : tyLyrP0206OpsMagConv1;
		tyIOMonitor : tyLyrP0206OpsMagConvIOMonitor1 := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0206OpsMagConvBypsInit1 := (tyLyr:=(uiRtStat:=1));
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0207OpsMagConv2 : 	STRUCT 
		tyOps : tyLyrP0207OpsMagConv2;
		tyIOMonitor : tyLyrP0207OpsMagConvIOMonitor2 := (tyLyr:=(uiRtStat:=1));
		tyBypsInitConv : tyLyrP0207OpsMagConvBypsInit2 := (tyLyr:=(uiRtStat:=1));
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyNaviHide : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=7));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0300McInfo : 	STRUCT 
		tyMcInfo : tyLyrP0300McInfo;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0400ProdSel : 	STRUCT 
		tyProdSel : tyLyrP0400ProdSel := (tyNumMinReqFreeBffr:=(uiRtStat:=1),tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),2((sValue:='10')),4((0))],a_tyStringDataCol1:=[(usiColor:=1),14((0))],a_tyStringDataCol2:=[(usiColor:=1),14((0))],tyUISlider:=(iMaxValue:=1991,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Product Name'),tyStringTitle2Col2Row0:=(sValue:='Product Width')),tyStringSearch:=(sKeypadTitle:='Search'),tyTxtMinReqFreeBffr:=(uiRtStat:=1));
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyRcpDet : tyLyrP0400RcpDet := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxRcpParamErr : tyLyrC0008MsgBox;
		tyMsgBoxLoadErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=41),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSelRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=43),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSelRcpNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=44),tyTxtTitle:=(usiValueIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxGoToLFCtrlAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=169),tyTxtTitle:=(usiValueIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0410MagSel : 	STRUCT 
		tyMagSel : tyLyrP0410MagSel := (tyTableRecipe:=(a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],a_tyStringDataCol3:=[(usiColor:=1),14(0)],a_tyStringDataCol4:=[(usiColor:=1),14(0)],tyUISlider:=(iMaxValue:=9,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine Name'),tyStringTitle2Col2Row0:=(sValue:='Slot-Slot Dist/Max Slot')));
		tyMagDet : tyLyrP0410MagDet := (tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxRcpParamErr : tyLyrC0008MsgBox;
		tyMsgBoxLoadErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=41),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSelRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=43),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSelRcpNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=44),tyTxtTitle:=(usiValueIdx:=3));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0600Alm : 	STRUCT 
		tyAlm : tyLyrP0600Alm := (tyBtnCurr:=(bValue:=TRUE));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyRcyMsg : tyLyrC0010RcyMsg;
		tyRcyMsgHide : tyLyrC0010RcyMsg := (tyLyr:=(uiRtStat:=1));
		tyBtnCurr : tyUIBtn;
		tyBtnHistory : tyUIBtn;
		tyAlarm : tyUIAlarm;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0700LFCtrl : 	STRUCT 
		tyLdr : tyLyrP0700LFCtrl := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),3((0))],a_tyStringDataCol1:=[2(0),13((0))],a_tyStringDataCol2:=[2(0),13((0))],a_tyStringDataCol4:=[2(0),13((0))],a_tyTxtDataCol3:=[2(0),13((0))],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Machine Name'),tyStringTitle2Col2Row0:=(sValue:='IP Address'),tyStringTitle3Col3Row0:=(sValue:='Status'),tyStringTitle4Col4Row0:=(sValue:='Recipe Name'),tyUISlider:=(iMaxValue:=c_diLFClntNum-c_uiP0700TableSize+1,iMinValue:=1,iValue:=1,uiRtStat:=0)));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxChgAllAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=161),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxChgSeqAutoAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=162),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxChgSeqMnlAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=163),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxSyncPLCTmAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=164),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxTerminateOpsAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=165),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxErrorAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=9),tyTxtMsg:=(usiValueIdx:=174),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0800MagInfo : 	STRUCT 
		tyMagInfo1 : tyLyrP0800MagInfo1 := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')),tyTable2List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyMagInfo2 : tyLyrP0800MagInfo2 := (tyTable3List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),(sValue:='12'),(sValue:='13'),(sValue:='14'),(sValue:='15')],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine')));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0850OvenInfo : 	STRUCT 
		tyCom : tyLyrP0850OvenCom;
		tyStdA : tyLyrP0850OvenStdSingle := (tyTxtTittle:=(usiValueIdx:=1));
		tyStdB : tyLyrP0850OvenStdSingle := (tyTxtTittle:=(usiValueIdx:=2));
		tyStdAB : tyLyrP0850OvenStdDual;
		tyExtddA : tyLyrP0850OvenExtddSingle := (tyNumBrdInOven:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven'));
		tyExtddB : tyLyrP0850OvenExtddSingle := (tyNumBrdInOven:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven'));
		tyExtddABSeparate : tyLyrP0850OvenExtddDualSeparate := (tyNumBrdInOvenA:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven A'),tyNumBrdInOvenB:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven B'));
		tyExtddABMix : tyLyrP0850OvenExtddDualMix := (tyNumBrdInOvenA:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven A'),tyNumBrdInOvenB:=(diValueMax:=1000,sKeypadTitle:='Boards In Oven B'));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0900GenIn : 	STRUCT 
		tyGenIn1 : tyLyrP0900GenIn1;
		tyGenIn2 : tyLyrP0900GenIn2;
		tyGenIn3 : tyLyrP0900GenIn3;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0910GenOut : 	STRUCT 
		tyGenOut : tyLyrP0910GenOut;
		tyGenOutCurtainSen : tyLyrP0910GenOutCurtainSen;
		tyOven : tyLyrP0910GenOutOven;
		tyMagAW : tyLyrP0910MagAW;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0920MtrNPneuCtrl : 	STRUCT 
		tyMtrNPneuCtrl : tyLyrP0920MtrNPneuCtrl;
		tyMtrNPneuCtrlPneu : tyLyrP0920MtrNPneuCtrlPneu := (tyLyr:=(uiRtStat:=1));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0921InletNOutletShutter : 	STRUCT 
		tyInletShutterCom : tyLyrP0921InletShutterCom := (tyTxtTit:=(usiValueIdx:=0));
		tyInletShutterDC : tyLyrP0921InletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyInletShutterFB : tyLyrP0921InletShutterFB;
		tyInletShutterDis : tyLyrP0921InletShutterDis := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterCom : tyLyrP0921OutletShutterCom := (tyTxtTit:=(usiValueIdx:=1));
		tyOutletShutterDC : tyLyrP0921OutletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterFB : tyLyrP0921OutletShutterFB;
		tyOutletShutterCom3 : tyLyrP0921OutletShutterCom := (tyTxtTit:=(usiValueIdx:=3));
		tyOutletShutterDC3 : tyLyrP0921OutletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterFB3 : tyLyrP0921OutletShutterFB;
		tyOutletShutterCom2 : tyLyrP0921InletShutterCom := (tyBitmapMc:=(usiValueIdx:=150),tyTxtTit:=(usiValueIdx:=2));
		tyOutletShutterDC2 : tyLyrP0921InletShutterDC := (tyLyr:=(uiRtStat:=1));
		tyOutletShutterFB2 : tyLyrP0921InletShutterFB;
		tyOutletShutterDis2 : tyLyrP0921InletShutterDis := (tyLyr:=(uiRtStat:=1));
		tyDualMaskHide : tyLyrC0003DualMask := (tyLyr:=(uiRtStat:=1));
		tyDualMaskEStop : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=1),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=1));
		tyDualMaskCWSig : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=2),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=2));
		tyDualMaskSafetyRly : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=3),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=3));
		tyDualMaskPshrInterruptInOutlet : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=1,usiTxtIdx:=10),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=10));
		tyDualMaskPshrInterruptOutlet : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=10),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=10));
		tyDualMaskLifMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=15),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=15));
		tyDualMaskTravMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=16),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=16));
		tyDualMaskAWMovInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=17),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=17));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0922Stopper : 	STRUCT 
		tyInStopperCom : tyLyrP0922InStopperCom := (tyTxtTit:=(usiValueIdx:=2));
		tyInStopperDC : tyLyrP0922InStopperDC;
		tyInStopperFB : tyLyrP0922InStopperFB;
		tyInStopperDis : tyLyrP0922InStopperDis;
		tyStopperACom : tyLyrP0922StopperACom := (tyTxtTit:=(usiValueIdx:=0));
		tyStopperADC : tyLyrP0922StopperADC := (tyLyr:=(uiRtStat:=1));
		tyStopperAFB : tyLyrP0922StopperAFB;
		tyStopperADis : tyLyrP0922StopperADis := (tyLyr:=(uiRtStat:=1));
		tyStopperBCom : tyLyrP0922StopperBCom := (tyTxtTit:=(usiValueIdx:=1));
		tyStopperBDC : tyLyrP0922StopperBDC := (tyLyr:=(uiRtStat:=1));
		tyStopperBFB : tyLyrP0922StopperBFB;
		tyStopperBDis : tyLyrP0922StopperBDis := (tyLyr:=(uiRtStat:=1));
		tyDualMaskHide : tyLyrC0003DualMask := (tyLyr:=(uiRtStat:=1));
		tyDualMaskEStop : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=1),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=1));
		tyDualMaskCWSig : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=2),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=2));
		tyDualMaskSafetyRly : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=3),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0923SafetyBar : 	STRUCT 
		tyRgtSafetyBarComHide : tyLyrP0923RgtSafetyBarCom := (tyBitmapMc:=(usiValueIdx:=255),tyLyr:=(uiRtStat:=1));
		tyRgtSafetyBarDCHide : tyLyrP0923RgtSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyRgtSafetyBarFBHide : tyLyrP0923RgtSafetyBarFB := (tyLyr:=(uiRtStat:=1));
		tyMag1SafetyBarCom : tyLyrP0923LftSafetyBarCom;
		tyMag1SafetyBarDC : tyLyrP0923LftSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag1SafetyBarFB : tyLyrP0923LftSafetyBarFB;
		tyMag2SafetyBarCom : tyLyrP0923RgtSafetyBarCom := (tyTxtSubTitle:=(usiValueIdx:=1));
		tyMag2SafetyBarDC : tyLyrP0923RgtSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag2SafetyBarFB : tyLyrP0923RgtSafetyBarFB;
		tyMag3SafetyBarCom : tyLyrP0923LftSafetyBarCom := (tyTxtSubTitle:=(usiValueIdx:=2));
		tyMag3SafetyBarDC : tyLyrP0923LftSafetyBarDC := (tyLyr:=(uiRtStat:=1));
		tyMag3SafetyBarFB : tyLyrP0923LftSafetyBarFB;
		tyDualMaskHide : tyLyrC0003DualMask := (tyLyr:=(uiRtStat:=1));
		tyDualMaskEStop : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=1),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=1));
		tyDualMaskCWSig : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=2),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=2));
		tyDualMaskSafetyRly : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=3),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=3));
		tyDualMaskPshrInterrupt : tyLyrC0003DualMask := (tyBtnLeftMask:=(uiMaskRtStat:=0,usiTxtIdx:=29),tyBtnRgtMask:=(uiMaskRtStat:=0,usiTxtIdx:=29));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0926LifterMagConv : 	STRUCT 
		tyCom : tyLyrP0926LifterMagConvCom;
		tyFB : tyLyrP0926LifterMagConvFB;
		tyDC : tyLyrP0926LifterMagConvDC;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
	END_STRUCT;
	tyUIP0927LifterMagConv2 : 	STRUCT 
		tyCom : tyLyrP0927LifterMagConvCom;
		tyFB : tyLyrP0927LifterMagConvFB;
		tyDC : tyLyrP0927LifterMagConvDC;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0928MagConv : 	STRUCT 
		tyCom : tyLyrP0928MagConvCom;
		tyBtmDC : tyLyrP0928MagConvBtmDC;
		tyTopDC : tyLyrP0928MagConvTopDC;
		tyBtmFB : tyLyrP0928MagConvBtmFB;
		tyTopFB : tyLyrP0928MagConvTopFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNavi2Lyr : tyLyrC0004Navi := (tyBtnRgt:=(uiRtStat:=0),tyBitmapPageDisp:=(usiValueIdx:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0929MagConv2 : 	STRUCT 
		tyCom : tyLyrP0929MagConv2Com := (tyBtnLane:=(usiTxtIdx:=1));
		tyBtmDC : tyLyrP0929MagConv2BtmDC := (tyLyr:=(uiRtStat:=1));
		tyTopDC : tyLyrP0929MagConv2TopDC := (tyLyr:=(uiRtStat:=1));
		tyBtmFB : tyLyrP0929MagConv2BtmFB := (tyLyr:=(uiRtStat:=1));
		tyTopFB : tyLyrP0929MagConv2TopFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNavi2Lyr : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNavi3Lyr : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0930MagConv1 : 	STRUCT 
		tyCom : tyLyrP0930Mag1ConvCom;
		tyDC : tyLyrP0930Mag1ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0930Mag1ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskAWMotorEngage : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=32));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNavi2Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNavi3Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0931MagConv2 : 	STRUCT 
		tyCom : tyLyrP0931Mag2ConvCom;
		tyDC : tyLyrP0931Mag2ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0931Mag2ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskAWMotorEngage : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=32));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyNavi2Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNavi3Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=4));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0932MagConv3 : 	STRUCT 
		tyCom : tyLyrP0932Mag3ConvCom;
		tyDC : tyLyrP0932Mag3ConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0932Mag3ConvFB;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskAWMotorEngage : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=32));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyNavi3Lyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=5));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0933PushConv : 	STRUCT 
		tyCom : tyLyrP0933PushConvCom;
		tyDC : tyLyrP0933PushConvDC := (tyLyr:=(uiRtStat:=1));
		tyFB : tyLyrP0933PushConvFB := (tyNumExtSpd:=(sKeypadTitle:='Extend Speed, Sel: 1-8 Speed'),tyNumExtTorqPercent:=(sKeypadTitle:='Extend Torque'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskOutShutterInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=11));
		tyFullMaskAWConvInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=33));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0934AW : 	STRUCT 
		tyAW : tyLyrP0934AW := (tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd : tyLyrC0001MotionStdAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=4));
		tyFullMaskMidSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=5));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=6));
		tyFullMaskClrSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=7));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=24));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=14));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0935Lifter : 	STRUCT 
		tyLifter : tyLyrP0935Lifter := (tyNumNewSlt:=(diValue:=1,diValueMin:=1,sKeypadTitle:='New Slot'),tyNumMagPos:=(sKeypadTitle:='Magazine Position'));
		tyMotionStd : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskPshrInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=9));
		tyFullMaskPshrNotRetInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=36));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=25));
		tyFullMaskClrSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=26));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=22));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=12));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=27));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=28));
		tyFullMaskMagClmpInt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=34));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0936Trav : 	STRUCT 
		tyTrav : tyLyrP0936Trav;
		tyMotionStd : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskPshrInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=8));
		tyFullMaskPshrNotRetInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=35));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=18));
		tyFullMaskClrSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=21));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=23));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=13));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0937AWPushOrPuller : 	STRUCT 
		tyAW : tyLyrP0937AWPushOrPuller := (tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd : tyLyrC0001MotionStdAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=4));
		tyFullMaskRgtSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=5));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=12));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=20));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0938MagAW : 	STRUCT 
		tyMagAW1 : tyLyrP0938MagAW := (tyTxtSubTitle:=(usiValueIdx:=0),tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd1 : tyLyrC0001MotionStdMagAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyMagAW2 : tyLyrP0938MagAW := (tyTxtSubTitle:=(usiValueIdx:=1),tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd2 : tyLyrC0001MotionStdMagAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyMagAW3 : tyLyrP0938MagAW := (tyTxtSubTitle:=(usiValueIdx:=2),tyNumNewWidth:=(sKeypadTitle:='New Width'));
		tyMotionStd3 : tyLyrC0001MotionStdMagAW := (tyBitmapMc:=(usiValueIdx:=0),tyBtnOpenLmtSen:=(usiTxtIdx:=3),tyBtnCloseLmtSen:=(usiTxtIdx:=1),tyBtnJogOpen:=(usiBitmapIdx:=2,usiTxtIdx:=3),tyBtnJogClose:=(usiBitmapIdx:=3,usiTxtIdx:=1),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValue:=10000,diValueMax:=50000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValue:=5000,diValueMax:=50000,diValueMin:=500,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValue:=0,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValue:=0,diValueMax:=10,diValueMin:=0,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskMag1NotMty : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=29));
		tyFullMaskMag2NotMty : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=30));
		tyFullMaskMag3NotMty : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=31));
		tyNavi2Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNavi2Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNavi3Lyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=3));
		tyNavi3Lyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=4));
		tyNavi3Lyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=5));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0939Lifter2 : 	STRUCT 
		tyLifter : tyLyrP0935Lifter := (tyNumNewSlt:=(diValue:=1,diValueMin:=1,sKeypadTitle:='New Slot'),tyNumMagPos:=(sKeypadTitle:='Magazine Position'));
		tyMotionStd : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskPshrInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=9));
		tyFullMaskLftSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=25));
		tyFullMaskClrSenInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=26));
		tyFullMaskInShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=22));
		tyFullMaskOutShutOpnInterrupt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=12));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=27));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=28));
		tyFullMaskMagClmpInt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=34));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0940CommCtrl : 	STRUCT 
		tyUSSMEMAA : tyLyrP0940CommCtrlUSSMEMA;
		tyUSSMEMAB : tyLyrP0940CommCtrlUSSMEMA;
		tySOT : tyLyrP0940SOTComm;
		tyDMCRFID : tyLyrP0940DMCRFIDComm;
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP0950Simu : 	STRUCT 
		tySimu : tyLyrP0950Simu := (tyBtnSimu:=(bRtLk:=TRUE,bValue:=TRUE),tyLyr1:=(uiRtStat:=1),tyLyr2:=(uiRtStat:=1));
		tySimuBffrCycleTm : tyLyrP0950SimuCycleTim := (tyDrpDnMagSel:=(usiValueMaxIdx:=2),tyLyr:=(uiRtStat:=1));
		tyAGVToMc : tyLyrP0950SimuAGVToMC;
		tyMcToAGV : tyLyrP0950SimuMCToAGV;
		tyFullMaskHide : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=0,usiTxtIdx:=14),tyLyr:=(uiRtStat:=0));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(uiRtStat:=0,usiTxtIdx:=15),tyLyr:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1000Lang : 	STRUCT 
		tyLang : tyLyrP1000Lang := (tyBtnEnglish:=(bRtLk:=TRUE,bValue:=TRUE),tyNumYear:=(sKeypadTitle:='Year'),tyNumMonth:=(sKeypadTitle:='Month'),tyNumDay:=(sKeypadTitle:='Day'),tyNumHour:=(sKeypadTitle:='Hour'),tyNumMinute:=(sKeypadTitle:='Minute'),tyNumSecond:=(sKeypadTitle:='Second'));
		tyLangBkUp : tyLyrP1000Lang;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=65),tyTxtTitle:=(usiValueIdx:=20));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1020McSetNavi : 	STRUCT 
		tyNavi : tyLyrP1020McSetNavi;
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1021McSetGen : 	STRUCT 
		tyGen : tyLyrP1021McSetGen := (tyStringMcNm:=(sKeypadTitle:='Machine Name'),tyDrpDnDefaultMcMod:=(usiValueMaxIdx:=2,usiValueMinIdx:=0),tyNumSSaverTm:=(diValueMax:=1800,diValueMin:=10,sKeypadTitle:='Screen Saver Time'),tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyStringSubnetMask:=(sKeypadTitle:='Subnet Mask'),tyStringHMIIPAddr:=(sKeypadTitle:='HMI IP Address'),tyNumWidthAtHm:=(sKeypadTitle:='Width At Home Position'),tyNumConvInitTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Conveyor Initialize Time'),tyNumTranInErrDlyTm:=(diValueMax:=120000,diValueMin:=1000,sKeypadTitle:='Transfer In Error Delay Time'),tyNumMag1ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag1 Conv Run Time Out'),tyNumMag2ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag2 Conv Run Time Out'),tyNumMag3ConvRunTm:=(diValueMax:=60000,diValueMin:=5000,sKeypadTitle:='Mag3 Conv Run Time Out'),tyNumMaxBffr:=(diValue:=1,diValueMax:=100,diValueMin:=1,sKeypadTitle:='Maximum Buffer'),tyNumMag1WidthAtHm:=(sKeypadTitle:='Mag1 Width At Home Position'),tyNumMag2WidthAtHm:=(sKeypadTitle:='Mag2 Width At Home Position'),tyNumMag3WidthAtHm:=(sKeypadTitle:='Mag3 Width At Home Position'),tyNumTravPosLaneA:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Trav Position LaneA'),tyNumLiftPosLaneA:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Lifter Position LaneA'),tyNumTravPosLaneB:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Trav Position LaneB'),tyNumLiftPosLaneB:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Lifter Position LaneB'),tyLyrGen2:=(uiRtStat:=1),tyLyrGen3:=(uiRtStat:=1),tyLyrGen4:=(uiRtStat:=1),tyNumTravFixtoFixPosInlet:=(sKeypadTitle:='Fix To Fix Rail Distance'),tyNumTCPSvrPort:=(diValue:=7171,diValueMax:=65535,diValueMin:=1,sKeypadTitle:='Port Number'),tyNumMag1WidthChkDetDist:=(sKeypadTitle:='Mag1 Detection Dist'),tyNumMag2WidthChkDetDist:=(sKeypadTitle:='Mag2 Detection Dist'),tyNumMag3WidthChkDetDist:=(sKeypadTitle:='Mag3 Detection Dist'));
		tyGenBkUp : tyLyrP1021McSetGen;
		tyNetwork : tyLyrP1021McSetNetwork := (tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyStringSubnetMask:=(sKeypadTitle:='Subnet Mask'),tyLyr:=(uiRtStat:=1));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyNaviLyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=3));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=14),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtSubnetAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=75),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtSubnetErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=76),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSubnetInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=77),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtIPAddrAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=72),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=73),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxChgNetworkAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxIPAddrInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=104),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSubnetInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=105),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=106),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetSubnetErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=107),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSetDHCPError : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=108),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=74),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxBtnPosDuplicate : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=147),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtHMIIPAddrAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=195),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxUpdtHMIIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=73),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxHMIIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=74),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxHMIIPAddrInvalidEdit : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=104),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxGetHMIIPAddrErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=107),tyTxtTitle:=(usiValueIdx:=14));
		tyMsgBoxSetDefaultGWErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=2),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=104),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1022McSetVComm : 	STRUCT 
		tyVComSel : tyLyrP1022McSetVCommSel;
		tyLF : tyLyrP1022McSetVCommLF;
		tyVComSelBkUp : tyLyrP1022McSetVCommSel;
		tyLFBkUp : tyLyrP1022McSetVCommLF;
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=0),tyLyr:=(uiRtStat:=0));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1,usiValueIdx:=1),tyLyr:=(uiRtStat:=0));
		tyNaviLyr3 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=0));
		tyNaviLyr4 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=0));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=70),tyTxtTitle:=(usiValueIdx:=15));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=15));
		tyVComSvy : tyLyrP1022McSetVCommSvy := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=5000,sKeypadTitle:='Send Alive Tm'),tyNumSvySystemPort:=(diValueMin:=65535,sKeypadTitle:='System Port'),tyLyr:=(uiRtStat:=1));
		tyVComSvyBkUp : tyLyrP1022McSetVCommSvy;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1023McSetHComm : 	STRUCT 
		tyUSSelA : tyLyrP1023McSetHCommSel := (tyBtnSMEMA:=(bRtLk:=TRUE,bValue:=TRUE),tyTxtHeader:=(usiValueIdx:=0));
		tyUSSMEMAA : tyLyrP1023McSetHCommSMEMA := (tyLyr:=(uiRtStat:=1));
		tyUSHermesA : tyLyrP1023McSetHCommUSHermes := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=5000,sKeypadTitle:='Send Alive Tm'),tyNumLaneID:=(diValue:=1,diValueMax:=1000,diValueMin:=1,sKeypadTitle:='Lane ID'),tyNumHostPort:=(diValueMax:=65535,sKeypadTitle:='Host Port'),tyStringHostAddr:=(sKeypadTitle:='Host Address'),tyLyr:=(uiRtStat:=1));
		tyUSSelB : tyLyrP1023McSetHCommSel := (tyBtnSMEMA:=(bRtLk:=TRUE,bValue:=TRUE),tyTxtHeader:=(usiValueIdx:=1));
		tyUSSMEMAB : tyLyrP1023McSetHCommSMEMA := (tyLyr:=(uiRtStat:=1));
		tyUSHermesB : tyLyrP1023McSetHCommUSHermes := (tyNumSndAliveTm:=(diValueMax:=1800000,diValueMin:=5000,sKeypadTitle:='Send Alive Tm'),tyNumLaneID:=(diValue:=1,diValueMax:=1000,diValueMin:=1,sKeypadTitle:='Lane ID'),tyNumHostPort:=(diValueMax:=65535,sKeypadTitle:='Host Port'),tyStringHostAddr:=(sKeypadTitle:='Host Address'),tyLyr:=(uiRtStat:=1));
		tyUSSelABkUp : tyLyrP1023McSetHCommSel;
		tyUSSMEMAABkUp : tyLyrP1023McSetHCommSMEMA;
		tyUSHermesABkUp : tyLyrP1023McSetHCommUSHermes;
		tyUSSelBBkUp : tyLyrP1023McSetHCommSel;
		tyUSSMEMABBkUp : tyLyrP1023McSetHCommSMEMA;
		tyUSHermesBBkUp : tyLyrP1023McSetHCommUSHermes;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyNaviLyr1 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=1));
		tyNaviLyr2 : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=0),tyBtnRgt:=(uiRtStat:=0),tyBtnBack:=(uiRtStat:=0),tyBitmapPageDisp:=(uiRtStat:=0,usiValueIdx:=2));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=16),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=16));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=16));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1024McSetAntiGap : 	STRUCT 
		tyAntiGap : tyLyrP1024McSetAntiGap := (tyNumLftSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Left Sensor Signal'),tyNumMidSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Middle Sensor Signal'),tyNumRgtSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Right Sensor Signal'),tyNumClrSenOff:=(diValueMax:=5000,diValueMin:=0,sKeypadTitle:='Clear Sensor Signal'));
		tyAntiGapBkUp : tyLyrP1024McSetAntiGap;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1025McSetScan : 	STRUCT 
		tyScan : tyLyrP1025McSetScan := (tyStringTopScanSvrIP:=(sValue:='192.168.0.100',sKeypadTitle:='Server IP'),tyNumTopScanSvrPort:=(diValue:=51236,diValueMax:=65535,sKeypadTitle:='Server Port'),tyStringBtmScanSvrIP:=(sValue:='192.168.0.101',sKeypadTitle:='Server IP'),tyNumBtmScanSvrPort:=(diValue:=51237,sKeypadTitle:='Server Port'));
		tyScanBkUp : tyLyrP1025McSetScan;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1026McSetTeach : 	STRUCT 
		tyInOutletShutterFB : tyLyrP1026InOutletShutterFB;
		tyTeachLifterTopPos : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=192),tyBtn2:=(usiTxtIdx:=193),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterBtmPos : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=194),tyBtn2:=(usiTxtIdx:=195),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterTopPos2 : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=196),tyBtn2:=(usiTxtIdx:=197),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterBtmPos2 : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=198),tyBtn2:=(usiTxtIdx:=199),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosA : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=200),tyBtn2:=(usiTxtIdx:=201),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosB : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=202),tyBtn2:=(usiTxtIdx:=203),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterPosA : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=204),tyBtn2:=(usiTxtIdx:=205),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachLifterPosB : tyLyrP1026McSetTeach := (tyBtn1:=(usiTxtIdx:=206),tyBtn2:=(usiTxtIdx:=207),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyMotionStdTrav : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyMotionStdLifter : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=27));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=28));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUpdtTravPosA : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=81),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosB : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=82),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtLifterPosA : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=83),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterPosB : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=84),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterTopPos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=91),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterBtmPos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=92),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterTopPos2 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=93),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterBtmPos2 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=94),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1027McOpCon : 	STRUCT 
		tyParam : tyLyrP1027McSetOpCon := (tyNumLineNo:=(diValue:=1,diValueMax:=99),tyNumStatNo:=(diValue:=1,diValueMax:=99),tyNumStatIdx:=(diValue:=1,diValueMax:=99),tyNumFuNo:=(diValue:=1,diValueMax:=99),tyNumWorkPos:=(diValue:=1,diValueMax:=99),tyNumToolPos:=(diValue:=1,diValueMax:=99),tyStringProcessNm:=(sValue:='unload'),tyNumProcessNo:=(diValueMax:=65535),tyStringApplication:=(sValue:='IPC'),tyNumOpConSvrPort:=(diValueMax:=65535));
		tyParamBkUp : tyLyrP1027McSetOpCon;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=14));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1030MagSet : 	STRUCT 
		tyMagSet : tyLyrP1030MagSet := (tyStringRecipeNm:=(sKeypadTitle:='Magazine Name'),tyNumSltToSltDist:=(diValueMax:=50000,diValueMin:=1000,sKeypadTitle:='Slot To Slot Distance'),tyNumMaxSlt:=(diValueMax:=60,diValueMin:=1,sKeypadTitle:='Maximum Slot'),tyBtnSave:=(uiMaskRtStat:=0),tyNumLifterMag1Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag1 Lifter Slot 1 Position'),tyNumLifterMag2Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag2 Lifter Slot 1 Position'),tyNumLifterMag3Slt1Pos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Mag3 Lifter Slot 1 Position'),tyNumTravPosMag1:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag1 Trav Pos'),tyNumTravPosMag2:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag2 Trav Pos'),tyNumTravPosMag3:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Mag3 Trav Pos'),tyTableRecipe:=(a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],a_tyStringDataCol3:=[(usiColor:=1),14(0)],a_tyStringDataCol4:=[(usiColor:=1),14(0)],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Magazine Name'),tyStringTitle2Col2Row0:=(sValue:='Slot-Slot Dist/Max Slot'),uiMaskRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=46),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=59),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxSaveNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=47),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxReloadCurrRcp : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=50),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelCurrRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=51),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=54),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelNmEmpty : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=60),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=52),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=53),tyTxtTitle:=(usiValueIdx:=23));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1031MagSetTeach : 	STRUCT 
		tyInOutletShutterFB : tyLyrP1031InOutletShutterFB;
		tyTeachLifterMag1Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=216),tyBtn2:=(usiTxtIdx:=217),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachLifterMag2Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=218),tyBtn2:=(usiTxtIdx:=219),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachLifterMag3Slt1Pos : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=220),tyBtn2:=(usiTxtIdx:=221),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1),tyNumNewSlt:=(sKeypadTitle:='New Slot'));
		tyTeachTravPosMag1 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=210),tyBtn2:=(usiTxtIdx:=211),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosMag2 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=212),tyBtn2:=(usiTxtIdx:=213),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyTeachTravPosMag3 : tyLyrP1031MagSetTeach := (tyBtn1:=(usiTxtIdx:=214),tyBtn2:=(usiTxtIdx:=215),tyBtn3:=(uiRtStat:=1),tyBtn4:=(uiRtStat:=1));
		tyMotionStdTrav : tyLyrC0001MotionStdTrav := (tyBitmapMc:=(usiValueIdx:=5),tyBtnJogFront:=(usiBitmapIdx:=0,usiTxtIdx:=0),tyBtnJogRear:=(usiBitmapIdx:=1,usiTxtIdx:=0),tyBtnStop:=(bValue:=TRUE),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=1200000,diValueMin:=-1200000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=1200000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyMotionStdLifter : tyLyrC0001MotionStdLifter := (tyBitmapMc:=(usiValueIdx:=2),tyBtnUpLmtSen:=(usiTxtIdx:=4),tyBtnDownLmtSen:=(usiTxtIdx:=4),tyBtnJogUp:=(usiBitmapIdx:=4,usiTxtIdx:=4),tyBtnJogDown:=(usiBitmapIdx:=5,usiTxtIdx:=4),tyNumNomSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Normal Speed'),tyNumSlwSpd:=(diValueMax:=100000,diValueMin:=5000,sKeypadTitle:='Slow Speed'),tyNumStepSize:=(diValueMax:=600000,diValueMin:=-600000,sKeypadTitle:='Step Size'),tyNumTargetPos:=(diValueMax:=600000,diValueMin:=-10000,sKeypadTitle:='Target Position'));
		tyFullMaskHide : tyLyrC0002FullMask := (tyLyr:=(uiRtStat:=1));
		tyFullMaskEStop : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=1));
		tyFullMaskCWSig : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=2));
		tyFullMaskSafetyRly : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=3));
		tyFullMaskSafetyLmtSW : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=27));
		tyFullMaskTimingBelt : tyLyrC0002FullMask := (tyBtnMask:=(usiTxtIdx:=28));
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxUpdtLifterMag1Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=88),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterMag2Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=89),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtLifterMag3Slt1Pos : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=90),tyTxtTitle:=(usiValueIdx:=4));
		tyMsgBoxUpdtTravPosMag1 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=85),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosMag2 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=86),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxUpdtTravPosMag3 : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1,usiBitmapIdx:=1,usiTxtIdx:=1),tyTxtMsg:=(usiValueIdx:=87),tyTxtTitle:=(usiValueIdx:=5));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=17),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1040ProdSet : 	STRUCT 
		tyRcpPopUp : tyLyrC0011RcpPopUp := (tyLyr:=(uiRtStat:=1));
		tyProdSet : tyLyrP1040ProdSet := (tyStringRecipeNm:=(sKeypadTitle:='Recipe Name'),tyNumProdWidth:=(sKeypadTitle:='Product Width'),tyNumFirstSlt:=(diValueMin:=1,sKeypadTitle:='Minimum Slot'),tyNumLastSlt:=(diValueMax:=60,sKeypadTitle:='Maximum Slot'),tyNumPitch:=(diValue:=1,diValueMin:=1,sKeypadTitle:='Pitch'),tyNumBrdPerSlt:=(diValue:=1,diValueMax:=2,diValueMin:=1,sKeypadTitle:='Board Per Slot'),tyNumMinReqFreeBffr:=(diValueMax:=60,uiRtStat:=1,sKeypadTitle:='Minimum Required Free Buffer'),tyTxtMinReqFreeBffr:=(uiRtStat:=1),tyStringSearch:=(sKeypadTitle:='Search'),tyTableRecipe:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),5((0))],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],tyUISlider:=(iMaxValue:=2000,iMinValue:=1,iValue:=1),tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Product Name'),tyStringTitle2Col2Row0:=(sValue:='Product Width'),uiMaskRtStat:=1),tyBtnSave:=(uiMaskRtStat:=0),tyDrpDnMcMode:=(usiValueIdx:=0,usiValueMaxIdx:=2,usiValueMinIdx:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxSaveAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=46),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=40),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=59),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=42),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxSaveNoNm : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=47),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxReloadCurrRcp : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=50),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelCurrRcpAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=51),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=54),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelNmEmpty : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=60),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=52),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=53),tyTxtTitle:=(usiValueIdx:=8));
		tyMsgBoxToXMLAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=61),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyLyr:=(uiRtStat:=0));
		tyMsgBoxToXMLErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=62),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0));
		tyMsgBoxFromXMLAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=63),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyLyr:=(uiRtStat:=0));
		tyMsgBoxFromXMLErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=8),tyTxtMsg:=(usiValueIdx:=64),tyBtnYes:=(uiRtStat:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyLyr:=(uiRtStat:=0));
		tyMsgBoxSaveListErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=66),tyTxtTitle:=(usiValueIdx:=8));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1050LFSet : 	STRUCT 
		tyLdr : tyLyrP1050LFSetLdr := (tyTable1List:=(a_tyHotspot:=[(bRtCompl:=TRUE,bValue:=TRUE),14(0)],a_tyStringDataCol1:=[(usiColor:=1),14(0)],a_tyStringDataCol2:=[(usiColor:=1),14(0)],a_tyTxtDataCol3:=[(usiColor:=1),14(0)],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Machine Name'),tyStringTitle2Col2Row0:=(sValue:='IP Address'),tyStringTitle3Col3Row0:=(sValue:='Status'),tyUISlider:=(iMaxValue:=c_diLFClntNum-c_uiP1050TableSize+1,iMinValue:=1,iValue:=1)),tyNumBeforeOven:=(sKeypadTitle:='Machine Index Before Oven'),tyNumAfterOven:=(sKeypadTitle:='Machine Index After Oven'));
		tyLdrBkUp : tyLyrP1050LFSetLdr;
		tyLdrEdit : tyLyrP1050LFSetLdrEdit := (tyStringIPAddr:=(sKeypadTitle:='IP Address'),tyTxtLblInfoThirdParty:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxIPAddrInvalid : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=160),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=158),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=71),tyTxtTitle:=(usiValueIdx:=9));
		tyMsgBoxIPAddrDuplicate : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=168),tyTxtTitle:=(usiValueIdx:=9));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1080UsrMgmt : 	STRUCT 
		tyUsrMgmt : tyLyrP1080UsrMgmt := (tyTableList:=(a_tyHotspot:=[11((bRtCompl:=TRUE,bValue:=TRUE)),4((0))],a_tyStringDataCol0:=[(sValue:='1'),(sValue:='2'),(sValue:='3'),(sValue:='4'),(sValue:='5'),(sValue:='6'),(sValue:='7'),(sValue:='8'),(sValue:='9'),(sValue:='10'),(sValue:='11'),4((0))],a_tyStringDataCol1:=[(usiColor:=1),8((0)),2(0),4((0))],a_tyStringDataCol2:=[0,14((0))],a_tyTxtDataCol3:=[(usiColor:=1),8((0)),2(0),4((0))],tyStringTitle0Col0Row0:=(sValue:='No'),tyStringTitle1Col1Row0:=(sValue:='Username'),tyStringTitle2Col2Row0:=(sValue:='Level Title'),tyStringTitle3Col3Row0:=(sValue:='Level Title'),tyUISlider:=(iMaxValue:=40,iMinValue:=1,iValue:=1),uiMaskRtStat:=1));
		tyActHide : tyLyrP1080UsrMgmtAct := (tyLyr:=(uiRtStat:=1));
		tyCreate : tyLyrP1080UsrMgmtAct := (tyStringPw:=(sKeypadTitle:='Password'),tyStringUsrNm:=(sKeypadTitle:='User Name'));
		tyEdit : tyLyrP1080UsrMgmtAct := (tyStringPw:=(sKeypadTitle:='Password'),tyStringUsrNm:=(uiMaskRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxAddErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=27),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxEditErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=28),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxAddNmExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=22),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxEditParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=24),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxAddParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=21),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxListFull : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=35),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelNmNotExist : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=37),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelParamErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=31),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelLastAdminErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=26),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=25),tyTxtTitle:=(usiValueIdx:=1));
		tyMsgBoxDelErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=30),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyUIP1081UsrAccessRgt : 	STRUCT 
		tyUsrAccessRgtSel : tyLyrP1081UsrMgmtUsrAccessRgtSel := (tyDrpDnLevel:=(usiValueMaxIdx:=2));
		tyUsrAccessRgtLvl1 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=0));
		tyUsrAccessRgtLvl2 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=1));
		tyUsrAccessRgtLvl3 : tyLyrP1081UsrMgmtUsrAccessRgt := (tyStringNm:=(sKeypadTitle:='Level Name'),tyTxtTitle:=(usiValueIdx:=2));
		tyUsrAccessRgtLvl1BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyUsrAccessRgtLvl2BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyUsrAccessRgtLvl3BkUp : tyLyrP1081UsrMgmtUsrAccessRgt;
		tyNaviBack : tyLyrC0004Navi := (tyBtnLeft:=(uiRtStat:=1),tyBtnRgt:=(uiRtStat:=1),tyBtnBack:=(uiRtStat:=0));
		tyMsgBoxHide : tyLyrC0008MsgBox := (tyBitmapIcon:=(uiRtStat:=1),tyBtnNo:=(uiRtStat:=1),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=1),tyTxtMsg:=(uiRtStat:=1),tyTxtTitle:=(uiRtStat:=1));
		tyMsgBoxExitAsk : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyTxtTitle:=(usiValueIdx:=1),tyTxtMsg:=(usiValueIdx:=70),tyBtnYes:=(usiBitmapIdx:=1,usiTxtIdx:=1),tyBtnNo:=(usiBitmapIdx:=3,usiTxtIdx:=2));
		tyMsgBoxSaveErr : tyLyrC0008MsgBox := (tyBitmapIcon:=(usiValueIdx:=1),tyBtnNo:=(usiBitmapIdx:=1,usiTxtIdx:=3),tyBtnYes:=(uiRtStat:=1),tyLyr:=(uiRtStat:=0),tyTxtMsg:=(usiValueIdx:=34),tyTxtTitle:=(usiValueIdx:=1));
	END_STRUCT;
END_TYPE

(**)
(*Visu Property*)

TYPE
	tyUIProperty : 	STRUCT 
		tyVisu : tyVisu;
		tyKeypad : tyKeypad;
		tyUITxtSnippets : tyTxtSnippets := (sUsrMgmtUsrLv1Nm:='Level 1',sUsrMgmtUsrLv2Nm:='Level 2',sUsrMgmtUsrLv3Nm:='Level 3');
	END_STRUCT;
END_TYPE
