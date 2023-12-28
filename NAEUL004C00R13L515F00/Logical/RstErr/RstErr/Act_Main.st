
ACTION Act_Main:
	
	IF EDGENEG(tylocalRstErr.In.bManual) THEN
		tylocalRstErr.In.eAct	:= RstErrActIdle;
	END_IF
	
	//Reset Done
	IF tylocalRstErr.Out.eStatus = Done AND tylocalRstErr.In.eAct = RstErrActIdle THEN
		tylocalRstErr.Out.eStat	:= RstErrActIdle;
	END_IF
	
	//Set p_eAct
	IF tylocalRstErr.Out.eStatus = Idle THEN
		tylocalRstErr.Out.eStat	:= tylocalRstErr.In.eAct;
	END_IF
	
		
	//Main
	CASE tylocalRstErr.Out.eStat OF
		
		RstErrActIdle:
			IF tylocalRstErr.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbSafetyRlyRstTm(IN := FALSE);
						
				tylocalRstErr.Out.sStatTxt	:= a_sStatText[tylocalRstErr.Out.eStat];
		
				IF tylocalRstErr.In.bManual = FALSE THEN
					tylocalRstErr.Out.bSafetyRlyRst	:= FALSE;
				END_IF
				
			END_IF
			
			IF EDGENEG(tylocalRstErr.In.bManual) THEN
				tylocalRstErr.Out.bSafetyRlyRst	:= FALSE;
			END_IF
			
			tylocalRstErr.Out.eStatus	:= Idle;
		
		RstErrActRun:
			IF tylocalRstErr.Out.eStatus = Idle OR tylocalRstErr.Out.eStatus = Busy THEN
				
				tylocalRstErr.Out.eStatus	:= Busy;
						
				tylocalRstErr.Out.sStatTxt	:= a_sStatText[tylocalRstErr.Out.eStat];
		
				IF tylocalRstErr.Out.bSafetyRlyRst=FALSE THEN
					tylocalRstErr.Out.udiRstErr	:= tylocalRstErr.Out.udiRstErr + 1;
				END_IF
				
				IF tylocalRstErr.In.bSafetyRlySig = FALSE THEN
					tylocalRstErr.Out.bSafetyRlyRst	:= TRUE;
				END_IF
				
				IF tylocalRstErr.Out.bSafetyRlyRst = TRUE THEN
					fbSafetyRlyRstTm(IN := TRUE, PT := T#500ms);
					
					IF fbSafetyRlyRstTm.Q = TRUE THEN
						tylocalRstErr.Out.bSafetyRlyRst	:= FALSE;
						tylocalRstErr.Out.eStatus			:= Done;
					END_IF
					
				ELSE
					tylocalRstErr.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		RstErrActSetSafetyRlyRst:
			IF tylocalRstErr.Out.eStatus = Idle OR tylocalRstErr.Out.eStatus = Busy THEN
		
				tylocalRstErr.Out.sStatTxt	:= a_sStatText[tylocalRstErr.Out.eStat];
		
				//Reset
				fbSafetyRlyRstTm(IN := FALSE);
				
				tylocalRstErr.Out.bSafetyRlyRst	:= TRUE;
				tylocalRstErr.Out.eStatus			:= Done;
				
			END_IF
		
		RstErrActRstSafetyRlyRst:
			IF tylocalRstErr.Out.eStatus = Idle OR tylocalRstErr.Out.eStatus = Busy THEN
		
				tylocalRstErr.Out.sStatTxt	:= a_sStatText[tylocalRstErr.Out.eStat];
		
				//Reset
				fbSafetyRlyRstTm(IN := FALSE);
				
				tylocalRstErr.Out.bSafetyRlyRst	:= FALSE;
				tylocalRstErr.Out.eStatus			:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
