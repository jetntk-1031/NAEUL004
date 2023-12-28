(*2018-12-13*)
(**)
(*Action*)

TYPE
	eSMEMAAction : 
		(
		SMEMAActIdle,
		SMEMAActRun,
		SMEMAActSetSig,
		SMEMAActSetStatSig,
		SMEMAActRstSig,
		SMEMAActRstStatSig,
		SMEMAActSetAllSig,
		SMEMAActRstAllSig
		);
END_TYPE

(**)

TYPE
	tySMEMAParam : 	STRUCT 
		eSelection : eSMEMASelection;
		bStatSigSetGd : BOOL;
	END_STRUCT;
	eSMEMASelection : 
		(
		SMEMASelStandard,
		SMEMASelIPC9851,
		SMEMASelIPC9851Ext
		);
	tyUSSMEMA : 	STRUCT 
		In : tyUSSMEMAIn1;
		Out : tyUSSMEMAAOut1;
	END_STRUCT;
	tyUSSMEMAIn1 : 	STRUCT 
		eAct : eSMEMAAction := SMEMAActIdle; (*USSMEMA Act*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		bPrep : BOOL := TRUE; (*Project Preparation*)
		bEn : BOOL := TRUE; (*Enable*)
		bDis : BOOL := FALSE; (*Disable*)
		bRdyRcv : BOOL := TRUE; (*Ready Receive Signal*)
		bLeftSen : BOOL := FALSE; (*Left Sensor*)
		bRightSen : BOOL := FALSE; (*Right Sensor*)
		bComplSigOn : BOOL := FALSE; (*Complete Signal is On*)
		bUBA : BOOL := FALSE; (*Upstream is Available Signal*)
		bUBAStat : BOOL := FALSE; (*Upstream is Available Signal's State*)
		bTimerEnSen : BOOL; (*Timer Enable Sensor*)
		bTimerEnSenEdge : BOOL; (*Timer Enable Sensor Edge*)
		bVirtualEn : BOOL; (*Virtual Mode Enable*)
		bUBAVirtual : BOOL; (*Upstream Available Vritual Signal*)
		bUBAStatVirtual : BOOL; (*Upstream Available Vritual Signal's State*)
		tyParam : tySMEMAParam; (*SMEMA Parameter*)
		diTransferInTO : DINT := 20000; (*Transfer Out Timer On*)
		bDirLToR : BOOL := FALSE; (*Direction Left to Right*)
		tRstDlyTm : TIME := T#500ms; (*Reset Delay Timer*)
		tSigInChkTm : TIME := T#100ms; (*Signal In Check Timer*)
		sProgNm : STRING[15] := 'USSMEMA'; (*Program's Name*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek Parameter Settings Loading is Done*)
	END_STRUCT;
	tyUSSMEMAAOut1 : 	STRUCT 
		eStat : eBufferAction := BufferActIdle; (*Hardware Info's State*)
		eStatus : eFBStatus := Idle; (*Hardware Info's Status*)
		sStatTxt : STRING[200] := ''; (*Hardware Info's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		bUSRdy : BOOL := FALSE; (*Upstream is Ready*)
		bUSGdBrdRdy : BOOL := FALSE; (*Upstream Good Board is Ready*)
		bDSRdy : BOOL := FALSE; (*Downstream is Ready*)
		bTransporting : BOOL := FALSE; (*Is Transporting*)
		bConvStart : BOOL := FALSE; (*Converyor Starts*)
		bConvStop : BOOL := FALSE; (*Conveyor Stop*)
		bUSB : BOOL := FALSE; (*Upstream Busy Signal*)
		bTimer : BOOL; (*Timer is On*)
		bVirtual : BOOL; (*Virtual Mode is On*)
	END_STRUCT;
	tyDSSMEMA : 	STRUCT 
		In : tyDSSMEMAIn1;
		Out : tyDSSMEMAOut1;
	END_STRUCT;
	tyDSSMEMAIn1 : 	STRUCT 
		eAct : eSMEMAAction := SMEMAActIdle; (*DSSMEMA Act*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		bPrep : BOOL := TRUE; (*Project Preparation*)
		bEn : BOOL := TRUE; (*Enable*)
		bDis : BOOL := FALSE; (*Disable*)
		bGdBrd : BOOL := TRUE; (*Have Good Board*)
		bRdySend : BOOL := TRUE; (*Ready Send Signal*)
		bLeftSen : BOOL := FALSE; (*Left Sensor*)
		bRightSen : BOOL := FALSE; (*Right Sensor*)
		bComplSigOn : BOOL := FALSE; (*Complete Signal is On*)
		bDSB : BOOL := FALSE; (*Downstream Busy Signal*)
		bTimerEnSen : BOOL; (*Timer Enable Sensor*)
		bTimerEnSenEdge : BOOL; (*Timer Enable Sensor Edge*)
		bVirtualEn : BOOL; (*Virtual Mode Enable*)
		bDSBVirtual : BOOL; (*Downstream Busy Signal*)
		tyParam : tySMEMAParam; (*SMEMA Parameter*)
		diTransferOutTO : DINT := 20000;
		bDirLToR : BOOL := FALSE; (*Direction Left to Right*)
		tRstDlyTm : TIME := T#500ms; (*Reset Delay Timer*)
		tSigInChkTm : TIME := T#100ms; (*Signal In Check Timer*)
		sProgNm : STRING[15] := 'USSMEMA'; (*Program's Name*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek Parameter Settings Loading is Done*)
	END_STRUCT;
	tyDSSMEMAOut1 : 	STRUCT 
		eStat : eSMEMAAction := SMEMAActIdle; (*DSSMEMA's State*)
		eStatus : eFBStatus := Idle; (*DSSMEMA's Status*)
		sStatTxt : STRING[200] := ''; (*DSSMEMA's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		bUSRdy : BOOL := FALSE; (*Upstream is Ready*)
		bUSGdBrdRdy : BOOL := FALSE; (*Upstream Good Board is Ready*)
		bDSRdy : BOOL := FALSE; (*Downstream is Ready*)
		bTransporting : BOOL := FALSE; (*Is Transporting*)
		bConvStart : BOOL := FALSE; (*Conveyor Start*)
		bConvStop : BOOL := FALSE; (*Conveyor Stop*)
		bDBA : BOOL := FALSE; (*Downstream Available Signal*)
		bDBAStat : BOOL := FALSE; (*Downstream Avaialble Signal's State*)
		bTimer : BOOL; (*Timer is On*)
		bVirtual : BOOL; (*Virtual Mode is Mode*)
	END_STRUCT;
END_TYPE
