(** 2019-01-10 **)
ACTION Act_Main:
	
	IF EDGENEG(g_tyUIOut.bManualMod) THEN
		tylocalOvenInfoB.In.eAct	:= OvenInfoActIdle;
	END_IF
	//Set tylocalOvenInfoB.In.eAct
	IF tylocalOvenInfoB.Out.eStatus = Idle OR tylocalOvenInfoB.Out.eStatus = Busy OR tylocalOvenInfoB.Out.eStatus = Done THEN
		tylocalOvenInfoB.Out.eStat	:= tylocalOvenInfoB.In.eAct;
	END_IF
	
	
	IF tylocalOvenInfoB.Out.eStatOld <> tylocalOvenInfoB.Out.eStat THEN
		tylocalOvenInfoB.Out.sStatTxt	:= a_sStatText[tylocalOvenInfoB.Out.eStat];
			
		tylocalOvenInfoB.Out.eStatOld	:= tylocalOvenInfoB.Out.eStat;
		
		tylocalOvenInfoB.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalOvenInfoB.Out.eStat OF
		
		OvenInfoActIdle:
			tylocalOvenInfoB.Out.eStatus	:= Idle;
		
		OvenInfoActSetBrdInOven:
			IF tylocalOvenInfoB.Out.eStatus = Idle OR tylocalOvenInfoB.Out.eStatus = Busy THEN
		
				tylocalOvenInfoB.Out.diBrdInOven	:= tylocalOvenInfoB.In.diSetBrdInOven;
				tylocalOvenInfoB.Out.eStatus		:= Done;
				
			END_IF
		
		OvenInfoActSetOvenAllow:
			IF tylocalOvenInfoB.Out.eStatus = Idle OR tylocalOvenInfoB.Out.eStatus = Busy THEN
		
				tylocalOvenInfoB.Out.bOvenAllow	:= TRUE;
				tylocalOvenInfoB.Out.eStatus		:= Done;
				
			END_IF
		
		OvenInfoActRstOvenAllow:
			IF tylocalOvenInfoB.Out.eStatus = Idle OR tylocalOvenInfoB.Out.eStatus = Busy THEN
		
				tylocalOvenInfoB.Out.bOvenAllow	:= FALSE;
				tylocalOvenInfoB.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
	IF tylocalOvenInfoB.In.bManual = TRUE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
	ELSIF tylocalOvenInfoB.In.bBGRun = FALSE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
		tylocalOvenInfoB.Out.bOvenAllow	:= FALSE;
		
	ELSIF (tylocalOvenInfoB.In.bPrepExtdd = TRUE) AND (tylocalOvenInfoB.In.bEnExtdd = TRUE) AND (tylocalOvenInfoB.In.bDisExtdd = FALSE) THEN
		
		fbStd(bEn := FALSE);
		
		IF EDGEPOS(tylocalOvenInfoB.In.bCntUp) THEN
			tylocalOvenInfoB.Out.diBrdInOven	:= tylocalOvenInfoB.Out.diBrdInOven + 1;
		END_IF
				
		IF EDGEPOS(tylocalOvenInfoB.In.bCntDown) THEN
			tylocalOvenInfoB.Out.diBrdInOven	:= tylocalOvenInfoB.Out.diBrdInOven - 1;
		END_IF
				
		IF tylocalOvenInfoB.Out.diBrdInOven < 0 THEN
			tylocalOvenInfoB.Out.diBrdInOven	:= 0;
		END_IF
				
		fbExtdd.diAddBffr		:= tylocalOvenInfoB.In.diAddBffr;
		fbExtdd.diBffrMtySlt	:= tylocalOvenInfoB.In.diBffrMtySlt;
		fbExtdd.tylocalOvenInfoB.Out.diBrdInOven		:= tylocalOvenInfoB.Out.diBrdInOven;
		fbExtdd.diBrdPerSlt		:= tylocalOvenInfoB.In.diBrdPerSlt;
		fbExtdd(bEn := TRUE);
		tylocalOvenInfoB.Out.bOvenAllow	:= fbExtdd.tylocalOvenInfoB.Out.bOvenAllow;
		
	ELSE
		
		fbExtdd(bEn := FALSE);
		
		fbStd.diBffrMtySlt		:= tylocalOvenInfoB.In.diBffrMtySlt;
		fbStd.diMinBffrMtySlt	:= tylocalOvenInfoB.In.diMinBffr;
		fbStd(bEn := TRUE);
		tylocalOvenInfoB.Out.bOvenAllow	:= fbStd.tylocalOvenInfoB.Out.bOvenAllow;
			
	END_IF
	
END_ACTION
