(** 2019-03-25 **)
ACTION Act_OpsRst:
	
	eUSSMEMAAct1	:= SMEMAActIdle;
	eUSSMEMAAct2	:= SMEMAActIdle;
	eUSSMEMAAct3	:= SMEMAActIdle;
	eDSSMEMAAct1	:= SMEMAActIdle;
	eDSSMEMAAct2	:= SMEMAActIdle;
	eDSSMEMAAct3	:= SMEMAActIdle;
	eConvAct		:= ConvActIdle;
	eAWAct			:= AWActIdle;
	eAWPushOrPullerAct 	:= AWActIdle;
	eTravAct		:= TravActIdle;
	eLifAct			:= LifterActIdle;
	eInletPneuAct	:= PneuActIdle;
	eOutletPneuAct	:= PneuActIdle;
	eOutletPneuAct2	:= PneuActIdle;
	eOutletPneuAct3	:= PneuActIdle;
	bSkipCloseInletShutter := FALSE;
	bTravLifInDSPos := FALSE;
	usiMagWidthChkStep  := 10;
	bMagWidthChk		:= FALSE;
	bTravGoToChkPt		:= FALSE;
	bShut1Closed		:= FALSE;
	bShut2Closed		:= FALSE;
	bShut3Closed		:= FALSE;
	bInitInletPneu		:= FALSE;
//	bBrdOnSen	:= FALSE;
	
	eTCPTopAct := TCPActIdle_0;
	eTCPBtmAct := TCPActIdle_0;
	fbReturnCodeTO(IN:=FALSE);
	fbIdleTm(IN:= FALSE);
	bJamStarted := FALSE;
	bPass := FALSE;
	IF p_bScanEn THEN
		p_sTopMsgRd := '';
		p_sBtmMsgRd := '';
	END_IF
	tyOpConMsgReq := OpConMsgTypeNA;
	
	bCmdUnclmpFlag := FALSE;
	bWidthChkErrCmdUnclmp1 := FALSE;
	bWidthChkErrCmdUnclmp2 := FALSE;
	bWidthChkErrCmdUnclmp3 := FALSE;
	
	//Bosch Scanner
	bStartScanSig := FALSE;
	fbScanTimOut(IN:= FALSE);
	bPCBExitMag1 := FALSE;
	bPCBExitMag2 := FALSE;
	bPCBExitMag3 := FALSE;
	
	//ADDED 
	eTravLifPosGo := TravLifULPosInvalid; 

END_ACTION
