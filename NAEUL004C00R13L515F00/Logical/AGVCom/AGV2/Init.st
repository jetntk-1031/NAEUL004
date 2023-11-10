(** 2019-01-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	sProgNm	:= 'AGVMag 2';
	
	//Physical Configuration
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AGVMag2Stat				:= ADR(eStat);
	p_AGVMag2Status				:= ADR(eStatus);
	p_AGVMag2StatTxt			:= ADR(sStatTxt);
	
	//Alarm
	p_AGVMag2AlmData			:= ADR(tyAlmData);
	
	//Output
	p_AGVMag2RdyEnter			:= ADR(bRdyEnt);
	p_AGVMag2RdyExit			:= ADR(bRdyExit);
	p_AGVMag2McRunRdy			:= ADR(bMcRunRdy);
	p_AGVMag2DTMagToAGV			:= ADR(tyDTMagToAGV);
	
	
	(* Always Change If Project Change *)
	
END_PROGRAM
