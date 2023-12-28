
TYPE
	eRstErrAction : 
		(
		RstErrActIdle,
		RstErrActRun,
		RstErrActSetSafetyRlyRst,
		RstErrActRstSafetyRlyRst
		);
	tyRstErrIn1 : 	STRUCT 
		eAct : eRstErrAction; (*Reset Error's Action*)
		bSafetyRlySig : BOOL; (*Safety Relay Signal*)
		bManual : BOOL := FALSE; (*Manual Mode*)
	END_STRUCT;
	tyRstErrOut1 : 	STRUCT 
		eStat : eRstErrAction := RstErrActIdle; (*Reset Error's State*)
		eStatus : eFBStatus := Idle; (*Reset Error's Status*)
		sStatTxt : STRING[200] := ''; (*Reset Error's State in Text*)
		udiRstErr : UDINT; (*Reset Error*)
		bSafetyRlyRst : BOOL; (*Safety Relay Reset*)
	END_STRUCT;
	tyRstErr : 	STRUCT 
		In : tyRstErrIn1;
		Out : tyRstErrOut1;
	END_STRUCT;
END_TYPE
