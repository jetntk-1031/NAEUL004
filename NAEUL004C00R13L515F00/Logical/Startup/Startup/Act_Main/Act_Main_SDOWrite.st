(** 2019-10-21 **)
ACTION Act_Main_SDOWrite:
	
	CASE usiStep OF

		0:
			eAWPushPulAct	:= AWActBGStartModOKChk;
			
			IF (p_eAWPushOrPullerStatus = Done) AND (p_eAWPushOrPullerStat = AWActBGStartModOKChk) THEN
				
				eAWPushPulAct	:= AWActIdle;
				usiStep		:= 1;
				
			ELSIF p_eAWPushOrPullerStatus = Error THEN
				
				eAWPushPulAct		:= AWActIdle;
				usiStep		:= 1;
				
			END_IF
		
		1:
			eAWAct	:= AWActBGStartModOKChk;
			
			IF (p_eAWStatus = Done) AND (p_eAWStat = AWActBGStartModOKChk) THEN
				
				eAWAct		:= AWActIdle;
		   		usiStep		:= 2;
				
			ELSIF p_eAWStatus = Error THEN
				
				eAWAct		:= AWActIdle;
				usiStep		:= 2;
				
			END_IF
			
		2:
			eMagAW1Act	:= MagAWActBGStartModOKChk;
	
			IF (p_eMagAW1Status = Done) AND (p_eMagAW1Stat = MagAWActBGStartModOKChk) THEN
				
				eMagAW1Act	:= MagAWActIdle;
				usiStep		:= 4;
				
			ELSIF p_eMagAW1Status = Error THEN
				
				eMagAW1Act	:= MagAWActIdle;
				usiStep		:= 4;
				
			END_IF	
			
		4:
			eMagAW2Act	:= MagAWActBGStartModOKChk;
	
			IF (p_eMagAW2Status = Done) AND (p_eMagAW2Stat = MagAWActBGStartModOKChk) THEN
				
				eMagAW2Act	:= MagAWActIdle;
				usiStep		:= 6;
				
			ELSIF p_eMagAW2Status = Error THEN
				
				eMagAW2Act	:= MagAWActIdle;
				usiStep		:= 6;
				
			END_IF	
			
		6:
			eMagAW3Act	:= MagAWActBGStartModOKChk;
	
			IF (p_eMagAW3Status = Done) AND (p_eMagAW3Stat = MagAWActBGStartModOKChk) THEN
				
				eMagAW3Act	:= MagAWActIdle;
				usiStep		:= 10;
				
			ELSIF p_eMagAW3Status = Error THEN
				
				eMagAW3Act	:= MagAWActIdle;
				usiStep		:= 10;
				
			END_IF	
			
		10:
			eTravAct	:= TravActBGStartModOKChk;
			
			IF (p_eTravStatus = Done) AND (p_eTravStat = TravActBGStartModOKChk) THEN
				
				eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			ELSIF p_eTravStatus = Error THEN
				
				eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			END_IF
			
		20:
			eLifterAct	:= LifterActBGStartModOKChk;
			
			IF (p_eLifterStatus = Done) AND (p_eLifterStat = LifterActBGStartModOKChk) THEN
				
				eLifterAct		:= LifterActIdle;
				usiStep			:= 21;
				eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF p_eLifterStatus = Error THEN
				
				eLifterAct		:= LifterActIdle;
				usiStep			:= 21;
				eStartupStep1	:= StartupStepSetupUI;
				
			END_IF
		21:
			eLifter2Act	:= LifterActBGStartModOKChk;
			
			IF (p_eLifter2Status = Done) AND (p_eLifter2Stat = LifterActBGStartModOKChk) THEN
				
				eLifter2Act		:= LifterActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF p_eLifter2Status = Error THEN
				
				eLifter2Act		:= LifterActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;
				
			END_IF

		
	END_CASE
	
END_ACTION
