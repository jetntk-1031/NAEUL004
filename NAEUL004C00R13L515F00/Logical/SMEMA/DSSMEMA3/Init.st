(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMA3Stat		:= ADR(eStat);
	p_DSSMEMA3Status	:= ADR(eStatus);
	p_DSSMEMA3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMA3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMA3USRdy			:= ADR(bUSRdy);
	p_DSSMEMA3USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMA3DSRdy			:= ADR(bDSRdy);
	p_DSSMEMA3Transporting	:= ADR(bTransporting);
	p_DSSMEMA3ConvStart		:= ADR(bConvStart);
	p_DSSMEMA3ConvStop		:= ADR(bConvStop);
	p_DSSMEMA3DBA			:= ADR(bDBA);
	p_DSSMEMA3DBAStat		:= ADR(bDBAStat);
	p_DSSMEMA3Timer			:= ADR(bTimer);
	p_DSSMEMA3Virtual		:= ADR(bVirtual);
	
	//Svy Hermes 
	//p_DSSMEMA3TransprtFinished	:= ADR(bDSTransportFinished);
	(* Always Change If Project Change *)
	
END_PROGRAM
