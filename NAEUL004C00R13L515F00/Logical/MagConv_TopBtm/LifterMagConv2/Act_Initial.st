(** 2019-05-28 **)
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
	
	fbClprClampChk.tTimeOut	:= p_tClprClampTO;
	fbClprClampChk(bEn := FALSE);
	
	fbClprUnclampChk.tTimeOut	:= p_tClprUnclampTO;
	fbClprUnclampChk(bEn := FALSE);
	
	fbClprDlyTm.PT	:= p_tMtrOffDlyTm / 2;
	fbClprDlyTm(IN := FALSE);
	
END_ACTION
