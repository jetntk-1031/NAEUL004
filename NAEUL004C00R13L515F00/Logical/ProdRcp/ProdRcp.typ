(*2020-07-24*)
(**)
(*Action*)

TYPE
	eProdRcpAction : 
		(
		ProdRcpActIdle,
		ProdRcpActCreateDir,
		ProdRcpActAddEdit,
		ProdRcpActDel,
		ProdRcpActGetInfo,
		ProdRcpActGetList,
		ProdRcpActFilter,
		ProdRcpActLoadRcp,
		ProdRcpActAdd,
		ProdRcpActEdit,
		ProdRcpActReadCurrRcp,
		ProdRcpActWriteCurrRcpParam,
		ProdRcpActSaveList,
		ProdRcpActSort,
		ProdRcpActEndCharFilter
		);
END_TYPE

(**)
(*Data*)

TYPE
	tyProdRcpParam : 	STRUCT 
		sRcpNm : STRING[254];
		diWidthInUM : DINT;
		diWidthInUM2 : DINT;
		diIntvlCntr : DINT;
		diMinSltValue : DINT;
		diMaxSltValue : DINT;
		diPitch : DINT;
		diBrdPerSlt : DINT;
		usiMcMod : USINT;
		bTopToBtm : BOOL;
		bGapBwtnBrd : BOOL;
		bLongBrd : BOOL;
		diMinReqFreeBffr : DINT;
		sDisplayInfo : STRING[30];
		dtLastModified : DATE_AND_TIME;
		diMtrPshrExtSpd : DINT;
		diMtrPshrExtTorq : DINT;
		diPshrOffset : DINT;
	END_STRUCT;
END_TYPE
