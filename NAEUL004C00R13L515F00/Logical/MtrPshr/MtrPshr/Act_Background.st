(** 2019-01-18 **)
ACTION Act_Background:
	
	IF p_bExtSen = FALSE THEN
		bExtended	:= FALSE;
	END_IF
	
	IF p_bRetSen = FALSE THEN
		bRetracted	:= FALSE;
	END_IF
	
	//Torque Minimum Value
	IF iAnalogTorque < 1500 THEN
		iAnalogTorque	:= 1500;
	END_IF
	
	//Abnormal Movement
	IF eStatus <> Error THEN
		
		fbAlmTrigTm(IN := NOT p_bAlarmSig);
		
		IF fbAlmTrigTm.Q = TRUE THEN
			eStatus		:= Error;
			udiStatus	:= 10006;	//Motorized Pusher Alarm Occur
			
			bCW			:= FALSE;
			bCCW		:= FALSE;
			bSpdBinBit0	:= FALSE;
			bSpdBinBit1	:= FALSE;
			bSpdBinBit2	:= FALSE;
			bSigOn		:= FALSE;
			bBrake		:= FALSE;
			bAlmRst		:= FALSE;
			
			p_eAct	:= MtrPshrActIdle;
			eStat	:= MtrPshrActIdle;
		END_IF
		
	END_IF
	
	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		IF p_bAlarmSig = FALSE THEN
			bAlmRst			:= TRUE;
			fbAlmRstTm.IN	:= TRUE;
			fbAlmTrigTm(IN := FALSE);
		END_IF
	END_IF
	
	fbAlmRstTm;
	
	IF fbAlmRstTm.Q = TRUE THEN
		bAlmRst		:= FALSE;
		eStatus		:= Idle;
		udiStatus	:= 0;
		
		fbAlmRstTm.IN	:= FALSE;
	END_IF
	
END_ACTION
