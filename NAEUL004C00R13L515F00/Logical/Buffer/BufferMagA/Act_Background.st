(** 2019-01-30 **)
ACTION Act_Background:
	
	(*Lane A - Buffer Empty Slot Algorithm*)
	
	IF p_bOpsStatusRun = TRUE THEN
	
		IF p_bBufferMagPresent1 = TRUE AND p_bDIMagPresentSen1 THEN
			diBffrMtySlt1	:= p_tyBufferStat1.diTtlBrdCap - (p_tyBufferStat1.diTtlGdBrd + p_tyBufferStat1.diTtlBadBrd);
		ELSE
			diBffrMtySlt1	:= 0;
		END_IF
		
	
		IF p_bBufferMagPresent2 = TRUE AND p_bDIMagPresentSen2 THEN
			diBffrMtySlt2	:= p_tyBufferStat2.diTtlBrdCap - (p_tyBufferStat2.diTtlGdBrd + p_tyBufferStat2.diTtlBadBrd);
		ELSE
			diBffrMtySlt2	:= 0;
		END_IF
			
		IF p_bBufferMagPresent3 = TRUE AND p_bDIMagPresentSen3 THEN
			diBffrMtySlt3	:= p_tyBufferStat3.diTtlBrdCap - (p_tyBufferStat3.diTtlGdBrd + p_tyBufferStat3.diTtlBadBrd);
		ELSE
			diBffrMtySlt3	:= 0;
		END_IF
		
		CASE p_eNtParamMag OF
			ULMagDual:
				
				CASE p_usiMcParamProdSelMcMod OF
					ULModUnloadFrontLnA:
						
						diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2;
						
					ULModRejFrontLnA, ULModRejFrontLnARev, ULModRejDualLnA, ULModRejDualLnB:
						
						IF diBffrMtySlt2 < diBffrMtySlt1 THEN
							diBffrMtySlt	:= diBffrMtySlt2;
						ELSE
							diBffrMtySlt	:= diBffrMtySlt1;
						END_IF
						
					ULModUnloadDualLnAB:
						
						diBffrMtySlt	:= diBffrMtySlt1;
						
				END_CASE
				
			ULMagTriple:
				
				CASE p_usiMcParamProdSelMcMod OF
					ULModUnloadFrontLnA:
						
						diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2 + diBffrMtySlt3;
						
					ULModRejFrontLnA, ULModRejDualLnA:
						
						IF diBffrMtySlt3 < (diBffrMtySlt1 + diBffrMtySlt2) THEN
							diBffrMtySlt	:= diBffrMtySlt3;
						ELSE
							diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2;
						END_IF
						
					ULModRejFrontLnARev, ULModRejDualLnB:
						
						IF diBffrMtySlt1 < (diBffrMtySlt2 + diBffrMtySlt3) THEN
							diBffrMtySlt	:= diBffrMtySlt1;
						ELSE
							diBffrMtySlt	:= diBffrMtySlt2 + diBffrMtySlt3;
						END_IF
						
					ULModUnloadDualLnAB:
						
						diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2 + diBffrMtySlt3;
					
					
				END_CASE
			
		END_CASE
		
	END_IF
	
END_ACTION
