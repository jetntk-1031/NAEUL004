
ACTION Act_OptP0933PusherConvFB: 
//	IF p_bAlarmErr THEN
//		tyP0933PushConv.tyFB.tyBtnStop.bRtCompl := TRUE;
//	END_IF
	//Parameter
	diMnlMtrPshrExtSpd	:= tyP0933PushConv.tyFB.tyNumExtSpd.diValue;
//	diMnlMtrPshrExtTorq	:= tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue;
  

	//Pusher Torque & Force Real Time Changing
	//diMnlMtrPshrExtTorq := diConstant1 + (((tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue -10)/10)*diConstant2/100); //10~30N 
//	diMnlMtrPshrExtTorq := p_tyNtParamPPTorqParam.usiStartTorque + (((tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue -10)/10)*p_tyNtParamPPTorqParam.uiRatio/100); //10~30N 
	IF p_tyNtParamCurr.bProjServoPullerPusherPrep THEN
		diMnlMtrPshrExtTorq := p_tyNtParamPPTorqParam.usiStartTorque + (((tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue -10)/10)*p_tyNtParamPPTorqParam.uiRatio/100); //10~30N 
	ELSE
		diMnlMtrPshrExtTorq := tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue;
	END_IF
	//Conveyor
	IF tyP0933PushConv.tyFB.tyBtnStop.bRtCompl = TRUE THEN
		diMnlPPJogSpd	:= 0;
		ePshrConvAct	:= ConvActPshrRstAll;
//		usiExtRetTest := 0; //Ah Liang
		
		IF p_ePshrConvStat = ConvActPshrRstAll AND p_ePshrConvStatus = Done THEN	
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl		:= FALSE;
			tyP0933PushConv.tyFB.tyBtnEnt.bValue		:= FALSE;
			tyP0933PushConv.tyFB.tyBtnEnt.bRtLk			:= FALSE;
		
			tyP0933PushConv.tyFB.tyBtnExit.bRtCompl		:= FALSE;
			tyP0933PushConv.tyFB.tyBtnExit.bValue		:= FALSE;
			tyP0933PushConv.tyFB.tyBtnExit.bRtLk		:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl	:= FALSE;
			tyP0933PushConv.tyFB.tyBtnCylExit.bValue	:= FALSE;
			tyP0933PushConv.tyFB.tyBtnCylExit.bRtLk		:= FALSE;
		
			tyP0933PushConv.tyFB.tyBtnStop.bRtCompl		:= FALSE;
			tyP0933PushConv.tyFB.tyBtnStop.bValue		:= TRUE;
			tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF	
			
			
	ELSIF tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl = TRUE THEN	
		tyP0933PushConv.tyFB.tyBtnEnt.bValue	:= TRUE;
		tyP0933PushConv.tyFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0933PushConv.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		ePshrConvAct	:= ConvActEnt;
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		
		IF p_ePshrConvStat = ConvActEnt AND p_ePshrConvStatus = Done THEN
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnEnt.bValue	:= FALSE;
			tyP0933PushConv.tyFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0933PushConv.tyFB.tyBtnStop.bRtLk	:= TRUE;
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat));
		END_IF
		
	ELSIF tyP0933PushConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0933PushConv.tyFB.tyBtnExit.bValue	:= TRUE;
		tyP0933PushConv.tyFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0933PushConv.tyFB.tyBtnStop.bValue	:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bRtLk	:= FALSE;
		
		ePshrConvAct	:= ConvActExit;
		
		IF p_ePshrConvStat = ConvActExit AND p_ePshrConvStatus = Done THEN
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyFB.tyBtnExit.bRtCompl	:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnExit.bValue	:= FALSE;
			tyP0933PushConv.tyFB.tyBtnExit.bRtLk	:= FALSE;
			
			
			tyP0933PushConv.tyFB.tyBtnStop.bValue	:= TRUE;
			tyP0933PushConv.tyFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl = TRUE THEN	
		tyP0933PushConv.tyFB.tyBtnCylExit.bValue	:= TRUE;
		tyP0933PushConv.tyFB.tyBtnCylExit.bRtLk		:= TRUE;
		
		tyP0933PushConv.tyFB.tyBtnStop.bValue		:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
		diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
		ePshrConvAct	:= ConvActExitPshr;
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
		IF p_ePshrConvStat = ConvActExitPshr AND p_ePshrConvStatus = Done THEN
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl	:= FALSE;
		
			tyP0933PushConv.tyFB.tyBtnCylExit.bValue	:= FALSE;
			tyP0933PushConv.tyFB.tyBtnCylExit.bRtLk		:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnStop.bValue		:= TRUE;
			tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= TRUE;
			
		END_IF
		
	END_IF
	
	//Pusher
	IF p_tyNtParamCurr.bProjServoPullerPusherPrep = TRUE AND tyP0933PushConv.tyFB.tyBtnStop.bRtCompl = FALSE THEN
		
		IF tyP0933PushConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
			IF tyP0933PushConv.tyFB.tyBtnRet.bRtCompl = TRUE THEN
				tyP0933PushConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
				
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= TRUE;
				tyP0933PushConv.tyFB.tyBtnExt.bValue	:= FALSE;
				
			ELSIF tyP0933PushConv.tyFB.tyBtnExt.bRtCompl = TRUE THEN
				tyP0933PushConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
				
				tyP0933PushConv.tyFB.tyBtnExt.bValue	:= TRUE;
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			END_IF
			
			IF tyP0933PushConv.tyFB.tyBtnRet.bValue = TRUE THEN
				ePshrConvAct	:= ConvActPshrRet;
				diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
				
				tyP0933PushConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePshrConvStat = ConvActPshrRet AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					diMnlPPJogSpd	:= 0;
					tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;

				ELSIF p_ePshrConvStatus = Error THEN
					tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
					diMnlPPJogSpd	:= 0;
				END_IF
				
			ELSIF tyP0933PushConv.tyFB.tyBtnExt.bValue = TRUE THEN
				ePshrConvAct	:= ConvActPshrExt;
				diMnlPPJogSpd	:= diMnlMtrPshrExtSpd*diMnlServoMtrMaxPulRatio;
				tyP0933PushConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePshrConvStat = ConvActPshrExt AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					diMnlPPJogSpd	:= 0;
					tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;

				ELSIF p_ePshrConvStatus = Error THEN
					tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;
					diMnlPPJogSpd	:= 0;
				END_IF
				
			END_IF
			
			//Update Status
			tyP0933PushConv.tyDC.tyBtnRet.bValue	:= NOT p_bPshrConvPshrExtCtrl;
			tyP0933PushConv.tyDC.tyBtnExt.bValue	:= p_bPshrConvPshrExtCtrl;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.bProjServoPullerPusherPrep = FALSE AND tyP0933PushConv.tyFB.tyBtnStop.bRtCompl = FALSE
		THEN
