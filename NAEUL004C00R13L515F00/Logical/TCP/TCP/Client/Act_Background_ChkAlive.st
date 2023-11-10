(** 2019-05-30 **)
ACTION Act_Background_ChkAlive:
			
	fbSendAliveTimer.PT	:= T#30s;
	fbSendAliveTimer(IN:= bLoginSuccess);
	
	IF bWaitAliveResponse AND bCheckAliveTimeout=FALSE THEN
		
		fbCheckAliveTimer.PT	:= T#10s;
		fbCheckAliveTimer(IN:= TRUE);
		
		IF tyAIVMsgRcvData.bOneLineStatus THEN
			
			fbCheckAliveTimer(IN:= FALSE);
			bWaitAliveResponse	:= FALSE;
			bCheckAliveTimeout 	:= FALSE;
			
			tyAIVMsgRcvData.bOneLineStatus := FALSE;
			
			iFindBatteryLvl := FIND(sDecodeMsg, 'StateOfCharge:');
			
			IF iFindBatteryLvl <> 0 THEN
				
				sExtractBatteryLvl := MID(sDecodeMsg, 20 ,iFindBatteryLvl);
				sExtractBatteryLvl := RIGHT(sExtractBatteryLvl, 5);
				
				rCurrentBatteryLvl := STRING_TO_REAL(sExtractBatteryLvl);
				
			END_IF				
	
		ELSIF fbCheckAliveTimer.Q THEN
			
			fbCheckAliveTimer(IN:= FALSE);
			bWaitAliveResponse	:= FALSE;
			bCheckAliveTimeout 	:= TRUE;
			
		END_IF
	END_IF
	
		
			

END_ACTION
