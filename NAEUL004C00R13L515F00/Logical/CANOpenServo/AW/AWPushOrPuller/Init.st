(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AWPushOrPullerStat		:= ADR(eStat);
	p_AWPushOrPullerStatus		:= ADR(eMainStatus);
	p_AWPushOrPullerStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_AWPushOrPullerAlmData		:= ADR(tyAlmData);
	p_AWPushOrPullerAlmData1	:= ADR(tyAlmData1);
	p_AWPushOrPullerAlmData2	:= ADR(tyAlmData2);
	p_AWPushOrPullerAlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_AWPushOrPullerParamOut		:= ADR(tyParamOut);
	p_AWPushOrPullerPwrOn			:= ADR(tyParamOut.bPwrOn);
	p_AWPushOrPullerIsHomed			:= ADR(tyParamOut.bIsHomed);
	p_AWPushOrPullerPosDiff			:= ADR(tyParamOut.bPosDiff);
	p_AWPushOrPullerAxisErr			:= ADR(tyParamOut.bAxisErr);
	p_AWPushOrPullerAxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_AWPushOrPullerFwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_AWPushOrPullerRevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_AWPushOrPullerActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_AWPushOrPullerAxisErrTxt		:= ADR(sAxisErrTxt);
	p_AWPushOrPullerWidthPosDiff	:= ADR(bWidthPosDiff);
	p_AWPushOrPullerJogging			:= ADR(bJogging);
	p_AWPushOrPullerOpenSen			:= ADR(bOpenSen);
	p_AWPushOrPullerCloseSen		:= ADR(bCloseSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM