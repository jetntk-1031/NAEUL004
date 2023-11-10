
ACTION Act_OptP0929MagConv2TopFB:
	
	//Magazine Conv2eyor
	IF tyP0929MagConv2.tyTopFB.tyBtnStop.bRtCompl = TRUE THEN
		eInMagConv2Act	:= MagConvActStop;
		
		IF p_eInMagConv2Stat = MagConvActStop AND p_eInMagConv2Status = Done THEN
			eInMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bValue		:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnExit.bValue	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnExit.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnStop.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyTopFB.tyBtnEnt.bValue		:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0929MagConv2.tyTopFB.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk		:= FALSE;
		
		eInMagConv2Act	:= MagConvActEnt;
		
		IF p_eInMagConv2Stat = MagConvActEnt AND p_eInMagConv2Status = Done THEN
			eInMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bValue	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnStop.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
		
	ELSIF tyP0929MagConv2.tyTopFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyTopFB.tyBtnExit.bValue	:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnExit.bRtLk		:= TRUE;
		
		tyP0929MagConv2.tyTopFB.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk		:= FALSE;
		
		eInMagConv2Act	:= MagConvActExit;
		
		IF p_eInMagConv2Stat = MagConvActExit AND p_eInMagConv2Status = Done THEN
			eInMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyTopFB.tyBtnExit.bRtCompl:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnExit.bValue	:= FALSE;
			tyP0929MagConv2.tyTopFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnStop.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	END_IF
	
	//Stopper
	IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Ent Stopper
		IF tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue		:= FALSE;
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue		:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Mid stopper
		IF tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue	:= FALSE;
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Ext Stopper
		IF tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue	:= FALSE;
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue	:= TRUE;
			tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Action------------
		IF tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue = TRUE THEN
			eStopper1Act2	:= PneuActExt;
			
			IF p_eStopper1Stat2 = PneuActExt AND p_eStopper1Status2 = Done THEN
				eStopper1Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			ELSIF p_eStopper1Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue = TRUE THEN
			eStopper1Act2	:= PneuActRet;
			
			IF p_eStopper1Stat2 = PneuActRet AND p_eStopper1Status2 = Done THEN
				eStopper1Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue := FALSE;
			ELSIF p_eStopper1Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue = TRUE THEN
			eStopper2Act2	:= PneuActExt;
			
			IF p_eStopper2Stat2 = PneuActExt AND p_eStopper2Status2 = Done THEN
				eStopper2Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			ELSIF p_eStopper2Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue = TRUE THEN
			eStopper2Act2	:= PneuActRet;
			
			IF p_eStopper2Stat2 = PneuActRet AND p_eStopper2Status2 = Done THEN
				eStopper2Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue := FALSE;
			ELSIF p_eStopper2Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue = TRUE THEN
			eStopper3Act2	:= PneuActExt;
			
			IF p_eStopper3Stat2 = PneuActExt AND p_eStopper3Status2 = Done THEN
				eStopper3Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			ELSIF p_eStopper3Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue = TRUE THEN
			eStopper3Act2	:= PneuActRet;
			
			IF p_eStopper3Stat2 = PneuActRet AND p_eStopper3Status2 = Done THEN
				eStopper3Act2	:= PneuActIdle;
				tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue := FALSE;
			ELSIF p_eStopper3Status2 = Error THEN
				tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		//Update Status
//		tyP0929MagConv2.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bStopper1RetCtrl2;
//		tyP0929MagConv2.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv22Clp1ClprFixClampCtrl;
//		tyP0929MagConv2.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv22Clp1ClprRmtClampCtrl;
//		tyP0929MagConv2.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv22Clp1ClprRmtClampCtrl;
//	
//		tyP0929MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
//		tyP0929MagConv2.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
//		tyP0929MagConv2.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp1RetCtrl;
//		tyP0929MagConv2.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp1ExtCtrl;	
	END_IF
	
	//Mask
//	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
//		
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//
//	ELSE
//		
//		IF p_eInMagConv2Status = Error THEN
//		
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtCompl = TRUE THEN
//		
//			fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0929MagConv2.tyTopFB.tyBtnExit.bRtCompl = TRUE THEN
//		
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//		ELSIF tyP0929MagConv2.tyTopFB.tyBtnFixedClamp.bValue = TRUE OR tyP0929MagConv2.tyTopFB.tyBtnRemoteClamp.bValue = TRUE 
//			OR tyP0929MagConv2.tyTopFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0929MagConv2.tyTopFB.tyBtnRemoteUnclamp.bValue = TRUE 
//			OR tyP0929MagConv2.tyTopFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0929MagConv2.tyTopFB.tyBtnSelClamp.bValue = TRUE 
//			THEN
//		
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat));
//			fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat));
//			fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat));
//			
//	END_IF
//END_IF
	
		
END_ACTION
