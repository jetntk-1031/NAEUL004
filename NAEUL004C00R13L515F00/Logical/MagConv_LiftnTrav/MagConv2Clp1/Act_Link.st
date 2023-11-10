(** 2019-10-30 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bFixClprClampCtrl	:= FALSE;
		bRmtClprClampCtrl	:= FALSE;
	END_IF
	
	p_bFixClprUnclampSen :=  p_bLinkFixClprUnClampSen;
	
	IF p_bLinkNtParamMagModelAutoVerify THEN
		fbSmallLargeSenDlyTm(IN:= p_bLinkMagSmallSen OR p_bLinkMagLargeSen);
		IF fbSmallLargeSenDlyTm.Q THEN
			p_bFixClprClampSen := TRUE;
		ELSE
			p_bFixClprClampSen := FALSE;
		END_IF
	ELSE
		IF p_bLinkFixClprMagDetectSenPrep THEN
			IF p_eAct = MagConv2ClpActFixClprUnclamp OR (p_eAct = MagConv2ClpActInitClpStop AND usiStep = 0) OR (p_eAct = MagConv2ClpActInitStopClp AND usiStep = 0)
				OR (p_eAct  = MagConv2ClpActPreExitClpr AND usiStep = 0) OR (p_eAct  = MagConv2ClpActExitClpr AND usiStep = 0) 
				OR (p_eAct = MagConv2ClpActStopClpr) THEN
				
				p_bFixClprClampSen			:= NOT p_bLinkFixClprUnClampSen;
			ELSE
				p_bFixClprClampSen			:= p_bLinkFixClprMagDetectSen; //Treat as Clamping Sen Clamp RS for Special Case
			END_IF
			//p_bFixClprClampSafetySen	:= NOT p_bLinkFixClprClampSen; // If Clamping RS detects first, it will go to Error for safety check
		ELSE
			p_bFixClprClampSen := p_bLinkFixClprClampSen; //Normal Pneumatic Clamping RS.
		END_IF
	END_IF
	
	p_bRmtClprClampSen := p_bLinkDO.bMag1RemoteClampCtrl;
	p_bRmtClprUnclampSen := NOT p_bLinkDO.bMag1RemoteClampCtrl;
//	p_tMtrOffDlyTm	:= T#200ms;
	

	IF p_bLinkMagOpsStepMagFullExit THEN
		fbLeftSenDelayTm(IN:= TRUE, PT:=  T#3000ms);
	 	IF fbLeftSenDelayTm.Q THEN
				p_bLeftSen := p_bLinkDIMagEntSen;
		END_IF
	ELSE
		p_bLeftSen := p_bLinkDIMagEntSen;
		fbLeftSenDelayTm(IN:= FALSE);
	END_IF

	
	//Clamp Sensor chk time
	IF p_tyDISettings.diMag1FixedClampSen >0 THEN //fix side sensor used
			
		IF eStat = MagConv2ClpActInitStopClp AND usiStep = 3 OR 
			eStat = MagConv2ClpActEntStopClp AND usiStep = 1 OR
			eStat = MagConv2ClpActFixClprClamp OR eStat = MagConv2ClpActFixClprUnclamp THEN //during clamp
			fbClpExtChkTm(IN:=TRUE);
			
			IF fbClpExtChkTm.Q THEN
				fbClpExtChkTm(IN:=FALSE);
				p_bLinkFixClprClampSen ACCESS p_DIMag1FixedClampSen;
			ELSE
				p_bLinkFixClprClampSen ACCESS ADR(bFixClprClampSen);
			END_IF
		ELSE
			fbClpExtChkTm(IN:=FALSE);
			p_bFixClprClampSen := FALSE;
		END_IF
	ELSE //standard 2 RS 
		p_bLinkFixClprClampSen ACCESS p_DIMag1FixedClampRS; 
	END_IF
	
END_ACTION
