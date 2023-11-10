(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bNoIndexPulse	:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagAWOpen3Stat	:= ADR(eStat);
	p_MagAWOpen3Status	:= ADR(eMainStatus);
	p_MagAWOpen3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MagAWOpen3AlmData		:= ADR(tyAlmData);
	p_MagAWOpen3AlmData1	:= ADR(tyAlmData1);
	p_MagAWOpen3AlmData2	:= ADR(tyAlmData2);
	p_MagAWOpen3AlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_MagAWOpen3ParamOut		:= ADR(tyParamOut);
	p_MagAWOpen3PwrOn			:= ADR(tyParamOut.bPwrOn);
	p_MagAWOpen3IsHomed			:= ADR(tyParamOut.bIsHomed);
	p_MagAWOpen3PosDiff			:= ADR(tyParamOut.bPosDiff);
	p_MagAWOpen3AxisErr			:= ADR(tyParamOut.bAxisErr);
	p_MagAWOpen3AxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_MagAWOpen3FwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_MagAWOpen3RevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_MagAWOpen3ActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_MagAWOpen3AxisErrTxt		:= ADR(sAxisErrTxt);
	p_MagAWOpen3WidthPosDiff	:= ADR(bWidthPosDiff);
	p_MagAWOpen3Jogging			:= ADR(bJogging);
	p_MagAWOpen3Engaging		:= ADR(bEngaging);
	p_MagAWOpen3OpenSen			:= ADR(bOpenSen);
	p_MagAWOpen3CloseSen		:= ADR(bCloseSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM