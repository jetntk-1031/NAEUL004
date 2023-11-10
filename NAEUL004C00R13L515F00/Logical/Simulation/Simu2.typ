(*2018-12-11*)
(**)
(*Sequence*)
(*Display Buffer*)

TYPE
	tyDispBffrCycTm : 	STRUCT  (*Buffer Display in HMI*)
		diDispIdxSt : DINT; (*Start Index Display in HMI*)
		diDispIdxEnd : DINT; (*End Index Display in HMI*)
		a_tyDispBffrDat : ARRAY[1..c_diDispBffrSize]OF tyDispBffrCycTmDat; (*Array of Buffer Data Display in HMI*)
	END_STRUCT;
	tyDispBffrCycTmDat : 	STRUCT  (*Display Buffer Data*)
		sSlttoSltIdx : STRING[80]; (*Slot Index*)
		sCycleTm : STRING[80]; (*Board Loaded Time*)
		dwColor : DWORD; (*Color For Good & Bad Board*)
	END_STRUCT;
END_TYPE
