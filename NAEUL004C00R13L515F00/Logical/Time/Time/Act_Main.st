
ACTION Act_Main:
	
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
		fbDlyTm(IN := FALSE);
		fbGetTime1(enable := FALSE);
		fbGetTimeDT1(enable := FALSE);
	END_IF
	
	IF eStatus1 <> Error THEN
		
		fbDlyTm(IN := TRUE);
		
		IF fbDlyTm.Q = TRUE THEN
			
			fbGetTime1(enable := TRUE);
			fbGetTimeDT1(enable := TRUE);
			
			IF fbGetTime1.status = 0 AND fbGetTimeDT1.status = 0 THEN
				tylocalTime.Out.dtCurrDT	:= fbGetTime1.DT1;
				fbGetTime1(enable := FALSE);
				fbGetTimeDT1(enable := FALSE);
				fbDlyTm(IN := FALSE);
			ELSIF fbGetTime1.status > 0 AND fbGetTime1.status < 65534 THEN
				udiStatus1	:= 5856;	//Get Time Error In Background
				eStatus1	:= Error;
			ELSIF fbGetTimeDT1.status > 0 AND fbGetTimeDT1.status < 65534 THEN
				udiStatus1	:= 5857;	//Get Time Structure Error In Background
				eStatus1	:= Error;
			END_IF

		END_IF
		
	END_IF
	
	//Reset Done
	IF eStatus = Done AND tylocalTime.In.eAct = TimeActIdle THEN
		tylocalTime.Out.eStat	:= TimeActIdle;
	END_IF
	//Set tylocalTime.In.eAct
	IF eStatus = Idle THEN
		tylocalTime.Out.eStat	:= tylocalTime.In.eAct;
	END_IF
	
	//Main
	CASE tylocalTime.Out.eStat OF
		
		TimeActIdle:
			IF eStatus <> Idle THEN	//Reset Data
				//Private
				fbSetTime(enable := FALSE);
				fbSetTimeZone(enable := FALSE);
				fbGetTime(enable := FALSE);
				fbGetTimeDT(enable := FALSE);
				fbGetTimeZone(enable := FALSE);
				
				tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
			END_IF
			
			eStatus	:= Idle;
		
		TimeActSetTime:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
				fbSetTime.DT1	:= tylocalTime.In.dtSetDT;
				fbSetTime(enable := TRUE);
				
				IF fbSetTime.status = 0 THEN
					eStatus	:= Done;
				ELSIF fbSetTime.status < 65534 THEN
					udiStatus	:= 5851;	//Set Time Error
					eStatus		:= Error;
				END_IF
				
			END_IF
		
		TimeActSetTimeZone:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
				fbSetTimeZone.timezoneID	:= tylocalTime.In.uiSetTimeZone;
				fbSetTimeZone(enable := TRUE);
				
				IF fbSetTimeZone.status = 0 THEN
					eStatus	:= Done;
				ELSIF fbSetTimeZone.status < 65534 THEN
					udiStatus	:= 5852;	//Set Time Zone Error
					eStatus		:= Error;
				END_IF
				
			END_IF
		
		TimeActGetTime:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
				fbGetTime(enable := TRUE);
				fbGetTimeDT(enable := TRUE);
				
				IF fbGetTime.status = 0 AND fbGetTimeDT.status = 0 THEN
					tylocalTime.Out.dtCurrDT	:= fbGetTime.DT1;
					eStatus		:= Done;
				ELSIF fbGetTime.status > 0 AND fbGetTime.status < 65534 THEN
					udiStatus	:= 5853;	//Get Time Error
					eStatus		:= Error;
				ELSIF fbGetTimeDT.status > 0 AND fbGetTimeDT.status < 65534 THEN
					udiStatus	:= 5854;	//Get Time Structure Error
					eStatus		:= Error;
				END_IF
				
			END_IF
		
		TimeActGetTimeZone:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
				fbGetTimeZone(enable := TRUE);
				
				IF fbGetTimeZone.status = 0 THEN
					tylocalTime.Out.uiCurrTimeZone	:= fbGetTimeZone.timezoneID;
					eStatus			:= Done;
				ELSIF fbGetTimeZone.status < 65534 THEN
					udiStatus	:= 5855;	//Get Time Zone Error
					eStatus		:= Error;
				END_IF
				
			END_IF
		
	END_CASE
	
	IF eStatus = Error OR eStatus1 = Error THEN
		tylocalTime.Out.eMainStatus	:= Error;
	ELSE
		tylocalTime.Out.eMainStatus	:= eStatus;
	END_IF
	
END_ACTION
