(*2018-12-13*)
(**)
(*Action*)

TYPE
	eAGVMagAction : 
		(
		AGVMagActIdle,
		AGVMagActEnter,
		AGVMagActExit
		);
	tyTagDTMagToAGV : 	STRUCT 
		bEStopErr : BOOL;
		bCI1MagazineFull : BOOL;
		bCI1Rdy : BOOL;
		bCI1Auto : BOOL;
		bCI1Occupied : BOOL;
		bCI1Running : BOOL;
		bCI1IncorrectMagazineModel : BOOL;
		bCI2MagazineFull : BOOL;
		bCI2Rdy : BOOL;
		bCI2Auto : BOOL;
		bCI2Occupied : BOOL;
		bCI2Running : BOOL;
		bCI2IncorrectMagazineModel : BOOL;
		bCI3MagazineFull : BOOL;
		bCI3Rdy : BOOL;
		bCI3Auto : BOOL;
		bCI3Occupied : BOOL;
		bCI3Running : BOOL;
		bCI3IncorrectMagazineModel : BOOL;
		bCI4MagazineFull : BOOL;
		bCI4Rdy : BOOL;
		bCI4Auto : BOOL;
		bCI4Occupied : BOOL;
		bCI4Running : BOOL;
		bCI4IncorrectMagazineModel : BOOL;
	END_STRUCT;
	tyTagAGVToDTMag : 	STRUCT 
		bVEHInPos1 : BOOL;
		bVEHInPos2 : BOOL;
		bVEHInPos3 : BOOL;
		bVEHAuto : BOOL;
		bVEH1Occupied : BOOL;
		bVEH2Occupied : BOOL;
		bVEH3Occupied : BOOL;
		bVEHRunning : BOOL;
	END_STRUCT;
	tyStatToMES : 	STRUCT 
		sMachineName : STRING[30];
		bActive : BOOL;
		bAuto_Run : BOOL;
		bError : BOOL;
		bWarning : BOOL;
		nNumberOfPlatforms : USINT;
		tyTagStatOfPlatforms : ARRAY[1..4]OF tyStatPlatform;
	END_STRUCT;
	tyStatFromMES : 	STRUCT 
		sMESName : STRING[30];
		bActive : BOOL;
		tyTagStatOfPlatforms : ARRAY[1..4]OF tyStatPlatformFromMES;
	END_STRUCT;
	tyStatPlatform : 	STRUCT 
		bMagLoaded : BOOL;
		bError : BOOL;
		bSizeLarge : BOOL;
		bReady : BOOL;
		bAvailable : BOOL;
		bReqAIVToBring : BOOL;
		bReqAIVToGet : BOOL;
		bReadRFID : BOOL;
		bWriteRFID : BOOL;
	END_STRUCT;
	tyStatPlatformFromMES : 	STRUCT 
		iAcceptCondition : INT;
		bError : BOOL;
		bSizeLarge : BOOL;
		bReady : BOOL;
		bAvailable : BOOL;
		bRFIDWriteComplete : BOOL;
		bTrigMagFull : BOOL;
	END_STRUCT;
END_TYPE

(*AGV Batch Counting With No Vertical Communication*)

TYPE
	tyStatFromLoader : 	STRUCT 
		tyTagStatOfPlatForms : ARRAY[1..4]OF tyStatPlatformFromLoader;
	END_STRUCT;
	tyStatPlatformFromLoader : 	STRUCT 
		usiMagBrdUnloadCnt : USINT;
		bFinishedLoading : BOOL;
	END_STRUCT;
END_TYPE

(*AGV Comm in/out*)

