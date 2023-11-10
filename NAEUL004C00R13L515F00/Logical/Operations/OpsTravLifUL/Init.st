(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsTravLifULAlmData	:= ADR(tyAlmData);
	
	//Output
	p_OpsTravLifULStepTxt			:= ADR(sStepTxt);
	p_OpsTravLifULPaused			:= ADR(bPaused);
	
	p_OpsTravLifULUSSMEMAAct1		:= ADR(eUSSMEMAAct1);
	p_OpsTravLifULUSSMEMAAct2 		:= ADR(eUSSMEMAAct2);
	p_OpsTravLifULUSSMEMAAct3		:= ADR(eUSSMEMAAct3);
	p_OpsTravLifULDSSMEMAAct1		:= ADR(eDSSMEMAAct1);
	p_OpsTravLifULDSSMEMAAct2		:= ADR(eDSSMEMAAct2);
	p_OpsTravLifULDSSMEMAAct3		:= ADR(eDSSMEMAAct3);
	p_OpsTravLifULConvAct			:= ADR(eConvAct);
	p_OpsTravLifULAWAct				:= ADR(eAWAct);
	p_OpsTravLifULAWPushPullAct		:= ADR(eAWPushOrPullerAct);
	p_OpsTravLifULTravAct			:= ADR(eTravAct);
	p_OpsTravLifULLifAct			:= ADR(eLifAct);
	p_OpsTravLifULInletPneuAct		:= ADR(eInletPneuAct);
	p_OpsTravLifULOutletPneuAct		:= ADR(eOutletPneuAct);
	p_OpsTravLifULOutletPneuAct2	:= ADR(eOutletPneuAct2);
	p_OpsTravLifULOutletPneuAct3	:= ADR(eOutletPneuAct3);
	p_OpsTravLifULStopperAct1		:= ADR(eStopperAct1);
	p_OpsTravLifULStopperAct2		:= ADR(eStopperAct2);
	p_OpsTravLifULStopperAct3		:= ADR(eStopperAct3);
	
	p_OpsTravLifULPosGo				:= ADR(eTravLifPosGo);
	p_OpsTravLifULMagDis			:= ADR(a_bMagDis);
	p_OpsTravLifULMagRej			:= ADR(a_bMagRej);
	p_OpsTravLifULInitConv			:= ADR(bInitConv);
	p_OpsTravLifULInitDone			:= ADR(bOpsInitDone);
	p_OpsTravLifULUSComm			:= ADR(bUSComm);
	p_OpsTravLifULEntBrd			:= ADR(bEntBrd);
	p_OpsTravLifULDSComm			:= ADR(bDSComm);
	p_OpsTravLifULExitBrd			:= ADR(bExitBrd);
	p_OpsTravLifULTravLifMov		 := ADR(bTravLifMove);
	p_OpsTravLifULUSWidthChkBrdExist	:= ADR(bUSWidthChkBrdExist);
	p_OpsTravLifULStpExt				:= ADR(bStopperExtStep);
	
	p_OpsTravLifULJogSpeed				:= ADR(udiJogSpeed);
	
	p_OpsTravLifULSelfTest				:= ADR(bSelfTest);
	p_OpsTravLifULInDSPos				:= ADR(bTravLifInDSPos);
	
	p_OpsTravLifULBypCurtainLED 		:= ADR (bBypCurtainSensorPBLED); 	
	p_OpsTravLifULBypCurtainSenCtrl		:= ADR (bBypCurtainSenCtrl); 
	
	p_OpsTravLifULTravGotoChkPt			:= ADR (bTravGoToChkPt);
	p_OpsTravLifULMagWidthChk	 		:= ADR(bMagWidthChk);
	p_OpsTravLifULMagWidthChkStep 		:= ADR(usiMagWidthChkStep);
	
	p_OpsTravLifULTopScan			:= ADR(eTCPTopAct);
	p_OpsTravLifULBtmScan			:= ADR(eTCPBtmAct);
	p_OpsTravLifULBarcode				:= ADR(sBarcode);
	p_OpsTravLifULMsgReq				:= ADR(tyOpConMsgReq);
	p_OpsTravLifULPartProcessItms := ADR(tyPartProcessedItems);
	p_OpsTravLifULMagEntered 			:= ADR(asMagEntered);
	
	p_OpsTravLifWChkErrCmdUnclmp1		:= ADR (bWidthChkErrCmdUnclmp1); //To OpsMagConvUL 1,2,3
	p_OpsTravLifWChkErrCmdUnclmp2		:= ADR (bWidthChkErrCmdUnclmp2);
	p_OpsTravLifWChkErrCmdUnclmp3		:= ADR (bWidthChkErrCmdUnclmp3);
	
	p_OpsTravLifParamTravLif			:= ADR(tyParamTravLif); //seperate calculation for US and DS
	
	p_OpsTravLifOpsModGonethrough   := ADR(bOpsModGonethrough);
	
	
	p_OpsTravLifWGdBrdChk  := ADR(bGdChk);
	p_OpsTravLifAllwExitMag1 	:= ADR(bAllwExitMag1);
	p_OpsTravLifAllwExitMag2	:= ADR(bAllwExitMag2);
	p_OpsTravLifAllwExitMag3	:= ADR(bAllwExitMag3);
	
	//inlet stopper
	p_OpsTravLifInletStprAct	:= ADR(eInletStopperAct);
	
	
	//OpsScanner
	p_OpsTravLifStartScanSig := ADR(bStartScanSig);
	p_OpsTravLifMag1TransOut := ADR(bPCBExitMag1);
	p_OpsTravLifMag2TransOut := ADR(bPCBExitMag2);
	p_OpsTravLifMag3TransOut := ADR(bPCBExitMag3);
	
	//check eops 
	p_OpsTravLifOpsStep := ADR(eOpsStep);
	p_OpsTravLifGotoOpsStep := ADR(eGotoOpsStep);
	(* Always Change If Project Change *)
	
END_PROGRAM