(** 2021-04-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSOT3Stat		:= ADR(eStat);
	p_DSSOT3Status		:= ADR(eStatus);
	p_DSSOT3StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_DSSOT3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSOT3USRdy			:= ADR(bUSRdy);
	p_DSSOT3DSRdy			:= ADR(bDSRdy);
	p_DSSOT3Transporting	:= ADR(bTransporting);
	p_DSSOT3ConvStart		:= ADR(bConvStart);
	p_DSSOT3ConvStop		:= ADR(bConvStop);
	p_DSSOT3DBA				:= ADR(bDBA);
	p_DSSOT3Virtual			:= ADR(bVirtual);
	p_DSSOT3MagSizeLarge	:= ADR(bDSMagSizeLarge);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
