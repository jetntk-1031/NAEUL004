(** 2018-12-11 **)
ACTION Act_Link:
	//MagWidth Disable and Prep
	p_bMagWidthChkDis := NOT(p_tyNtParamDISettings.diUSWidthChkSen>0) OR p_bLinkMcParamMagWidthChkDis;
	//Disable AutoRcp
	//Upstream Allow
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN
		IF p_eNtParamAutoRcpPrecededBy = PrecededBySelf THEN
			p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod; //take respective Rcp
			p_bUSAllow := p_bAutoRcpTravWidthDiffBlk = FALSE;
		ELSIF p_eNtParamAutoRcpPrecededBy = PrecededByF1 THEN
			p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
			p_bUSAllow	:= p_bLinkFollower1USAllow AND p_bLinkUSHermesABlkUS = FALSE AND p_bLinkUSHermesBBlkUS = FALSE;
		END_IF
	ELSE
		p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
		p_bUSAllow	:= p_bLinkFollower1USAllow AND p_bLinkUSHermesABlkUS = FALSE AND p_bLinkUSHermesBBlkUS = FALSE;// AND p_bAutoRcpTravWidthDiffBlk = FALSE;// AND p_diProdRcpCurrRcp1Width = p_diProdRcpCurrRcp2Width;
	END_IF 
	
	p_eULMod	:= USINT_TO_UDINT(p_usiLinkProdRcpCurrRcpMcMod);
	
	p_bPneuUnclmpFBDone := p_bOpsMagConvUL1UnclmpDone OR p_bOpsMagConvUL2UnclmpDone OR p_bOpsMagConvUL3UnclmpDone;
	
	CASE p_eULMod OF
		ULModUnloadFrontLnA, ULModUnloadRearLnB, ULModUnloadDualLnAB:
			bBypsGdBadBrd	:= TRUE;
		ULModRejFrontLnA, ULModRejFrontLnARev, ULModRejRearLnB, ULModRejRearLnBRev, ULModRejDualLnA, ULModRejDualLnB:
			bBypsGdBadBrd	:= FALSE;
	END_CASE

	
	IF p_bLinkProjLifterMagPlatform = FALSE THEN
		p_bMagTransferBrd1 ACCESS p_OpsMagConvUL1MagBffrAvl;
		p_bMagTransferBrd2 ACCESS p_OpsMagConvUL2MagBffrAvl;
		p_bMagTransferBrd3 ACCESS p_OpsMagConvUL3MagBffrAvl;
	ELSE
		p_bMagTransferBrd1 ACCESS p_DSSMEMA1DSRdy;
		p_bMagTransferBrd2 ACCESS p_DSSMEMA2DSRdy;
		p_bMagTransferBrd3 ACCESS p_DSSMEMA3DSRdy;
	END_IF
	


	//	p_bDSAllow	:= p_bLinkFollower2DSAllow;
	
	IF p_bLinkProjLifterMagPlatform = FALSE THEN
		p_eLifStat ACCESS p_LifterBtmStat;
		p_eLifStatus ACCESS p_LifterBtmStatus;
		p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
		p_bLifterAPosDiff ACCESS p_LifterBtmAPosDiff;
		p_bLifterBPosDiff ACCESS p_LifterBtmBPosDiff;
	ELSIF p_bLinkProjLifterMagPlatform  AND p_bRun THEN
		p_eLifStat := eLifAct;
		p_eLifStatus := Done; //bi-dir
		p_bLifterBtmPosDiff ACCESS ADR(bLifterBtmPosDiff);
		p_bLifterAPosDiff ACCESS ADR(bLifterAPosDiff);
		p_bLifterBPosDiff ACCESS ADR(bLifterBPosDiff);
	END_IF
	
	IF p_bRun AND p_bLinkDIPshrAntiJamSen = FALSE THEN
		eStatus		:= Error;
		udiStatus	:= 10005;
	END_IF
	
	//Bypass Curtain Sensor PB Pressed
	IF p_bRun THEN
		IF EDGENEG(p_bRlsMag1 OR p_bRlsMag2 OR p_bRlsMag3) THEN 
			bBypCurtainSenPB 		:= TRUE;
			bBypCurtainSensorPBLED	:= TRUE;
		ELSIF EDGENEG (p_bCurtainSenPB) THEN 
			IF bBypCurtainSenPB 		= TRUE THEN
				bBypCurtainSenPB		:= FALSE;
				bBypCurtainSensorPBLED	:= FALSE;
				bBypCurtainSenCtrl		:= FALSE; 
				bWait					:= FALSE;
			ELSE
				bBypCurtainSenPB 		:= TRUE;
				bBypCurtainSensorPBLED	:= TRUE;
			END_IF
		END_IF
	ELSE
		bBypCurtainSenPB		:= FALSE;
		bBypCurtainSensorPBLED	:= FALSE;
		bBypCurtainSenCtrl		:= FALSE; 
	END_IF
	
	//Run & Initializing Done Bypass the Curtain Sensor
	IF bBypCurtainSenPB AND p_eTravStatus <> Busy AND p_eLifStatus <> Busy AND bWait = FALSE THEN
		bWait 	:= TRUE;
	END_IF
	
	IF p_bRun AND bOpsInitDone AND bBypCurtainSenPB AND bWait THEN
		bBypCurtainSenCtrl		:= TRUE;
	ELSE
		bBypCurtainSenCtrl		:= FALSE;
	END_IF
	
	// BypCurtainSensorPBLED 				
	IF  (bBypCurtainSenPB = TRUE) AND (bBypCurtainSenCtrl = TRUE) THEN		
		bBypCurtainSensorPBLED := TRUE;													
		fbBypCurtainPBLEDBlinkTm(IN := FALSE);																		
	ELSIF (bBypCurtainSenPB = TRUE) AND (bBypCurtainSenCtrl = FALSE) THEN	
		fbBypCurtainPBLEDBlinkTm(IN := TRUE);										
		IF fbBypCurtainPBLEDBlinkTm.Q = TRUE THEN									
			fbBypCurtainPBLEDBlinkTm(IN := FALSE);									
			IF bBypCurtainSensorPBLED = FALSE THEN										
				bBypCurtainSensorPBLED := TRUE;											
			ELSE																
				bBypCurtainSensorPBLED := FALSE;											
			END_IF																
		END_IF																	
	ELSE																		
		bBypCurtainSensorPBLED := FALSE;													
		fbBypCurtainPBLEDBlinkTm(IN := FALSE);										
	END_IF
	
	//for inlet outlet sensing 
	fb2SenTm(IN:= p_bConvRgtSen = TRUE AND p_bConvLftSen= TRUE, PT:= T#500ms);
	IF fb2SenTm.Q = TRUE THEN
		eStatus := Error;
		udiStatus := 10009; //'Inlet and outlet same time sensing error'
	END_IF

//	fbRstCurtain(IN := bBypCurtainSenCtrl); //Auto Reset when the bypass curtain Sen is On more than 1 min.
//	
//	IF p_bLinkCurtainSen AND fbRstCurtain.Q THEN
//		bBypCurtainSenCtrl		:= FALSE;
//		bBypCurtainSenPB		:= FALSE;
//		bBypCurtainSensorPBLED	:= FALSE;
//	END_IF
		
	
//Machine Paused and Bypass Curtain Sensor
//	IF bBypCurtainSenPB THEN
//		
//		eOutletPneuAct	:= PneuActExt;
//		eOutletPneuAct2	:= PneuActExt;
//		eOutletPneuAct3	:= PneuActExt;	
//									
//		IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) AND (p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) AND (p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt) THEN
//			eOutletPneuAct	:= PneuActIdle;
//			eOutletPneuAct2	:= PneuActIdle;
//			eOutletPneuAct2	:= PneuActIdle;
//			bBypCurtainSenCtrl := TRUE;
//		END_IF
//	END_IF
			
END_ACTION
