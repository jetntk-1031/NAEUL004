(*2019-05-04*)
(**)
(*Action*)

TYPE
	eTCPAction : 
		(
		TCPActIdle,
		TCPActCreateDir,
		TCPActDeleteOldLog
		);
END_TYPE

(**)

TYPE
	tyTCPHistoryMsg : 	STRUCT 
		eTCP : eTCPMsgType;
		sMsg : STRING[200];
	END_STRUCT;
	eTCPMsgType : 
		(
		MsgNA,
		MsgRcvFromTCP,
		MsgSndToTCP
		);
	tyAIVMsgRcvDat : 	STRUCT 
		bEnterPW : BOOL;
		bELD1Reached : BOOL;
		bELD1Completed : BOOL;
		bELD2Reached : BOOL;
		bELD2Completed : BOOL;
		bELD3Reached : BOOL;
		bELD3Completed : BOOL;
		bEUL1Reached : BOOL;
		bEUL1Completed : BOOL;
		bEUL2Reached : BOOL;
		bEUL2Completed : BOOL;
		bEUL3Reached : BOOL;
		bEUL3Completed : BOOL;
		bStandbyReached : BOOL;
		bStandbyCompleted : BOOL;
		bLocalizeCompleted : BOOL;
		bMoveBackCompleted : BOOL;
		bLoginSuccess : BOOL;
		bOneLineStatus : BOOL;
	END_STRUCT;
END_TYPE

(**)
(**)
(*Server Action*)

TYPE
	eTCPSvrAction : 
		(
		SvrActIdle,
		SvrActRead,
		SvrActRead1,
		SvrActWrite
		);
	eTCPClientServer : 
		(
		Client,
		Server
		);
	eTCPAGVStatus : 
		(
		AGVNA := 10,
		AGVError := 11,
		AGVReady := 12,
		AGVAvailable := 13,
		AGV2NA := 20,
		AGV2Error := 21,
		AGV2Ready := 22,
		AGV2Available := 23,
		AGV3NA := 30,
		AGV3Error := 31,
		AGV3Ready := 32,
		AGV3Available := 33,
		AGV4NA := 40,
		AGV4Error := 41,
		AGV4Ready := 42,
		AGV4Available := 43
		);
	tyTCPAGVDetail : 	STRUCT 
		sAGVMag : STRING[10];
		eAGVStatus : eTCPAGVStatus;
		usiAGVReq : USINT; (*0: To Bring, 1:To Get*)
	END_STRUCT;
END_TYPE

(**)
(*Scanner Action*)

TYPE
	eTCPAction1 : 
		(
		TCPActIdle_0,
		TCPActFullWriteRead,
		TCPActFullWriteReadUntilValid,
		TCPActDebug
		);
END_TYPE
