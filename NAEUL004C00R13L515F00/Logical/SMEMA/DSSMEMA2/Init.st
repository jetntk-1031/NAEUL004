(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMA2Stat		:= ADR(eStat);
	p_DSSMEMA2Status	:= ADR(eStatus);
	p_DSSMEMA2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMA2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMA2USRdy			:= ADR(bUSRdy);
	p_DSSMEMA2USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMA2DSRdy			:= ADR(bDSRdy);
	p_DSSMEMA2Transporting	:= ADR(bTransporting);
	p_DSSMEMA2ConvStart		:= ADR(bConvStart);
	p_DSSMEMA2ConvStop		:= ADR(bConvStop);
	p_DSSMEMA2DBA			:= ADR(bDBA);
	p_DSSMEMA2DBAStat		:= ADR(bDBAStat);
	p_DSSMEMA2Timer			:= ADR(bTimer);
	p_DSSMEMA2Virtual		:= ADR(bVirtual);
	
	//Svy Hermes 
	//p_DSSMEMA2TransprtFinished	:= ADR(bDSTransportFinished);
	(* Always Change If Project Change *)
	
END_PROGRAM
