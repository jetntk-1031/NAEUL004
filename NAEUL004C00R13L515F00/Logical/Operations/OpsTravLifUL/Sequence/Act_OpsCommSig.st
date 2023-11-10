
ACTION Act_OpsCommSig: 
	IF bSelfTest = FALSE THEN	
		//Upstream
		IF p_eUSCommMod1 = McSetCommModHermes THEN
			bLocalUSRdy1	:= p_bUSHermesUSRdy1;
			bLocalUSGdRdy1	:= p_bUSHermesUSGdRdy1;
		ELSE
			bLocalUSRdy1	:= p_bUSSMEMAUSRdy1;
			bLocalUSGdRdy1	:= p_bUSSMEMAGdBrdRdy1;
		END_IF
		
		IF p_eUSCommMod2 = McSetCommModHermes THEN
			bLocalUSRdy2	:= p_bUSHermesUSRdy2;
			bLocalUSGdRdy2	:= p_bUSHermesUSGdRdy2;
		ELSE
			bLocalUSRdy2	:= p_bUSSMEMAUSRdy2;
			bLocalUSGdRdy2	:= p_bUSSMEMAGdBrdRdy2;
		END_IF
		
		IF p_eUSCommMod3 = McSetCommModHermes THEN
			bLocalUSRdy3	:= p_bUSHermesUSRdy3;
			bLocalUSGdRdy3	:= p_bUSHermesUSGdRdy3;
		ELSE
			bLocalUSRdy3	:= p_bUSSMEMAUSRdy3;
			bLocalUSGdRdy3	:= p_bUSSMEMAGdBrdRdy3;
		END_IF
		
		//Downstream
		IF p_eDSCommMod1 = McSetCommModHermes THEN
			bLocalDSRdy1	:= p_bDSHermesDSRdy1;
		ELSE
			bLocalDSRdy1	:= p_bDSSMEMADSRdy1;
		END_IF
		
		IF p_eDSCommMod2 = McSetCommModHermes THEN
			bLocalDSRdy2	:= p_bDSHermesDSRdy2;
		ELSE
			bLocalDSRdy2	:= p_bDSSMEMADSRdy2;
		END_IF
		
		IF p_eDSCommMod3 = McSetCommModHermes THEN
			bLocalDSRdy3	:= p_bDSHermesDSRdy3;
		ELSE
			bLocalDSRdy3	:= p_bDSSMEMADSRdy3;
		END_IF

	ELSE
		IF eGotoOpsStep = TravLifULStepUSSigWait THEN
		
			bLocalUSRdy1 := TRUE;
					
		ELSIF eGotoOpsStep = TravLifULStepEntBrd AND p_bConvHvBrd THEN
			bLocalUSRdy1 := FALSE;
			bLocalUSRdy2 := FALSE;
			bLocalUSRdy3 := FALSE;
		END_IF
		//Downstream
		IF p_eDSCommMod1 = McSetCommModHermes THEN
			bLocalDSRdy1	:= p_bDSHermesDSRdy1;
		ELSE
			bLocalDSRdy1	:= p_bDSSMEMADSRdy1;
		END_IF
		
		IF p_eDSCommMod2 = McSetCommModHermes THEN
			bLocalDSRdy2	:= p_bDSHermesDSRdy2;
		ELSE
			bLocalDSRdy2	:= p_bDSSMEMADSRdy2;
		END_IF
		
		IF p_eDSCommMod3 = McSetCommModHermes THEN
			bLocalDSRdy3	:= p_bDSHermesDSRdy3;
		ELSE
			bLocalDSRdy3	:= p_bDSSMEMADSRdy3;
		END_IF	
	END_IF
END_ACTION
