(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	tyParam.eSelection	:= SMEMASelIPC9851;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_DSSMEMA1Stat		:= ADR(eStat);
	p_DSSMEMA1Status	:= ADR(eStatus);
	p_DSSMEMA1StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_DSSMEMA1AlmData	:= ADR(tyAlmData);
	
	//Output
	p_DSSMEMA1USRdy			:= ADR(bUSRdy);
	p_DSSMEMA1USGdBrdRdy	:= ADR(bUSGdBrdRdy);
	p_DSSMEMA1DSRdy			:= ADR(bDSRdy);
	p_DSSMEMA1Transporting	:= ADR(bTransporting);
	p_DSSMEMA1ConvStart		:= ADR(bConvStart);
	p_DSSMEMA1ConvStop		:= ADR(bConvStop);
	p_DSSMEMA1DBA			:= ADR(bDBA);
	p_DSSMEMA1DBAStat		:= ADR(bDBAStat);
	p_DSSMEMA1Timer			:= ADR(bTimer);
	p_DSSMEMA1Virtual		:= ADR(bVirtual);
	
	//Svy Hermes 
//	p_DSSMEMA1TransprtFinished	:= ADR(bDSTransportFinished);
	
	(* Always Change If Project Change *)
	
END_PROGRAM
