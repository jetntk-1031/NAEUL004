(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USSMEMA1Stat		:= ADR(eStat);
	p_USSMEMA1Status	:= ADR(eStatus);
	p_USSMEMA1StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USSMEMA1AlmData	:= ADR(tyAlmData);
	
	//Output
	p_USSMEMA1USRdy			:= ADR(bUSRdy);
	p_USSMEMA1USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_USSMEMA1DSRdy			:= ADR(bDSRdy);
	p_USSMEMA1Transporting	:= ADR(bTransporting);
	p_USSMEMA1ConvStart		:= ADR(bConvStart);
	p_USSMEMA1ConvStop		:= ADR(bConvStop);
	p_USSMEMA1USB			:= ADR(bUSB);
	p_USSMEMA1Timer			:= ADR(bTimer);
	p_USSMEMA1Virtual		:= ADR(bVirtual);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
