(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bNoIndexPulse	:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagAWOpen1Stat	:= ADR(eStat);
	p_MagAWOpen1Status	:= ADR(eMainStatus);
	p_MagAWOpen1StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MagAWOpen1AlmData		:= ADR(tyAlmData);
	p_MagAWOpen1AlmData1	:= ADR(tyAlmData1);
	p_MagAWOpen1AlmData2	:= ADR(tyAlmData2);
	p_MagAWOpen1AlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_MagAWOpen1ParamOut		:= ADR(tyParamOut);
	p_MagAWOpen1PwrOn			:= ADR(tyParamOut.bPwrOn);
	p_MagAWOpen1IsHomed			:= ADR(tyParamOut.bIsHomed);
	p_MagAWOpen1PosDiff			:= ADR(tyParamOut.bPosDiff);
	p_MagAWOpen1AxisErr			:= ADR(tyParamOut.bAxisErr);
	p_MagAWOpen1AxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_MagAWOpen1FwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_MagAWOpen1RevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_MagAWOpen1ActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_MagAWOpen1AxisErrTxt		:= ADR(sAxisErrTxt);
	p_MagAWOpen1WidthPosDiff	:= ADR(bWidthPosDiff);
	p_MagAWOpen1Jogging			:= ADR(bJogging);
	p_MagAWOpen1Engaging		:= ADR(bEngaging);
	p_MagAWOpen1OpenSen			:= ADR(bOpenSen);
	p_MagAWOpen1CloseSen		:= ADR(bCloseSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM