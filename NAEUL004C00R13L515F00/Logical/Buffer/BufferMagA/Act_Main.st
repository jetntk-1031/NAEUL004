(** 2019-01-30 **)
ACTION Act_Main:
	
		(*Lane A - Buffer Empty Slot Algorithm*)
	
	IF tylocalBufferMag.In.bOpsStatusRun = TRUE THEN
	
		IF tylocalBufferMag.In.bBufferMagPresent1 = TRUE AND tylocalBufferMag.In.bDIMagPresentSen1 THEN
			diBffrMtySlt1	:= tylocalBufferMag.In.tyBufferStat1.diTtlBrdCap - (tylocalBufferMag.In.tyBufferStat1.diTtlGdBrd + tylocalBufferMag.In.tyBufferStat1.diTtlBadBrd);
		ELSE
			diBffrMtySlt1	:= 0;
		END_IF
		
	
		IF tylocalBufferMag.In.bBufferMagPresent2 = TRUE AND tylocalBufferMag.In.bDIMagPresentSen2 THEN
			diBffrMtySlt2	:= tylocalBufferMag.In.tyBufferStat2.diTtlBrdCap - (tylocalBufferMag.In.tyBufferStat2.diTtlGdBrd + tylocalBufferMag.In.tyBufferStat2.diTtlBadBrd);
		ELSE
			diBffrMtySlt2	:= 0;
		END_IF
			
		IF tylocalBufferMag.In.bBufferMagPresent3 = TRUE AND tylocalBufferMag.In.bDIMagPresentSen3 THEN
			diBffrMtySlt3	:= tylocalBufferMag.In.tyBufferStat3.diTtlBrdCap - (tylocalBufferMag.In.tyBufferStat3.diTtlGdBrd + tylocalBufferMag.In.tyBufferStat3.diTtlBadBrd);
		ELSE
			diBffrMtySlt3	:= 0;
		END_IF
		
		CASE tylocalBufferMag.In.eNtParamMag OF
			ULMagDual:
				
				CASE tylocalBufferMag.In.usiProRcpProdSelMcMod OF
					ULModUnloadFrontLnA:
						
						tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2;
						
					ULModRejFrontLnA, ULModRejFrontLnARev, ULModRejDualLnA, ULModRejDualLnB:
						
						IF diBffrMtySlt2 < diBffrMtySlt1 THEN
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt2;
						ELSE
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1;
						END_IF
						
					ULModUnloadDualLnAB:
						
						tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1;
						
				END_CASE
				
			ULMagTriple:
				
				CASE tylocalBufferMag.In.usiProRcpProdSelMcMod OF
					ULModUnloadFrontLnA:
						
						tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2 + diBffrMtySlt3;
						
					ULModRejFrontLnA, ULModRejDualLnA:
						
						IF diBffrMtySlt3 < (diBffrMtySlt1 + diBffrMtySlt2) THEN
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt3;
						ELSE
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2;
						END_IF
						
					ULModRejFrontLnARev, ULModRejDualLnB:
						
						IF diBffrMtySlt1 < (diBffrMtySlt2 + diBffrMtySlt3) THEN
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1;
						ELSE
							tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt2 + diBffrMtySlt3;
						END_IF
						
					ULModUnloadDualLnAB:
						
						tylocalBufferMag.Out.diBffrMtySlt	:= diBffrMtySlt1 + diBffrMtySlt2 + diBffrMtySlt3;
					
					
				END_CASE
			
		END_CASE
		
	END_IF
	
END_ACTION
