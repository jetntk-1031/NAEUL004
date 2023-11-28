(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) AND p_eNtParamAutoRcpPrecededBy  = PrecededBySelf THEN //AutoRcp Ignored Follower
		p_usiLinkMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp0McMod;
	ELSE
		p_usiLinkMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;	
	END_IF
	
	
	IF p_bLinkDISafetyRlySig = FALSE OR eStatus = Error  THEN
		bPshrExtCtrl		:= FALSE;
		bPshrRetCtrl		:= FALSE;
		bPshrExtended		:= FALSE;
		bPshrRetracted		:= FALSE;
		
		bPullerExtCtrl		:= FALSE;
		bPullerRetCtrl		:= FALSE;
		bPullerExtended		:= FALSE;
		bPullerRetracted	:= FALSE;
		
		bRotRemoteCtrl		:= FALSE;
		bRotAtRemote		:= FALSE;
		bRotAtHome			:= FALSE;
		
		bRejectUpCtrl		:= FALSE;
		bRejectDownCtrl		:= FALSE;
		bRejectAtUp			:= FALSE;
		bRejectAtDown		:= FALSE;
	END_IF
	
	//Bypass Intializing Conveyor
	IF p_bLinkUIBypsInitConv THEN
		p_diInitTm ACCESS ADR(diInitTm);
	ELSE
		p_diInitTm ACCESS p_McParamConvInitTm;
	END_IF
	
	fbRightSenTm(IN:= bMtrSigOnOrLToR AND p_bRightSen = FALSE, PT:= DINT_TO_TIME(p_diInitTm - 1000));
	//Sensor
	IF p_bSelfTest = FALSE THEN
		p_bRightSen	:= p_bLinkDIRgtSen OR p_bLinkDIClrSen; //previously this part block for safety
		fbBoardOffTm(IN:= p_bLeftSen = FALSE AND p_bRightSen = FALSE AND bMtrDirOrRToL = FALSE AND bMtrSigOnOrLToR = FALSE);
		IF EDGEPOS(fbBoardOffTm.Q) THEN
			bHvBrd := FALSE;
		END_IF
	ELSE
		IF fbRightSenTm.Q THEN
			p_bRightSen := TRUE;
		ELSIF p_bPshrExtSen THEN
			p_bRightSen := FALSE;
		END_IF
	END_IF
	
	p_bPshrRetSen := p_bLinkPshrRetSen; // OR p_bLinkPshrRetSlwSen;
	
	//Good Board Init
	CASE p_usiLinkMcParamProdSelMcMod OF
		ULModUnloadFrontLnA, ULModUnloadRearLnB, ULModUnloadDualLnAB:
			bGdBrdInit	:= TRUE;
		ULModRejFrontLnA, ULModRejFrontLnARev, ULModRejRearLnB, ULModRejRearLnBRev, ULModRejDualLnA, ULModRejDualLnB:
			bGdBrdInit	:= FALSE;
	END_CASE
	
	//Good Board Enter
	IF p_eLinkOpsTravLifPosGo = TravLifULPosUS1 THEN
		
		IF p_eLinkMcParamUSCommAMod = McSetCommModSMEMA THEN
			p_bGdBrdEnt ACCESS p_USSMEMAAUSGdBrdRdy;
		ELSIF p_eLinkMcParamUSCommAMod = McSetCommModHermes THEN
			p_bGdBrdEnt ACCESS p_USHermesAUSGdRdy;
		END_IF
		
	ELSIF p_eLinkOpsTravLifPosGo = TravLifULPosUS2 THEN
		
		IF p_eLinkMcParamUSCommBMod = McSetCommModSMEMA THEN
			p_bGdBrdEnt ACCESS p_USSMEMABUSGdBrdRdy;
		ELSIF p_eLinkMcParamUSCommBMod = McSetCommModHermes THEN
			p_bGdBrdEnt ACCESS p_USHermesBUSGdRdy;
		END_IF
		
	END_IF
	
//	IF p_eAct = ConvActInitPshr AND eStatus = Done THEN
//		p_eAct	:= ConvActIdle;
//	END_IF
	
END_ACTION
