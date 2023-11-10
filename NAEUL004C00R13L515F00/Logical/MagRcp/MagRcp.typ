(*2020-07-24*)
(**)
(*Action*)

TYPE
	eMagRcpAction : 
		(
		MagRcpActIdle,
		MagRcpActCreateDir,
		MagRcpActAddEdit,
		MagRcpActDel,
		MagRcpActGetInfo,
		MagRcpActGetList,
		MagRcpActFilter,
		MagRcpActReadCurrRcp,
		MagRcpActLoadRcp,
		MagRcpActWriteCurrRcpParam,
		MagRcpActSaveList,
		MagRcpActSort
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyMagRcpParam : 	STRUCT 
		sRcpNm : STRING[30];
		diTtlSlt : DINT;
		diSltToSltInUM : DINT;
		diMag1Slt1PosInUM : DINT;
		diMag2Slt1PosInUM : DINT;
		diMag3Slt1PosInUM : DINT;
		diMag1TravPosInUM : DINT;
		diMag2TravPosInUM : DINT;
		diMag3TravPosInUM : DINT;
		usiMagModel : USINT;
		sDisplayInfo : STRING[30];
		diMagMaxBrdWidth : DINT;
		dtLastModified : DATE_AND_TIME;
		bSafetyBarDisabled : BOOL;
		bMagHeightChkEn : BOOL;
	END_STRUCT;
END_TYPE
