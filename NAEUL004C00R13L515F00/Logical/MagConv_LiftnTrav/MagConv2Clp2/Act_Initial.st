(** 2019-10-30 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	
	fbInit.bStartSen	:= TRUE;
	fbInit(bEn := FALSE);
	fbEnt.bStartSen		:= TRUE;
	fbEnt(bEn := FALSE);
	fbPreExit.bStartSen		:= TRUE;
	fbPreExit(bEn := FALSE);
	fbExit.bStartSen	:= TRUE;
	fbExit(bEn := FALSE);
	fbExit1.bStartSen		:= TRUE;
	fbExit1(bEn := FALSE);
	fbStop(bEn := FALSE);
	fbFixClprClampChk(bEn := FALSE);
	fbFixClprUnclampChk(bEn := FALSE);
	fbRmtClprClampChk(bEn := FALSE);
	fbRmtClprUnclampChk(bEn := FALSE);
	fbClprDlyTm(IN := FALSE);
	
END_ACTION
