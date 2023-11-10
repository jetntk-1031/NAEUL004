(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSOT3Stat		:= ADR(eStat);
	p_USSOT3Status	:= ADR(eStatus);
	p_USSOT3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSOT3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSOT3USRdy			:= ADR(bUSRdy);
	p_USSOT3USLargeMagRdy	:= ADR(bUSLargeMagRdy);
	p_USSOT3DSRdy			:= ADR(bDSRdy);
	p_USSOT3Transporting	:= ADR(bTransporting);
	p_USSOT3ConvStart		:= ADR(bConvStart);
	p_USSOT3ConvStop		:= ADR(bConvStop);
	p_USSOT3USB				:= ADR(bUSB);
	p_USSOT3Virtual			:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
