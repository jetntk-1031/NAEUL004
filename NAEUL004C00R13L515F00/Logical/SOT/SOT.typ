(*2021-04-19*)
(**)
(*Action*)

TYPE
	eSOTAction : 
		(
		SOTActIdle,
		SOTActRun,
		SOTActSetSig,
		SOTActRstSig
		);
	tySOTstatus : 	STRUCT 
		tyBtnInPos : BOOL;
		tyBtnError : BOOL;
		tyBtnRdy : BOOL;
		tyBtnAvail : BOOL;
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyUSSOT : 	STRUCT 
		In : tyUSSOTIn1;
		Out : tyUSSOTOut1;
	END_STRUCT;
	tyUSSOTIn1 : 	STRUCT 
		eAct : eConvAction;
		udiRstErr : UDINT := 0;
		bPrep : BOOL := TRUE;
		bEn : BOOL := TRUE;
		bDis : BOOL := FALSE;
		bManual : BOOL := FALSE;
		diTransferInTO : DINT := 20000;
		bDirLToR : BOOL := FALSE;
		bRdyRcv : BOOL := TRUE;
		bLeftSen : BOOL := FALSE;
		bRightSen : BOOL := FALSE;
		bComplSigOn : BOOL := FALSE;
		bUMA : BOOL := FALSE;
		bUMASize : BOOL := FALSE;
		bVirtualEn : BOOL;
		bUBAVirtual : BOOL;
		tRstDlyTm : TIME := T#500ms;
		tSigInChkTm : TIME := T#100ms;
		sProgNm : STRING[15];
		bLinkSOTReadyOnFirst : BOOL;
		bLinkProjMag1ConvPrep : BOOL;
		bLinkProjMagConvLane1Prep : BOOL;
		bLinkProjTCPAGVSigPrep : BOOL;
	END_STRUCT;
	tyUSSOTOut1 : 	STRUCT 
		eStat : eConvAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bUSRdy : BOOL := FALSE;
		bUSLargeMagRdy : BOOL := FALSE;
		bDSRdy : BOOL := FALSE;
		bTransporting : BOOL := FALSE;
		bConvStart : BOOL := FALSE;
		bConvStop : BOOL := FALSE;
		bUSB : BOOL := FALSE;
		bVirtual : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyDSSOT : 	STRUCT 
		In : tyUSSOTIn1;
		Out : tyUSSOTOut1;
	END_STRUCT;
	tyDSSOTIn1 : 	STRUCT 
		eAct : eConvAction;
		udiRstErr : UDINT := 0;
		bPrep : BOOL := TRUE;
		bEn : BOOL := TRUE;
		bDis : BOOL := FALSE;
		bManual : BOOL := FALSE;
		diTransferOutTO : DINT := 20000;
		bDirLToR : BOOL := FALSE;
		bRdySend : BOOL := TRUE;
		bLeftSen : BOOL := FALSE;
		bRightSen : BOOL := FALSE;
		bComplSigOn : BOOL := FALSE;
		bMagSizeLarge : BOOL := FALSE;
		bDSB : BOOL := FALSE;
		bVirtualEn : BOOL;
		bDSBVirtual : BOOL;
		tRstDlyTm : TIME := T#500ms;
		tSigInChkTm : TIME := T#100ms;
		sProgNm : STRING[15];
		bLinkProjMag2ConvPrep : BOOL;
		bLinkProjMagConvLane2Prep : BOOL;
		bLinkProjTCPAGVSigPrep : BOOL;
	END_STRUCT;
	tyDSSOTOut1 : 	STRUCT 
		eStat : eConvAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bUSRdy : BOOL := FALSE;
		bDSMagSizeLarge : BOOL := FALSE;
		bDSRdy : BOOL := FALSE;
		bTransporting : BOOL := FALSE;
		bConvStart : BOOL := FALSE;
		bConvStop : BOOL := FALSE;
		bDBA : BOOL := FALSE;
		bVirtual : BOOL;
	END_STRUCT;
END_TYPE
