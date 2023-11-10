
ACTION Act_EntP0002Disp:
	
	//Access
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
//	p_tyC0008MsgBox ACCESS ADR(tyP0002Menu.tyMsgBoxHide);
	IF NOT bPromptSessionExp THEN
		p_tyC0008MsgBox ACCESS ADR(tyP0002Menu.tyMsgBoxHide);
	END_IF
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0002Menu ACCESS ADR(tyP0002Menu.tyMenu);
	
	//Display
	//Leader Follower
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		IF p_tyNtParamCurr.bLFPrep = TRUE AND p_tyMcParamCurr.bLFEn = TRUE AND ((NOT p_tyNtParamCurr.bLFUsrSetPrep AND p_tyNtParamCurr.bLeaderMc) OR (p_tyNtParamCurr.bLFUsrSetPrep AND p_tyMcParamCurr.bLFLeaderMc)) AND p_tyMcParamCurr.eUSCommA <> McSetCommModHermes AND p_tyMcParamCurr.eUSCommB <> McSetCommModHermes THEN
			fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnLFSet.uiRtStat));
			fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnLFCtrl.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnLFSet.uiRtStat));
			fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnLFCtrl.uiRtStat));
		END_IF
	ELSE
		IF p_tyNtParamCurr.bLFPrep = TRUE AND p_tyMcParamCurr.bLFEn = TRUE AND ((NOT p_tyNtParamCurr.bLFUsrSetPrep AND p_tyNtParamCurr.bLeaderMc) OR (p_tyNtParamCurr.bLFUsrSetPrep AND p_tyMcParamCurr.bLFLeaderMc)) AND p_tyMcParamCurr.eUSCommA <> McSetCommModHermes THEN
			fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnLFSet.uiRtStat));
			fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnLFCtrl.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnLFSet.uiRtStat));
			fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnLFCtrl.uiRtStat));
		END_IF
	END_IF
	
	//Login Logout Display
	IF bLoginSuccess = FALSE THEN
		tyP0002Menu.tyMenu.tyBtnLogin.usiBitmapIdx	:= 0;
		tyP0002Menu.tyMenu.tyBtnLogin.usiTxtIdx		:= 0;
	ELSE
		tyP0002Menu.tyMenu.tyBtnLogin.usiBitmapIdx	:= 1;
		tyP0002Menu.tyMenu.tyBtnLogin.usiTxtIdx		:= 1;
	END_IF
	
	//Oven Info
	tyP0002Menu.tyMenu.tyBtnOvenInfo.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyMcParamCurr.bOvenEn);
	
	//Mask
	Act_OptP0002Mask;
	
//	IF p_tyMcParamCurr.bAGVComEn = FALSE THEN
//		fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnSimu.uiRtStat));
//	ELSE
//		fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnSimu.uiRtStat));
//	END_IF
	
END_ACTION
