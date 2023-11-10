
ACTION Act_OptP0928MagConv1BtmFB:
	
	//Magazine Conveyor
	IF tyP0928MagConv.tyBtmFB.tyBtnStop.bRtCompl = TRUE THEN
		eOutMagConvAct	:= MagConvActStop;
		
		IF p_eOutMagConvStat = MagConvActStop AND p_eOutMagConvStatus = Done THEN
			eOutMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtCompl	:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bValue		:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnExit.bRtCompl	:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnExit.bValue		:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnExit.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnStop.bRtCompl	:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnStop.bValue		:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtCompl = TRUE THEN
		tyP0928MagConv.tyBtmFB.tyBtnEnt.bValue	:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtLk		:= TRUE;
		
		tyP0928MagConv.tyBtmFB.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk	:= FALSE;
		
		eOutMagConvAct	:= MagConvActEnt;
		
		IF p_eOutMagConvStat = MagConvActEnt AND p_eOutMagConvStatus = Done THEN
			eOutMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bValue	:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnStop.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
		
	ELSIF tyP0928MagConv.tyBtmFB.tyBtnExit.bRtCompl = TRUE THEN
		tyP0928MagConv.tyBtmFB.tyBtnExit.bValue	:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnExit.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyBtmFB.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk	:= FALSE;
		
		eOutMagConvAct	:= MagConvActExit;
		
		IF p_eOutMagConvStat = MagConvActExit AND p_eOutMagConvStatus = Done THEN
			eOutMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyBtmFB.tyBtnExit.bRtCompl:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnExit.bValue	:= FALSE;
			tyP0928MagConv.tyBtmFB.tyBtnExit.bRtLk	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnStop.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	END_IF
	
	//Stopper
	IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE THEN
		
		//Mid stopper
		IF tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bRtCompl = TRUE THEN
			tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue	:= FALSE;
			
		ELSIF tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bRtCompl = TRUE THEN
			tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Ext Stopper
		IF tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bRtCompl = TRUE THEN
			tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue	:= FALSE;
			
		ELSIF tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bRtCompl = TRUE THEN
			tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bRtCompl	:= FALSE;
			
			tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue	:= TRUE;
			tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			
		END_IF
		
		//Action------------
		
		IF tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue = TRUE THEN
				eStopper4Act	:= PneuActExt;
			
				IF p_eStopper4Stat = PneuActExt AND p_eStopper4Status = Done THEN
					eStopper4Act	:= PneuActIdle;
					tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
				ELSIF p_eStopper4Status = Error THEN
					tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue	:= FALSE;
				END_IF
			
		ELSIF tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue = TRUE THEN
			eStopper4Act	:= PneuActRet;
			
			IF p_eStopper4Stat = PneuActRet AND p_eStopper4Status = Done THEN
				eStopper4Act	:= PneuActIdle;
				tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue := FALSE;
			ELSIF p_eStopper4Status = Error THEN
				tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue := FALSE;
			END_IF
			
		END_IF
		
		IF tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue = TRUE THEN
			eStopper5Act	:= PneuActExt;
			
			IF p_eStopper5Stat = PneuActExt AND p_eStopper5Status = Done THEN
				eStopper5Act	:= PneuActIdle;
				tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			ELSIF p_eStopper5Status = Error THEN
				tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue = TRUE THEN
			eStopper5Act	:= PneuActRet;
			
			IF p_eStopper5Stat = PneuActRet AND p_eStopper5Status = Done THEN
				eStopper5Act	:= PneuActIdle;
				tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue := FALSE;
			ELSIF p_eStopper5Status = Error THEN
				tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue := FALSE;
			END_IF
			
		END_IF
			
		
		//Update Status
//		tyP0930MagConvBtm1.tyDC.tyBtnFixedUnclamp.bValue	:= NOT p_bMagConvBtm2Clp1ClprFixClampCtrl;
//		tyP0930MagConvBtm1.tyDC.tyBtnFixedClamp.bValue		:= p_bMagConvBtm2Clp1ClprFixClampCtrl;
//		tyP0930MagConvBtm1.tyDC.tyBtnRemoteUnclamp.bValue	:= NOT p_bMagConvBtm2Clp1ClprRmtClampCtrl;
//		tyP0930MagConvBtm1.tyDC.tyBtnRemoteClamp.bValue	:= p_bMagConvBtm2Clp1ClprRmtClampCtrl;
//	
//		tyP0930MagConvBtm1.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;	
//		tyP0930MagConvBtm1.tyDC.tyBtnSelClamp.bRtCompl		:= FALSE;
//		tyP0930MagConvBtm1.tyDC.tyBtnSelUnclamp.bValue	:= p_bSelClamp1RetCtrl;
//		tyP0930MagConvBtm1.tyDC.tyBtnSelClamp.bValue	:= p_bSelClamp1ExtCtrl;	
	END_IF
	
	//Mask
//	IF p_tyUsrMgmtCurrAccessRgt.bManualFBOnly THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//
//	ELSE
//		
//	IF p_eMagConvBtm2Clp1Status = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConvBtm1.tyFB.tyBtnEnt.bRtCompl = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConvBtm1.tyFB.tyBtnExit.bRtCompl = TRUE THEN
//		
//			fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSIF tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.bValue = TRUE 
//			OR tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
//			OR tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.bValue = TRUE 
//			THEN
//		
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0930MagConvBtm1.tyCom.tyBtnSwitch.uiMaskRtStat));
//			
//	END_IF
//END_IF
//	
//	IF p_tyDI.bMagConvBtmCAB717MagSen1 THEN
//			fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnSelClamp.uiMaskRtStat));
//	END_IF
//
//	IF p_bMagConvBtm2Clp1ClprFixClampCtrl OR p_bMagConvBtm2Clp1ClprRmtClampCtrl THEN
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnEnt.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0930MagConvBtm1.tyFB.tyBtnExit.uiMaskRtStat));
//	END_IF
//		
		
END_ACTION
