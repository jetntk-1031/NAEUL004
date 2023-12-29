(*2019-04-25*)
(**)
(*Action*)

TYPE
	eLFAction : 
		(
		LFActIdle,
		LFActBGStartRun,
		LFActBGStopRun,
		LFActSyncPLCTm,
		LFActChgAllAuto,
		LFActChgAllMnl,
		LFActChgSeqAuto,
		LFActChgSeqMnl
		);
	eLFOPCUAStep : 
		(
		LFOPCUAStepIncCntr,
		LFOPCUAStepChkHdls,
		LFOPCUAStepConnect,
		LFOPCUAStepWriteHdls,
		LFOPCUAStepReadHdls,
		LFOPCUAStepWrite,
		LFOPCUAStepRead,
		LFOPCUAStepStopChk
		);
	tyOPCUAHdlList : 	STRUCT 
		a_dwHdls : ARRAY[0..MAX_INDEX_NODELIST]OF DWORD;
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyLFLeader1 : 	STRUCT 
		In : tyLFLeaderIn1;
		Out : tyLFLeaderOut1;
	END_STRUCT;
	tyLFLeaderIn1 : 	STRUCT 
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
	END_STRUCT;
	tyLFLeaderOut1 : 	STRUCT 
		eStat : eLFAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[100];
		a_tyFollowerInfo : ARRAY[1..c_diLFClntNum]OF tyLFFollowerInfo;
		a_tyFollowerToLeaderTag : ARRAY[1..c_diLFClntNum]OF tyLFFollowerToLeaderTag;
		tyAlmData : tyAlmDat;
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyLFFollower1 : 	STRUCT 
		In : tyLFFollowerIn1;
		Out : tyLFFollowerOut1;
	END_STRUCT;
	tyLFFollowerIn1 : 	STRUCT 
		bEn : BOOL;
		bDis : BOOL;
		bPrep : BOOL;
		bUSWidthChkSen : BOOL;
		bDSWidthChkSen : BOOL;
		sProgNm : STRING[15];
		sMagRcpNm : STRING[15];
	END_STRUCT;
	tyLFFollowerOut1 : 	STRUCT 
		eStatus : eFBStatus;
		tyAlmData : tyAlmDat;
		tyInfoData : tyAlmDat;
		tyInfoData1 : tyAlmDat;
		bUSAllow : BOOL;
		bDSAllow : BOOL;
		bProdAccDataMnl : BOOL;
		bProdUpdtDataMnl : BOOL;
		bMagAccDataMnl : BOOL;
		eTimeAct : eTimeAction;
		dtTm : DATE_AND_TIME;
		bWaitRlsBrd : BOOL;
		tyUpdtProdRcp : tyProdRcpParam;
		bLdrSeqCtrlInActive : BOOL;
		tyLeaderInfo : tyLFLeaderInfo;
	END_STRUCT;
END_TYPE
