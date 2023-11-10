(** 2019-01-10 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		sStatTxt	:= a_sStatText[eStat];
			
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		OvenInfoActIdle:
			eStatus	:= Idle;
		
		OvenInfoActSetBrdInOven:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				diBrdInOven	:= p_diSetBrdInOven;
				eStatus		:= Done;
				
			END_IF
		
		OvenInfoActSetOvenAllow:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bOvenAllow	:= TRUE;
				eStatus		:= Done;
				
			END_IF
		
		OvenInfoActRstOvenAllow:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bOvenAllow	:= FALSE;
				eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
