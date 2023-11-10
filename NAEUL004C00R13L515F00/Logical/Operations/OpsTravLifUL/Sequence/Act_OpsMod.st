(** 2019-01-20 **)
ACTION Act_OpsMod: 
	
	CASE p_eULMag OF
		
		ULMagDual:
			
			CASE p_eULMod OF
				ULModUnloadFrontLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejFrontLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= TRUE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejFrontLnARev:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModUnloadRearLnB:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejRearLnB:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejRearLnBRev:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 2;
					tyParamTravLif.a_usiDSPriority[2]	:= 1;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= TRUE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModUnloadDualLnAB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					IF p_bUSSMEMAConvStart1 = TRUE OR eTravLifPosGo = TravLifULPosUS1 THEN
						tyParamTravLif.a_bDSDis[1]	:= FALSE;
						tyParamTravLif.a_bDSDis[2]	:= FALSE;
					ELSIF p_bUSSMEMAConvStart2 = TRUE OR eTravLifPosGo = TravLifULPosUS2 THEN
						tyParamTravLif.a_bDSDis[1]	:= FALSE;
						tyParamTravLif.a_bDSDis[2]	:= FALSE;
					END_IF
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejDualLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= TRUE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejDualLnB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= TRUE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
			END_CASE
			
		ULMagTriple:
			
			CASE p_eULMod OF
				ULModUnloadFrontLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejFrontLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= TRUE;
					
				ULModRejFrontLnARev:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= TRUE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 1;
					tyParamTravLif.a_usiUSPriority[2]	:= 2;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModUnloadRearLnB:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 3;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 1;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejRearLnB:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 3;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 1;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejRearLnBRev:
					tyParamTravLif.a_bUSDis[1]			:= TRUE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[1]	:= 2;
					tyParamTravLif.a_usiUSPriority[2]	:= 1;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 3;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 1;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= TRUE;
					
				ULModUnloadDualLnAB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					IF p_bUSSMEMAConvStart1 = TRUE OR eTravLifPosGo = TravLifULPosUS1 THEN
						tyParamTravLif.a_bDSDis[1]			:= FALSE;
						tyParamTravLif.a_bDSDis[2]			:= FALSE;
						tyParamTravLif.a_bDSDis[3]			:= FALSE;
					//	tyParamTravLif.a_bDSDis[3]			:= TRUE;
						tyParamTravLif.a_usiDSPriority[1]	:= 1;
						tyParamTravLif.a_usiDSPriority[2]	:= 2;
						tyParamTravLif.a_usiDSPriority[3]	:= 3;
					ELSIF p_bUSSMEMAConvStart2 = TRUE OR eTravLifPosGo = TravLifULPosUS2 THEN
						//	tyParamTravLif.a_bDSDis[1]			:= TRUE;
						tyParamTravLif.a_bDSDis[1]			:= FALSE;
						tyParamTravLif.a_bDSDis[2]			:= FALSE;
						tyParamTravLif.a_bDSDis[3]			:= FALSE;
//						tyParamTravLif.a_usiDSPriority[1]	:= 3;
//						tyParamTravLif.a_usiDSPriority[2]	:= 2;
//						tyParamTravLif.a_usiDSPriority[3]	:= 1;
						tyParamTravLif.a_usiDSPriority[1]	:= 1;
						tyParamTravLif.a_usiDSPriority[2]	:= 2;
						tyParamTravLif.a_usiDSPriority[3]	:= 3;
					END_IF
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
				ULModRejDualLnA:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 1;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 3;
					
					tyParamTravLif.a_bMagRej[1]			:= FALSE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= TRUE;
					
				ULModRejDualLnB:
					tyParamTravLif.a_bUSDis[1]			:= FALSE;
					tyParamTravLif.a_bUSDis[2]			:= FALSE;
					tyParamTravLif.a_bUSDis[3]			:= TRUE;
					tyParamTravLif.a_usiUSPriority[3]	:= 3;
					
					//Upstream Priority Based On Incoming Signal
					IF bLocalUSRdy1 = TRUE AND tyParamTravLif.a_usiUSPriority[1] = 3 THEN
						tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						IF tyParamTravLif.a_usiUSPriority[2] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						END_IF
					ELSIF bLocalUSRdy1 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[1]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[2] < 2 THEN
							tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] + 1;
						END_IF
					END_IF
					
					IF bLocalUSRdy2 = TRUE AND tyParamTravLif.a_usiUSPriority[2] = 3 THEN
						tyParamTravLif.a_usiUSPriority[2]	:= tyParamTravLif.a_usiUSPriority[2] - 1;
						IF tyParamTravLif.a_usiUSPriority[1] <> 3 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] - 1;
						END_IF
					ELSIF bLocalUSRdy2 = FALSE THEN
						tyParamTravLif.a_usiUSPriority[2]	:= 3;
						IF tyParamTravLif.a_usiUSPriority[1] < 2 THEN
							tyParamTravLif.a_usiUSPriority[1]	:= tyParamTravLif.a_usiUSPriority[1] + 1;
						END_IF
					END_IF
					
					tyParamTravLif.a_bDSDis[1]			:= FALSE;
					tyParamTravLif.a_bDSDis[2]			:= FALSE;
					tyParamTravLif.a_bDSDis[3]			:= FALSE;
					tyParamTravLif.a_usiDSPriority[1]	:= 3;
					tyParamTravLif.a_usiDSPriority[2]	:= 2;
					tyParamTravLif.a_usiDSPriority[3]	:= 1;
					
					tyParamTravLif.a_bMagRej[1]			:= TRUE;
					tyParamTravLif.a_bMagRej[2]			:= FALSE;
					tyParamTravLif.a_bMagRej[3]			:= FALSE;
					
			END_CASE
		
	END_CASE
	
	a_bMagDis	:= tyParamTravLif.a_bDSDis;
	a_bMagRej	:= tyParamTravLif.a_bMagRej;
	

	
END_ACTION
