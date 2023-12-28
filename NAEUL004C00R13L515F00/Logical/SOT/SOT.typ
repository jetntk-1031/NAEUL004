(*2021-04-19*)
(**)
(*Action*)

TYPE
	eSOTAction : 
		(
		SOTActIdle,
		SOTActRun,
		SOTActSetSig,
		SOTActRstSig
		);
	tySOTstatus : 	STRUCT 
		tyBtnInPos : BOOL;
		tyBtnError : BOOL;
		tyBtnRdy : BOOL;
		tyBtnAvail : BOOL;
	END_STRUCT;
END_TYPE
