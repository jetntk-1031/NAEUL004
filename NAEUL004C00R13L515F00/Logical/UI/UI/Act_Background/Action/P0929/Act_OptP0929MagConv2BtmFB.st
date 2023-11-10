
ACTION Act_OptP0929MagConv2BtmFB:
	
	//Magazine Conv2eyor
	IF tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtCompl = TRUE THEN
		eOutMagConv2Act	:= MagConvActStop;
		
		IF p_eOutMagConv2Stat = MagConvActStop AND p_eOutMagConv2Status = Done THEN
			eOutMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bValue		:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bValue		:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue		:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.bValue	:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk	:= FALSE;
		
		eOutMagConv2Act	:= MagConvActEnt;
		
		IF p_eOutMagConv2Stat = MagConvActEnt AND p_eOutMagConv2Status = Done THEN
			eOutMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bValue	:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
		
	ELSIF tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyBtmFB.tyBtnExit.bValue	:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk	:= FALSE;
		
		eOutMagConv2Act	:= MagConvActExit;
		
		IF p_eOutMagConv2Stat = MagConvActExit AND p_eOutMagConv2Status = Done THEN
			eOutMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtCompl:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bValue	:= FALSE;
			tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	END_IF
	
	//Stopper
	IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Mid stopper
		IF tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue	:= FALSE;
			
		ELSIF tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Ext Stopper
		IF tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue	:= FALSE;
			
		ELSIF tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bRtCompl = TRUE THEN
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bRtCompl	:= FALSE;
			
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue	:= TRUE;
			tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Action------------
		
		IF tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue = TRUE THEN
				eStopper4Act2	:= PneuActExt;
			
				IF p_eStopper4Stat = PneuActExt AND p_eStopper4Status = Done THEN
					eStopper4Act2	:= PneuActIdle;
					tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
				ELSIF p_eStopper4Status = Error THEN
					tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
				END_IF
			
		ELSIF tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue = TRUE THEN
			eStopper4Act2	:= PneuActRet;
			
			IF p_eStopper4Stat = PneuActRet AND p_eStopper4Status = Done THEN
				eStopper4Act2	:= PneuActIdle;
				tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue := FALSE;
			ELSIF p_eStopper4Status = Error THEN
				tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue = TRUE THEN
			eStopper5Act2	:= PneuActExt;
			
			IF p_eStopper5Stat = PneuActExt AND p_eStopper5Status = Done THEN
				eStopper5Act2	:= PneuActIdle;
				tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			ELSIF p_eStopper5Status = Error THEN
				tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue = TRUE THEN
			eStopper5Act2	:= PneuActRet;
			
			IF p_eStopper5Stat = PneuActRet AND p_eStopper5Status = Done THEN
				eStopper5Act2	:= PneuActIdle;
				tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue := FALSE;
			ELSIF p_eStopper5Status = Error THEN
				tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue := FALSE;
			END_IF
			
		END_IF
			
		
		//Update Status
//		tyP0930MagConv2Btm1.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bMagConv2Btm2Clp1ClprFixClampCtrl;
//		tyP0930MagConv2Btm1.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConv2Btm2Clp1ClprFixClampCtrl;
//		tyP0930MagConv2Btm1.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConv2Btm2Clp1ClprRmtClampCtrl;
//		tyP0930MagConv2Btm1.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConv2Btm2Clp1ClprRmtClampCtrl;
//	
//		tyP0930MagConv2Btm1.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
//		tyP0930MagConv2Btm1.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
//		tyP0930MagConv2Btm1.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp1RetCtrl;
//		tyP0930MagConv2Btm1.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp1ExtCtrl;	
	END_IF
	
	//Mask
//	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//
//	ELSE
//		
//	IF p_eMagConv2Btm2Clp1Status = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConv2Btm1.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConv2Btm1.tyFB.tyBtnExit.bRtCompl = TRUE THEN
//		
//			fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.bValue = TRUE 
//			OR tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
//			OR tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.bValue = TRUE 
//			THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConv2Btm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//			
//	END_IF
//END_IF
//	
//	IF p_tyDI.bMagConv2BtmCAB717MagSen1 THEN
//			fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//	END_IF
//
//	IF p_bMagConv2Btm2Clp1ClprFixClampCtrl OR p_bMagConv2Btm2Clp1ClprRmtClampCtrl THEN
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConv2Btm1.tyFB.tyBtnExit.uiMaskRtStat));
//	END_IF
//		
		
END_ACTION
