(** 2019-10-30 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbInit.bOnDirMod	:= p_bOnDirMod;
	fbInit.bStartSen	:= TRUE;
	fbInit.tMtrOffDlyTm	:= p_tMtrOffDlyTm;
	fbInit(bEn := FALSE);
	
	fbEnt.bOnDirMod		:= p_bOnDirMod;
	fbEnt.bStartSen		:= TRUE;
	fbEnt.tMtrOffDlyTm	:= p_tMtrOffDlyTm;
	fbEnt(bEn := FALSE);
	
	fbPreExit.bOnDirMod		:= p_bOnDirMod;
	fbPreExit.bStartSen		:= TRUE;
	fbPreExit.tMtrOffDlyTm	:= p_tMtrOffDlyTm;
	fbPreExit(bEn := FALSE);
	
	fbExit.bOnDirMod	:= p_bOnDirMod;
	fbExit.bStartSen	:= TRUE;
	fbExit.tMtrOffDlyTm	:= p_tMtrOffDlyTm;
	fbExit(bEn := FALSE);
	
	fbExit1.bOnDirMod		:= p_bOnDirMod;
	fbExit1.bStartSen		:= TRUE;
	fbExit1.tMtrOffDlyTm	:= p_tMtrOffDlyTm;
	fbExit1(bEn := FALSE);
	
	fbStop(bEn := FALSE);
	
	fbFixClprClampChk.tTimeOut	:= p_tClprClampTO;
	fbFixClprClampChk(bEn := FALSE);
	
	fbFixClprUnclampChk.tTimeOut	:= p_tClprUnclampTO;
	fbFixClprUnclampChk(bEn := FALSE);
	
	fbRmtClprClampChk.tTimeOut	:= p_tClprClampTO;
	fbRmtClprClampChk(bEn := FALSE);
	
	fbRmtClprUnclampChk.tTimeOut	:= p_tClprUnclampTO;
	fbRmtClprUnclampChk(bEn := FALSE);
	
	//Added
	fbFixClprUnclampChk1.tTimeOut := p_tClprClampTO;
	fbFixClprUnclampChk(bEn := FALSE);
	fbRmtClprUnclampChk1.tTimeOut := p_tClprUnclampTO;
	fbRmtClprUnclampChk1(bEn := FALSE);
	
	fbClprDlyTm.PT	:= p_tMtrOffDlyTm / 2;
	fbClprDlyTm(IN := FALSE);
	
END_ACTION
