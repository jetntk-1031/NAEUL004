(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSMEMABStat		:= ADR(eStat);
	p_USSMEMABStatus		:= ADR(eStatus);
	p_USSMEMABStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSMEMABAlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSMEMABUSRdy			:= ADR(bUSRdy);
	p_USSMEMABUSGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_USSMEMABDSRdy			:= ADR(bDSRdy);
	p_USSMEMABTransporting	:= ADR(bTransporting);
	p_USSMEMABConvStart		:= ADR(bConvStart);
	p_USSMEMABConvStop		:= ADR(bConvStop);
	p_USSMEMABUSB			:= ADR(bUSB);
	p_USSMEMABTimer			:= ADR(bTimer);
	p_USSMEMABVirtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
