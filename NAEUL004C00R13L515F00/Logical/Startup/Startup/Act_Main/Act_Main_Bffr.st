(** 2013-05-27 **)
ACTION Act_Main_Bffr:

	CASE usiStep OF
		//Buffer 1
		0:
			tylocalStartup.Out.eBuffer1Act	:= BufferActCreateDir;
		
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActCreateDir) THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 1;
			
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
			
		1:
			tylocalStartup.Out.eBuffer1Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 2;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		2:	
			IF g_tyBuffer1.bMagPresent = FALSE AND g_tyDI.bMagPresentSen1 = TRUE THEN
				usiStep	:= 4;
			ELSE
				usiStep	:= 3;
			END_IF
		
		3:
			tylocalStartup.Out.eBuffer1Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 5;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		4:
			tylocalStartup.Out.eBuffer1Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 6;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		5:
			tylocalStartup.Out.eBuffer1Act	:= BufferActGetRetainBffr;
		
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActGetRetainBffr) THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 7;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		6:
			tylocalStartup.Out.eBuffer1Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActSetMty) THEN		//BufferActSetFull
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 7;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
			
		7:
			tylocalStartup.Out.eBuffer1Act	:= BufferActBGStartCoolFan;
			
			IF (g_tyBuffer1.eStatus = Done) AND (g_tyBuffer1.eStat = BufferActBGStartCoolFan) THEN
				
				tylocalStartup.Out.eBuffer1Act		:= BufferActIdle;
				usiStep			:= 10;
				
			ELSIF g_tyBuffer1.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer1Act		:= BufferActIdle;
				usiStep			:= 10;
				
			END_IF
			
			
			
		//Buffer 2
		10:
			tylocalStartup.Out.eBuffer2Act	:= BufferActCreateDir;
		
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActCreateDir) THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 11;
			
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
			
		11:
			tylocalStartup.Out.eBuffer2Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 12;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		12:	
			IF g_tyBuffer2.bMagPresent = FALSE AND g_tyDI.bMagPresentSen2 = TRUE THEN
				usiStep	:= 14;
			ELSE
				usiStep	:= 13;
			END_IF
		
		13:
			tylocalStartup.Out.eBuffer2Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 15;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		14:
			tylocalStartup.Out.eBuffer2Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 16;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		15:
			tylocalStartup.Out.eBuffer2Act	:= BufferActGetRetainBffr;
		
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActGetRetainBffr) THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 17;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		16:
			tylocalStartup.Out.eBuffer2Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActSetMty) THEN		//BufferActSetFull
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 17;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
			
		17:
			tylocalStartup.Out.eBuffer2Act	:= BufferActBGStartCoolFan;
			
			IF (g_tyBuffer2.eStatus = Done) AND (g_tyBuffer2.eStat = BufferActBGStartCoolFan) THEN
				
				tylocalStartup.Out.eBuffer2Act		:= BufferActIdle;
				usiStep			:= 20;
				
			ELSIF g_tyBuffer2.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer2Act		:= BufferActIdle;
				usiStep			:= 20;
				
			END_IF
			
			
			
		//Buffer 3
		20:
			tylocalStartup.Out.eBuffer3Act	:= BufferActCreateDir;
		
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActCreateDir) THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 21;
			
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
			
		21:
			tylocalStartup.Out.eBuffer3Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 22;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		22:	
			IF g_tyBuffer3.bMagPresent = FALSE AND g_tyDI.bMagPresentSen3 = TRUE THEN
				usiStep	:= 24;
			ELSE
				usiStep	:= 23;
			END_IF
		
		23:
			tylocalStartup.Out.eBuffer3Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 25;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		24:
			tylocalStartup.Out.eBuffer3Act	:= BufferActBGStartUpdtSen;
			
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActBGStartUpdtSen) THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 26;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		25:
			tylocalStartup.Out.eBuffer3Act	:= BufferActGetRetainBffr;
		
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActGetRetainBffr) THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 27;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		26:
			tylocalStartup.Out.eBuffer3Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActSetMty) THEN		//BufferActSetFull
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 27;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
			
		27:
			tylocalStartup.Out.eBuffer3Act	:= BufferActBGStartCoolFan;
			
			IF (g_tyBuffer3.eStatus = Done) AND (g_tyBuffer3.eStat = BufferActBGStartCoolFan) THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			ELSIF g_tyBuffer3.eStatus = Error THEN
				
				tylocalStartup.Out.eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
	END_CASE
	
END_ACTION
