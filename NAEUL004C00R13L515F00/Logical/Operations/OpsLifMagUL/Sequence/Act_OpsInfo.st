
ACTION Act_OpsInfo:
	

	//Reset
	udiStatus1	:= 0;
	udiStatus2  := 0;
	//Magazine Not Present
	a_bMagAllwMagPresent[1]	:= p_bMagPresentSen1;
	a_bMagAllwMagPresent[2]	:= p_bMagPresentSen2;
	a_bMagAllwMagPresent[3]	:= p_bMagPresentSen3;
	
	FOR udi := 1 TO 3 DO
		IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE THEN
			EXIT;
		END_IF
	END_FOR
	
	IF udi = 4 THEN
		IF eOpsStep > LifMagULStepInitLif THEN
			udiStatus1	:= 10000;
		END_IF
	END_IF
	
	//Magazine Is Full
	a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
	a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
	a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
	

	
	//Insert Good / Bad Magazine
	IF p_bConvInitDone = TRUE AND p_bConvHvBrd = TRUE THEN
		
		FOR udi := 1 TO 3 DO
			IF pa_bMagDis[udi] = FALSE AND pa_bMagRej[udi] = TRUE THEN
				EXIT;
			END_IF
		END_FOR
		
		IF udi < 4 THEN
			//Reject Mode
			IF p_bConvGdBrd = TRUE THEN
				//Good Board Exist
				FOR udi1 := 1 TO 3 DO
					IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE AND pa_bMagRej[udi1] = FALSE THEN
						EXIT;
					END_IF
				END_FOR
				
				IF udi1 = 4 THEN
					udiStatus1	:= 10004;
				END_IF
				
			ELSE
				//Bad Board Exist
				FOR udi1 := 1 TO 3 DO
					IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE AND pa_bMagRej[udi1] = TRUE THEN
						EXIT;
					END_IF
				END_FOR
				
				IF udi1 = 4 THEN
					udiStatus1	:= 10005;
				END_IF
				
			END_IF
			
		ELSE
			//Non-Reject Mode
			FOR udi1 := 1 TO 3 DO
				IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE THEN
					EXIT;
				END_IF
			END_FOR
			
			IF udi1 = 4 THEN
				udiStatus1	:= 10004;
			END_IF
			
		END_IF
		
	END_IF
	
	IF pa_bMagDis[1] = FALSE 
		AND pa_bMagDis[2] = FALSE
		AND pa_bMagDis[3] = FALSE
		AND a_bMagAllwMagPresent[1] = TRUE
		AND a_bMagAllwMagPresent[2] = TRUE
		AND a_bMagAllwMagPresent[3] = TRUE
		AND udiStatus1	<> 10008
		THEN
		
		IF a_tyMagAllwBffrStat[1].bBffrFull 
			AND a_tyMagAllwBffrStat[2].bBffrFull
			AND a_tyMagAllwBffrStat[3].bBffrFull
			THEN
			udiStatus1	:= 10008;
		END_IF
	END_IF
	
	IF pa_bMagDis[1] = FALSE 
		AND pa_bMagDis[2] = FALSE
		AND pa_bMagDis[3] = TRUE
		AND a_bMagAllwMagPresent[1] = TRUE
		AND a_bMagAllwMagPresent[2] = TRUE
		AND udiStatus1	<> 10006
		AND udiStatus1	<> 10008
		THEN
		
		IF (p_tyBufferStat1.diTtlGdBrd + p_tyBufferStat1.diTtlBadBrd
			+ p_tyBufferStat2.diTtlGdBrd + p_tyBufferStat2.diTtlBadBrd >=	
			p_tyBufferStat1.diTtlBrdCap + p_tyBufferStat2.diTtlBrdCap - 1)
			
			THEN
			udiStatus1	:= 10006;
		
		END_IF
	END_IF
	
	IF pa_bMagDis[1] = FALSE 
			AND pa_bMagDis[2] = FALSE
			AND pa_bMagDis[3] = FALSE
			AND a_bMagAllwMagPresent[1] = TRUE
			AND a_bMagAllwMagPresent[2] = TRUE
			AND a_bMagAllwMagPresent[3] = TRUE
			AND udiStatus1	<> 10007
			AND udiStatus1	<> 10008
			THEN
		
			IF (p_tyBufferStat1.diTtlGdBrd + p_tyBufferStat1.diTtlBadBrd
			+ p_tyBufferStat2.diTtlGdBrd + p_tyBufferStat2.diTtlBadBrd
			+ p_tyBufferStat3.diTtlGdBrd + p_tyBufferStat3.diTtlBadBrd>=	
			p_tyBufferStat1.diTtlBrdCap 
			+ p_tyBufferStat2.diTtlBrdCap
			+ p_tyBufferStat3.diTtlBrdCap - 1)
			
				THEN
				udiStatus1	:= 10007;
		
			END_IF
	END_IF	

	FOR udi := 1 TO 3 DO
		IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE AND a_tyMagAllwBffrStat[udi].bBffrFull = TRUE THEN	
				udiStatus1	:= 10001 + (udi - 1);
			
			EXIT;
		END_IF
	END_FOR
	
END_ACTION
