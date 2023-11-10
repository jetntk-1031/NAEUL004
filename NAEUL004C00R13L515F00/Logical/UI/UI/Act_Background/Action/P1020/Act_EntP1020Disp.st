
ACTION Act_EntP1020Disp: 
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1020McSetNavi.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1020McSetNavi ACCESS ADR(tyP1020McSetNavi.tyNavi);
	
	IF (p_tyNtParamCurr.bHermesSvyPrep AND p_tyMcParamCurr.bHermesSvyEn) 
		OR p_tyNtParamCurr.bLFPrep OR p_tyNtParamCurr.bLCSLFPrep OR p_tyNtParamCurr.bLCSReqRcpPrep OR p_tyNtParamCurr.bLCSLiveDatPrep 
		OR p_tyNtParamCurr.bLCSManageRcpPrep OR p_tyNtParamCurr.bLFUsrSetPrep OR p_tyNtParamCurr.bLFUsrSetPrep 
		OR p_tyNtParamCurr.bUSWidthChkPrep OR p_tyNtParamCurr.bDSWidthChkPrep THEN
		
		fUIInRtStatOff(ADR(tyP1020McSetNavi.tyNavi.tyBtnVCommSet.uiRtStat)); 
	ELSE 
		fUIInRtStatHide(ADR(tyP1020McSetNavi.tyNavi.tyBtnVCommSet.uiRtStat));
	END_IF
	
END_ACTION
