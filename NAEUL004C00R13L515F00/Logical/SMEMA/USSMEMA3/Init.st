(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSMEMA3Stat		:= ADR(eStat);
	p_USSMEMA3Status	:= ADR(eStatus);
	p_USSMEMA3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSMEMA3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSMEMA3USRdy			:= ADR(bUSRdy);
	p_USSMEMA3USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_USSMEMA3DSRdy			:= ADR(bDSRdy);
	p_USSMEMA3Transporting	:= ADR(bTransporting);
	p_USSMEMA3ConvStart		:= ADR(bConvStart);
	p_USSMEMA3ConvStop		:= ADR(bConvStop);
	p_USSMEMA3USB			:= ADR(bUSB);
	p_USSMEMA3Timer			:= ADR(bTimer);
	p_USSMEMA3Virtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
