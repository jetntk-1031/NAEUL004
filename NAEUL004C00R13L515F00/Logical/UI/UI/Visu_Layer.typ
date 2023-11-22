(*Common Layers*)

TYPE
	tyKeypad : 	STRUCT 
		tyStringTitle : tyUIString;
		tyTxtTitle : tyUITxt;
	END_STRUCT;
	tyLyrC0001MotionStd : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnPosLmtSen : tyUIBtn;
		tyBtnNegLmtSen : tyUIBtn;
		tyBtnJogPos : tyUIBtn;
		tyBtnJogNeg : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdAW : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenLmtSen : tyUIBtn;
		tyBtnCloseLmtSen : tyUIBtn;
		tyBtnJogOpen : tyUIBtn;
		tyBtnJogClose : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdLifter : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnUpLmtSen : tyUIBtn;
		tyBtnDownLmtSen : tyUIBtn;
		tyBtnJogUp : tyUIBtn;
		tyBtnJogDown : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdMagAW : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenLmtSen : tyUIBtn;
		tyBtnCloseLmtSen : tyUIBtn;
		tyBtnJogOpen : tyUIBtn;
		tyBtnJogClose : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0001MotionStdTrav : 	STRUCT 
		tyBitmapOrigin : tyUIBitmap;
		tyBitmapPwr : tyUIBitmap;
		tyBitmapRst : tyUIBitmap;
		tyBitmapStop : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnFrontLmtSen : tyUIBtn;
		tyBtnRearLmtSen : tyUIBtn;
		tyBtnJogFront : tyUIBtn;
		tyBtnJogRear : tyUIBtn;
		tyBtnMovAbs : tyUIBtn;
		tyBtnMovRel : tyUIBtn;
		tyBtnOrigin : tyUIBtn;
		tyBtnPwr : tyUIBtn;
		tyBtnRst : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyNumCurrPos : tyUINum;
		tyNumErrCode : tyUINum;
		tyNumNomSpd : tyUINum;
		tyNumSlwSpd : tyUINum;
		tyNumStepSize : tyUINum;
		tyNumTargetPos : tyUINum;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrC0002FullMask : 	STRUCT 
		tyLyr : tyUILyr;
		tyBtnMask : tyUIBtn;
	END_STRUCT;
	tyLyrC0003DualMask : 	STRUCT 
		tyBtnLeftMask : tyUIBtn;
		tyBtnRgtMask : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0004Navi : 	STRUCT 
		tyBtnLeft : tyUIBtn;
		tyBtnRgt : tyUIBtn;
		tyBtnBack : tyUIBtn;
		tyBitmapPageDisp : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0005Main : 	STRUCT 
		tyBtnNotification : tyUIBtn;
		tyBtnHome : tyUIBtn;
		tyBtnStart : tyUIBtn;
		tyBtnAlarm : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnStep : tyUIBtn;
		tyBtnReset : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnGoMain : tyUIBtn;
		tyBitmapStatBar : tyUIBitmap;
		tyHotspotNaviStart : tyUIHotspot;
	END_STRUCT;
	tyLyrC0006Set : 	STRUCT 
		tyBtnSave : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0007Notif : 	STRUCT 
		tyTxtUsrLv : tyUITxt;
		tyTxtLFMc : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyStringUsrNm : tyUIString;
		tyHotspotShowInfo : tyUIHotspot;
		tyBitmapShowInfo : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0008MsgBox : 	STRUCT 
		tyBitmapIcon : tyUIBitmap;
		tyBtnNo : tyUIBtn;
		tyBtnYes : tyUIBtn;
		tyLyr : tyUILyr;
		tyTxtMsg : tyUITxt;
		tyTxtTitle : tyUITxt;
	END_STRUCT;
	tyLyrC0009Info : 	STRUCT 
		tyStringInfo : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0010RcyMsg : 	STRUCT 
		tyTxtMsg : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrC0011RcpPopUp : 	STRUCT 
		tyStringInfo : tyUILString;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrE0001OpsQueryBoardInfo : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyBtnBarcodeScanner : tyUIBtn;
		tyStringTopBarcode : tyUILString;
		tyStringBottomBarcode : tyUILString;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrE0003OpsQueryWorkOrder : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyBtnBarcodeScanner : tyUIBtn;
		tyStringMagazineId : tyUILString;
		tyNumSlotId : tyUINum;
		tyStringBarcode : tyUILString;
		tyLyr : tyUILyr;
		tyBitmapMask : tyUIBitmap;
	END_STRUCT;
	tyLyrE0002OpsCurrWorkOrder : 	STRUCT 
		tyBtnQuery : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyStringWorkOrder : tyUILString;
		tyLyr : tyUILyr;
		tyBitmapMask : tyUIBitmap;
	END_STRUCT;
	tyLyrE0004OpsBarcodeScanner : 	STRUCT 
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyStringBarcode : tyUILString;
		tyStringTopBarcode : tyUILString;
		tyStringTopBarcodeBK : tyUILString;
		tyStringBottomBarcode : tyUILString;
		tyStringBottomBarcodeBK : tyUILString;
		tyStringMagazineBarcode : tyUILString;
		tyStringMagazineBarcodeBK : tyUILString;
		tyStringPCBBarcode : tyUILString;
		tyStringPCBBarcodeBK : tyUILString;
		tyBtnTop : tyUIBtn;
		tyBtnBottom : tyUIBtn;
		tyBtnMagazine : tyUIBtn;
		tyBtnPCB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)
(*Pages*)

