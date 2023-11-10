
ACTION Act_OptP0921RstMnl: 
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eInShutterStatus = Error)) THEN
		
		eInShutterAct	:= PneuActIdle;
		
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue	:= TRUE;
		
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eOutShutterStatus = Error)) THEN
		
		eOutShutterAct	:= PneuActIdle;
		
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue		:= FALSE;
		
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue		:= FALSE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bValue := FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bValue := FALSE;
		
		IF p_tyNtParamCurr.bProjInletShutPrep THEN
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat));
		END_IF
		IF p_tyNtParamCurr.bProjOutletShutPrep THEN
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
	
END_ACTION
