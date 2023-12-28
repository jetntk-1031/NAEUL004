(** 2019-03-29 **)
PROGRAM _CYCLIC

	
	
	IF bInitialDone = FALSE THEN
		IF 	g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;	
			Act_Initial;
		END_IF	
	ELSE
		
		Act_InputConfig;
		
		IF (tylocalPneu.In.bPrep = TRUE) AND (tylocalPneu.In.bEn = TRUE) AND (tylocalPneu.In.bDis = FALSE) THEN
			Act_Main;
		ELSE
			IF tylocalPneu.Out.eStat <> PneuActIdle THEN
				IF eStat = PneuActSetExt OR eStat = PneuActExt THEN
					tylocalPneu.Out.bExtended	:= TRUE;
					tylocalPneu.Out.bRetracted	:= FALSE;
				ELSIF eStat = PneuActSetRet OR eStat = PneuActRet THEN
					tylocalPneu.Out.bExtended	:= FALSE;
					tylocalPneu.Out.bRetracted	:= TRUE;
				END_IF
				tylocalPneu.Out.eStatus	:= Done;
			ELSE
				tylocalPneu.Out.eStatus	:= Idle;
			END_IF
		END_IF
		
		Act_OutputConfig;
		
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
