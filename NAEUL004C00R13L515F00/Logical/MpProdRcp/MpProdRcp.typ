(*2019-04-28*)
(**)
(*Action*)

TYPE
	eMpProdRcpAction : 
		(
		MpProdRcpActIdle,
		MpProdRcpActCreateDir,
		MpProdRcpActLoad,
		MpProdRcpActSave
		);
	tyMpProdRcp : 	STRUCT 
		In : tyMpProdRcpIn1;
		Out : tyMpProdRcpOut1;
	END_STRUCT;
	tyMpProdRcpIn1 : 	STRUCT 
		eAct : eMpProdRcpAction;
		tyMpProdRcpMpLink : MpComIdentType;
		sPVName : STRING[100];
		sFileName : STRING[255];
		sProgNm : STRING[15];
		bNtSettingsLoadDone : BOOL;
		udiRstErr : UDINT;
	END_STRUCT;
	tyMpProdRcpOut1 : 	STRUCT 
		eStat : eMpProdRcpAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
	END_STRUCT;
END_TYPE
