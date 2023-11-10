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