//		IF usiExtRetTest = 0 THEN //Ah Liang Start
//			fbPushRetRestTmr(IN:=FALSE);
//			fbPushExtRestTmr(IN:=FALSE);
//		ELSIF usiExtRetTest = 1 THEN 
//			fbPushRetRestTmr(IN:=TRUE);
//			fbPushExtRestTmr(IN:=FALSE);
//		ELSIF usiExtRetTest = 2 THEN
//			fbPushExtRestTmr(IN:=TRUE);
//			fbPushRetRestTmr(IN:=FALSE);
//		END_IF
//		IF fbPushRetRestTmr.Q THEN 
//			tyP0933PushConv.tyFB.tyBtnExt.bRtCompl := TRUE;
//		ELSIF fbPushExtRestTmr.Q  THEN
//			tyP0933PushConv.tyFB.tyBtnRet.bRtCompl := TRUE;
//		END_IF //Ah Liang End
		
		IF tyP0933PushConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
			IF tyP0933PushConv.tyFB.tyBtnRet.bRtCompl = TRUE THEN
				tyP0933PushConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
				
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= TRUE;
				tyP0933PushConv.tyFB.tyBtnExt.bValue	:= FALSE;
				
			ELSIF tyP0933PushConv.tyFB.tyBtnExt.bRtCompl = TRUE THEN
				tyP0933PushConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
				
				tyP0933PushConv.tyFB.tyBtnExt.bValue	:= TRUE;
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			END_IF
			
			IF tyP0933PushConv.tyFB.tyBtnRet.bValue = TRUE THEN
				ePshrConvAct	:= ConvActPshrRet;
				
				tyP0933PushConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePshrConvStat = ConvActPshrRet AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					
					tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
					//for testing Ah Liang
//					tyP0933PushConv.tyFB.tyBtnExt.bRtCompl := TRUE;
//					usiExtRetTest := 1 ; 
					
				ELSIF p_ePshrConvStatus = Error THEN
					tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
					
				END_IF
				
			ELSIF tyP0933PushConv.tyFB.tyBtnExt.bValue = TRUE THEN
				ePshrConvAct			:= ConvActPshrExt;
				
				tyP0933PushConv.tyFB.tyBtnStop.bValue		:= FALSE;
				tyP0933PushConv.tyFB.tyBtnStop.bRtLk		:= FALSE;
				
				IF p_ePshrConvStat = ConvActPshrExt AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					
					tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;
					//for testing Ah Liang
