(*2019-05-04*)
(**)
(*Action*)

TYPE
	eMcParamAction : 
		(
		McParamActIdle,
		McParamActCreateDir,
		McParamActRead,
		McParamActWrite
		);
	tyMcParam : 	STRUCT 
		a_bLFOnline : ARRAY[1..c_diLFClntNum]OF BOOL;
		a_sLFIPAddr : ARRAY[1..c_diLFClntNum]OF STRING[15];
		sMcNm : STRING[30] := 'Triple Magazine Line Unloader';
		uiSSaverTmInSec : UINT := 1800;
		bSSaverEn : BOOL := FALSE;
		usiDefaultMcMod : USINT := 0;
		diAWPusherAtHmPosInUM : DINT := 0;
		diWidthAtHmPosInUM : DINT := 0;
		diConvInitTmInMS : DINT := 6000;
		diTranInErrDlyTmInMS : DINT := 12000;
		diMag1ConvRunTmOutInMS : DINT := 20000;
		diMag2ConvRunTmOutInMS : DINT := 20000;
		diMag3ConvRunTmOutInMS : DINT := 20000;
		diOvenMaxBffr : DINT := 1;
		diTravPosA : DINT;
		diTravPosB : DINT;
		diLifterPosA : DINT;
		diLifterPosB : DINT;
		bAWPusherDis : BOOL := FALSE;
		bAWDis : BOOL := FALSE;
		bMnlAccDat : BOOL := FALSE;
		bAutoStepEn : BOOL := FALSE;
		bVSMEMAEn : BOOL := TRUE;
		bChgParamEn : BOOL := TRUE;
		bHermesRmtEn : BOOL := FALSE;
		bHermesSvyEn : BOOL := FALSE;
		bHermesScannerEn : BOOL;
		bGapBwtnBrdEn : BOOL := FALSE;
		bLongBrdEn : BOOL := FALSE;
		bOvenEn : BOOL := FALSE;
		bExtdOvenEn : BOOL := FALSE;
		bInShutterDis : BOOL := FALSE;
		bStopperADis : BOOL := FALSE;
		bStopperBDis : BOOL := FALSE;
		bLFEn : BOOL := FALSE;
		bLCSLFEn : BOOL := FALSE;
		bLCSReqRcpEn : BOOL := FALSE;
		bLCSManageRcpEn : BOOL := FALSE;
		bLCSLiveDatEn : BOOL := FALSE;
		bLFLeaderMc : BOOL := FALSE;
		bSectionLeader : BOOL := FALSE;
		bUSWidthChkEn : BOOL := FALSE;
		diWidthOffsetInUM : DINT := 0;
		diLFMcIdxBeforeOven : DINT := 1;
		diLFMcIdxAfterOven : DINT := 1;
		diLFMcIdxBeforeOven2 : DINT := 1;
		diLFMcIdxAfterOven2 : DINT := 1;
		usiLang : USINT := 0;
		tyLftSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=100);
		tyMidSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyRgtSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=500);
		tyClrSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=500);
		eUSCommA : eMcSetCommMod := McSetCommModSMEMA;
		tyUSCommASMEMA : tySMEMAParam := (eSelection:=SMEMASelIPC9851,bStatSigSetGd:=FALSE);
		eUSCommB : eMcSetCommMod := McSetCommModSMEMA;
		bAutoLogoutEn : BOOL := FALSE;
		diAutoLogoutTmInSec : DINT := 60000;
		sIPAddr : STRING[15] := '192.168.0.10';
		sSubnetMask : STRING[15] := '255.255.255.0';
		eNetworkMod : eNetworkConfigMod := SetIPManually;
		tyUSCommBSMEMA : tySMEMAParam := (eSelection:=SMEMASelIPC9851,bStatSigSetGd:=FALSE);
		diMagAutoDetectSenTmInMS : DINT := 2000;
		bAGVComEn : BOOL := FALSE;
		tyMagConvEntrySenAntiGapDly : tyAntiGapDly := (diSigOnTm:=100,diSigOffTm:=100);
		tyMagConvPresentSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=100,diSigOffTm:=100);
		bLFSeqStayActive : BOOL := FALSE;
		bMagAWDis : BOOL := FALSE;
		bMagSafetyBarDis : BOOL := FALSE;
		diMag1WidthAtHmPosInUM : DINT;
		diMag2WidthAtHmPosInUM : DINT;
		diMag3WidthAtHmPosInUM : DINT;
		bLFBuzMute : BOOL := FALSE;
		eAGVComProtocol : eMcAGVCommProtocol := McSetAGVCommOPCUA;
		eMagExMode : eMcMagExchangeMode := McSetMagXcAutoManMode;
		bAIVSizeDisabled : BOOL := FALSE;
		diTravInletFixtoFixPos : DINT := 0;
		bDisableFMWarning : BOOL := TRUE;
		tyLineAInletSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyLineBInletSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyUSWidthChkSenAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		bDBAOnWOAlign : BOOL := FALSE;
		tyInMagConvEntAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyInMagConvMidAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyInMagConvExtAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyOutMagConvEntAntiGapDly : tyAntiGapDly := (diSigOnTm:=1500,diSigOffTm:=1500);
		tyOutMagConvMidAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyOutMagConvExtAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=1200);
		tyInMagConv2EntAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyInMagConv2MidAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyInMagConv2ExtAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyOutMagConv2EntAntiGapDly : tyAntiGapDly := (diSigOnTm:=1500,diSigOffTm:=1500);
		tyOutMagConv2MidAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=0);
		tyOutMagConv2ExtAntiGapDly : tyAntiGapDly := (diSigOnTm:=0,diSigOffTm:=1200);
		diInMagConvRunTmOutInMS : DINT := 20000;
		diOutMagConvRunTmOutInMS : DINT := 20000;
		diLifterMagConvRunTmOutInMS : DINT := 20000;
		diInMagConv2RunTmOutInMS : DINT := 20000;
		diOutMagConv2RunTmOutInMS : DINT := 20000;
		diLifterMagConv2RunTmOutInMS : DINT := 20000;
		diLifterTopPos : DINT := 0;
		diLifterBtmPos : DINT := 0;
		diLifterTopPos2 : DINT := 0;
		diLifterBtmPos2 : DINT := 0;
		diTCPSvrPort : DINT := 7171;
		bMagWidthChkDis : BOOL := TRUE;
		diMag1WidthChkDetDist : DINT := 2000;
		diMag2WidthChkDetDist : DINT := 2000;
		diMag3WidthChkDetDist : DINT := 2000;
		bTopScannerEn : BOOL;
		bBtmScannerEn : BOOL;
		sTopScanIPAddr : STRING[15] := '192.168.2.100';
		uiTopScanSvrPort : UINT := 51236;
		sBtmScanIPAddr : STRING[15] := '192.168.2.101';
		uiBtmScanSvrPort : UINT := 51237;
		bOpConEn : BOOL;
		sOpConIPAddr : STRING[15] := '192.168.0.102';
		uiOpConSvrPort : UINT := 51238;
		tyOpConParam : tyLocationParamData := (uiLineNo:=1,uiStatNo:=1,uiStatIdx:=1,uiFuNo:=1,uiWorkPos:=1,uiToolPos:=1,uiProcessNo:=1,sApplication:='IPC');
		bSiemensPrep : BOOL;
		bInStopperDis : BOOL;
		diInletStopperExtDelayTmInMS : DINT;
		diMESResponseTOTmInMS : DINT;
		bMESEn : BOOL;
		bSwitchingProdType : BOOL;
		bAutoRcpDisable : BOOL;
		bBatchIDChgOverCmp : BOOL;
		bIgnoreTopClearance : BOOL;
		bIgnoreBtmClearance : BOOL;
		bIgnoreThickness : BOOL;
		bDMCScannerEn : BOOL := FALSE;
		diDMCScanTOErrInMs : DINT;
		tyOptBtnPos : tyBtnPos := (ePos1:=eMagUnload,ePos2:=eNA,ePos3:=eNA);
		sHMIIPAddr : STRING[15] := '192.168.0.11';
		sDefaultGateWay : STRING[15] := '0.0.0.0';
	END_STRUCT;
	tyMcParamGen : 	STRUCT 
		In : tyMcParamIn1;
		Out : tyMcParamOut1;
	END_STRUCT;
	tyMcParamIn1 : 	STRUCT 
		eAct : eMcParamAction;
		udiRstErr : UDINT;
		tyMcParmWr : tyMcParam;
		sProgNm : STRING[15];
	END_STRUCT;
	tyMcParamOut1 : 	STRUCT 
		eStat : eMcParamAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bFileNotFound : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyAntiGapDly : 	STRUCT 
		diSigOnTm : DINT;
		diSigOffTm : DINT;
	END_STRUCT;
	eMcSetCommMod : 
		(
		McSetCommModSMEMA,
		McSetCommModHermes
		);
	eMcAGVCommProtocol : 
		(
		McSetAGVCommOPCUA,
		McSetAGVCommHardIO,
		McSetAGVCommDisabled,
		McSetAGVTCPEnableTCP,
		McSetAGVTCPDisableTCP
		);
	eMcMagExchangeMode : 
		(
		McSetMagXcAutoManMode,
		McSetMagXcAutoMode,
		McSetMagXcManMode
		);
END_TYPE

(**)

TYPE
	tyBtnPos : 	STRUCT 
		ePos1 : eOptBtn := eNA;
		ePos2 : eOptBtn := eRlsNewMagazine1;
		ePos3 : eOptBtn := eRlsNewMagazine2;
		ePos4 : eOptBtn := eRlsNewMagazine3;
		ePos5 : eOptBtn := eRlsNewMagazine3;
		ePos6 : eOptBtn := eRlsNewMagazine3;
		ePos7 : eOptBtn := eRlsNewMagazine3;
	END_STRUCT;
	eOptBtn : 
		(
		eNA := 0,
		eMagUnload := 1,
		eRlsNewMagazine1 := 2,
		eRlsNewMagazine2 := 3,
		eRlsNewMagazine3 := 4
		);
END_TYPE
