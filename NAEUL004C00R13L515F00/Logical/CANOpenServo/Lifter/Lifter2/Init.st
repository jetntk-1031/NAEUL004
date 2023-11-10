(** 2019-04-24 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Lifter2Stat		:= ADR(eStat);
	p_Lifter2Status		:= ADR(eMainStatus);
	p_Lifter2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Lifter2AlmData	:= ADR(tyAlmData);
	p_Lifter2AlmData1	:= ADR(tyAlmData1);
	p_Lifter2AlmData2	:= ADR(tyAlmData2);
	p_Lifter2AlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_Lifter2ParamOut		:= ADR(tyParamOut);
	p_Lifter2PwrOn			:= ADR(tyParamOut.bPwrOn);
	p_Lifter2IsHomed		:= ADR(tyParamOut.bIsHomed);
	p_Lifter2PosDiff		:= ADR(tyParamOut.bPosDiff);
	p_Lifter2AxisErr		:= ADR(tyParamOut.bAxisErr);
	p_Lifter2AxisErrID		:= ADR(tyParamOut.udiAxisErrID);
	p_Lifter2FwdLmtSen		:= ADR(tyParamOut.bFwdLmtSen);
	p_Lifter2RevLmtSen		:= ADR(tyParamOut.bRevLmtSen);
	p_Lifter2ActualPos		:= ADR(tyParamOut.diActualPosInUM);
	p_Lifter2AxisErrTxt		:= ADR(sAxisErrTxt);
	p_Lifter2SltAPosDiff	:= ADR(bSltAPosDiff);
	p_Lifter2SltBPosDiff	:= ADR(bSltBPosDiff);
	p_Lifter2SltCPosDiff	:= ADR(bSltCPosDiff);
	p_Lifter2SltDPosDiff	:= ADR(bSltDPosDiff);
	p_Lifter2CurrSltA		:= ADR(diCurrSltA);
	p_Lifter2CurrSltB		:= ADR(diCurrSltB);
	p_Lifter2CurrSltC		:= ADR(diCurrSltC);
	p_Lifter2CurrSltD		:= ADR(diCurrSltD);
	p_Lifter2APosDiff		:= ADR(bAPosDiff);
	p_Lifter2BPosDiff		:= ADR(bBPosDiff);
	p_Lifter2CPosDiff		:= ADR(bCPosDiff);
	p_Lifter2DPosDiff		:= ADR(bDPosDiff);
	p_Lifter2EPosDiff		:= ADR(bEPosDiff);
	p_Lifter2FPosDiff		:= ADR(bFPosDiff);
	p_Lifter2GPosDiff		:= ADR(bGPosDiff);
	p_Lifter2HPosDiff		:= ADR(bHPosDiff);
	p_Lifter2Jogging		:= ADR(bJogging);
	p_Lifter2UpSen			:= ADR(bUpSen);
	p_Lifter2DownSen		:= ADR(bDownSen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM