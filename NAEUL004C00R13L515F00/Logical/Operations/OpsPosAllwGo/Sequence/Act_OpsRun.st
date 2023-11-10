(** 2019-04-16 **)
ACTION Act_OpsRun:
	bPaused	:= p_bStop OR p_bStep;
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF

			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				ePosUSAllwGoStepInit:
					eGotoOpsStep := ePosUSAllwGoUSCheck;
//				ePosUSAllwGoStepStdBy:
//					IF p_bOpsModGoneThrough THEN
//						eGotoOpsStep := ePosUSAllwGoUSCheck;
//					END_IF
				
				ePosUSAllwGoUSCheck:
					
					a_bPosAllwSigOn[1]	:= bLocalUSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalUSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalUSRdy3;
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + p_tyParamTravLif.a_usiUSPriority[udi];
						//Enable
						IF p_tyParamTravLif.a_bUSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
					END_FOR
					
					udiUSPosAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						//Enable + Signal On
						IF a_udiPosAllwSum[udi] >= 3000 THEN
							
							IF udiUSPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiUSPosAllwGo] THEN
									udiUSPosAllwGo	:= udi;
								END_IF
							ELSE
								udiUSPosAllwGo	:= udi;
							END_IF
						END_IF
					END_FOR
					
					IF udiUSPosAllwGo = 99 THEN
						FOR udi := 1 TO 3 DO
							//Enable (Single Input)
							IF a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 THEN
								IF udiUSPosAllwGo = 99 THEN
									udiUSPosAllwGo	:= udi;
								ELSE
									udiUSPosAllwGo	:= 99;
									EXIT;
								END_IF
							END_IF
						END_FOR
					END_IF

					//eGotoOpsStep:= ePosUSAllwGoUSCheck;
			END_CASE
		END_IF
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF			
	
	IF eGotoOpsStep1 <> eOpsStep1 THEN
		
		CASE eGotoOpsStep1 OF

			ELSE
				eOpsStep1	:= eGotoOpsStep1;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep1 = eGotoOpsStep1 THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep1 OF
				ePosDSAllwGoStepInit:
					eGotoOpsStep1 := ePosDSAllwGoDSCheck;
					
//				ePosDSAllwGoStepStdBy:
//					IF p_bOpsModGoneThrough THEN
//						eGotoOpsStep := ePosUSAllwGoUSCheck;
//					END_IF
					
					
				ePosDSAllwGoDSCheck:
					a_bPosAllwSigOn[1]	:= bLocalDSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalDSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalDSRdy3;
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					
					
					IF a_bPosAllwSigOn[1] = TRUE THEN
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
					ELSE
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1)+2000000000;
					END_IF
					
					
					IF a_bPosAllwSigOn[2] = TRUE THEN
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
					ELSE
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2)+2000000000;
					END_IF
					
					IF a_bPosAllwSigOn[3] = TRUE THEN
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					ELSE
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3)+2000000000;
					END_IF
					
					
					FOR udiMagPresentTm := 1 TO 3 DO
						udiCount	:= 3;
		
						udiCmpTm	:= a_udiMagAllwMagPresentTm[udiMagPresentTm];
							
						FOR udiMagPresentTm1 := 1 TO 3 DO
							IF a_udiMagAllwMagPresentTm[udiMagPresentTm1] < udiCmpTm THEN
								udiCount	:= udiCount - 1;
							END_IF
						END_FOR
						
						a_udiMagAllwPriority[udiMagPresentTm]	:= udiCount;
					END_FOR
					
					bGdChk	:= p_bConvGdBrd OR p_bBypsGdBadBrd;
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						//	a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + p_tyParamTravLif.a_usiDSPriority[udi];
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF p_tyParamTravLif.a_bDSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
							
						//Magazine Reject
						IF p_bBypsGdBadBrd = FALSE AND p_tyParamTravLif.a_bMagRej[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 6000;
						END_IF
						
					END_FOR
					
					udiDSPosAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						IF (a_udiPosAllwSum[udi] >= 3003 AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE)	//Enable + Signal Allow
							OR (a_udiPosAllwSum[udi] >= 9000 AND bGdChk = FALSE) //Reject + Enable + Signal Allow
							OR (p_eULMod >= ULModUnloadDualLnAB AND (a_udiPosAllwSum[udi] >= 3000 AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE))
							THEN					
							
							IF udiDSPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] > a_udiPosAllwSum[udiDSPosAllwGo] THEN
									udiDSPosAllwGo	:= udi;
								END_IF
							ELSE
								udiDSPosAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiDSPosAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							//	IF (a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 AND bGdChk = TRUE)				//Enable (Single Output)
							IF (a_udiPosAllwSum[udi] >= 3000(*3003*) AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE)				//Enable (Single Output)
								//	OR (a_udiPosAllwSum[udi] >= 7000 AND a_udiPosAllwSum[udi] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
								OR (a_udiPosAllwSum[udi] >= 9000 AND bGdChk = FALSE) THEN	
								IF udiDSPosAllwGo = 99 THEN
									udiDSPosAllwGo	:= udi;
								ELSE
									udiDSPosAllwGo	:= 99;
									EXIT;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
		
			END_CASE
		END_IF
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF	
		
END_ACTION
