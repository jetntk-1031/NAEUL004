(** 2019-01-15 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'MachineParameter';
	fbDirCreate2(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'McParam';
	fbFileRead1.sFile			:= g_tyNtParamCurr.sMcParamFileNm;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(tyMcParamCurr);
	fbFileRead1.udiLen			:= SIZEOF(tyMcParamCurr);
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'McParam';
	fbFileWrite1.sFile			:= g_tyNtParamCurr.sMcParamFileNm;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(tylocalMcParam.In.tyMcParmWr);
	fbFileWrite1.udiLen			:= SIZEOF(tylocalMcParam.In.tyMcParmWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	fbFileWrite2.sDevice		:= 'McParam';
	fbFileWrite2.sFile			:= g_tyNtParamCurr.sMcParamFileNm;
	fbFileWrite2.udiOffset		:= 0;
	fbFileWrite2.p_Src			:= ADR(tyMcParamTemp);
	fbFileWrite2.udiLen			:= SIZEOF(tyMcParamTemp);
	fbFileWrite2.udiOption		:= 0;
	fbFileWrite2(bEn := FALSE);
	
	
	sVNCAddrNodeID := '54267'; // HMI VNC's IP Address Node ID
	sHMIAddrNodeID := '54248'; // HMI Network's IP Address Node ID
	sObjIDNodeID := '54159'; // HMI MethodSet's Node ID
	sSaveCfgNodeID := '54322'; // HMI Save Method's Node ID
	sLoadCfgNodeID := '54321'; // HMI Load Method's Node ID

	uiNSIdx := 4;
	fbConnectOPCUA.tyOPCUAParam.sPort := '4841';
	fbConnectOPCUA(bEn := FALSE);
	fbReadGetNodeHdlList.usiNSIdx := uiNSIdx;
	fbReadGetNodeHdlList.uiTagNmCnt := 2;
	fbReadGetNodeHdlList.a_sServerTagNm[0] := sVNCAddrNodeID;
	fbReadGetNodeHdlList.a_sServerTagNm[1] := sHMIAddrNodeID;
	fbReadGetNodeHdlList(bEn := FALSE);
	fbReadList.uiTagNmCnt := 2;
	fbReadList(bEn := FALSE);

	fbWriteGetNodeHdlList.usiNSIdx := uiNSIdx;
	fbWriteGetNodeHdlList.uiTagNmCnt := 2;
	fbWriteGetNodeHdlList.a_sServerTagNm[0] := sVNCAddrNodeID;
	fbWriteGetNodeHdlList.a_sServerTagNm[1] := sHMIAddrNodeID;
	fbWriteGetNodeHdlList(bEn := FALSE);
	fbWriteList.uiTagNmCnt := 2;
	fbWriteList(bEn := FALSE);

	fbSaveCfgMethodGetHdl.uiNSIdx := uiNSIdx;
	fbSaveCfgMethodGetHdl.sObjectIdentifier := sObjIDNodeID;
	fbSaveCfgMethodGetHdl.sMethodIdentifier := sSaveCfgNodeID;
	fbSaveCfgMethodGetHdl(bEn := FALSE);
	fbSaveCfgMethodCall(bEn := FALSE);

	fbLoadCfgMethodGetHdl.uiNSIdx := uiNSIdx;
	fbLoadCfgMethodGetHdl.sObjectIdentifier := sObjIDNodeID;
	fbLoadCfgMethodGetHdl.sMethodIdentifier := sLoadCfgNodeID;
	fbLoadCfgMethodGetHdl(bEn := FALSE);
	fbLoadCfgMethodCall(bEn := FALSE);
	
	fbDisconnectOPCUA(bEn := FALSE);
END_ACTION
