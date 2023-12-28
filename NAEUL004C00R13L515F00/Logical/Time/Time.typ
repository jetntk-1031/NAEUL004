
TYPE
	eTimeAction : 
		(
		TimeActIdle,
		TimeActGetTime,
		TimeActGetTimeZone,
		TimeActSetTime,
		TimeActSetTimeZone
		);
	tyTime : 	STRUCT 
		In : tyTimeIn1;
		Out : tyTimeOut1;
	END_STRUCT;
	tyTimeIn1 : 	STRUCT 
		eAct : eTimeAction; (*Time's Action*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		dtSetDT : DATE_AND_TIME; (*Set Date Time*)
		uiSetTimeZone : UINT; (*Set Time Zone*)
		sProgNm : STRING[15] := 'Time'; (*Program's Name*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek Parameter Setting Loading is Done*)
	END_STRUCT;
	tyTimeOut1 : 	STRUCT 
		eStat : eTimeAction := TimeActIdle; (*Time's State*)
		eMainStatus : eFBStatus := Idle; (*Time's Status*)
		sStatTxt : STRING[200] := ''; (*Time's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		tyAlmData1 : tyAlmDat; (*Alarm Data 1*)
		dtCurrDT : DATE_AND_TIME; (*Current Date Time*)
		uiCurrTimeZone : UINT; (*Current Time Zone*)
		tyCurrDTStruct : DTStructure; (*Current Date Time Structure*)
	END_STRUCT;
END_TYPE
