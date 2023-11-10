(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bNoIndexPulse	:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagAWOpen2Stat	:= ADR(eStat);
	p_MagAWOpen2Status	:= ADR(eMainStatus);
	p_MagAWOpen2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MagAWOpen2AlmData		:= ADR(tyAlmData);
	p_MagAWOpen2AlmData1	:= ADR(tyAlmData1);
	p_MagAWOpen2AlmData2	:= ADR(tyAlmData2);
	p_MagAWOpen2AlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_MagAWOpen2ParamOut		:= ADR(tyParamOut);
	p_MagAWOpen2PwrOn			:= ADR(tyParamOut.bPwrOn);
	p_MagAWOpen2IsHomed			:= ADR(tyParamOut.bIsHomed);
	p_MagAWOpen2PosDiff			:= ADR(tyParamOut.bPosDiff);
	p_MagAWOpen2AxisErr			:= ADR(tyParamOut.bAxisErr);
	p_MagAWOpen2AxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_MagAWOpen2FwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_MagAWOpen2RevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_MagAWOpen2ActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_MagAWOpen2AxisErrTxt		:= ADR(sAxisErrTxt);
	p_MagAWOpen2WidthPosDiff	:= ADR(bWidthPosDiff);
	p_MagAWOpen2Jogging			:= ADR(bJogging);
	p_MagAWOpen2Engaging		:= ADR(bEngaging);
	p_MagAWOpen2OpenSen			:= ADR(bOpenSen);
	p_MagAWOpen2CloseSen		:= ADR(bCloseSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM