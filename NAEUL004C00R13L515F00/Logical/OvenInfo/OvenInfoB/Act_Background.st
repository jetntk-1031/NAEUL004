(** 2019-05-15 **)
ACTION Act_Background:
	
	IF p_bManual = TRUE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
	ELSIF p_bBGRun = FALSE THEN
		fbStd(bEn := FALSE);
		fbExtdd(bEn := FALSE);
		
		bOvenAllow	:= FALSE;
		
	ELSIF (p_bPrepExtdd = TRUE) AND (p_bEnExtdd = TRUE) AND (p_bDisExtdd = FALSE) THEN
		
		fbStd(bEn := FALSE);
		
		IF EDGEPOS(p_bCntUp) THEN
			diBrdInOven	:= diBrdInOven + 1;
		END_IF
				
		IF EDGEPOS(p_bCntDown) THEN
			diBrdInOven	:= diBrdInOven - 1;
		END_IF
				
		IF diBrdInOven < 0 THEN
			diBrdInOven	:= 0;
		END_IF
				
		fbExtdd.diAddBffr		:= p_diAddBffr;
		fbExtdd.diBffrMtySlt	:= p_diBffrMtySlt;
		fbExtdd.diBrdInOven		:= diBrdInOven;
		fbExtdd.diBrdPerSlt		:= p_diBrdPerSlt;
		fbExtdd(bEn := TRUE);
		bOvenAllow	:= fbExtdd.bOvenAllow;
		
	ELSE
		
		fbExtdd(bEn := FALSE);
		
		fbStd.diBffrMtySlt		:= p_diBffrMtySlt;
		fbStd.diMinBffrMtySlt	:= p_diMinBffr;
		fbStd(bEn := TRUE);
		bOvenAllow	:= fbStd.bOvenAllow;
			
	END_IF
	
END_ACTION