TYPE
	tyAGVCom : 	STRUCT 
		In : tyAGVComIn1;
		Out : tyAGVComOut1;
	END_STRUCT;
	tyAGVComIn1 : 	STRUCT 
		bManual : BOOL;
		tyDTMagToAGV1 : tyTagDTMagToAGV;
		tyDTMagToAGV2 : tyTagDTMagToAGV;
		tyDTMagToAGV3 : tyTagDTMagToAGV;
		bOpsRun : BOOL;
		bLinkOpsSimu : BOOL;
		bIncorrectMagazine1 : BOOL;
		bIncorrectMagazine2 : BOOL;
		bIncorrectMagazine3 : BOOL;
		bRequestToBring1 : BOOL;
		bRequestToBring2 : BOOL;
		bRequestToBring3 : BOOL;
		bRequestToBring4 : BOOL;
		bRequestToGet1 : BOOL;
		bRequestToGet2 : BOOL;
		bRequestToGet3 : BOOL;
		bRequestToGet4 : BOOL;
		bUISOTMagError1 : BOOL;
		bUISOTMagError2 : BOOL;
		bUISOTMagError3 : BOOL;
		bUISOTMagReady1 : BOOL;
		bUISOTMagReady2 : BOOL;
		bUISOTMagReady3 : BOOL;
		bUISOTMagAvailable1 : BOOL;
		bUISOTMagAvailable2 : BOOL;
		bUISOTMagAvailable3 : BOOL;
		bUISOTMagSizeLarge1 : BOOL;
		bUISOTMagSizeLarge2 : BOOL;
		bUISOTMagSizeLarge3 : BOOL;
		bUIRequestToBring1 : BOOL;
		bUIRequestToBring2 : BOOL;
		bUIRequestToBring3 : BOOL;
		bUIRequestToGet1 : BOOL;
		bUIRequestToGet2 : BOOL;
		bUIRequestToGet3 : BOOL;
		bDIFleetManagerActive : BOOL;
		eAGVComProtocol : eMcAGVCommProtocol;
		bSOTMagError1 : BOOL;
		bSOTMagSizeLarge1 : BOOL;
		bSOTMagReady1 : BOOL;
		bSOTMagAvailable1 : BOOL;
		bSOTMagError2 : BOOL;
		bSOTMagSizeLarge2 : BOOL;
		bSOTMagReady2 : BOOL;
		bSOTMagAvailable2 : BOOL;
		bSOTMagError3 : BOOL;
		bSOTMagSizeLarge3 : BOOL;
		bSOTMagReady3 : BOOL;
		bSOTMagAvailable3 : BOOL;
		bAGVSimulationOn : BOOL;
		bDisableFMWarning : BOOL;
		bAGVRdyEnter2 : BOOL;
		bAGVRdyExit2 : BOOL;
		bAGVRdyEnter3 : BOOL;
		bAGVRdyExit3 : BOOL;
		bAGVRdyEnter1 : BOOL;
		bAGVRdyExit1 : BOOL;
		sJobNo : STRING[30];
		sProgNm : STRING[15];
		udiRstErr : UDINT;
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
		eCustomerReq : eCustomer;
		bOpsMagConvUL1ReadRFID : BOOL;
		bOpsMagConvUL1WriteRFID : BOOL;
		bOpsMagConvUL2ReadRFID : BOOL;
		bOpsMagConvUL2WriteRFID : BOOL;
		bOpsMagConvUL3ReadRFID : BOOL;
		bOpsMagConvUL3WriteRFID : BOOL;
		tyUIAGVToDTMagSimulateData : tyTagAGVToDTMag;
	END_STRUCT;
	tyAGVComOut1 : 	STRUCT 
		eStat : eAGVMagAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		tyAlmData1 : tyAlmDat;
		tyAGVToDTMag : tyTagAGVToDTMag;
		bInternalAGVOnline : BOOL;
		bMachineOnline : BOOL;
		tyDTMagToAGV : tyTagDTMagToAGV;
		bInternalAGVSimulateOn : BOOL;
		tyTagToMes : tyStatToMES;
		tyTagFromMes : tyStatFromMES;
		bFleetManagerActive : BOOL;
	END_STRUCT;
END_TYPE

(*AGV Plat Comm in/out*)

TYPE
	tyAGV1 : 	STRUCT 
		In : tyAGVIn1;
		Out : tyAGVOut1;
	END_STRUCT;
	tyAGVIn1 : 	STRUCT 
		udiRstErr : UDINT := 0;
		bPrep : BOOL := TRUE;
		bEn : BOOL := TRUE;
		bDis : BOOL := FALSE;
		sProgNm : STRING[15] := 'AIVMag';
		bNtSettingsLoadDone : BOOL := TRUE;
		diTxInTimeOut : DINT;
		diTxOutTimeOut : DINT;
		eDirection : eConvDir;
		bBufferMagPresent : BOOL;
		bMagConvLftSen : BOOL;
		bMagConvRgtSen : BOOL;
		bMagConvMtrIn : BOOL;
		bMagConvMtrOut : BOOL;
		bAGVInPosSen1 : BOOL;
		bAGVInPosSen2 : BOOL;
		bNtParamAGVInPosSenPrep : BOOL;
		bSOTRcvOk : BOOL;
		bSOTErr : BOOL;
		bSOTRdy : BOOL;
		bSOTAvailable : BOOL;
		tyAGVToDTMag : tyTagAGVToDTMag;
		tyDTMagToAGV : tyTagDTMagToAGV;
		bLinkAGVOnline : BOOL;
	END_STRUCT;
	tyAGVOut1 : 	STRUCT 
		eStat : eAGVMagAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bRdyEnt : BOOL;
		bRdyExit : BOOL;
		bMcRunRdy : BOOL;
		tyDTMagToAGV : tyTagDTMagToAGV;
	END_STRUCT;
END_TYPE
