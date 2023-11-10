(** 2019-01-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	sProgNm	:= 'AGVMag 1';
	
	//Physical Configuration
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AGVMag1Stat			:= ADR(eStat);
	p_AGVMag1Status			:= ADR(eStatus);
	p_AGVMag1StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_AGVMag1AlmData		:= ADR(tyAlmData);
	
	//Output
	p_AGVMag1RdyEnter		:= ADR(bRdyEnt);
	p_AGVMag1RdyExit		:= ADR(bRdyExit);
	p_AGVMag1McRunRdy		:= ADR(bMcRunRdy);
	p_AGVMag1DTMagToAGV		:= ADR(tyDTMagToAGV);
	
	
	(* Always Change If Project Change *)
	
END_PROGRAM
