(** 2019-06-10 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[tylocalProdRcp.Out.eStat];
	
	//Initial Addressing
	p_eAct ACCESS ADR (eAct);
	p_tyInfoIn ACCESS ADR(tyInfoIn);
	p_tyCurrRcpWr ACCESS ADR(tyCurrRcpWr);
	p_udiMax ACCESS ADR(c_udiProdRcpMax);
	
	fbDirCreate1.sDevice	:= 'C';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'ProductRecipe';
	fbDirCreate2(bEn := FALSE);
	
	fbFileReadList.sDevice		:= 'ProdRcp';
	fbFileReadList.sFile		:= g_tyNtParamCurr.sProdRcpListFileNm;
	fbFileReadList.udiOffset	:= 0;
	fbFileReadList.p_Dest		:= ADR(a_tyCurrList);
	fbFileReadList.udiLen		:= SIZEOF(a_tyCurrList);
	fbFileReadList(bEn := FALSE);
	
	fbFileWriteList.sDevice		:= 'ProdRcp';
	fbFileWriteList.sFile		:= g_tyNtParamCurr.sProdRcpListFileNm;
	fbFileWriteList.udiOffset	:= 0;
	fbFileWriteList.p_Src		:= ADR(a_tyListTemp);
	fbFileWriteList.udiLen		:= SIZEOF(a_tyListTemp);
	fbFileWriteList.udiOption	:= 0;
	fbFileWriteList(bEn := FALSE);
	
	fbFileReadSingle.sDevice	:= 'ProdRcp';
	fbFileReadSingle.sFile		:= g_tyNtParamCurr.sProdRcpSingleFileNm;
	fbFileReadSingle.udiOffset	:= 0;
	fbFileReadSingle.p_Dest		:= ADR(a_tyCurrRcp[0]);
	fbFileReadSingle.udiLen		:= SIZEOF(a_tyCurrRcp[0]);
	fbFileReadSingle(bEn := FALSE);
	
	fbFileLoadSingle.sDevice	:= 'ProdRcp';
	fbFileLoadSingle.sFile		:= g_tyNtParamCurr.sProdRcpSingleFileNm;
	fbFileLoadSingle.udiOffset	:= 0;
	fbFileLoadSingle.p_Src		:= ADR(a_tyCurrRcp[0]);
	fbFileLoadSingle.udiLen		:= SIZEOF(a_tyCurrRcp[0]);
	fbFileLoadSingle.udiOption	:= 0;
	fbFileLoadSingle(bEn := FALSE);
	
	fbFileWriteSingle.sDevice	:= 'ProdRcp';
	fbFileWriteSingle.sFile		:= g_tyNtParamCurr.sProdRcpSingleFileNm;
	fbFileWriteSingle.udiOffset	:= 0;
	fbFileWriteSingle.p_Src		:= ADR(p_tyCurrRcpWr);
	fbFileWriteSingle.udiLen	:= SIZEOF(p_tyCurrRcpWr);
	fbFileWriteSingle.udiOption	:= 0;
	fbFileWriteSingle(bEn := FALSE);
	
END_ACTION
