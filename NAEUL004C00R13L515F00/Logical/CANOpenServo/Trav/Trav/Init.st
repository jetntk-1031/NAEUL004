(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_TravStat		:= ADR(eStat);
	p_TravStatus	:= ADR(eMainStatus);
	p_TravStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_TravAlmData	:= ADR(tyAlmData);
	p_TravAlmData1	:= ADR(tyAlmData1);
	p_TravAlmData2	:= ADR(tyAlmData2);
	p_TravAlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_TravParamOut		:= ADR(tyParamOut);
	p_TravPwrOn			:= ADR(tyParamOut.bPwrOn);
	p_TravIsHomed		:= ADR(tyParamOut.bIsHomed);
	p_TravPosDiff		:= ADR(tyParamOut.bPosDiff);
	p_TravAxisErr		:= ADR(tyParamOut.bAxisErr);
	p_TravAxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_TravFwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_TravRevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_TravActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_TravAxisErrTxt	:= ADR(sAxisErrTxt);
	p_TravAPosDiff		:= ADR(bAPosDiff);
	p_TravBPosDiff		:= ADR(bBPosDiff);
	p_TravCPosDiff		:= ADR(bCPosDiff);
	p_TravDPosDiff		:= ADR(bDPosDiff);
	p_TravEPosDiff		:= ADR(bEPosDiff);
	p_TravFPosDiff		:= ADR(bFPosDiff);
	p_TravGPosDiff		:= ADR(bGPosDiff);
	p_TravHPosDiff		:= ADR(bHPosDiff);
	p_TravJogging		:= ADR(bJogging);
	p_TravFrontSen		:= ADR(bFrontSen);
	p_TravRearSen		:= ADR(bRearSen);

	(* Always Change If Project Change *)
	
END_PROGRAM