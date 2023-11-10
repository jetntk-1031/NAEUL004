(** 2019-01-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	sProgNm	:= 'AGVMag 3';
	
	//Physical Configuration
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AGVMag3Stat		:= ADR(eStat);
	p_AGVMag3Status		:= ADR(eStatus);
	p_AGVMag3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_AGVMag3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_AGVMag3RdyEnter		:= ADR(bRdyEnt);
	p_AGVMag3RdyExit		:= ADR(bRdyExit);
	p_AGVMag3McRunRdy		:= ADR(bMcRunRdy);
	p_AGVMag3DTMagToAGV		:= ADR(tyDTMagToAGV);
	
	
	(* Always Change If Project Change *)
	
END_PROGRAM
