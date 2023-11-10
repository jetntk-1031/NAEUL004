(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSOT2Stat		:= ADR(eStat);
	p_USSOT2Status	:= ADR(eStatus);
	p_USSOT2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSOT2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSOT2USRdy			:= ADR(bUSRdy);
	p_USSOT2USLargeMagRdy	:= ADR(bUSLargeMagRdy);
	p_USSOT2DSRdy			:= ADR(bDSRdy);
	p_USSOT2Transporting	:= ADR(bTransporting);
	p_USSOT2ConvStart		:= ADR(bConvStart);
	p_USSOT2ConvStop		:= ADR(bConvStop);
	p_USSOT2USB				:= ADR(bUSB);
	p_USSOT2Virtual			:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
