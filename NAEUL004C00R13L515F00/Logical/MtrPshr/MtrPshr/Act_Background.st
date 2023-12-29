(** 2019-01-18 **)
ACTION Act_Background:
	
	//background 
	IF tylocalMtrPshr.In.bExtSen = FALSE THEN
		tylocalMtrPshr.Out.bExtended	:= FALSE;
	END_IF
	
	IF tylocalMtrPshr.In.bRetSen = FALSE THEN
		tylocalMtrPshr.Out.bRetracted	:= FALSE;
	END_IF
	
	//Torque Minimum Value
	IF iAnalogTorque < 1500 THEN
		iAnalogTorque	:= 1500;
	END_IF
	
	//Abnormal Movement
	IF tylocalMtrPshr.Out.eStatus <> Error THEN
		
		fbAlmTrigTm(IN := NOT tylocalMtrPshr.In.bAlarmSig);
		
		IF fbAlmTrigTm.Q = TRUE THEN
			tylocalMtrPshr.Out.eStatus		:= Error;
			udiStatus	:= 10006;	//Motorized Pusher Alarm Occur
			
			tylocalMtrPshr.Out.bCW			:= FALSE;
			tylocalMtrPshr.Out.bCCW		:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
			tylocalMtrPshr.Out.bSigOn		:= FALSE;
			tylocalMtrPshr.Out.bBrake		:= FALSE;
			tylocalMtrPshr.Out.bAlmRst		:= FALSE;
			
			tylocalMtrPshr.In.eAct	:= MtrPshrActIdle;
			tylocalMtrPshr.Out.eStat	:= MtrPshrActIdle;
		END_IF
		
	END_IF
	
	//Reset Error
	IF (tylocalMtrPshr.Out.eStatus = Error) AND bRstErr THEN
		IF tylocalMtrPshr.In.bAlarmSig = FALSE THEN
			tylocalMtrPshr.Out.bAlmRst			:= TRUE;
			fbAlmRstTm.IN	:= TRUE;
			fbAlmTrigTm(IN := FALSE);
		END_IF
	END_IF
	
	fbAlmRstTm;
	
	IF fbAlmRstTm.Q = TRUE THEN
		tylocalMtrPshr.Out.bAlmRst		:= FALSE;
		tylocalMtrPshr.Out.eStatus		:= Idle;
		udiStatus	:= 0;
		
		fbAlmRstTm.IN	:= FALSE;
	END_IF
END_ACTION
