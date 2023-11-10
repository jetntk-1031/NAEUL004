(** 2013-05-27 **)
ACTION Act_Main_Bffr:

	CASE usiStep OF
		//Buffer 1
		0:
			eBuffer1Act	:= BufferActCreateDir;
		
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActCreateDir) THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 1;
			
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
			
		1:
			eBuffer1Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 2;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		2:	
			IF p_bMagPresent1 = FALSE AND p_bMagPresentSensor1 = TRUE THEN
				usiStep	:= 4;
			ELSE
				usiStep	:= 3;
			END_IF
		
		3:
			eBuffer1Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 5;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		4:
			eBuffer1Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 6;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		5:
			eBuffer1Act	:= BufferActGetRetainBffr;
		
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActGetRetainBffr) THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 7;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
		
		6:
			eBuffer1Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActSetMty) THEN		//BufferActSetFull
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 7;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act	:= BufferActIdle;
				usiStep		:= 10;
				
			END_IF
			
		7:
			eBuffer1Act	:= BufferActBGStartCoolFan;
			
			IF (p_eBuffer1Status = Done) AND (p_eBuffer1Stat = BufferActBGStartCoolFan) THEN
				
				eBuffer1Act		:= BufferActIdle;
				usiStep			:= 10;
				
			ELSIF p_eBuffer1Status = Error THEN
				
				eBuffer1Act		:= BufferActIdle;
				usiStep			:= 10;
				
			END_IF
			
			
			
		//Buffer 2
		10:
			eBuffer2Act	:= BufferActCreateDir;
		
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActCreateDir) THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 11;
			
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
			
		11:
			eBuffer2Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 12;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		12:	
			IF p_bMagPresent2 = FALSE AND p_bMagPresentSensor2 = TRUE THEN
				usiStep	:= 14;
			ELSE
				usiStep	:= 13;
			END_IF
		
		13:
			eBuffer2Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 15;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		14:
			eBuffer2Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 16;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		15:
			eBuffer2Act	:= BufferActGetRetainBffr;
		
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActGetRetainBffr) THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 17;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
		
		16:
			eBuffer2Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActSetMty) THEN		//BufferActSetFull
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 17;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act	:= BufferActIdle;
				usiStep		:= 20;
				
			END_IF
			
		17:
			eBuffer2Act	:= BufferActBGStartCoolFan;
			
			IF (p_eBuffer2Status = Done) AND (p_eBuffer2Stat = BufferActBGStartCoolFan) THEN
				
				eBuffer2Act		:= BufferActIdle;
				usiStep			:= 20;
				
			ELSIF p_eBuffer2Status = Error THEN
				
				eBuffer2Act		:= BufferActIdle;
				usiStep			:= 20;
				
			END_IF
			
			
			
		//Buffer 3
		20:
			eBuffer3Act	:= BufferActCreateDir;
		
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActCreateDir) THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 21;
			
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
			
		21:
			eBuffer3Act	:= BufferActBGStartBffrSetMty;		//BufferActBGStartBffrSetFull
			
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActBGStartBffrSetMty) THEN		//BufferActBGStartBffrSetFull
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 22;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		22:	
			IF p_bMagPresent3 = FALSE AND p_bMagPresentSensor3 = TRUE THEN
				usiStep	:= 24;
			ELSE
				usiStep	:= 23;
			END_IF
		
		23:
			eBuffer3Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 25;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		24:
			eBuffer3Act	:= BufferActBGStartUpdtSen;
			
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActBGStartUpdtSen) THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 26;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		25:
			eBuffer3Act	:= BufferActGetRetainBffr;
		
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActGetRetainBffr) THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 27;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
		26:
			eBuffer3Act	:= BufferActSetMty;		//BufferActSetFull
		
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActSetMty) THEN		//BufferActSetFull
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 27;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
			
		27:
			eBuffer3Act	:= BufferActBGStartCoolFan;
			
			IF (p_eBuffer3Status = Done) AND (p_eBuffer3Stat = BufferActBGStartCoolFan) THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			ELSIF p_eBuffer3Status = Error THEN
				
				eBuffer3Act		:= BufferActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepAlarm;
				
			END_IF
		
	END_CASE
	
END_ACTION
