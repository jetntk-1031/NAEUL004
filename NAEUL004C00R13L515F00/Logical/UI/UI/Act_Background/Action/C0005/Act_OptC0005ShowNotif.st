
ACTION Act_OptC0005ShowNotif:

	//Control
	IF tyCommon.tyMain.tyBtnNotification.bRtCompl = TRUE OR tyCommon.tyMain1.tyBtnNotification.bRtCompl = TRUE THEN
		tyCommon.tyMain.tyBtnNotification.bRtCompl		:= FALSE;
		tyCommon.tyMain1.tyBtnNotification.bRtCompl		:= FALSE;
		
		fUIInRtStatOff(ADR(tyCommon.tyNotif.tyLyr.uiRtStat));
	END_IF
		
END_ACTION
