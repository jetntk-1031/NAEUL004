(*2018-12-07*)
(**)
(*Action*)

TYPE
	eLibVerAction : 
		(
		LibVerActIdle,
		LibVerActCreateDir,
		LibVerActWrite,
		LibVerActRead,
		LibVerActReadChk
		);
	tyLibVer : 	STRUCT 
		In : tyLibVerIn1;
		Out : tyLibVerOut1;
	END_STRUCT;
	tyLibVerIn1 : 	STRUCT 
		eAct : eLibVerAction; (*Library Version's Action*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		a_tyInfoIn : ARRAY[0..c_diLibNum]OF tyLibrariesVer; (*Info Input*)
		sProgNm : STRING[15] := 'LibVer'; (*Program's Name*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek Parameters Settings Loading is Done*)
	END_STRUCT;
	tyLibVerOut1 : 	STRUCT 
		eStat : eLibVerAction := LibVerActIdle; (*Library Version's State*)
		eStatus : eFBStatus := Idle; (*Library Versuib;s Status*)
		sStatTxt : STRING[200] := ''; (*Library Version's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		a_tyInfoOut : ARRAY[0..c_diLibNum]OF tyLibrariesVer; (*Info Output [Array]*)
		a_bVerMismatch : ARRAY[0..c_diLibNum]OF BOOL; (*Version Mismatch [Array]*)
	END_STRUCT;
END_TYPE
