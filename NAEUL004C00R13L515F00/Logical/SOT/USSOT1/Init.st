(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSOT1Stat		:= ADR(eStat);
	p_USSOT1Status	:= ADR(eStatus);
	p_USSOT1StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSOT1AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSOT1USRdy			:= ADR(bUSRdy);
	p_USSOT1USLargeMagRdy	:= ADR(bUSLargeMagRdy);
	p_USSOT1DSRdy			:= ADR(bDSRdy);
	p_USSOT1Transporting	:= ADR(bTransporting);
	p_USSOT1ConvStart		:= ADR(bConvStart);
	p_USSOT1ConvStop		:= ADR(bConvStop);
	p_USSOT1USB				:= ADR(bUSB);
	p_USSOT1Virtual			:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
