(** 2019-10-21 **)
ACTION Act_Main_SDOWrite:
	
	CASE usiStep OF

		0:
			tylocalStartup.Out.eAWPushPulAct	:= AWActBGStartModOKChk;
			
			IF (g_tyAWPushOrPuller.eStatus = Done) AND (g_tyAWPushOrPuller.eStat = AWActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eAWPushPulAct	:= AWActIdle;
				usiStep		:= 1;
				
			ELSIF g_tyAWPushOrPuller.eStatus = Error THEN
				
				tylocalStartup.Out.eAWPushPulAct		:= AWActIdle;
				usiStep		:= 1;
				
			END_IF
		
		1:
			tylocalStartup.Out.eAWAct	:= AWActBGStartModOKChk;
			
			IF (g_tyAW.eStatus = Done) AND (g_tyAW.eStat = AWActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eAWAct		:= AWActIdle;
		   		usiStep		:= 2;
				
			ELSIF g_tyAW.eStatus = Error THEN
				
				tylocalStartup.Out.eAWAct		:= AWActIdle;
				usiStep		:= 2;
				
			END_IF
			
		2:
			tylocalStartup.Out.eMagAW1Act	:= MagAWActBGStartModOKChk;
	
			IF (g_tyMagAW1.eStatus = Done) AND (g_tyMagAW1.eStat = MagAWActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eMagAW1Act	:= MagAWActIdle;
				usiStep		:= 4;
				
			ELSIF g_tyMagAW1.eStatus = Error THEN
				
				tylocalStartup.Out.eMagAW1Act	:= MagAWActIdle;
				usiStep		:= 4;
				
			END_IF	
			
		4:
			tylocalStartup.Out.eMagAW2Act	:= MagAWActBGStartModOKChk;
	
			IF (g_tyMagAW2.eStatus = Done) AND (g_tyMagAW2.eStat = MagAWActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eMagAW2Act	:= MagAWActIdle;
				usiStep		:= 6;
				
			ELSIF g_tyMagAW2.eStatus = Error THEN
				
				tylocalStartup.Out.eMagAW2Act	:= MagAWActIdle;
				usiStep		:= 6;
				
			END_IF	
			
		6:
			tylocalStartup.Out.eMagAW3Act	:= MagAWActBGStartModOKChk;
	
			IF (g_tyMagAW3.eStatus = Done) AND (g_tyMagAW3.eStat = MagAWActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eMagAW3Act	:= MagAWActIdle;
				usiStep		:= 10;
				
			ELSIF g_tyMagAW3.eStatus = Error THEN
				
				tylocalStartup.Out.eMagAW3Act	:= MagAWActIdle;
				usiStep		:= 10;
				
			END_IF	
			
		10:
			tylocalStartup.Out.eTravAct	:= TravActBGStartModOKChk;
			
			IF (g_tyTrav.eStatus = Done) AND (g_tyTrav.eStat = TravActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			ELSIF g_tyTrav.eStatus = Error THEN
				
				tylocalStartup.Out.eTravAct	:= TravActIdle;
				usiStep		:= 20;
				
			END_IF
			
		20:
			tylocalStartup.Out.eLifterAct	:= LifterActBGStartModOKChk;
			
			IF (g_tyLifter.eStatus = Done) AND (g_tyLifter.eStat = LifterActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eLifterAct		:= LifterActIdle;
				usiStep			:= 21;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF g_tyLifter.eStatus = Error THEN
				
				tylocalStartup.Out.eLifterAct		:= LifterActIdle;
				usiStep			:= 21;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;
				
			END_IF
		21:
			tylocalStartup.Out.eLifter2Act	:= LifterActBGStartModOKChk;
			
			IF (g_tyLifter2.eStatus = Done) AND (g_tyLifter2.eStat = LifterActBGStartModOKChk) THEN
				
				tylocalStartup.Out.eLifter2Act		:= LifterActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;
				
			ELSIF g_tyLifter2.eStatus = Error THEN
				
				tylocalStartup.Out.eLifter2Act		:= LifterActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;
				
			END_IF

		
	END_CASE
	
END_ACTION
