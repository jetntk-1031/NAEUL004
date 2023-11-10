(** 2019-05-07 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'MagazineRecipe';
	fbDirCreate2(bEn := FALSE);
	
	fbFileReadList.sDevice			:= 'MagRcp';
	fbFileReadList.sFile			:= p_sListFileName;
	fbFileReadList.udiOffset		:= 0;
	fbFileReadList.p_Dest			:= ADR(a_tyCurrList);
	fbFileReadList.udiLen			:= SIZEOF(a_tyCurrList);
	fbFileReadList(bEn := FALSE);
	
	fbFileWriteList.sDevice			:= 'MagRcp';
	fbFileWriteList.sFile			:= p_sListFileName;
	fbFileWriteList.udiOffset		:= 0;
	fbFileWriteList.p_Src			:= ADR(a_tyListTemp);
	fbFileWriteList.udiLen			:= SIZEOF(a_tyListTemp);
	fbFileWriteList.udiOption		:= 0;
	fbFileWriteList(bEn := FALSE);
	
	fbFileReadSingle.sDevice		:= 'MagRcp';
	fbFileReadSingle.sFile			:= p_sSingleFileName;
	fbFileReadSingle.udiOffset		:= 0;
	fbFileReadSingle.p_Dest			:= ADR(tyCurrRcp);
	fbFileReadSingle.udiLen			:= SIZEOF(tyCurrRcp);
	fbFileReadSingle(bEn := FALSE);
	
	fbFileLoadSingle.sDevice		:= 'MagRcp';
	fbFileLoadSingle.sFile			:= p_sSingleFileName;
	fbFileLoadSingle.udiOffset		:= 0;
	fbFileLoadSingle.p_Src			:= ADR(tyCurrRcp);
	fbFileLoadSingle.udiLen			:= SIZEOF(tyCurrRcp);
	fbFileLoadSingle.udiOption		:= 0;
	fbFileLoadSingle(bEn := FALSE);
	
	fbFileWriteSingle.sDevice		:= 'MagRcp';
	fbFileWriteSingle.sFile			:= p_sSingleFileName;
	fbFileWriteSingle.udiOffset		:= 0;
	fbFileWriteSingle.p_Src			:= ADR(p_tyCurrRcpWr);
	fbFileWriteSingle.udiLen		:= SIZEOF(p_tyCurrRcpWr);
	fbFileWriteSingle.udiOption		:= 0;
	fbFileWriteSingle(bEn := FALSE);
	
END_ACTION
