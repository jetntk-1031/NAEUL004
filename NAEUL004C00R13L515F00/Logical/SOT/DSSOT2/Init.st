(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSOT2Stat		:= ADR(eStat);
	p_DSSOT2Status		:= ADR(eStatus);
	p_DSSOT2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_DSSOT2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSOT2USRdy			:= ADR(bUSRdy);
	p_DSSOT2DSRdy			:= ADR(bDSRdy);
	p_DSSOT2Transporting	:= ADR(bTransporting);
	p_DSSOT2ConvStart		:= ADR(bConvStart);
	p_DSSOT2ConvStop		:= ADR(bConvStop);
	p_DSSOT2DBA				:= ADR(bDBA);
	p_DSSOT2Virtual			:= ADR(bVirtual);
	p_DSSOT2MagSizeLarge	:= ADR(bDSMagSizeLarge);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
