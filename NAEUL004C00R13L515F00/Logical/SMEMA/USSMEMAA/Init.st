(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSMEMAAStat		:= ADR(eStat);
	p_USSMEMAAStatus		:= ADR(eStatus);
	p_USSMEMAAStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSMEMAAAlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSMEMAAUSRdy			:= ADR(bUSRdy);
	p_USSMEMAAUSGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_USSMEMAADSRdy			:= ADR(bDSRdy);
	p_USSMEMAATransporting	:= ADR(bTransporting);
	p_USSMEMAAConvStart		:= ADR(bConvStart);
	p_USSMEMAAConvStop		:= ADR(bConvStop);
	p_USSMEMAAUSB			:= ADR(bUSB);
	p_USSMEMAATimer			:= ADR(bTimer);
	p_USSMEMAAVirtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
