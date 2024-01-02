(** 2019-01-10 **)
ACTION Act_Main:
	
	IF EDGENEG(g_tyUIOut.bManualMod) THEN
		tylocalOvenInfoA.In.eAct	:= OvenInfoActIdle;
	END_IF
	//Set tylocalOvenInfoA.In.eAct
	IF tylocalOvenInfoA.Out.eStatus = Idle OR tylocalOvenInfoA.Out.eStatus = Busy OR tylocalOvenInfoA.Out.eStatus = Done THEN
		tylocalOvenInfoA.Out.eStat	:= tylocalOvenInfoA.In.eAct;
	END_IF
	
	
	IF tylocalOvenInfoA.Out.eStatOld <> tylocalOvenInfoA.Out.eStat THEN
		tylocalOvenInfoA.Out.sStatTxt	:= a_sStatText[tylocalOvenInfoA.Out.eStat];
			
		tylocalOvenInfoA.Out.eStatOld	:= tylocalOvenInfoA.Out.eStat;
		
		tylocalOvenInfoA.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalOvenInfoA.Out.eStat OF
		
		OvenInfoActIdle:
			tylocalOvenInfoA.Out.eStatus	:= Idle;
		
		OvenInfoActSetBrdInOven:
			IF tylocalOvenInfoA.Out.eStatus = Idle OR tylocalOvenInfoA.Out.eStatus = Busy THEN
		
				tylocalOvenInfoA.Out.diBrdInOven	:= tylocalOvenInfoA.In.diSetBrdInOven;
				tylocalOvenInfoA.Out.eStatus		:= Done;
				
			END_IF
		
		OvenInfoActSetOvenAllow:
			IF tylocalOvenInfoA.Out.eStatus = Idle OR tylocalOvenInfoA.Out.eStatus = Busy THEN
		
				tylocalOvenInfoA.Out.bOvenAllow	:= TRUE;
				tylocalOvenInfoA.Out.eStatus		:= Done;
				
			END_IF
		
		OvenInfoActRstOvenAllow:
			IF tylocalOvenInfoA.Out.eStatus = Idle OR tylocalOvenInfoA.Out.eStatus = Busy THEN
		
				tylocalOvenInfoA.Out.bOvenAllow	:= FALSE;
				tylocalOvenInfoA.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
	IF tylocalOvenInfoA.In.bManual = TRUE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
	ELSIF tylocalOvenInfoA.In.bBGRun = FALSE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
		tylocalOvenInfoA.Out.bOvenAllow	:= FALSE;
		
	ELSIF (tylocalOvenInfoA.In.bPrepExtdd = TRUE) AND (tylocalOvenInfoA.In.bEnExtdd = TRUE) AND (tylocalOvenInfoA.In.bDisExtdd = FALSE) THEN
		
		fbStd(bEn := FALSE);
		
		IF EDGEPOS(tylocalOvenInfoA.In.bCntUp) THEN
			tylocalOvenInfoA.Out.diBrdInOven	:= tylocalOvenInfoA.Out.diBrdInOven + 1;
		END_IF
				
		IF EDGEPOS(tylocalOvenInfoA.In.bCntDown) THEN
			tylocalOvenInfoA.Out.diBrdInOven	:= tylocalOvenInfoA.Out.diBrdInOven - 1;
		END_IF
				
		IF tylocalOvenInfoA.Out.diBrdInOven < 0 THEN
			tylocalOvenInfoA.Out.diBrdInOven	:= 0;
		END_IF
				
		fbExtdd.diAddBffr		:= tylocalOvenInfoA.In.diAddBffr;
		fbExtdd.diBffrMtySlt	:= tylocalOvenInfoA.In.diBffrMtySlt;
		fbExtdd.diBrdInOven		:= tylocalOvenInfoA.Out.diBrdInOven;
		fbExtdd.diBrdPerSlt		:= tylocalOvenInfoA.In.diBrdPerSlt;
		fbExtdd(bEn := TRUE);
		tylocalOvenInfoA.Out.bOvenAllow	:= fbExtdd.bOvenAllow;
		
	ELSE
		
		fbExtdd(bEn := FALSE);
		
		fbStd.diBffrMtySlt		:= tylocalOvenInfoA.In.diBffrMtySlt;
		fbStd.diMinBffrMtySlt	:= tylocalOvenInfoA.In.diMinBffr;
		fbStd(bEn := TRUE);
		tylocalOvenInfoA.Out.bOvenAllow	:= fbStd.bOvenAllow;
			
	END_IF
	
	
END_ACTION
