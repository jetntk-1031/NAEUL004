(** 2019-10-30 **)
ACTION Act_Link:
	
	IF tylocalMagConv2Clp.In.bLinkDISafetyRlySig = FALSE THEN
		tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
		tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
		tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
		tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
	END_IF
	
	tylocalMagConv2Clp.In.bFixClprUnclampSen :=  tylocalMagConv2Clp.In.bLinkFixClprUnClampSen;
	tylocalMagConv2Clp.In.bRmtClprUnclampSen := tylocalMagConv2Clp.In.bLinkRmtClprUnclampSen;

	IF tylocalMagConv2Clp.In.bLinkNtParamMagModelAutoVerify THEN
		fbSmallLargeSenDlyTm(IN:= tylocalMagConv2Clp.In.bLinkMagSmallSen OR tylocalMagConv2Clp.In.bLinkMagLargeSen);
		IF fbSmallLargeSenDlyTm.Q THEN
			tylocalMagConv2Clp.In.bFixClprClampSen := TRUE;
		ELSE
			tylocalMagConv2Clp.In.bFixClprClampSen := FALSE;
		END_IF
	ELSIF tylocalMagConv2Clp.In.tyDISettings.diMag1FixedClampSen = 0 THEN
		tylocalMagConv2Clp.In.bFixClprClampSen := tylocalMagConv2Clp.In.bLinkFixClprClampSen; //Normal Pneumatic Clamping RS.
	ELSE
		IF tylocalMagConv2Clp.Out.eStat = MagConv2ClpActInitStopClp AND usiStep = 3 OR 
			tylocalMagConv2Clp.Out.eStat = MagConv2ClpActEntStopClp AND usiStep = 2 OR
			tylocalMagConv2Clp.Out.eStat = MagConv2ClpActFixClprClamp OR tylocalMagConv2Clp.Out.eStat = MagConv2ClpActFixClprUnclamp THEN //during fix clamp
			fbFixClpExtChkTm(IN:=TRUE);
			IF fbFixClpExtChkTm.Q THEN
				fbFixClpExtChkTm(IN:=FALSE);
				tylocalMagConv2Clp.In.bFixClprClampSen := tylocalMagConv2Clp.In.bLinkFixClprMagDetectSen;
			END_IF
		ELSIF	tylocalMagConv2Clp.Out.eStat = MagConv2ClpActInitStopClp AND usiStep = 4 OR 
			tylocalMagConv2Clp.Out.eStat = MagConv2ClpActEntStopClp AND usiStep = 3 OR
			tylocalMagConv2Clp.Out.eStat = MagConv2ClpActRmtClprClamp OR tylocalMagConv2Clp.Out.eStat = MagConv2ClpActRmtClprUnclamp THEN //during remote clamp
			fbRmtClpExtChkTm(IN:=TRUE);
			IF fbRmtClpExtChkTm.Q THEN
				fbRmtClpExtChkTm(IN:=FALSE);
				tylocalMagConv2Clp.In.bRmtClprClampSen := tylocalMagConv2Clp.Out.bRmtClprClampCtrl;
			END_IF	
		ELSE
			fbFixClpExtChkTm(IN:=FALSE);
			fbRmtClpExtChkTm(IN:=FALSE);
			tylocalMagConv2Clp.In.bFixClprClampSen := FALSE;
			tylocalMagConv2Clp.In.bRmtClprClampSen := FALSE;
		END_IF
	END_IF
	

	IF tylocalMagConv2Clp.In.bLinkMagOpsStepMagFullExit THEN
		fbLeftSenDelayTm(IN:= TRUE, PT:=  T#3000ms);
		IF fbLeftSenDelayTm.Q THEN
			tylocalMagConv2Clp.In.bLeftSen := tylocalMagConv2Clp.In.bLinkDIMagEntSen;
		END_IF
	ELSE
		tylocalMagConv2Clp.In.bLeftSen := tylocalMagConv2Clp.In.bLinkDIMagEntSen;
		fbLeftSenDelayTm(IN:= FALSE);
	END_IF
	
END_ACTION
