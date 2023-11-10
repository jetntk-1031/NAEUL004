(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_LifterBtmStat		:= ADR(eStat);
	p_LifterBtmStatus	:= ADR(eMainStatus);
	p_LifterBtmStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_LifterBtmAlmData	:= ADR(tyAlmData);
	p_LifterBtmAlmData1	:= ADR(tyAlmData1);
	p_LifterBtmAlmData2	:= ADR(tyAlmData2);
	p_LifterBtmAlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_LifterBtmParamOut		:= ADR(tyParamOut);
	p_LifterBtmPwrOn		:= ADR(tyParamOut.bPwrOn);
	p_LifterBtmIsHomed		:= ADR(tyParamOut.bIsHomed);
	p_LifterBtmPosDiff		:= ADR(tyParamOut.bPosDiff);
	p_LifterBtmAxisErr		:= ADR(tyParamOut.bAxisErr);
	p_LifterBtmAxisErrID	:= ADR(tyParamOut.udiAxisErrID);
	p_LifterBtmFwdLmtSen	:= ADR(tyParamOut.bFwdLmtSen);
	p_LifterBtmRevLmtSen	:= ADR(tyParamOut.bRevLmtSen);
	p_LifterBtmActualPos	:= ADR(tyParamOut.diActualPosInUM);
	p_LifterBtmAxisErrTxt	:= ADR(sAxisErrTxt);
	p_LifterBtmSltAPosDiff	:= ADR(bSltAPosDiff);
	p_LifterBtmSltBPosDiff	:= ADR(bSltBPosDiff);
	p_LifterBtmSltCPosDiff	:= ADR(bSltCPosDiff);
	p_LifterBtmSltDPosDiff	:= ADR(bSltDPosDiff);
	p_LifterBtmCurrSltA		:= ADR(diCurrSltA);
	p_LifterBtmCurrSltB		:= ADR(diCurrSltB);
	p_LifterBtmCurrSltC		:= ADR(diCurrSltC);
	p_LifterBtmCurrSltD		:= ADR(diCurrSltD);
	p_LifterBtmAPosDiff		:= ADR(bAPosDiff);
	p_LifterBtmBPosDiff		:= ADR(bBPosDiff);
	p_LifterBtmCPosDiff		:= ADR(bCPosDiff);
	p_LifterBtmDPosDiff		:= ADR(bDPosDiff);
	p_LifterBtmEPosDiff		:= ADR(bEPosDiff);
	p_LifterBtmFPosDiff		:= ADR(bFPosDiff);
	p_LifterBtmGPosDiff		:= ADR(bGPosDiff);
	p_LifterBtmHPosDiff		:= ADR(bHPosDiff);
	p_LifterBtmJogging		:= ADR(bJogging);
	p_LifterBtmUpSen		:= ADR(bUpSen);
	p_LifterBtmDownSen		:= ADR(bDownSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM