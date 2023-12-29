(** 2019-03-22 **)
ACTION Act_Initial:
	
	//Initial
	tylocalPshrConv.Out.sStatTxt	:= a_sStatText[eStat];
	
	fbWaitTm(IN := FALSE);
	
	
	fbInit.bStartSen	:= TRUE;
	fbInit(bEn := FALSE);
	
	
	fbEnt.bStartSen		:= TRUE;
	fbEnt(bEn := FALSE);
	
	
	
	fbRev(bEn := FALSE);
	
	
	fbPreExit.bStartSen		:= TRUE;
	fbPreExit(bEn := FALSE);
	
	
	fbExit.bStartSen	:= TRUE;
	fbExit(bEn := FALSE);
	
	
	fbExit1.bStartSen		:= TRUE;
	fbExit1(bEn := FALSE);
	
	fbStop(bEn := FALSE);
	
	
	fbPshrExtChk(bEn := FALSE);
	
	
	fbPshrRetChk(bEn := FALSE);
	
	
	fbPullerExtChk(bEn := FALSE);
	
	
	fbPullerRetChk(bEn := FALSE);
	
	
	fbRotHomeChk(bEn := FALSE);
	
	
	fbRotRemoteChk(bEn := FALSE);
	
	
	fbRejectUpChk(bEn := FALSE);
	
	
	fbRejectDownChk(bEn := FALSE);
	
END_ACTION
