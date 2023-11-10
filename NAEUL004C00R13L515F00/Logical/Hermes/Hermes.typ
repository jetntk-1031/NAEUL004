(*2021-08-01*)

TYPE
	tyHermesBrdAvlDat : 	STRUCT 
		a_tyXMLTableDataBrdAvl : ARRAY[0..200]OF tyXMLTableDat;
		iXMLTableDataBrdAvlTtlIdx : INT;
		bNewBrdAvl : BOOL := TRUE;
	END_STRUCT;
	tyHermesSvyParam : 	STRUCT 
		tSndAlive : TIME;
		tRcvAlive : TIME;
		uiSvySvstemPort : UINT;
		iLaneID : INT;
		sMachineId : STRING[80];
		sClientAddress : STRING[15];
		uiClientPort : UINT;
		bFeatureCheckAliveResponse : BOOL;
		bFeatureConfiguration : BOOL;
		bFeatureBoardTracking : BOOL;
		bFeatureQueryWorkOrderInfo : BOOL;
		bFeatureSendWorkOrderInfo : BOOL;
		bFeatureReplyWorkOrderInfo : BOOL;
	END_STRUCT;
	tyHermesRmtParam : 	STRUCT 
		uiSvrPort : UINT;
	END_STRUCT;
	tyHermesDSParam : 	STRUCT 
		tSndAlive : TIME;
		tRcvAlive : TIME;
		sDownstreamInterfaceId : STRING[80]; (*The ID of the transportation interface on the downstream side*)
		uiSvrPort : UINT;
		iLaneID : INT;
		sMachineId : STRING[80] := '';
		sClientAddress : STRING[15] := '';
		uiClientPort : UINT;
		bFeatureCheckAliveResponse : BOOL;
		bFeatureBoardForecast : BOOL;
		bFeatureSendBoardInfo : BOOL;
	END_STRUCT;
	tyHermesUSParam : 	STRUCT 
		tSndAlive : TIME;
		tRcvAlive : TIME;
		uiClntPort : UINT;
		iLaneID : INT;
		sMachineId : STRING[80] := '';
		sHostAddress : STRING[15] := '';
		sUpstreamInterfaceId : STRING[80]; (*The ID of the transportation interface on the upstream side*)
		uiHostPort : UINT;
		bFeatureCheckAliveResponse : BOOL;
		bFeatureBoardForecast : BOOL;
		bFeatureQueryBoardInfo : BOOL;
		bCmpTypeId : BOOL;
		bCmpParam : BOOL;
		bOverwrite : BOOL;
	END_STRUCT;
END_TYPE

(**)

TYPE
	tyHermesConfiguration : 	STRUCT 
		a_tyUSParam : ARRAY[0..c_diHermesConfigMaxIdx]OF tyHermesUSParam;
		a_tyDSParam : ARRAY[0..c_diHermesConfigMaxIdx]OF tyHermesDSParam;
		tySvyParam : tyHermesSvyParam;
	END_STRUCT;
END_TYPE

(**)
(**)
(*Action*)

TYPE
	eHermesAction : 
		(
		HermesActIdle,
		HermesActBGStartRun,
		HermesActBGStopRun,
		HermesActDeleteOldLog,
		HermesActCreateDir,
		HermesActWriteRetain,
		HermesActWriteRetainLane1,
		HermesActWriteRetainLane2,
		HermesActWriteRetainLane3,
		HermesActWriteRetainLane4,
		HermesActWriteRetainSendWO1,
		HermesActWriteRetainSendWO2,
		HermesActWriteRetainSendWO3,
		HermesActReadRetain,
		HermesActReadRetainLane1,
		HermesActReadRetainLane2,
		HermesActReadRetainLane3,
		HermesActReadRetainLane4,
		HermesActReadRetainSendWO1,
		HermesActReadRetainSendWO2,
		HermesActReadRetainSendWO3,
		HermesActWriteConfig,
		HermesActReadConfig
		);
END_TYPE
