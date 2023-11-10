       (** 2018-12-21 **)
ACTION Act_Main_C0005:
	
	tyCommon.tyMain.tyBtnBuzzer.uiRtStat.0	:= p_tyNtParamCurr.tyDOSettings.diBuzzer = 0;
	
	fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnAlarm.uiRtStat));

END_ACTION
