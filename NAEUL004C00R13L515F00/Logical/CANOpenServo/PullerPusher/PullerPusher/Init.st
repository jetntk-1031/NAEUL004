(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PPStat	:= ADR(eStat);
	p_PPStatus	:= ADR(eMainStatus);
	p_PPStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_PPAlmData		:= ADR(tyAlmData);
	p_PPAlmData1	:= ADR(tyAlmData1);
	p_PPAlmData2	:= ADR(tyAlmData2);
	p_PPAlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_PPParamOut		:= ADR(tyParamOut);
	p_PPPwrOn			:= ADR(tyParamOut.bPwrOn);
	p_PPIsHomed			:= ADR(tyParamOut.bIsHomed);
	p_PPPosDiff			:= ADR(tyParamOut.bPosDiff);
	p_PPAxisErr			:= ADR(tyParamOut.bAxisErr);
	p_PPAxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_PPFwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_PPRevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_PPActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_PPAxisErrTxt		:= ADR(sAxisErrTxt);
	p_PPWidthPosDiff	:= ADR(bWidthPosDiff);
	p_PPJogging			:= ADR(bJogging);
	p_PPExtSen			:= ADR(bOpenSen);
	p_PPRetSen			:= ADR(bCloseSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM