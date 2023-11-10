(** 2019-07-03 **)
ACTION Act_Background:
	
	fbMagPresentTm(IN := p_bMagPresentSensor);
	
	//Update Retain
	IF bUpdateSensor = TRUE THEN
		bMagPresent	:= fbMagPresentTm.Q;
	END_IF
	
	//Display Buffer
	IF bUpdtDisplay = TRUE THEN
		fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
	END_IF
	
	//Cooling Fan Control
	IF p_bManual = TRUE THEN
		;
		
	ELSIF bCoolFanRun = TRUE AND p_bPrepCoolFan = TRUE AND bCoolFanTm = TRUE THEN //Cooling Fan Control By Cooling Time
		
		fbCoolFanOffChkTm(IN := TRUE);
		
		IF fbCoolFanOffChkTm.Q = TRUE THEN
			IF fBffrChkCoolBrdAny(p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer) = 0 THEN
				fbCoolFanOffDlyTm.IN	:= TRUE;
			ELSE
				fbCoolFanOffDlyTm.IN	:= FALSE;
				bCoolFanCtrl			:= TRUE;
			END_IF
			
			fbCoolFanOffChkTm(IN := FALSE);
		END_IF
		
		fbCoolFanOffDlyTm;
		
		IF fbCoolFanOffDlyTm.Q = TRUE THEN
			bCoolFanCtrl	:= FALSE;
		END_IF
		
	ELSIF bCoolFanRun = TRUE AND p_bPrepCoolFan = TRUE AND bCoolFanTm = FALSE THEN	//Cooling Fan Control By Buffer Empty
		fbCoolFanOffDlyTm(IN := p_tyBufferStat.bBffrMty);
		
		IF p_tyBufferStat.bBffrMty = FALSE THEN
			bCoolFanCtrl	:= TRUE;
		END_IF
		
		IF fbCoolFanOffDlyTm.Q = TRUE THEN
			bCoolFanCtrl	:= FALSE;
		END_IF
		
	ELSE
		
		bCoolFanCtrl	:= FALSE;
		
	END_IF
	
	//Set Buffer By Magazine Present
	IF bBffrSetFull = TRUE THEN
		IF p_bMagPresentSensor = TRUE AND fbMagAbsentTm.Q = TRUE THEN
			bSetFull		:= TRUE;
			dtMagPresentTm	:= p_dtCurrDT;
		END_IF
		
		IF bSetFull = TRUE  THEN
			p_eAct	:= BufferActSetFull;
			
			IF eStatus = Done AND eStat = BufferActSetFull THEN
				p_eAct		:= BufferActIdle;
				bSetFull	:= FALSE;
			ELSIF eStatus = Error THEN
				bSetFull	:= FALSE;
			END_IF
		END_IF
		
		fbMagAbsentTm(IN := NOT p_bMagPresentSensor);
		
	ELSIF bBffrSetMty = TRUE THEN
		IF p_bMagPresentSensor = TRUE AND fbMagAbsentTm.Q = TRUE THEN
			bSetMty			:= TRUE;
			dtMagPresentTm	:= p_dtCurrDT;
		END_IF
		
		IF bSetMty = TRUE  THEN
			p_eAct	:= BufferActSetMty;
			
			IF eStatus = Done AND eStat = BufferActSetMty THEN
				p_eAct	:= BufferActIdle;
				bSetMty	:= FALSE;
			ELSIF eStatus = Error THEN
				bSetMty	:= FALSE;
			END_IF
		END_IF
		
		fbMagAbsentTm(IN := NOT p_bMagPresentSensor);
		
	END_IF
	
	//Check Parameter Different
	bParamDiff	:= (tyBffrParameter.bAscending <> p_bAscending)
	OR (tyBffrParameter.diMinSlt <> p_diMinSlt)
	OR (tyBffrParameter.diMaxSlt <> p_diMaxSlt)
	OR (tyBffrParameter.diPitch <> p_diPitch)
	OR (tyBffrParameter.diSltCap <> p_diSltCap)
	OR (bFIFOOld <> p_bFIFO);
	
	//Update MagRemoved
	bMagRemoved	:= fbMagAbsentTm.Q;
	
END_ACTION
