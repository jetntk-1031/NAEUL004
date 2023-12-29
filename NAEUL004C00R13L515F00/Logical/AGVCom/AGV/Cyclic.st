(** 2019-01-11 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
	ELSE
		IF (tylocalAGV.In.bEn = TRUE) AND (tylocalAGV.In.bEn = TRUE) AND (tylocalAGV.In.bDis = FALSE) THEN
			Act_Link;
			Act_Background;
			Act_Main;
		ELSE
			IF tylocalAGV.Out.eStat <> AGVMagActIdle THEN
				tylocalAGV.Out.eStatus	:= Done;
			ELSE
				tylocalAGV.Out.eStatus	:= Idle;
			END_IF
		END_IF
		Act_Alarm;
	END_IF
	
END_PROGRAM
