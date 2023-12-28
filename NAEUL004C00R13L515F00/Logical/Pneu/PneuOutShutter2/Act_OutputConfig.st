ACTION Act_OutputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Pneu2SenOutShutterStat2		:= ADR(eStat);
	p_Pneu2SenOutShutterStatus2		:= ADR(eStatus);
	p_Pneu2SenOutShutterStatTxt2	:= ADR(sStatTxt);
	
	//Alarm
	p_Pneu2SenOutShutterAlmData2	:= ADR(tyAlmData);
	
	//Output
	p_Pneu2SenOutShutterExtCtrl2	:= ADR(bExtCtrl);
	p_Pneu2SenOutShutterRetCtrl2	:= ADR(bRetCtrl);
	p_Pneu2SenOutShutterTwoCtrlOut2	:= ADR(bTwoCtrlOut);
	p_Pneu2SenOutShutterExtended2	:= ADR(bExtended);
	p_Pneu2SenOutShutterRetracted2	:= ADR(bRetracted);
	

	
END_ACTION