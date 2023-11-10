
ACTION Act_OptP0928MagConv1TopFB:
	
	//Magazine Conveyor
	IF tyP0928MagConv.tyTopFB.tyBtnStop.bRtCompl = TRUE THEN
		eInMagConvAct	:= MagConvActStop;
		
		IF p_eInMagConvStat = MagConvActStop AND p_eInMagConvStatus = Done THEN
			eInMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyTopFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnEnt.bValue		:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnExit.bValue		:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnExit.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnStop.bValue		:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP0928MagConv.tyTopFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0928MagConv.tyTopFB.tyBtnEnt.bValue	:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0928MagConv.tyTopFB.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk	:= FALSE;
		
		eInMagConvAct	:= MagConvActEnt;
		
		IF p_eInMagConvStat = MagConvActEnt AND p_eInMagConvStatus = Done THEN
			eInMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyTopFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnEnt.bValue	:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnStop.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
		
	ELSIF tyP0928MagConv.tyTopFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0928MagConv.tyTopFB.tyBtnExit.bValue	:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyTopFB.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk	:= FALSE;
		
		eInMagConvAct	:= MagConvActExit;
		
		IF p_eInMagConvStat = MagConvActExit AND p_eInMagConvStatus = Done THEN
			eInMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyTopFB.tyBtnExit.bRtCompl:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnExit.bValue	:= FALSE;
			tyP0928MagConv.tyTopFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnStop.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	END_IF
	
	//Stopper
	IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Ent Stopper
		IF tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue		:= FALSE;
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue		:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Mid stopper
		IF tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue	:= FALSE;
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Ext Stopper
		IF tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue	:= FALSE;
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bRtCompl = TRUE THEN
			tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue	:= TRUE;
			tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Action------------
		IF tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue = TRUE THEN
			eStopper1Act	:= PneuActExt;
			
			IF p_eStopper1Stat = PneuActExt AND p_eStopper1Status = Done THEN
				eStopper1Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			ELSIF p_eStopper1Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue = TRUE THEN
			eStopper1Act	:= PneuActRet;
			
			IF p_eStopper1Stat = PneuActRet AND p_eStopper1Status = Done THEN
				eStopper1Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue := FALSE;
			ELSIF p_eStopper1Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue = TRUE THEN
			eStopper2Act	:= PneuActExt;
			
			IF p_eStopper2Stat = PneuActExt AND p_eStopper2Status = Done THEN
				eStopper2Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			ELSIF p_eStopper2Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue = TRUE THEN
			eStopper2Act	:= PneuActRet;
			
			IF p_eStopper2Stat = PneuActRet AND p_eStopper2Status = Done THEN
				eStopper2Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue := FALSE;
			ELSIF p_eStopper2Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue = TRUE THEN
			eStopper3Act	:= PneuActExt;
			
			IF p_eStopper3Stat = PneuActExt AND p_eStopper3Status = Done THEN
				eStopper3Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			ELSIF p_eStopper3Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue = TRUE THEN
			eStopper3Act	:= PneuActRet;
			
			IF p_eStopper3Stat = PneuActRet AND p_eStopper3Status = Done THEN
				eStopper3Act	:= PneuActIdle;
				tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue := FALSE;
			ELSIF p_eStopper3Status = Error THEN
				tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		//Update Status
//		tyP0928MagConv.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bStopper1RetCtrl2;
//		tyP0928MagConv.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv2Clp1ClprFixClampCtrl;
//		tyP0928MagConv.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv2Clp1ClprRmtClampCtrl;
//		tyP0928MagConv.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv2Clp1ClprRmtClampCtrl;
//	
//		tyP0928MagConv.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
//		tyP0928MagConv.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
//		tyP0928MagConv.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp1RetCtrl;
//		tyP0928MagConv.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp1ExtCtrl;	
	END_IF
	
	//Mask
//	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
//		
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//
//	ELSE
//		
//		IF p_eInMagConvStatus = Error THEN
//		
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnEntStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnEntStprRet.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnMidStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnMidStprRet.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnExtStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnExtStprRet.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0928MagConv.tyTopFB.tyBtnEnt.bRtCompl = TRUE THEN
//		
//			fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0928MagConv.tyTopFB.tyBtnExit.bRtCompl = TRUE THEN
//		
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0928MagConv.tyTopFB.tyBtnFixedClamp.bValue = TRUE OR tyP0928MagConv.tyTopFB.tyBtnRemoteClamp.bValue = TRUE 
//			OR tyP0928MagConv.tyTopFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0928MagConv.tyTopFB.tyBtnRemoteUnclamp.bValue = TRUE 
//			OR tyP0928MagConv.tyTopFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0928MagConv.tyTopFB.tyBtnSelClamp.bValue = TRUE 
//			THEN
//		
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat));
//			
//	END_IF
//END_IF
	
		
END_ACTION
