(*2019-02-18*)
(**)
(*Action*)

TYPE
	eBufferAction : 
		(
		BufferActIdle,
		BufferActCreateDir,
		BufferActGetRetainBffr,
		BufferActSetFull,
		BufferActSetMty,
		BufferActLoad,
		BufferActLoadSltChk,
		BufferActUnload,
		BufferActUnloadSltChk,
		BufferActUnloadCoolChk,
		BufferActUnloadSltChkCoolChk,
		BufferActNxtLoad,
		BufferActNxtLoadGd,
		BufferActNxtLoadBad,
		BufferActNxtUnload,
		BufferActNxtUnloadGd,
		BufferActNxtUnloadBad,
		BufferActChkCoolTm,
		BufferActChkCoolBrdAny,
		BufferActChkCoolBrdGd,
		BufferActChkCoolBrdBad,
		BufferActRstBffr,
		BufferActSetCoolFan,
		BufferActRstCoolFan,
		BufferActBGStartBffrSetFull,
		BufferActBGStartBffrSetMty,
		BufferActBGStopBffrSet,
		BufferActBGStartUpdtSen,
		BufferActBGStopUpdtSen,
		BufferActBGStartUpdtDisplay,
		BufferActBGStopUpdtDisplay,
		BufferActBGStartCoolFan,
		BufferActBGStopCoolFan
		);
	tyBuffer1 : 	STRUCT 
		In : tyBufferIn1;
		Out : tyBufferOut1;
	END_STRUCT;
	tyBufferIn1 : 	STRUCT 
		eAct : eBufferAction; (*Hardware Info's Action*)
		udiRstErr : UDINT;
		sFileName : STRING[80];
		bManual : BOOL;
		dtCurrDT : DATE_AND_TIME;
		diMinSlt : DINT;
		diMaxSlt : DINT;
		diPitch : DINT;
		diSltCap : DINT;
		diBffrTtlSlt : DINT;
		diCoolTm : DINT;
		diSltToSltInUM : DINT;
		diLifterBtmPosInUM : DINT;
		diLifterCurrPosInUM : DINT;
		bAscending : BOOL;
		bFIFO : BOOL;
		bGdBrdIn : BOOL;
		bGdBrdReq : BOOL;
		bNxtLoadSeq : BOOL;
		a_bSkip : ARRAY[1..c_diBffrSize]OF BOOL;
		diCoolFanOffDlyTm : DINT;
		bMagPresentSensor : BOOL;
		bPrepCoolFan : BOOL;
		bCoolFanTm : BOOL;
		tyBufferStat : tyBffrStat;
		sBffrNm : STRING[15];
		sProdNm : STRING[15];
		sBarcode1 : STRING[80];
		sBarcode2 : STRING[80];
		sCurrRcpNm : STRING[15];
		sProgNm : STRING[15];
		bNtSettingsLoadDone : BOOL;
		bNtParamAutoRcpPrep : BOOL;
		bMcParamAutoRcpDis : BOOL;
		bOpsMagConvULRlsMagAllw : BOOL;
		eNtParamCustomerReq : eCustomer;
		tyResponseFromMES : tyStatPlatformFromMES;
		diLinkSltToSltDist : REFERENCE TO DINT;
		bLinkMcParamProdSelTopToBtm : REFERENCE TO BOOL;
		bLinkPresentSen1 : BOOL;
		bLinkPresentSen2 : BOOL;
		bLinkOpsTravLifULExitBrd : REFERENCE TO BOOL;
	END_STRUCT;
	tyBufferOut1 : 	STRUCT 
		eStat : eBufferAction := BufferActIdle; (*Hardware Info's State*)
		eStatus : eFBStatus := Idle; (*Hardware Info's Status*)
		sStatTxt : STRING[200] := ''; (*Hardware Info's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		diNxtLoadSlt : DINT;
		diNxtUnloadSlt : DINT;
		diCoolBrdAny : DINT;
		diCoolBrdGd : DINT;
		diCoolBrdBad : DINT;
		bCoolNotRdy : BOOL;
		tyBuffer : tyBffr;
		tyDispBuffer : tyDispBffr;
		tyBufferStat : tyBffrStat;
		tyBoardUnloadStat : tyBrdUnloadStat;
		bCoolFanCtrl : BOOL;
		bParamDiff : BOOL;
		bMagRemoved : BOOL;
		bFIFOOld : BOOL;
		bMagPresent : BOOL;
		dtMagPresentTm : DATE_AND_TIME;
		diCurrSlt : DINT;
	END_STRUCT;
END_TYPE

(* *)

TYPE
	tyBufferMag : 	STRUCT 
		In : tyBufferMagIn1;
		Out : tyBufferMagOut1;
	END_STRUCT;
	tyBufferMagIn1 : 	STRUCT 
		eAct : eBufferAction; (*Hardware Info's Action*)
		udiRstErr : UDINT;
		bOpsStatusRun : BOOL;
		bBufferMagPresent1 : BOOL;
		bBufferMagPresent2 : BOOL;
		bBufferMagPresent3 : BOOL;
		bDIMagPresentSen1 : BOOL;
		bDIMagPresentSen2 : BOOL;
		bDIMagPresentSen3 : BOOL;
		tyBufferStat1 : tyBffrStat;
		tyBufferStat2 : tyBffrStat;
		tyBufferStat3 : tyBffrStat;
		bNtParamAutoRcpPrep : BOOL;
		bMcParamAutoRcpDis : BOOL;
		eNtParamMag : eULMag;
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
		usiProRcpProdSelMcMod : REFERENCE TO USINT;
	END_STRUCT;
	tyBufferMagOut1 : 	STRUCT 
		eStat : eBufferAction := BufferActIdle; (*Hardware Info's State*)
		eStatus : eFBStatus := Idle; (*Hardware Info's Status*)
		sStatTxt : STRING[200] := ''; (*Hardware Info's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		diBffrMtySlt : DINT;
	END_STRUCT;
END_TYPE
