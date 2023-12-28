(*2019-05-09*)
(**)
(*Action*)

TYPE
	eUsrFolderAction : 
		(
		UsrFolderActIdle,
		UsrFolderActCreateUsrDir,
		UsrFolderActCreatePrivateDir,
		UsrFolderActCreateLogDir,
		UsrFolderActCreateLCSDir
		);
	tyUsrFolder : 	STRUCT 
		In : tyUsrFolderIn1;
		Out : tyUsrFolderOut1;
	END_STRUCT;
	tyUsrFolderIn1 : 	STRUCT 
		eAct : eUsrFolderAction; (*User Folder's Action*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		sProgNm : STRING[15] := 'UsrFolder'; (*Program's Name*)
	END_STRUCT;
	tyUsrFolderOut1 : 	STRUCT 
		eStat : eUsrFolderAction := UsrFolderActIdle; (*User Folder's State*)
		eStatus : eFBStatus := Idle; (*User Folder's Status*)
		sStatTxt : STRING[200] := ''; (*User Folder's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
	END_STRUCT;
END_TYPE
