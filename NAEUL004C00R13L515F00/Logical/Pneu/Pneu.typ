(*2018-12-11*)
(**)
(*Action*)

TYPE
	ePneuAction : 
		(
		PneuActIdle,
		PneuActSetAll,
		PneuActRstAll,
		PneuActSetExt,
		PneuActSetRet,
		PneuActExt,
		PneuActRet,
		PneuActExtSenToMidSen,
		PneuActMidSenToRetSen,
		PneuActRetSenToMidSen,
		PneuActMidSenToExtSen
		);
	tyPneu : 	STRUCT 
		In : tyPneuIn1;
		Out : tyPneuOut1;
	END_STRUCT;
	tyPneuIn1 : 	STRUCT 
		eAct : ePneuAction := PneuActIdle; (*Enum for Actions*)
		udiRstErr : UDINT := 0; (*Reset error*)
		bPrep : BOOL := TRUE; (*Preparation*)
		bEn : BOOL := TRUE; (*Enable*)
		bDis : BOOL := FALSE; (*Disable*)
		bExtSen : BOOL := FALSE; (*Extend sensor*)
		bRetSen : BOOL := FALSE; (*Retract sensor*)
		bMidSen : BOOL := FALSE; (*Middle sensor*)
		bSafetyRelaySig : BOOL := FALSE; (*Safety Relay Signal*)
		bExtSafetySen : BOOL := TRUE; (*Extend safety sensor*)
		bRetSafetySen : BOOL := TRUE; (*Retract safety sensor*)
		bOps : BOOL := FALSE; (*Operation Mode Control*)
		bUISimu : BOOL;
		bSimu : BOOL;
		bManual : BOOL := FALSE; (*Manual mode control*)
		bTwoCtrlIn : BOOL := FALSE; (*Two way control input*)
		sProgNm : STRING[15] := 'Pneu2Sen'; (*Program title name*)
		tExtTO : TIME := T#20s; (*Extend timer*)
		tRetTO : TIME := T#20s; (*Retract timer*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek settings load done*)
		tExtDlyTm : TIME := T#1s; (*Extend delay time*)
		tRetDlyTm : TIME := T#1s; (*Retract delay time*)
		ePneuSel : ePneuSel1;
		bLinkDIConvClrSen : BOOL;
		bConvPusherReachedRetSlw : BOOL;
		bLinkDIPusherRetRS : BOOL;
		eLinkLifterBtmStat : eLifterAction;
		eLinkLifterBtmStatus : eFBStatus;
		eLinkLifter2Stat : eLifterAction;
		eLinkLifter2Status : eFBStatus;
		bNtParamProjLifter2Prep : BOOL;
		bMagRcpCurrRcpSBarDisabled : REFERENCE TO BOOL;
	END_STRUCT;
	tyPneuOut1 : 	STRUCT 
		bExtCtrl : BOOL; (*Extend control*)
		bRetCtrl : BOOL; (*Retract control*)
		bExtended : BOOL;
		bRetracted : BOOL;
		bTwoCtrlOut : BOOL := FALSE; (*Two way control output*)
		eStat : ePneuAction := PneuActIdle; (*Enum for Actions.*)
		eStatus : eFBStatus := Idle; (*Status*)
		sStatTxt : STRING[200] := ''; (*Status/ alarm message*)
		tyAlmData : tyAlmDat; (*Alarm data structure type.*)
	END_STRUCT;
	ePneuSel1 : 
		(
		PneuNoSen := 0,
		PneuExtSen := 1,
		PneuRetSen := 2,
		Pneu2Sen := 3,
		Pneu3Sen := 4
		);
END_TYPE
