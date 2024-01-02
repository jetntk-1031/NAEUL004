(*2019-06-17*)
(**)
(*Action*)

TYPE
	eMtrPshrAction : 
		(
		MtrPshrActIdle,
		MtrPshrActExt,
		MtrPshrActRet,
		MtrPshrActStop,
		MtrPshrActSetExt,
		MtrPshrActRstExt,
		MtrPshrActSetRet,
		MtrPshrActRstRet,
		MtrPshrActSetSpdBit0,
		MtrPshrActRstSpdBit0,
		MtrPshrActSetSpdBit1,
		MtrPshrActRstSpdBit1,
		MtrPshrActSetSpdBit2,
		MtrPshrActRstSpdBit2,
		MtrPshrActSetSigOn,
		MtrPshrActRstSigOn,
		MtrPshrActSetBrake,
		MtrPshrActRstBrake,
		MtrPshrActSetAlmRst,
		MtrPshrActRstAlmRst,
		MtrPshrActSetAll,
		MtrPshrActRstAll
		);
	tyMtrPshr : 	STRUCT 
		In : tyMtrPshrIn1;
		Out : tyMtrPshrOut1;
	END_STRUCT;
	tyMtrPshrIn1 : 	STRUCT 
		eAct : eConvAction;
		udiRstErr : UDINT;
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
		bManual : BOOL;
		bDir : BOOL := FALSE;
		tAlmRstTm : TIME := T#1s;
		tAlmTrigTm : TIME := T#1s;
		tMtrBrkOffDlyTm : TIME := T#500ms;
		tExtTO : TIME := T#20s;
		tRetTO : TIME := T#20s;
		diExtSlowSpd : DINT;
		diRetSlowSpd : DINT;
		diExtNomSpd : {REDUND_UNREPLICABLE} DINT;
		diRetNomSpd : {REDUND_UNREPLICABLE} DINT;
		diExtTorque : DINT;
		diRetTorque : DINT;
		diStartTorque : DINT;
		bExtSen : BOOL;
		bRetSen : BOOL;
		bExtSlowSen : BOOL;
		bRetSlowSen : BOOL;
		bExtSafetySen : BOOL := TRUE;
		bRetSafetySen : BOOL := TRUE;
		bAlarmSig : BOOL;
		bTorqueSig : BOOL;
		bNtParamAutoRcpPrep : BOOL;
		bMcParamAutoRcpDis : BOOL;
		bLinkDISafetyRlySig : BOOL;
		bLinkPshrExtCtrl : BOOL;
		bLinkPshrRetCtrl : BOOL;
		bLinkAlarmSig : BOOL;
		sProgNm : STRING[15];
	END_STRUCT;
	tyMtrPshrOut1 : 	STRUCT 
		eStat : eMagConv2ClpAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bExtended : BOOL;
		bRetracted : BOOL;
		bCW : BOOL;
		bCCW : BOOL;
		bSpdBinBit0 : BOOL;
		bSpdBinBit1 : BOOL;
		bSpdBinBit2 : BOOL;
		bSigOn : BOOL;
		bBrake : BOOL;
		bAlmRst : BOOL;
	END_STRUCT;
END_TYPE