//					tyP0933PushConv.tyFB.tyBtnRet.bRtCompl := TRUE;
//					usiExtRetTest := 2;
				ELSIF p_ePshrConvStatus = Error THEN
					tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;
					
				END_IF
				
			END_IF
			
			//Update Status
			tyP0933PushConv.tyDC.tyBtnRet.bValue	:= NOT p_bPshrConvPshrExtCtrl;
			tyP0933PushConv.tyDC.tyBtnExt.bValue	:= p_bPshrConvPshrExtCtrl;
			
		END_IF
	
	ELSE
		
		tyP0933PushConv.tyFB.tyBtnExt.bRtCompl		:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExt.bValue		:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExt.bRtLk			:= FALSE;
		
		tyP0933PushConv.tyFB.tyBtnRet.bRtCompl		:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bValue		:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bRtLk			:= FALSE;
		
	END_IF
	
	//Pusher
	IF tyP0933PushConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0933PushConv.tyFB.tyBtnRet.bRtCompl = TRUE THEN
			tyP0933PushConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnRet.bValue	:= TRUE;
			tyP0933PushConv.tyFB.tyBtnExt.bValue	:= FALSE;
			
		ELSIF tyP0933PushConv.tyFB.tyBtnExt.bRtCompl = TRUE THEN
			tyP0933PushConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
			
			tyP0933PushConv.tyFB.tyBtnExt.bValue	:= TRUE;
			tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
			
		END_IF
		
		IF tyP0933PushConv.tyFB.tyBtnRet.bValue = TRUE THEN
			ePshrConvAct	:= ConvActPshrRet;
			
			IF p_ePshrConvStat = ConvActPshrRet AND p_ePshrConvStatus = Done THEN
				ePshrConvAct	:= ConvActIdle;
				
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			ELSIF p_ePshrConvStatus = Error THEN
				tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
				
			END_IF
			
		ELSIF tyP0933PushConv.tyFB.tyBtnExt.bValue = TRUE THEN
			ePshrConvAct	:= ConvActPshrExt;
			
			IF p_ePshrConvStat = ConvActPshrExt AND p_ePshrConvStatus = Done THEN
				ePshrConvAct	:= ConvActIdle;
				
				tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;
				
			ELSIF p_ePshrConvStatus = Error THEN
				tyP0933PushConv.tyFB.tyBtnExt.bValue := FALSE;
				
			END_IF
			
		END_IF
		
		//Update Status
		tyP0933PushConv.tyDC.tyBtnRet.bValue	:= NOT p_bPshrConvPshrExtCtrl;
		tyP0933PushConv.tyDC.tyBtnExt.bValue	:= p_bPshrConvPshrExtCtrl;
		
	END_IF
	
	
	//Mask
	IF p_ePshrConvStatus = Error THEN
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0933PushConv.tyFB.tyBtnExit.bRtCompl = TRUE THEN	
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSIF tyP0933PushConv.tyFB.tyBtnExt.bValue = TRUE OR tyP0933PushConv.tyFB.tyBtnRet.bValue = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
		
	END_IF
	
	
	IF p_tyNtParamCurr.bProjOutletShutPrep AND NOT(p_tyNtParamCurr.bProjOutletShut2Prep) AND NOT(p_tyNtParamCurr.bProjOutletShut2Prep) THEN//single shutter case
		IF p_bLifterBtmSltAPosDiff OR ((p_bTravDPosDiff AND p_bTravEPosDiff AND p_bTravFPosDiff) OR NOT(p_tyDI.bOutShutterOpenRS) )
			THEN
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		END_IF
	ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyNtParamCurr.bProjOutletShut2Prep AND p_tyNtParamCurr.bProjOutletShut2Prep THEN //3 shutter case
		IF p_bLifterBtmSltAPosDiff OR ((p_bTravDPosDiff OR NOT(p_tyDI.bOutShutterOpenRS) ) AND (p_bTravEPosDiff OR NOT(p_tyDI.bOutShutterOpenRS2)) AND (p_bTravFPosDiff OR NOT(p_tyDI.bOutShutterOpenRS3)))
			THEN
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat));
		END_IF
	END_IF 
	
	
	
	//Shutter Control
	IF tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
END_ACTION
