
ACTION Act_EntP0850Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0850OvenInfo.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0850OvenCom ACCESS ADR(tyP0850OvenInfo.tyCom);
	p_tyP0850OvenExtddSingle ACCESS ADR(tyP0850OvenInfo.tyExtddA);
	p_tyP0850OvenExtddDualSeparate ACCESS ADR(tyP0850OvenInfo.tyExtddABSeparate);
	p_tyP0850OvenExtddDualMix ACCESS ADR(tyP0850OvenInfo.tyExtddABMix);
	p_tyP0850OvenStdSingle ACCESS ADR(tyP0850OvenInfo.tyStdA);
	p_tyP0850OvenStdDual ACCESS ADR(tyP0850OvenInfo.tyStdAB);
	
	//Display
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyStdA.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyStdB.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyStdAB.tyLyr.uiRtStat));
	
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyExtddA.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyExtddB.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyExtddABSeparate.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0850OvenInfo.tyExtddABMix.tyLyr.uiRtStat));
	
	IF p_tyNtParamCurr.bOvenInfoExtdPrep = TRUE AND p_tyMcParamCurr.bExtdOvenEn = TRUE THEN
		//Extended Mode
		tyP0850OvenInfo.tyCom.tyTxtTittle.usiValueIdx	:= 1;
		
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			ULModUnloadFrontLnA, ULModRejFrontLnA, ULModRejFrontLnARev:
				
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyExtddA.tyLyr.uiRtStat));
				p_tyP0850OvenExtddSingle ACCESS ADR(tyP0850OvenInfo.tyExtddA);
				
			ULModUnloadRearLnB, ULModRejRearLnB, ULModRejRearLnBRev:
				
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyExtddB.tyLyr.uiRtStat));
				p_tyP0850OvenExtddSingle ACCESS ADR(tyP0850OvenInfo.tyExtddB);
				
			ULModUnloadDualLnAB:
				
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyExtddABSeparate.tyLyr.uiRtStat));
				p_tyP0850OvenExtddDualSeparate ACCESS ADR(tyP0850OvenInfo.tyExtddABSeparate);
				
			ULModRejDualLnA, ULModRejDualLnB:
				
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyExtddABMix.tyLyr.uiRtStat));
				p_tyP0850OvenExtddDualMix ACCESS ADR(tyP0850OvenInfo.tyExtddABMix);
			
		END_CASE
		
	ELSE
		//Standard Mode
		tyP0850OvenInfo.tyCom.tyTxtTittle.usiValueIdx	:= 0;
		
		CASE p_tyProdRcpCurrRcp2.usiMcMod OF
			ULModUnloadFrontLnA, ULModRejFrontLnA, ULModRejFrontLnARev:
				
				p_tyP0850OvenStdSingle ACCESS ADR(tyP0850OvenInfo.tyStdA);
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyStdA.tyLyr.uiRtStat));
				
			ULModUnloadRearLnB, ULModRejRearLnB, ULModRejRearLnBRev:
				
				p_tyP0850OvenStdSingle ACCESS ADR(tyP0850OvenInfo.tyStdB);
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyStdB.tyLyr.uiRtStat));
				
			ULModUnloadDualLnAB, ULModRejDualLnA, ULModRejDualLnB:
				
				p_tyP0850OvenStdDual ACCESS ADR(tyP0850OvenInfo.tyStdAB);
				fUIInRtStatOff(ADR(tyP0850OvenInfo.tyStdAB.tyLyr.uiRtStat));
			
		END_CASE
		
	END_IF
	
	tyP0850OvenInfo.tyCom.tyBtnCntrA.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyMcParamCurr.bExtdOvenEn);
	tyP0850OvenInfo.tyCom.tyBtnCntrB.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyMcParamCurr.bExtdOvenEn AND p_tyNtParamCurr.bProjLaneBPrep);
	
END_ACTION
