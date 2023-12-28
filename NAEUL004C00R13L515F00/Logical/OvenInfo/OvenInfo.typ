(*2018-12-13*)
(**)
(*Action*)

TYPE
	eOvenInfoAction : 
		(
		OvenInfoActIdle,
		OvenInfoActSetBrdInOven,
		OvenInfoActSetOvenAllow,
		OvenInfoActRstOvenAllow
		);
	tyOvenInfo : 	STRUCT 
		In : tyOvenInfoIn1;
		Out : tyOvenInfoOut1;
	END_STRUCT;
	tyOvenInfoIn1 : 	STRUCT 
		eAct : eOvenInfoAction; (*Hardware Info's Action*)
		bPrep : BOOL := TRUE; (*Project Preparation*)
		bEn : BOOL := TRUE; (*Enable*)
		bDis : BOOL := FALSE; (*Disable*)
		bPrepExtdd : BOOL;
		bEnExtdd : BOOL;
		bDisExtdd : BOOL;
		bManual : BOOL;
		diBffrMtySlt : DINT;
		diAddBffr : DINT;
		diSetBrdInOven : DINT;
		bCntUp : BOOL;
		bCntDown : BOOL;
		bLinkOpsStatusRun : BOOL;
		eLinkOpsTravLifPosGo : REFERENCE TO eTravLifULPos;
		usiLinkProdRcpCurrRcpMcMod : REFERENCE TO USINT;
		diMinBffr : REFERENCE TO DINT;
		bBGRun : BOOL;
		BrdPerSlt : DINT;
	END_STRUCT;
	tyOvenInfoOut1 : 	STRUCT 
		eStat : eOvenInfoAction := OvenInfoActIdle; (*Hardware Info's State*)
		eStatus : eFBStatus := Idle; (*Hardware Info's Status*)
		sStatTxt : STRING[200] := ''; (*Hardware Info's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		bOvenAllow : BOOL;
		diBrdInOven : DINT;
	END_STRUCT;
END_TYPE
