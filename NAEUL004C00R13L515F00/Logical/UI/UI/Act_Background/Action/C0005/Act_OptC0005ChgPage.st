
ACTION Act_OptC0005ChgPage:

	//Control Alarm and Warning
	IF tyCommon.tyMain.tyHotspotNaviStart.bRtCompl = TRUE THEN
		tyCommon.tyMain.tyHotspotNaviStart.bRtCompl := FALSE;
		
		IF p_bAlarmErr = TRUE OR p_bAlarmWarning THEN
			eChgPage  := UIP0600Alm;	
		END_IF
		
	END_IF

	//Display Alarm Button Control	
//	tyCommon.tyMain.tyBtnAlarm.uiRtStat.0		:= NOT (p_bAlarmErr OR p_bAlarmWarning) ;
	tyCommon.tyMain.tyHotspotNaviStart.uiRtStat.0 := tyCommon.tyMain.tyBtnStart.uiMaskRtStat.0;	
	//Mask Control
//	tyCommon.tyMain.tyBtnAlarm.uiMaskRtStat.0	:= NOT ((p_bAlarmErr OR p_bAlarmWarning) AND (eCurrPage = UIP0600Alm));

END_ACTION