TYPE
	tyLyrP0000SSaver : 	STRUCT 
		tyTxtMcStat : tyUITxt;
		tyTxtMcNm : tyUILString;
		tyBitmapStat : tyUIBitmap;
	END_STRUCT;
	tyLyrP0001Initial : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0001Startup : 	STRUCT 
		tyBarGraphStartup : tyUIBarGraph;
		tyTxtStartupStat : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0002Menu : 	STRUCT 
		tyBtnAlm : tyUIBtn;
		tyBtnCommCtrl : tyUIBtn;
		tyBtnGenInput : tyUIBtn;
		tyBtnGenOutput : tyUIBtn;
		tyBtnLang : tyUIBtn;
		tyBtnLFCtrl : tyUIBtn;
		tyBtnLFSet : tyUIBtn;
		tyBtnLogin : tyUIBtn;
		tyBtnMcInfo : tyUIBtn;
		tyBtnMcSet : tyUIBtn;
		tyBtnMnlRst : tyUIBtn;
		tyBtnMovCtrl : tyUIBtn;
		tyBtnOpt : tyUIBtn;
		tyBtnProdSel : tyUIBtn;
		tyBtnProdSet : tyUIBtn;
		tyBtnMagInfo : tyUIBtn;
		tyBtnMagSet : tyUIBtn;
		tyBtnMagSel : tyUIBtn;
		tyBtnSimu : tyUIBtn;
		tyBtnUsrMgmt : tyUIBtn;
		tyBtnOvenInfo : tyUIBtn;
		tyBitmapMaskProdSetLCS : tyUIBitmap;
		tyHotspotProdSel : tyUIHotspot;
		tyHotspotMagSel : tyUIHotspot;
		tyBitmapGen : tyUIBitmap;
		tyBitmapSet : tyUIBitmap;
		tyBtnHotspotActSimu : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0100Login : 	STRUCT 
		tyStringUsrNm : tyUIString;
		tyStringPw : tyUIString;
		tyBtnLogin : tyUIBtn;
		tyHotspotBypassLogin : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0100Logout : 	STRUCT 
		tyBtnLogout : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsBypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0200OpsGen : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBitmapAccDat : tyUIBitmap;
		tyHotspotOpsTravLifter : tyUIHotspot;
		tyHotspotOpsTravRToL : tyUIHotspot;
		tyHotspotOps2Mag1 : tyUIHotspot;
		tyHotspotOps2Mag1RToL : tyUIHotspot;
		tyHotspotOps2Mag2 : tyUIHotspot;
		tyHotspotOps2Mag2RToL : tyUIHotspot;
		tyHotspotOps3Mag1 : tyUIHotspot;
		tyHotspotOps3Mag1RToL : tyUIHotspot;
		tyHotspotOps3Mag2 : tyUIHotspot;
		tyHotspotOps3Mag2RToL : tyUIHotspot;
		tyHotspotOps3Mag3 : tyUIHotspot;
		tyHotspotOps3Mag3RToL : tyUIHotspot;
		tyHotspotOpsAIV : tyUIHotspot;
		tyHotspotOpsMagInfo : tyUIHotspot;
		tyHotspotOpsMagInfoRToL : tyUIHotspot;
		tyNumMinSltRange : tyUINum;
		tyNumMinSltRangeRToL : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumMaxSltRangeRToL : tyUINum;
		tyNumPitch : tyUINum;
		tyNumPitchRToL : tyUINum;
		tyTxtMagSlt : tyUITxt;
		tyTxtMagSltRToL : tyUITxt;
		tyNumMag1AvlQty : tyUINum;
		tyNumMag1AvlQtyRToL : tyUINum;
		tyNumMag2AvlQty : tyUINum;
		tyNumMag2AvlQtyRToL : tyUINum;
		tyNumMag3AvlQty : tyUINum;
		tyNumMag3AvlQtyRToL : tyUINum;
		tyNumMag1TtlSlt : tyUINum;
		tyNumMag1TtlSltRToL : tyUINum;
		tyNumMag2TtlSlt : tyUINum;
		tyNumMag2TtlSltRToL : tyUINum;
		tyNumMag3TtlSlt : tyUINum;
		tyNumMag3TtlSltRToL : tyUINum;
		tyHotspotAlm : tyUIHotspot;
		a_tyStringAlm : ARRAY[1..c_uiP0200TableSize]OF tyUILString;
		a_tyHotspotRcyMsg : ARRAY[1..c_uiP0200TableSize]OF tyUIHotspot;
		tyBitmapUSIn : tyUIBitmap;
		tyBitmapUSOut : tyUIBitmap;
		tyBitmapUSIn1 : tyUIBitmap;
		tyBitmapUSOut1 : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapDir1 : tyUIBitmap;
		tyBitmapDir2 : tyUIBitmap;
		tyTxtMag1Slt : tyUITxt;
		tyTxtMag1Backslash : tyUITxt;
		tyTxtMag2Slt : tyUITxt;
		tyTxtMag2Backslash : tyUITxt;
		tyTxtMag3Slt : tyUITxt;
		tyTxtBackslash3 : tyUITxt;
		tyTxtLane : tyUITxt;
		tyTxtLane1 : tyUITxt;
		tyTxtMag1SltRToL : tyUITxt;
		tyTxtMag1BackslashRToL : tyUITxt;
		tyTxtMag2SltRToL : tyUITxt;
		tyTxtMag2BackslashRToL : tyUITxt;
		tyTxtMag3SltRToL : tyUITxt;
		tyTxtMag3BackslashRToL : tyUITxt;
		tyTxtPitchSltRToL : tyUITxt;
		tyTxtMagSltBackslash : tyUITxt;
		tyTxtMagSltBackslashRToL : tyUITxt;
		tyTxtPitchSlt : tyUITxt;
		tyBitmapUSAComm : tyUIBitmap;
		tyBitmapUSAComm1 : tyUIBitmap;
		tyHotspotUSAVSMEMA : tyUIHotspot;
		tyHotspotUSAVSMEMA1 : tyUIHotspot;
		tyHotspotOvenGroup : tyUIHotspot;
		tyHotspotOvenGroupRL : tyUIHotspot;
		tyBitmapAIVTCP : tyUIBitmap;
		tyHotspotAIVGroup : tyUIHotspot;
		tyHotspotAIVGroup1 : tyUIHotspot;
		tyHotspotAIVGroup1Mask : tyUIHotspot;
		tyHotspotOpsMagLane1 : tyUIHotspot;
		tyHotspotOpsMagLane2 : tyUIHotspot;
	END_STRUCT;
	tyLyrP0200OpsOven : 	STRUCT 
		tyBtnOvenA : tyUIBtn;
		tyBtnOvenARToL : tyUIBtn;
		tyBtnOvenB : tyUIBtn;
		tyBtnOvenBRToL : tyUIBtn;
		tyBtnCntrA : tyUIBtn;
		tyBtnCntrARToL : tyUIBtn;
		tyBtnCntrB : tyUIBtn;
		tyBtnCntrBRToL : tyUIBtn;
		tyHotspotOven : tyUIHotspot;
		tyHotspotOvenRToL : tyUIHotspot;
		tyTxtA : tyUITxt;
		tyTxtARToL : tyUITxt;
		tyTxtB : tyUITxt;
		tyTxtBRToL : tyUITxt;
		tyTxtCntr : tyUITxt;
		tyTxtCntrRToL : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsUSAVSMEMA : 	STRUCT 
		tyBtnNom : tyUIBtn;
		tyBtnStat : tyUIBtn;
		tyBtnDual : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsUSBVSMEMA : 	STRUCT 
		tyBtnNom : tyUIBtn;
		tyBtnStat : tyUIBtn;
		tyBtnDual : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0200OpsUSCommB : 	STRUCT 
		tyBitmapUSIn : tyUIBitmap;
		tyBitmapUSOut : tyUIBitmap;
		tyBitmapUSIn1 : tyUIBitmap;
		tyBitmapUSOut1 : tyUIBitmap;
		tyHotspotUSBVSMEMA : tyUIHotspot;
		tyHotspotUSBVSMEMA1 : tyUIHotspot;
		tyBitmapUSBComm : tyUIBitmap;
		tyBitmapUSBComm1 : tyUIBitmap;
		tyTxtLane : tyUITxt;
		tyTxtLane1 : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0201OpsTravLif : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyStringMcStat : tyUILString;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyTxtMtrPshrExtSpd : tyUITxt;
		tyTxtMtrPshrExtTorq : tyUITxt;
		tyTxtPshrOffset : tyUITxt;
		tyNumPshrOffset : tyUINum;
		tyBtnQueryBoardInfo : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
	END_STRUCT;
	tyLyrP0201OpsTravLifBypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0201OpsTravLifIOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnUBAA : tyUIBtn;
		tyBtnUBAB : tyUIBtn;
		tyBtnUBAAStat : tyUIBtn;
		tyBtnUBABStat : tyUIBtn;
		tyBtnUSBA : tyUIBtn;
		tyBtnUSBB : tyUIBtn;
		tyBtnPshrExtRS : tyUIBtn;
		tyBtnPshrRetRS : tyUIBtn;
		tyBtnConvLftSen : tyUIBtn;
		tyBtnConvMidSen : tyUIBtn;
		tyBtnConvRgtSen : tyUIBtn;
		tyBtnConvClrSen : tyUIBtn;
		tyBtnOvenInfeedSigA : tyUIBtn;
		tyBtnOvenInfeedSigB : tyUIBtn;
		tyBtnOvenInfoSigA : tyUIBtn;
		tyBtnOvenInfoSigB : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1ClmpRS : tyUIBtn;
		tyBtnMag1UnclmpRS : tyUIBtn;
		tyBtnMag2ClmpRS : tyUIBtn;
		tyBtnMag2UnclmpRS : tyUIBtn;
		tyBtnMag3ClmpRS : tyUIBtn;
		tyBtnMag3UnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen2 : tyUIBtn;
		tyBtnOutletShutterCloseSen2 : tyUIBtn;
		tyBtnOutletShutterOpenSen3 : tyUIBtn;
		tyBtnOutletShutterCloseSen3 : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnPshrExtCtrl : tyUIBtn;
		tyBtnInShutterOpenCtrl : tyUIBtn;
		tyBtnInShutterCloseCtrl : tyUIBtn;
		tyBtnOutShutterOpenCtrl : tyUIBtn;
		tyBtnOutShutterCloseCtrl : tyUIBtn;
		tyBtnOutShutterOpenCtrl2 : tyUIBtn;
		tyBtnOutShutterCloseCtrl2 : tyUIBtn;
		tyBtnOutShutterOpenCtrl3 : tyUIBtn;
		tyBtnOutShutterCloseCtrl3 : tyUIBtn;
		tyBtnPshrMtrOn : tyUIBtn;
		tyBtnStopperUnBlkCtrlA : tyUIBtn;
		tyBtnStopperUnBlkCtrlB : tyUIBtn;
		tyBtnAntiJamSen : tyUIBtn;
		tyBtnMagWidthChk : tyUIBtn;
		tyBtnInletStopperASensor : tyUIBtn;
	END_STRUCT;
	tyLyrP0201OpsTravLifIOMonitor1 : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
		tyBtnPCBExitMag1 : tyUIBtn;
		tyBtnPCBExitMag2 : tyUIBtn;
		tyBtnPCBExitMag3 : tyUIBtn;
		tyBtnPCBPresentSen : tyUIBtn;
		tyBtnTrigScannerSig : tyUIBtn;
		tyBtnScannerComplSig : tyUIBtn;
	END_STRUCT;
	tyLyrP0201OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPshrExtTorque : tyUINum;
		tyNumPshrExtSpeed : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0202BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0202IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnUBAA : tyUIBtn;
		tyBtnUBAB : tyUIBtn;
		tyBtnUBAAStat : tyUIBtn;
		tyBtnUBABStat : tyUIBtn;
		tyBtnUSBA : tyUIBtn;
		tyBtnUSBB : tyUIBtn;
		tyBtnPshrExtRS : tyUIBtn;
		tyBtnPshrRetRS : tyUIBtn;
		tyBtnConvLftSen : tyUIBtn;
		tyBtnConvMidSen : tyUIBtn;
		tyBtnConvRgtSen : tyUIBtn;
		tyBtnConvClrSen : tyUIBtn;
		tyBtnOvenInfeedSigA : tyUIBtn;
		tyBtnOvenInfeedSigB : tyUIBtn;
		tyBtnOvenInfoSigA : tyUIBtn;
		tyBtnOvenInfoSigB : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag1FixedClampCtrl : tyUIBtn;
		tyBtnMag1RemoteClampCtrl : tyUIBtn;
		tyBtnMag1ConvMtrIn : tyUIBtn;
		tyBtnMag1ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagSelUnClampCtrl : tyUIBtn;
		tyBtnCurtainSenPB : tyUIBtn;
		tyBtnCurtainSenPBLED : tyUIBtn;
		tyBtnCurtainSen : tyUIBtn;
		tyBtnMag1DetSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0202Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag1Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotIOMonitor : tyUIHotspot;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag1AvlQty : tyUINum;
		tyNumMag1TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyTxtLdrInActiveCtrl : tyUITxt;
		tyBitmapWarningLF : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
		tyBtnQueryBoardInfo : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
	END_STRUCT;
	tyLyrP0202OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPshrExtTorque : tyUINum;
		tyNumPshrExtSpeed : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0202OpsChgMagL1 : 	STRUCT 
		tyBitmapChgMag : tyUIBitmap;
		tyBtnMnlUnloadMag : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0203BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0203IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnUBAA : tyUIBtn;
		tyBtnUBAB : tyUIBtn;
		tyBtnUBAAStat : tyUIBtn;
		tyBtnUBABStat : tyUIBtn;
		tyBtnUSBA : tyUIBtn;
		tyBtnUSBB : tyUIBtn;
		tyBtnPshrExtRS : tyUIBtn;
		tyBtnPshrRetRS : tyUIBtn;
		tyBtnConvLftSen : tyUIBtn;
		tyBtnConvMidSen : tyUIBtn;
		tyBtnConvRgtSen : tyUIBtn;
		tyBtnConvClrSen : tyUIBtn;
		tyBtnOvenInfeedSigA : tyUIBtn;
		tyBtnOvenInfeedSigB : tyUIBtn;
		tyBtnOvenInfoSigA : tyUIBtn;
		tyBtnOvenInfoSigB : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag2FixedClampCtrl : tyUIBtn;
		tyBtnMag2RemoteClampCtrl : tyUIBtn;
		tyBtnMag2ConvMtrIn : tyUIBtn;
		tyBtnMag2ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagSelUnClampCtrl : tyUIBtn;
		tyBtnCurtainSen : tyUIBtn;
		tyBtnCurtainSenPB : tyUIBtn;
		tyBtnCurtainSenPBLED : tyUIBtn;
		tyBtnMag2DetSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0203Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag2Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag2AvlQty : tyUINum;
		tyNumMag2TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
		tyBtnQueryBoardInfo : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
	END_STRUCT;
	tyLyrP0203OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPshrExtTorque : tyUINum;
		tyNumPshrExtSpeed : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0203OpsChgMagL2 : 	STRUCT 
		tyBitmapChgMag : tyUIBitmap;
		tyBtnMnlUnloadMag : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0204BypsInitConv : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0204IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnUBAA : tyUIBtn;
		tyBtnUBAB : tyUIBtn;
		tyBtnUBAAStat : tyUIBtn;
		tyBtnUBABStat : tyUIBtn;
		tyBtnUSBA : tyUIBtn;
		tyBtnUSBB : tyUIBtn;
		tyBtnPshrExtRS : tyUIBtn;
		tyBtnPshrRetRS : tyUIBtn;
		tyBtnConvLftSen : tyUIBtn;
		tyBtnConvMidSen : tyUIBtn;
		tyBtnConvRgtSen : tyUIBtn;
		tyBtnConvClrSen : tyUIBtn;
		tyBtnOvenInfeedSigA : tyUIBtn;
		tyBtnOvenInfeedSigB : tyUIBtn;
		tyBtnOvenInfoSigA : tyUIBtn;
		tyBtnOvenInfoSigB : tyUIBtn;
		tyBtnLifterTmBeltSen : tyUIBtn;
		tyBtnLimitSafetySw1 : tyUIBtn;
		tyBtnLimitSafetySw2 : tyUIBtn;
		tyBtnMag1FixedClmpRS : tyUIBtn;
		tyBtnMag1FixedUnclmpRS : tyUIBtn;
		tyBtnMag1RmtClmpRS : tyUIBtn;
		tyBtnMag1RmtUnclmpRS : tyUIBtn;
		tyBtnMag2FixedClmpRS : tyUIBtn;
		tyBtnMag2FixedUnclmpRS : tyUIBtn;
		tyBtnMag2RmtClmpRS : tyUIBtn;
		tyBtnMag2RmtUnclmpRS : tyUIBtn;
		tyBtnMag3FixedClmpRS : tyUIBtn;
		tyBtnMag3FixedUnclmpRS : tyUIBtn;
		tyBtnMag3RmtClmpRS : tyUIBtn;
		tyBtnMag3RmtUnclmpRS : tyUIBtn;
		tyBtnInletShutterOpenSen : tyUIBtn;
		tyBtnInletShutterCloseSen : tyUIBtn;
		tyBtnOutletShutterOpenSen : tyUIBtn;
		tyBtnOutletShutterCloseSen : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnMag1ConvEntrySen : tyUIBtn;
		tyBtnMag2ConvEntrySen : tyUIBtn;
		tyBtnMag3ConvEntrySen : tyUIBtn;
		tyBtnMag1AIVInPosSen1 : tyUIBtn;
		tyBtnMag1AIVInPosSen2 : tyUIBtn;
		tyBtnMag2AIVInPosSen1 : tyUIBtn;
		tyBtnMag2AIVInPosSen2 : tyUIBtn;
		tyBtnMag3AIVInPosSen1 : tyUIBtn;
		tyBtnMag3AIVInPosSen2 : tyUIBtn;
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnMag3FixedClampCtrl : tyUIBtn;
		tyBtnMag3RemoteClampCtrl : tyUIBtn;
		tyBtnMag3ConvMtrIn : tyUIBtn;
		tyBtnMag3ConvMtrOut : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyBtnMagSelClampCtrl : tyUIBtn;
		tyBtnMagSelUnClampCtrl : tyUIBtn;
		tyBtnCurtainSen : tyUIBtn;
		tyBtnCurtainSenPB : tyUIBtn;
		tyBtnCurtainSenPBLED : tyUIBtn;
		tyBtnMag3DetSen : tyUIBtn;
	END_STRUCT;
	tyLyrP0204Ops : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyTxtWidth : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyTxtMag3Stat : tyUITxt;
		tyStringMcStat : tyUILString;
		tyHotspotMagInfo : tyUIHotspot;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyStringMagNm : tyUIString;
		tyTxtMagSlt : tyUITxt;
		tyNumMag3AvlQty : tyUINum;
		tyNumMag3TtlSlt : tyUINum;
		tyBitmapMc : tyUIBitmap;
		tyTxtLblAIV : tyUITxt;
		tyBtnAIVWifi : tyUIBtn;
		tyBtnChgMag : tyUIBtn;
		tyBitmapChgMag : tyUIBitmap;
		tyHotspotShowLRcp : tyUIHotspot;
		tyBitmapUnloadMag : tyUIBitmap;
		tyBtnUnloadMag : tyUIBtn;
		tyBtnQueryBoardInfo : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
	END_STRUCT;
	tyLyrP0204OpsParam : 	STRUCT 
		tyDrpDnMcMode : tyUIDrpDn;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPshrExtTorque : tyUINum;
		tyNumPshrExtSpeed : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0205IOMonitor : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBitmapMc : tyUIBitmap;
		tyBitmapAIVErr1 : tyUIBitmap;
		tyBitmapAIVErr2 : tyUIBitmap;
		tyBitmapAIVErr3 : tyUIBitmap;
		tyBitmapAIVErr4 : tyUIBitmap;
		tyBitmapAIVRdy1 : tyUIBitmap;
		tyBitmapAIVRdy2 : tyUIBitmap;
		tyBitmapAIVRdy3 : tyUIBitmap;
		tyBitmapAIVRdy4 : tyUIBitmap;
		tyBitmapAIVAvail1 : tyUIBitmap;
		tyBitmapAIVAvail2 : tyUIBitmap;
		tyBitmapAIVAvail3 : tyUIBitmap;
		tyBitmapAIVAvail4 : tyUIBitmap;
		tyBitmapAIVSLarge1 : tyUIBitmap;
		tyBitmapAIVSLarge2 : tyUIBitmap;
		tyBitmapAIVSLarge3 : tyUIBitmap;
		tyBitmapAIVSLarge4 : tyUIBitmap;
		tyBtnAIVSotRCVOk1 : tyUIBtn;
		tyBtnAIVSotRCVOk2 : tyUIBtn;
		tyBtnAIVSotRCVOk3 : tyUIBtn;
		tyBtnAIVSotRCVOk4 : tyUIBtn;
		tyBtnReqAIVToBring1 : tyUIBtn;
		tyBtnReqAIVToBring2 : tyUIBtn;
		tyBtnReqAIVToBring3 : tyUIBtn;
		tyBtnReqAIVToBring4 : tyUIBtn;
		tyBtnReqAIVToGet1 : tyUIBtn;
		tyBtnReqAIVToGet2 : tyUIBtn;
		tyBtnReqAIVToGet3 : tyUIBtn;
		tyBtnReqAIVToGet4 : tyUIBtn;
		tyBitmapMagErr1 : tyUIBitmap;
		tyBitmapMagErr2 : tyUIBitmap;
		tyBitmapMagErr3 : tyUIBitmap;
		tyBitmapMagErr4 : tyUIBitmap;
		tyBitmapMagRdy1 : tyUIBitmap;
		tyBitmapMagRdy2 : tyUIBitmap;
		tyBitmapMagRdy3 : tyUIBitmap;
		tyBitmapMagRdy4 : tyUIBitmap;
		tyBitmapMagAvail1 : tyUIBitmap;
		tyBitmapMagAvail2 : tyUIBitmap;
		tyBitmapMagAvail3 : tyUIBitmap;
		tyBitmapMagAvail4 : tyUIBitmap;
		tyBitmapMagSLarge1 : tyUIBitmap;
		tyBitmapMagSLarge2 : tyUIBitmap;
		tyBitmapMagSLarge3 : tyUIBitmap;
		tyBitmapMagSLarge4 : tyUIBitmap;
		tyBtnMESActive : tyUIBtn;
		tyStringMesName : tyUILString;
		tyTripleMagLyr : tyUILyr;
		tyDualMagLyr : tyUILyr;
		tyTxtAIVCommProtocol : tyUITxt;
		tyHotspotGroupError2 : tyUIHotspot;
		tyHotspotGroupError1 : tyUIHotspot;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0206OpsMagConv1 : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyStringMcTopStat : tyUILString;
		tyStringMcBtmStat : tyUILString;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnAIVWifi : tyUIBtn;
		tyHotspotShowLRcp : tyUIHotspot;
	END_STRUCT;
	tyLyrP0206OpsMagConvBypsInit1 : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0206OpsMagConvIOMonitor1 : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyBtnMidStprExt1 : tyUIBtn;
		tyBtnMidStprRet1 : tyUIBtn;
		tyBtnExtStprExt1 : tyUIBtn;
		tyBtnExtStprRet1 : tyUIBtn;
		tyBtnTopEntSen : tyUIBtn;
		tyBtnTopMidSen : tyUIBtn;
		tyBtnTopExtSen : tyUIBtn;
		tyBtnBtmEntSen : tyUIBtn;
		tyBtnBtmMidSen : tyUIBtn;
		tyBtnBtmExtSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0207OpsMagConv2 : 	STRUCT 
		tyBtnAccDat : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyHotspotIOMonitor : tyUIHotspot;
		tyBitmapAccDat : tyUIBitmap;
		tyTxtMod : tyUITxt;
		tyNumWidth : tyUINum;
		tyNumWidth2 : tyUINum;
		tyStringMcTopStat : tyUILString;
		tyStringMcBtmStat : tyUILString;
		tyStringProdNm : tyUILString;
		tyNumMinSltRange : tyUINum;
		tyNumMaxSltRange : tyUINum;
		tyNumPitch : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBitmapPCB : tyUIBitmap;
		tyBitmapMc : tyUIBitmap;
		tyBtnAIVWifi : tyUIBtn;
		tyHotspotShowLRcp : tyUIHotspot;
	END_STRUCT;
	tyLyrP0207OpsMagConvBypsInit2 : 	STRUCT 
		tyBtnBypsInitConv : tyUIBtn;
		tyHotspotClose : tyUIHotspot;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0207OpsMagConvIOMonitor2 : 	STRUCT 
		tyHotspotClose : tyUIHotspot;
		tyBtnSafetyRlySig : tyUIBtn;
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSWSig : tyUIBtn;
		tyBtnSafetyRlyRst : tyUIBtn;
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyBtnMidStprExt1 : tyUIBtn;
		tyBtnMidStprRet1 : tyUIBtn;
		tyBtnExtStprExt1 : tyUIBtn;
		tyBtnExtStprRet1 : tyUIBtn;
		tyBtnTopEntSen : tyUIBtn;
		tyBtnTopMidSen : tyUIBtn;
		tyBtnTopExtSen : tyUIBtn;
		tyBtnBtmEntSen : tyUIBtn;
		tyBtnBtmMidSen : tyUIBtn;
		tyBtnBtmExtSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0300McInfo : 	STRUCT 
		tyStringMcNm : tyUIString;
		tyStringJobNo : tyUIString;
		tyTxtNtAddr : tyUITxt;
		tyStringSoftwareVer : tyUIString;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0400ProdSel : 	STRUCT 
		tyHotspotShowLRcp : tyUIHotspot;
		tyStringRecipeNm : tyUILString;
		tyNumProdWidth : tyUINum;
		tyNumProdWidth2 : tyUINum;
		tyNumMinSlt : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyNumBrdPerSlt : tyUINum;
		tyNumMinReqFreeBffr : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnGapBetBrds : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyBtnPreview : tyUIBtn;
		tyTableRecipe : tyUITable;
		tyStringSearch : tyUILString;
		tyBtnLoad : tyUIBtn;
		tyTxtMcMode : tyUITxt;
		tyTxtBrdPerSlt : tyUITxt;
		tyTxtMinReqFreeBffr : tyUITxt;
		tyBtnSort : tyUIBtn;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyTxtMtrPshrExtSpd : tyUITxt;
		tyTxtMtrPshrExtTorq : tyUITxt;
		tyTxtPshrOffset : tyUITxt;
		tyNumPshrOffset : tyUINum;
		tyBtnSafetyBar : tyUIBtn;
	END_STRUCT;
	tyLyrP0400RcpDet : 	STRUCT 
		tyHotspotShowLRcp : tyUIHotspot;
		tyStringRecipeNm : tyUILString;
		tyNumRecipeNum : tyUINum;
		tyNumProdWidth : tyUINum;
		tyNumProdWidth2 : tyUINum;
		tyNumFirstSlt : tyUINum;
		tyNumLastSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyNumBrdPerSlt : tyUINum;
		tyNumMinReqFreeBffr : tyUINum;
		tyNumOvenCap : tyUINum;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnGapBetBrd : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyTxtMcMode : tyUITxt;
		tyTxtBrdPerSlt : tyUINum;
		tyTxtMinReqFreeBffr : tyUITxt;
		tyTxtOvenCap : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyNumMagMaxBrdWidth : tyUINum;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyTxtMtrPshrExtSpd : tyUITxt;
		tyTxtMtrPshrExtTorq : tyUITxt;
		tyNumPshrOffset : tyUINum;
		tyTxtPshrOffset : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0410MagSel : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyBtnLoad : tyUIBtn;
		tyBtnPreview : tyUIBtn;
		tyTableRecipe : tyUITable;
		tyDrpDnMagModel : tyUIDrpDn;
		tyTxtMagModel : tyUITxt;
		tyNumMagMaxBrdWidth : tyUINum;
		tyBtnSort : tyUIBtn;
		tyBtnSafetyBar : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
		tyBitmapBrder : tyUIBitmap;
	END_STRUCT;
	tyLyrP0410MagDet : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyHotspotClose : tyUIHotspot;
		tyNumMagMaxBrdWidth : tyUINum;
		tyLyr : tyUILyr;
		tyBtnSafetyBar : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0600Alm : 	STRUCT 
		tyBtnCurr : tyUIBtn;
		tyBtnHistory : tyUIBtn;
		a_tyStringAlm : ARRAY[1..c_uiP0600TableSize]OF tyUILString;
		a_tyHotspotAlm : ARRAY[1..c_uiP0600TableSize]OF tyUIHotspot;
		tyLyr : tyUILyr;
		tyAlarm : tyUIAlarm;
		tyBtnHistoryUp : tyUIBtn;
		tyBtnHistoryDown : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0700LFCtrl : 	STRUCT 
		tyBtnChgAll : tyUIBtn;
		tyBtnChgSeqAuto : tyUIBtn;
		tyBtnChgSeqMnl : tyUIBtn;
		tyBtnSyncTm : tyUIBtn;
		tyBitmapChgAll : tyUIBitmap;
		tyBitmapChgSeqAuto : tyUIBitmap;
		tyBitmapChgSeqMnl : tyUIBitmap;
		tyBitmapSyncTm : tyUIBitmap;
		tyTable1List : tyUITable1;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0800MagInfo1 : 	STRUCT 
		tyTable1List : tyUITable1;
		tyTable2List : tyUITable1;
		tyTxtMag1Stat : tyUITxt;
		tyTxtMag2Stat : tyUITxt;
		tyBtnMag1SetFull : tyUIBtn;
		tyBtnMag2SetFull : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0800MagInfo2 : 	STRUCT 
		tyTable3List : tyUITable1;
		tyTxtMag3Stat : tyUITxt;
		tyBtnMag3SetFull : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0850OvenCom : 	STRUCT 
		tyTxtTittle : tyUITxt;
		tyBitmapMc : tyUIBitmap;
		tyBtnOvenA : tyUIBtn;
		tyBtnCntrA : tyUIBtn;
		tyBtnOvenB : tyUIBtn;
		tyBtnCntrB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0850OvenExtddDualMix : 	STRUCT 
		tyNumAddBffrA : tyUINum;
		tyNumBrdInOvenA : tyUINum;
		tyNumAddBffrB : tyUINum;
		tyNumBrdInOvenB : tyUINum;
		tyNumBffrEmptySlt : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0850OvenExtddDualSeparate : 	STRUCT 
		tyNumAddBffrA : tyUINum;
		tyNumBrdInOvenA : tyUINum;
		tyNumBffrEmptySltA : tyUINum;
		tyNumAddBffrB : tyUINum;
		tyNumBrdInOvenB : tyUINum;
		tyNumBffrEmptySltB : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0850OvenExtddSingle : 	STRUCT 
		tyNumAddBffr : tyUINum;
		tyNumBrdInOven : tyUINum;
		tyNumBffrEmptySlt : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0850OvenStdDual : 	STRUCT 
		tyNumBffrEmptySltA : tyUINum;
		tyNumMinReqFreeBffrA : tyUINum;
		tyNumBffrEmptySltB : tyUINum;
		tyNumMinReqFreeBffrB : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0850OvenStdSingle : 	STRUCT 
		tyTxtTittle : tyUITxt;
		tyNumBffrEmptySlt : tyUINum;
		tyNumMinReqFreeBffr : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0900GenIn1 : 	STRUCT 
		tyBtnEStop : tyUIBtn;
		tyBtnCoverSW : tyUIBtn;
		tyBtnSafetyRly : tyUIBtn;
		tyBtnLifterTimingBeltSen : tyUIBtn;
		tyBtnLifterSafetyLmtSW1 : tyUIBtn;
		tyBtnLifterSafetyLmtSW2 : tyUIBtn;
		tyBtnMag1PresentSen : tyUIBtn;
		tyBtnMag2PresentSen : tyUIBtn;
		tyBtnMag3PresentSen : tyUIBtn;
		tyBtnOvenInfeedSigA : tyUIBtn;
		tyBtnOvenInfeedSigB : tyUIBtn;
		tyBtnMagWidthChk : tyUIBtn;
	END_STRUCT;
	tyLyrP0900GenIn2 : 	STRUCT 
		tyBtnMag1OrientationChkSen1 : tyUIBtn;
		tyBtnMag2OrientationChkSen1 : tyUIBtn;
		tyBtnMag3OrientationChkSen1 : tyUIBtn;
		tyBtnMag1OrientationChkSen2 : tyUIBtn;
		tyBtnMag2OrientationChkSen2 : tyUIBtn;
		tyBtnMag3OrientationChkSen2 : tyUIBtn;
		tyBtnMag1HeightSen : tyUIBtn;
		tyBtnMag2HeightSen : tyUIBtn;
		tyBtnMag3HeightSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0900GenIn3 : 	STRUCT 
		tyBtnCurtainSen : tyUIBtn;
		tyBtnCurtainSenPB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0910GenOut : 	STRUCT 
		tyBtnTLGreen : tyUIBtn;
		tyBtnTLRed : tyUIBtn;
		tyBtnTLAmber : tyUIBtn;
		tyBtnBuzzer : tyUIBtn;
		tyBtnSafetyRst : tyUIBtn;
	END_STRUCT;
	tyLyrP0910GenOutCurtainSen : 	STRUCT 
		tyBtnBypCurtainSenPBLED : tyUIBtn;
		tyBtnBypCurtainSen : tyUIBtn;
		tyBtnRstCurtainSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0910GenOutOven : 	STRUCT 
		tyBtnOvenInfoA : tyUIBtn;
		tyBtnOvenInfoB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0910MagAW : 	STRUCT 
		tyBtnMagAWOpenLimByp1 : tyUIBtn;
		tyBtnMagAWOpenLimByp2 : tyUIBtn;
		tyBtnMagAWOpenLimByp3 : tyUIBtn;
		tyBtnMagAWOpenLimByp4 : tyUIBtn;
		tyBtnSmallMagAWLimSen1 : tyUIBtn;
		tyBtnSmallMagAWLimSen2 : tyUIBtn;
		tyBtnSmallMagAWLimSen3 : tyUIBtn;
		tyBtnSmallMagAWLimSen4 : tyUIBtn;
		tyLyr12 : tyUILyr;
		tyLyr3 : tyUILyr;
		tyLyr4 : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0920MtrNPneuCtrl : 	STRUCT 
		tyBtnAW : tyUIBtn;
		tyBtnAWPushPul : tyUIBtn;
		tyBtnMagAW : tyUIBtn;
		tyBtnTrav : tyUIBtn;
		tyBtnLifter : tyUIBtn;
		tyBtnLifterBigBtn : tyUIBtn;
		tyBtnLifter2 : tyUIBtn;
		tyBtnPusherConv : tyUIBtn;
		tyBtnLifterConv : tyUIBtn;
		tyBtnLifterConv2 : tyUIBtn;
		tyBtnMagConvTopBtm : tyUIBtn;
		tyBtnMag1Conv : tyUIBtn;
		tyBtnMag2Conv : tyUIBtn;
		tyBtnMag3Conv : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0920MtrNPneuCtrlPneu : 	STRUCT 
		tyBtnShutter : tyUIBtn;
		tyBtnStopper : tyUIBtn;
		tyBtnSafetyBar : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0921InletShutterCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenRS : tyUIBtn;
		tyBtnCloseRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921InletShutterDC : 	STRUCT 
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921InletShutterDis : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921InletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnOpenRS : tyUIBtn;
		tyBtnCloseRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterDC : 	STRUCT 
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0921OutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyBtnOpen2 : tyUIBtn;
		tyBtnOpen3 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0922InStopperCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnBlkRS : tyUIBtn;
		tyBtnUnblkRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922InStopperDC : 	STRUCT 
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922InStopperDis : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922InStopperFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperACom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnBlkRS : tyUIBtn;
		tyBtnUnblkRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperADC : 	STRUCT 
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperADis : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperAFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperBCom : 	STRUCT 
		tyBtnSwitch : tyUIBtn;
		tyBitmapMc : tyUIBitmap;
		tyBtnBlkRS : tyUIBtn;
		tyBtnUnblkRS : tyUIBtn;
		tyTxtTit : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperBDC : 	STRUCT 
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperBDis : 	STRUCT 
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0922StopperBFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnBlk : tyUIBtn;
		tyBtnUnblk : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0923LftSafetyBarCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyTxtSubTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923LftSafetyBarDC : 	STRUCT 
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923LftSafetyBarFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyTxtSubTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarDC : 	STRUCT 
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0923RgtSafetyBarFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0926LifterMagConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnDCCtrl : tyUIBtn;
		tyBtnLifterLmtSW : tyUIBtn;
		tyBtnClampRS : tyUIBtn;
		tyBtnUnclampRS : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0926LifterMagConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnClamp : tyUIBtn;
		tyBtnUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0926LifterMagConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnter : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnClamp : tyUIBtn;
		tyBtnUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0927LifterMagConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnDCCtrl : tyUIBtn;
		tyBtnLifterLmtSW : tyUIBtn;
		tyBtnClampRS : tyUIBtn;
		tyBtnUnclampRS : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0927LifterMagConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnClamp : tyUIBtn;
		tyBtnUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0927LifterMagConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnter : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnClamp : tyUIBtn;
		tyBtnUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0928MagConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnTopEntSen : tyUIBtn;
		tyBtnTopMidSen : tyUIBtn;
		tyBtnTopExtSen : tyUIBtn;
		tyBtnBtmEntSen : tyUIBtn;
		tyBtnBtmMidSen : tyUIBtn;
		tyBtnBtmExtSen : tyUIBtn;
		tyBtnTopEntStprExtRS : tyUIBtn;
		tyBtnTopMidStprExtRS : tyUIBtn;
		tyBtnTopExtStprExtRS : tyUIBtn;
		tyBtnTopEntStprRetRS : tyUIBtn;
		tyBtnTopMidStprRetRS : tyUIBtn;
		tyBtnTopExtStprRetRS : tyUIBtn;
		tyBtnBtmMidStprExtRS : tyUIBtn;
		tyBtnBtmExtStprExtRS : tyUIBtn;
		tyBtnBtmMidStprRetRS : tyUIBtn;
		tyBtnBtmExtStprRetRS : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnLane : tyUIBtn;
	END_STRUCT;
	tyLyrP0928MagConvTopFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0928MagConvTopDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0928MagConvBtmFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0928MagConvBtmDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0929MagConv2Com : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnTopEntSen : tyUIBtn;
		tyBtnTopMidSen : tyUIBtn;
		tyBtnTopExtSen : tyUIBtn;
		tyBtnBtmEntSen : tyUIBtn;
		tyBtnBtmMidSen : tyUIBtn;
		tyBtnBtmExtSen : tyUIBtn;
		tyBtnTopEntStprExtRS : tyUIBtn;
		tyBtnTopMidStprExtRS : tyUIBtn;
		tyBtnTopExtStprExtRS : tyUIBtn;
		tyBtnTopEntStprRetRS : tyUIBtn;
		tyBtnTopMidStprRetRS : tyUIBtn;
		tyBtnTopExtStprRetRS : tyUIBtn;
		tyBtnBtmMidStprExtRS : tyUIBtn;
		tyBtnBtmExtStprExtRS : tyUIBtn;
		tyBtnBtmMidStprRetRS : tyUIBtn;
		tyBtnBtmExtStprRetRS : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnLane : tyUIBtn;
	END_STRUCT;
	tyLyrP0929MagConv2TopFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0929MagConv2TopDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnEntStprExt : tyUIBtn;
		tyBtnEntStprRet : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0929MagConv2BtmFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0929MagConv2BtmDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnMidStprExt : tyUIBtn;
		tyBtnMidStprRet : tyUIBtn;
		tyBtnExtStprExt : tyUIBtn;
		tyBtnExtStprRet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0930Mag1ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagDetectSen : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0930Mag1ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0930Mag1ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0931Mag2ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagDetectSen : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0931Mag2ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0931Mag2ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0932Mag3ConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnMagPresentSen : tyUIBtn;
		tyBtnMagOrientationChkSen1 : tyUIBtn;
		tyBtnMagOrientationChkSen2 : tyUIBtn;
		tyBtnMagDetectSen : tyUIBtn;
		tyBtnMagConvEntSen : tyUIBtn;
		tyBtnMagAIVPosSen1 : tyUIBtn;
		tyBtnMagAIVPosSen2 : tyUIBtn;
		tyBtnSelClampRS : tyUIBtn;
		tyBtnSelUnclampRS : tyUIBtn;
		tyBtnFixedClampRS : tyUIBtn;
		tyBtnFixedUnclampRS : tyUIBtn;
		tyBtnRemoteClampRS : tyUIBtn;
		tyBtnRemoteUnclampRS : tyUIBtn;
		tyBtnHeightSen : tyUIBtn;
		tyBtnCAB717Sen : tyUIBtn;
		tyBtnMagSmallSen : tyUIBtn;
		tyBtnMagLargeSen : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0932Mag3ConvDC : 	STRUCT 
		tyBtnMagIn : tyUIBtn;
		tyBtnMagOut : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
	tyLyrP0932Mag3ConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSelClamp : tyUIBtn;
		tyBtnSelUnclamp : tyUIBtn;
		tyBtnFixedClamp : tyUIBtn;
		tyBtnFixedUnclamp : tyUIBtn;
		tyBtnRemoteClamp : tyUIBtn;
		tyBtnRemoteUnclamp : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyrWithoutSelClamp : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0933PushConvCom : 	STRUCT 
		tyBitmapMc : tyUIBitmap;
		tyBtnSwitch : tyUIBtn;
		tyBtnLftSen : tyUIBtn;
		tyBtnMidSen : tyUIBtn;
		tyBtnRgtSen : tyUIBtn;
		tyBtnClrSen : tyUIBtn;
		tyBtnExtRS : tyUIBtn;
		tyBtnRetRS : tyUIBtn;
		tyBtnAlarmSig : tyUIBtn;
		tyBtnTorqueSig : tyUIBtn;
		tyBtnExtSen : tyUIBtn;
		tyBtnExtSlwSen : tyUIBtn;
		tyBtnRetSen : tyUIBtn;
		tyBtnRetSlwSen : tyUIBtn;
		tyBtnAntiJamSen : tyUIBtn;
		tyTxtExtWarning : tyUILString;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0933PushConvDC : 	STRUCT 
		tyBtnStart : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyBtnSpdBinBit0 : tyUIBtn;
		tyBtnSpdBinBit1 : tyUIBtn;
		tyBtnSpdBinBit2 : tyUIBtn;
		tyBtnSigOn : tyUIBtn;
		tyBtnBrake : tyUIBtn;
		tyBtnAlarmRst : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0933PushConvFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnEnt : tyUIBtn;
		tyBtnExit : tyUIBtn;
		tyBtnCylExit : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnExt : tyUIBtn;
		tyBtnRet : tyUIBtn;
		tyNumExtSpd : tyUINum;
		tyNumExtTorqPercent : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0934AW : 	STRUCT 
		tyNumNewWidth : tyUINum;
		tyBtnGo : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0935Lifter : 	STRUCT 
		tyNumNewSlt : tyUINum;
		tyBtnGo : tyUIBtn;
		tyBtnGoLaneA : tyUIBtn;
		tyBtnGoLaneB : tyUIBtn;
		tyBtnGoLaneD_G : tyUIBtn;
		tyBtnGoLaneE_H : tyUIBtn;
		tyBtnNxtSlt : tyUIBtn;
		tyBtnPrevSlt : tyUIBtn;
		tyNumMagPos : tyUINum;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0936Trav : 	STRUCT 
		tyBtnGoToLaneA : tyUIBtn;
		tyBtnGoToLaneB : tyUIBtn;
		tyBtnGoToMag1 : tyUIBtn;
		tyBtnGoToMag2 : tyUIBtn;
		tyBtnGoToMag3 : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0937AWPushOrPuller : 	STRUCT 
		tyNumNewWidth : tyUINum;
		tyBtnGo : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0938MagAW : 	STRUCT 
		tyTxtSubTitle : tyUITxt;
		tyNumNewWidth : tyUINum;
		tyBtnGo : tyUIBtn;
		tyBtnMtrGearEngage : tyUIBtn;
		tyBtnEngage : tyUIBtn;
		tyBtnDisengage : tyUIBtn;
		tyBtnEngageRS : tyUIBtn;
		tyBtnDisengageRS : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0940CommCtrlUSSMEMA : 	STRUCT 
		tyBtnUBA : tyUIBtn;
		tyBtnUBAStat : tyUIBtn;
		tyBtnUSB : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0940SOTComm : 	STRUCT 
		tyBtnAIVRcv1 : tyUIBtn;
		tyBtnAIVErr1 : tyUIBtn;
		tyBtnAIVRdy1 : tyUIBtn;
		tyBtnAIVAvail1 : tyUIBtn;
		tyBtnAIVSLarge1 : tyUIBtn;
		tyBtnMagErr1 : tyUIBtn;
		tyBtnMagRdy1 : tyUIBtn;
		tyBtnMagAvail1 : tyUIBtn;
		tyBtnMagSLarge1 : tyUIBtn;
		tyBtnAIVRcv2 : tyUIBtn;
		tyBtnAIVErr2 : tyUIBtn;
		tyBtnAIVRdy2 : tyUIBtn;
		tyBtnAIVAvail2 : tyUIBtn;
		tyBtnAIVSLarge2 : tyUIBtn;
		tyBtnMagErr2 : tyUIBtn;
		tyBtnMagRdy2 : tyUIBtn;
		tyBtnMagAvail2 : tyUIBtn;
		tyBtnMagSLarge2 : tyUIBtn;
		tyBtnAIVRcv3 : tyUIBtn;
		tyBtnAIVErr3 : tyUIBtn;
		tyBtnAIVRdy3 : tyUIBtn;
		tyBtnAIVAvail3 : tyUIBtn;
		tyBtnAIVSLarge3 : tyUIBtn;
		tyBtnMagErr3 : tyUIBtn;
		tyBtnMagRdy3 : tyUIBtn;
		tyBtnMagAvail3 : tyUIBtn;
		tyBtnMagSLarge3 : tyUIBtn;
		tyBtnAIVRcv4 : tyUIBtn;
		tyBtnAIVErr4 : tyUIBtn;
		tyBtnAIVRdy4 : tyUIBtn;
		tyBtnAIVAvail4 : tyUIBtn;
		tyBtnAIVSLarge4 : tyUIBtn;
		tyBtnMagErr4 : tyUIBtn;
		tyBtnMagRdy4 : tyUIBtn;
		tyBtnMagAvail4 : tyUIBtn;
		tyBtnMagSLarge4 : tyUIBtn;
		tyBtnFleetMgrActive : tyUIBtn;
		tyBtnMagReqBring1 : tyUIBtn;
		tyBtnMagReqtGet1 : tyUIBtn;
		tyBtnMagReqBring2 : tyUIBtn;
		tyBtnMagReqtGet2 : tyUIBtn;
		tyBtnMagReqBring3 : tyUIBtn;
		tyBtnMagReqtGet3 : tyUIBtn;
		tyBtnMagReqBring4 : tyUIBtn;
		tyBtnMagReqtGet4 : tyUIBtn;
		tySOTLyr1 : tyUILyr;
		tySOTLyr2 : tyUILyr;
		tySOTLyr3 : tyUILyr;
		tySOTLyr4 : tyUILyr;
		tyTxtAIVCommProtocol : tyUITxt;
	END_STRUCT;
	tyLyrP0940DMCRFIDComm : 	STRUCT 
		tyBtnScanComplSig : tyUIBtn;
		tyBtnTrigStartScan : tyUIBtn;
		tyBtnTrigTransMag1Out : tyUIBtn;
		tyBtnTrigTransMag2Out : tyUIBtn;
		tyBtnTrigTransMag3Out : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP0950Simu : 	STRUCT 
		tyBtnSimu : tyUIBtn;
		tyBtnStart : tyUIBtn;
		tyBtnStop : tyUIBtn;
		tyBtnSOT1 : tyLyrP0950SOTBtn;
		tyBtnSOT2 : tyLyrP0950SOTBtn;
		tyBtnSOT3 : tyLyrP0950SOTBtn;
		tyBtnMagSOT1 : tyLyrP0950SOTBtn;
		tyBtnMagSOT2 : tyLyrP0950SOTBtn;
		tyBtnMagSOT3 : tyLyrP0950SOTBtn;
		tyBtnInShutterSim : tyUIBtn;
		tyBtnBypassShutforCalib : tyUIBtn;
		tyBtnTestTrav : tyUIBtn;
		tyBtnNtParaWr : tyUIBtn;
		tyBtnNtParaWr2 : tyUIBtn;
		tyStringJobNo : tyUILString;
		tyNumAddr : tyUINum;
		tyNumTravSpd : tyUINum;
		tyNumLifterSpd : tyUINum;
		tyBtnNavLeft : tyUIBtn;
		tyBtnNavRight : tyUIBtn;
		tyLyr : tyUILyr;
		tyLyr1 : tyUILyr;
		tyLyr2 : tyUILyr;
	END_STRUCT;
	tyLyrP0950SimuAGVToMC : 	STRUCT 
		tyBtnAGVSimulateOn : tyUIBtn;
		tyBtnAGVOnline : tyUIBtn;
		tyBtnAGVInPos1 : tyUIBtn;
		tyBtnAGVInPos2 : tyUIBtn;
		tyBtnAGVInPos3 : tyUIBtn;
		tyBtnAGVAuto : tyUIBtn;
		tyBtnAGV1Occupied : tyUIBtn;
		tyBtnAGV2Occupied : tyUIBtn;
		tyBtnAGV3Occupied : tyUIBtn;
		tyBtnNavLeft : tyUIBtn;
		tyBtnNavRight : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP0950SimuMCToAGV : 	STRUCT 
		tyBtnMachineOnline : tyUIBtn;
		tyBtnMachineEstop : tyUIBtn;
		tyBtnMag1Empty : tyUIBtn;
		tyBtnMag2Empty : tyUIBtn;
		tyBtnMag3Empty : tyUIBtn;
		tyBtnMag1Rdy : tyUIBtn;
		tyBtnMag2Rdy : tyUIBtn;
		tyBtnMag3Rdy : tyUIBtn;
		tyBtnMag1Auto : tyUIBtn;
		tyBtnMag2Auto : tyUIBtn;
		tyBtnMag3Auto : tyUIBtn;
		tyBtnMag1Occupied : tyUIBtn;
		tyBtnMag2Occupied : tyUIBtn;
		tyBtnMag3Occupied : tyUIBtn;
		tyBtnMag1IncorrectModel : tyUIBtn;
		tyBtnMag2IncorrectModel : tyUIBtn;
		tyBtnMag3IncorrectModel : tyUIBtn;
	END_STRUCT;
	tyLyrP0950SimuCycleTim : 	STRUCT 
		tyDrpDnMagSel : tyUIDrpDn;
		tyTableList : tyUITable1;
		tyBtnNavLeft : tyUIBtn;
		tyBtnNavRight : tyUIBtn;
		tyLyr : tyUILyr;
		tyTxtMag3Stat : tyUITxt;
	END_STRUCT;
	tyLyrP0950SOTBtn : 	STRUCT 
		tyBtnInPos : tyUIBtn;
		tyBtnError : tyUIBtn;
		tyBtnRdy : tyUIBtn;
		tyBtnAvail : tyUIBtn;
		tyBtnSize : tyUIBtn;
	END_STRUCT;
	tyLyrP0950SOTstatus : 	STRUCT 
		tyBtnInPos : BOOL;
		tyBtnError : BOOL;
		tyBtnRdy : BOOL;
		tyBtnAvail : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1000Lang : 	STRUCT 
		tyBtnChinese : tyUIBtn;
		tyBtnEnglish : tyUIBtn;
		tyBtnGerman : tyUIBtn;
		tyNumYear : tyUINum;
		tyNumMonth : tyUINum;
		tyNumDay : tyUINum;
		tyNumHour : tyUINum;
		tyNumMinute : tyUINum;
		tyNumSecond : tyUINum;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1020McSetNavi : 	STRUCT 
		tyBtnMcSet : tyUIBtn;
		tyBtnVCommSet : tyUIBtn;
		tyBtnHCommSet : tyUIBtn;
		tyBtnAntiGapSet : tyUIBtn;
		tyBtnScanSet : tyUIBtn;
		tyBtnOpConSet : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1021McSetGen : 	STRUCT 
		tyStringMcNm : tyUIString;
		tyDrpDnDefaultMcMod : tyUIDrpDn;
		tyDrpDnNetworkMod : tyUIDrpDn;
		tyNumSSaverTm : tyUINum;
		tyBtnSSaverEn : tyUIBtn;
		tyTxtLblSSaver : tyUITxt;
		tyStringIPAddr : tyUIString;
		tyStringSubnetMask : tyUIString;
		tyStringHMIIPAddr : tyUIString;
		tyStringDefaultGWIP : tyUIString := (sKeypadTitle:='Default Gateway');
		tyTxtWidthAtHm : tyUITxt;
		tyNumWidthAtHm : tyUINum;
		tyNumConvInitTm : tyUINum;
		tyNumTranInErrDlyTm : tyUINum;
		tyTxtMag1ConvRunTm : tyUITxt;
		tyNumMag1ConvRunTm : tyUINum;
		tyTxtMag2ConvRunTm : tyUITxt;
		tyNumMag2ConvRunTm : tyUINum;
		tyTxtMag3ConvRunTm : tyUITxt;
		tyNumMag3ConvRunTm : tyUINum;
		tyTxtMaxBffr : tyUITxt;
		tyNumMaxBffr : tyUINum;
		tyTxtMag1WidthAtHm : tyUITxt;
		tyTxtMag2WidthAtHm : tyUITxt;
		tyTxtMag3WidthAtHm : tyUITxt;
		tyNumMag1WidthAtHm : tyUINum;
		tyNumMag2WidthAtHm : tyUINum;
		tyNumMag3WidthAtHm : tyUINum;
		tyNumTravPosLaneA : tyUINum;
		tyNumLiftPosLaneA : tyUINum;
		tyTxtLiftPosLaneA : tyUITxt;
		tyTxtTravPosLaneB : tyUITxt;
		tyNumTravPosLaneB : tyUINum;
		tyTxtLiftPosLaneB : tyUITxt;
		tyNumLiftPosLaneB : tyUINum;
		tyBtnTravPosATeach : tyUIBtn;
		tyBtnTravPosBTeach : tyUIBtn;
		tyBtnLiftPosATeach : tyUIBtn;
		tyBtnLiftPosBTeach : tyUIBtn;
		tyBtnAWDis : tyUIBtn;
		tyBtnMnlAccDat : tyUIBtn;
		tyBtnAutoStepEn : tyUIBtn;
		tyBtnVSMEMAEn : tyUIBtn;
		tyBtnHermesRmtEn : tyUIBtn;
		tyBtnHermesSvyEn : tyUIBtn;
		tyBtnGapBetBrdEn : tyUIBtn;
		tyBtnLongBrdEn : tyUIBtn;
		tyBtnOvenEn : tyUIBtn;
		tyBtnExtdOvenEn : tyUIBtn;
		tyBtnInShutterDis : tyUIBtn;
		tyBtnStopperADis : tyUIBtn;
		tyBtnStopperBDis : tyUIBtn;
		tyBtnChgParamEn : tyUIBtn;
		tyLyrGen1 : tyUILyr;
		tyLyrGen2 : tyUILyr;
		tyLyrGen3 : tyUILyr;
		tyLyrGen4 : tyUILyr;
		tyNumMagAutoDetSenTm : tyUINum;
		tyTxtWidthOffset : tyUITxt;
		tyNumWidthOffset : tyUINum;
		tyBtnAGVComEn : tyUIBtn;
		tyNumAutoLogoutTm : tyUINum;
		tyTxtLblAutoLogoutTm : tyUITxt;
		tyBtnAutoLogoutEn : tyUIBtn;
		tyBtnMagAWDis : tyUIBtn;
		tyBtnMagSafetyBarDis : tyUIBtn;
		tyBtnLFBuzMute : tyUIBtn;
		tyDrpDnAGVComProtocol : tyUIDrpDn;
		tyDrpDnMagExchangeMode : tyUIDrpDn;
		tyBtnAGVSizeDisabled : tyUIBtn;
		tyNumAWPusherAtHm : tyUINum;
		tyTxtAWPusherAtHm : tyUITxt;
		tyBtnAWPusherDis : tyUIBtn;
		tyNumTravFixtoFixPosInlet : tyUINum;
		tyBtnDisableFMWarning : tyUIBtn;
		tyNumInMagConvInitTm : tyUINum;
		tyNumOutMagConvInitTm : tyUINum;
		tyNumLifterMagConvInitTm : tyUINum;
		tyNumInMagConv2InitTm : tyUINum;
		tyNumOutMagConv2InitTm : tyUINum;
		tyNumLifterMagConv2InitTm : tyUINum;
		tyNumLifterTopPos : tyUINum;
		tyNumLifterBtmPos : tyUINum;
		tyBtnTeachTopPos : tyUIBtn;
		tyBtnTeachBtmPos : tyUIBtn;
		tyNumLifterTopPos2 : tyUINum;
		tyNumLifterBtmPos2 : tyUINum;
		tyBtnTeachTopPos2 : tyUIBtn;
		tyBtnTeachBtmPos2 : tyUIBtn;
		tyNumTCPSvrPort : tyUINum;
		tyBtnMagWidthChkDis : tyUIBtn;
		tyNumMag1WidthChkDetDist : tyUINum;
		tyNumMag2WidthChkDetDist : tyUINum;
		tyNumMag3WidthChkDetDist : tyUINum;
		tyBtnDMCScannerEn : tyUIBtn;
		tyNumDMCScanWriteTO : tyUINum;
		tyNumInStprDelayTm : tyUINum;
		tyBtnInletStopperDis : tyUIBtn;
		tyNumMESResponseTO : tyUINum;
		tyBtnMESEn : tyUIBtn;
		tyBtnSwitchingProductType : tyUIBtn;
		tyBtnBatchIDChgOverCmp : tyUIBtn;
		tyBtnIgnoreTopClearance : tyUIBtn;
		tyBtnIgnoreBottomClearance : tyUIBtn;
		tyBtnIgnoreThickness : tyUIBtn;
		tyDrpDnPos1 : tyUIDrpDn;
		tyDrpDnPos2 : tyUIDrpDn;
		tyDrpDnPos3 : tyUIDrpDn;
	END_STRUCT;
	tyLyrP1021McSetNetwork : 	STRUCT 
		tyStringIPAddr : tyUIString;
		tyStringSubnetMask : tyUIString;
		tyStringHMIIPAddr : tyUIString;
		tyBtnSave : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1022McSetVCommLF : 	STRUCT 
		tyBtnLeaderMc : tyUIBtn;
		tyBtnSectionLdr : tyUIBtn;
		tyBtnUSWidthChkEn : tyUIBtn;
		tyBtnSeqStayActive : tyUIBtn;
		tyBtnDBAOnWOAlign : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1022McSetVCommSvy : 	STRUCT 
		tyNumSndAliveTm : tyUINum;
		tyNumSvySystemPort : tyUINum;
		tyBtnConfiguration : tyUIBtn;
		tyBtnCheckAliveResponse : tyUIBtn;
		tyBtnBoardTracking : tyUIBtn;
		tyBtnQueryWorkOrderInfo : tyUIBtn;
		tyBtnSendWorkOrderInfo : tyUIBtn;
		tyBitmapMask : tyUIBitmap;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1022McSetVCommSel : 	STRUCT 
		tyBtnLF : tyUIBtn;
		tyBtnLCSLF : tyUIBtn;
		tyBtnLCSReqRcp : tyUIBtn;
		tyBtnLCSManageRcp : tyUIBtn;
		tyBtnLCSLiveDat : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1023McSetHCommSel : 	STRUCT 
		tyBtnSMEMA : tyUIBtn;
		tyBtnHermes : tyUIBtn;
		tyTxtHeader : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1023McSetHCommSMEMA : 	STRUCT 
		tyBtnGdSig : tyUIBtn;
		tyDrpDnSMEMAMod : tyUIDrpDn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1023McSetHCommUSHermes : 	STRUCT 
		tyNumSndAliveTm : tyUINum;
		tyNumLaneID : tyUINum;
		tyNumHostPort : tyUINum;
		tyStringHostAddr : tyUIString;
		tyBtnCheckAliveResponse : tyUIBtn;
		tyBtnOverWrite : tyUIBtn;
		tyBtnCmpParam : tyUIBtn;
		tyBtnCmpTypeId : tyUIBtn;
		tyBitmapMask : tyUIBitmap;
		tyLyr : tyUILyr;
		tyBtnBoardForecast : tyUIBtn;
		tyBtnQueryBoardInfo : tyUIBtn;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1024McSetAntiGap : 	STRUCT 
		tyNumMagConvEntOn : tyUINum;
		tyNumMagConvEntOff : tyUINum;
		tyNumLftSenOff : tyUINum;
		tyNumMidSenOff : tyUINum;
		tyNumRgtSenOff : tyUINum;
		tyNumClrSenOff : tyUINum;
		tyNumMagConvPresentOn : tyUINum;
		tyNumMagConvPresentOff : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1025McSetScan : 	STRUCT 
		tyBtnTopScanEn : tyUIBtn;
		tyBtnBtmScanEn : tyUIBtn;
		tyStringTopScanSvrIP : tyUIString;
		tyNumTopScanSvrPort : tyUINum;
		tyStringBtmScanSvrIP : tyUIString;
		tyNumBtmScanSvrPort : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1026InOutletShutterFB : 	STRUCT 
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
		tyStringStat : tyUILString;
	END_STRUCT;
	tyLyrP1026McSetTeach : 	STRUCT 
		tyBtn1 : tyUIBtn;
		tyBtn2 : tyUIBtn;
		tyBtn3 : tyUIBtn;
		tyBtn4 : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1027McSetOpCon : 	STRUCT 
		tyNumLineNo : tyUINum;
		tyNumStatNo : tyUINum;
		tyNumStatIdx : tyUINum;
		tyNumFuNo : tyUINum;
		tyNumWorkPos : tyUINum;
		tyNumToolPos : tyUINum;
		tyStringProcessNm : tyUIString;
		tyNumProcessNo : tyUINum;
		tyStringApplication : tyUIString;
		tyStringOpConSvrIP : tyUIString;
		tyNumOpConSvrPort : tyUINum;
		tyBtnOpConEn : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1030MagSet : 	STRUCT 
		tyStringRecipeNm : tyUIString;
		tyNumSltToSltDist : tyUINum;
		tyNumMaxSlt : tyUINum;
		tyBtnLifterMag1Slt1Pos : tyUIBtn;
		tyBtnLifterMag2Slt1Pos : tyUIBtn;
		tyBtnLifterMag3Slt1Pos : tyUIBtn;
		tyBtnTravPosMag1 : tyUIBtn;
		tyBtnTravPosMag2 : tyUIBtn;
		tyBtnTravPosMag3 : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyNumLifterMag1Slt1Pos : tyUINum;
		tyNumLifterMag2Slt1Pos : tyUINum;
		tyNumLifterMag3Slt1Pos : tyUINum;
		tyNumTravPosMag1 : tyUINum;
		tyNumTravPosMag2 : tyUINum;
		tyNumTravPosMag3 : tyUINum;
		tyTxtLifMag3Slt1PosLbl : tyUITxt;
		tyTxtTravPosMag3Lbl : tyUITxt;
		tyTableRecipe : tyUITable;
		tyDrpDnMagModel : tyUIDrpDn;
		tyTxtMagModel : tyUITxt;
		tyNumMagMaxBrdWidth : tyUINum;
		tyBtnSort : tyUIBtn;
		tyBtnSafetyBarDisabled : tyUIBtn;
		tyBtnMagHeightChkEn : tyUIBtn;
		tyBitmapBrder : tyUIBitmap;
	END_STRUCT;
	tyLyrP1031InOutletShutterFB : 	STRUCT 
		tyStringStat : tyUILString;
		tyBtnOpen : tyUIBtn;
		tyBtnClose : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1031MagSetTeach : 	STRUCT 
		tyBtn1 : tyUIBtn;
		tyBtn2 : tyUIBtn;
		tyBtn3 : tyUIBtn;
		tyBtn4 : tyUIBtn;
		tyLyr : tyUILyr;
		tyNumNewSlt : tyUINum;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1040ProdSet : 	STRUCT 
		tyStringRecipeNm : tyUILString;
		tyNumProdWidth : tyUINum;
		tyNumProdWidth2 : tyUINum;
		tyNumFirstSlt : tyUINum;
		tyNumLastSlt : tyUINum;
		tyNumPitch : tyUINum;
		tyNumBrdPerSlt : tyUINum;
		tyNumMinReqFreeBffr : tyUINum;
		tyTxtBrdPerSlt : tyUITxt;
		tyTxtMinReqFreeBffr : tyUITxt;
		tyBtnToptoBtm : tyUIBtn;
		tyBtnGapBetBrds : tyUIBtn;
		tyBtnLongBrd : tyUIBtn;
		tyStringSearch : tyUILString;
		tyTableRecipe : tyUITable;
		tyBtnToXML : tyUIBtn;
		tyBtnFromXML : tyUIBtn;
		tyBtnSave : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyDrpDnMcMode : tyUIDrpDn;
		tyBtnSort : tyUIBtn;
		tyHotspotShowLRcp : tyUIHotspot;
		tyNumMtrPshrExtSpd : tyUINum;
		tyNumMtrPshrExtTorq : tyUINum;
		tyNumPshrOffset : tyUINum;
		tyTxtPshrOffset : tyUITxt;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1050LFSetLdr : 	STRUCT 
		tyTable1List : tyUITable1;
		tyBtnEdit : tyUIBtn;
		tyBtnDelete : tyUIBtn;
		tyBtnOnline : tyUIBtn;
		tyBtnOffline : tyUIBtn;
		tyBtnShftUp : tyUIBtn;
		tyBtnShftDwn : tyUIBtn;
		tyNumBeforeOven : tyUINum;
		tyNumAfterOven : tyUINum;
		tyNumBeforeOven2 : tyUINum;
		tyNumAfterOven2 : tyUINum;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1050LFSetLdrEdit : 	STRUCT 
		tyNumMcNum : tyUINum;
		tyStringIPAddr : tyUIString;
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyTxtLblInfoThirdParty : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1080UsrMgmt : 	STRUCT 
		tyDrpDnLvl : tyUIDrpDn;
		tyTableList : tyUITable1;
		tyBtnNewUsr : tyUIBtn;
		tyBtnEditDetail : tyUIBtn;
		tyBtnDeleteUsr : tyUIBtn;
		tyLyr : tyUILyr;
		tyBtnEditAccess : tyUIBtn;
	END_STRUCT;
	tyLyrP1080UsrMgmtAct : 	STRUCT 
		tyStringUsrNm : tyUIString;
		tyStringPw : tyUIString;
		tyDrpDnLvl : tyUIDrpDn;
		tyBtnOk : tyUIBtn;
		tyBtnCancel : tyUIBtn;
		tyLyr : tyUILyr;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyLyrP1081UsrMgmtUsrAccessRgt : 	STRUCT 
		tyBtnOps : tyUIBtn;
		tyBtnProdSel : tyUIBtn;
		tyBtnMagSel : tyUIBtn;
		tyBtnMcInfo : tyUIBtn;
		tyBtnAlm : tyUIBtn;
		tyBtnBffrInfo : tyUIBtn;
		tyBtnOvenInfo : tyUIBtn;
		tyBtnMagInfo : tyUIBtn;
		tyBtnLFCtrl : tyUIBtn;
		tyBtnManual : tyUIBtn;
		tyBtnSimu : tyUIBtn;
		tyBtnChgParam : tyUIBtn;
		tyBtnLFSet : tyUIBtn;
		tyBtnBackup : tyUIBtn;
		tyBtnLang : tyUIBtn;
		tyBtnMcSet : tyUIBtn;
		tyBtnProdSet : tyUIBtn;
		tyBtnMagSet : tyUIBtn;
		tyBtnManualFBOnly : tyUIBtn;
		tyStringNm : tyUIString;
		tyTxtTitle : tyUITxt;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyLyrP1081UsrMgmtUsrAccessRgtSel : 	STRUCT 
		tyDrpDnLevel : tyUIDrpDn;
		tyLyr : tyUILyr;
	END_STRUCT;
	tyTxtSnippets : 	STRUCT 
		sLibraryNm : STRING[10];
		sUsrMgmtUsrLv1Nm : STRING[80];
		sUsrMgmtUsrLv2Nm : STRING[80];
		sUsrMgmtUsrLv3Nm : STRING[80];
	END_STRUCT;
END_TYPE

(**)
(*Visu Property*)

TYPE
	tyVisu : 	STRUCT 
		uiChgPage : UINT;
		uiCurrPage : UINT;
		uiSSaverTm : UINT;
		uiScreenSaverRemainTm : UINT;
		usiChgLang : USINT;
		usiCurrLang : USINT;
	END_STRUCT;
END_TYPE
