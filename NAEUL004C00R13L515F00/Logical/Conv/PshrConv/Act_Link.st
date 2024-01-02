(** 2019-03-29 **)
ACTION Act_Link:
	
	IF tylocalPshrConv.In.bNtParamAutoRcpPrep AND NOT(tylocalPshrConv.In.bMcParamAutoRcpDis) THEN //AutoRcp Ignored Follower
		tylocalPshrConv.In.usiLinkMcParamProdSelMcMod ACCESS tylocalPshrConv.In.ProdRcpCurrRcp0McMod;
	ELSE
		tylocalPshrConv.In.usiLinkMcParamProdSelMcMod ACCESS tylocalPshrConv.In.ProdRcpCurrRcp1McMod;	
	END_IF
	
	
	IF tylocalPshrConv.In.bLinkDISafetyRlySig = FALSE OR tylocalPshrConv.Out.eStatus = Error  THEN
		tylocalPshrConv.Out.bPshrExtCtrl		:= FALSE;
		tylocalPshrConv.Out.bPshrRetCtrl		:= FALSE;
		tylocalPshrConv.Out.bPshrExtended		:= FALSE;
		tylocalPshrConv.Out.bPshrRetracted		:= FALSE;
		
		tylocalPshrConv.Out.bPullerExtCtrl		:= FALSE;
		tylocalPshrConv.Out.bPullerRetCtrl		:= FALSE;
		tylocalPshrConv.Out.bPullerExtended		:= FALSE;
		tylocalPshrConv.Out.bPullerRetracted	:= FALSE;
		
		tylocalPshrConv.Out.bRotRemoteCtrl		:= FALSE;
		tylocalPshrConv.Out.bRotAtRemote		:= FALSE;
		tylocalPshrConv.Out.bRotAtHome			:= FALSE;
		
		tylocalPshrConv.Out.bRejectUpCtrl		:= FALSE;
		tylocalPshrConv.Out.bRejectDownCtrl		:= FALSE;
		tylocalPshrConv.Out.bRejectAtUp			:= FALSE;
		tylocalPshrConv.Out.bRejectAtDown		:= FALSE;
	END_IF
	
	//Bypass Intializing Conveyor
	IF tylocalPshrConv.In.bLinkUIBypsInitConv THEN
		tylocalPshrConv.In.diInitTm ACCESS ADR(diInitTm);
	ELSE
		tylocalPshrConv.In.diInitTm ACCESS tylocalPshrConv.In.McParamConvInitTm;
	END_IF
	
	fbRightSenTm(IN:= tylocalPshrConv.Out.bMtrSigOnOrLToR AND tylocalPshrConv.In.bRightSen = FALSE, PT:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm - 1000));
	//Sensor
	IF tylocalPshrConv.In.bSelfTest = FALSE THEN
		tylocalPshrConv.In.bRightSen	:= tylocalPshrConv.In.bLinkDIRgtSen OR tylocalPshrConv.In.bLinkDIClrSen; //previously this part block for safety
		fbBoardOffTm(IN:= tylocalPshrConv.In.bLeftSen = FALSE AND tylocalPshrConv.In.bRightSen = FALSE AND tylocalPshrConv.Out.bMtrDirOrRToL = FALSE AND tylocalPshrConv.Out.bMtrSigOnOrLToR = FALSE);
		IF EDGEPOS(fbBoardOffTm.Q) THEN
			tylocalPshrConv.Out.bHvBrd := FALSE;
		END_IF
	ELSE
		IF fbRightSenTm.Q THEN
			tylocalPshrConv.In.bRightSen := TRUE;
		ELSIF tylocalPshrConv.In.bPshrExtSen THEN
			tylocalPshrConv.In.bRightSen := FALSE;
		END_IF
	END_IF
	
	tylocalPshrConv.In.bPshrRetSen := tylocalPshrConv.In.bLinkPshrRetSen; // OR tylocalPshrConv.In.bLinkPshrRetSlwSen;
	
	//Good Board Init
	CASE tylocalPshrConv.In.usiLinkMcParamProdSelMcMod OF
		ULModUnloadFrontLnA, ULModUnloadRearLnB, ULModUnloadDualLnAB:
			tylocalPshrConv.In.bGdBrdEnt	:= TRUE;
		ULModRejFrontLnA, ULModRejFrontLnARev, ULModRejRearLnB, ULModRejRearLnBRev, ULModRejDualLnA, ULModRejDualLnB:
			tylocalPshrConv.In.bGdBrdEnt	:= FALSE;
	END_CASE
	
	//Good Board Enter
	IF tylocalPshrConv.In.eLinkOpsTravLifPosGo = TravLifULPosUS1 THEN
		
		IF tylocalPshrConv.In.eLinkMcParamUSCommAMod = McSetCommModSMEMA THEN
			tylocalPshrConv.In.bGdBrdEnt := g_tyUSSMEMAA.bUSGdBrdRdy;
		ELSIF tylocalPshrConv.In.eLinkMcParamUSCommAMod = McSetCommModHermes THEN
			tylocalPshrConv.In.bGdBrdEnt := g_tyUSHermesA.bUSGdRdy;
		END_IF
		
	ELSIF tylocalPshrConv.In.eLinkOpsTravLifPosGo = TravLifULPosUS2 THEN
		
		IF tylocalPshrConv.In.eLinkMcParamUSCommBMod = McSetCommModSMEMA THEN
			tylocalPshrConv.In.bGdBrdEnt := g_tyUSSMEMAB.bUSGdBrdRdy;
		ELSIF tylocalPshrConv.In.eLinkMcParamUSCommBMod = McSetCommModHermes THEN
			tylocalPshrConv.In.bGdBrdEnt := g_tyUSHermesB.bUSGdRdy;
		END_IF
		
	END_IF
	

	
END_ACTION
