(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSOT1Stat		:= ADR(eStat);
	p_DSSOT1Status		:= ADR(eStatus);
	p_DSSOT1StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_DSSOT1AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSOT1USRdy			:= ADR(bUSRdy);
	p_DSSOT1DSRdy			:= ADR(bDSRdy);
	p_DSSOT1Transporting	:= ADR(bTransporting);
	p_DSSOT1ConvStart		:= ADR(bConvStart);
	p_DSSOT1ConvStop		:= ADR(bConvStop);
	p_DSSOT1DBA				:= ADR(bDBA);
	p_DSSOT1Virtual			:= ADR(bVirtual);
	p_DSSOT1MagSizeLarge	:= ADR(bDSMagSizeLarge);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
