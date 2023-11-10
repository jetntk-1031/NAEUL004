(** 2019-07-04 **)
ACTION Act_Link:
	
	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfLink;
		PrecededByF1:
			PrecededByF1Link;
	END_CASE
	

	//for comparing Rcp
	a_tyBffrStat[1] := p_tyBuffer1BffrStat;
	a_tyBffrStat[2] := p_tyBuffer2BffrStat;
	a_tyBffrStat[3] := p_tyBuffer3BffrStat;

	a_udiMagAllwGo[1] := p_udiOpsMagConvUL1MagAllwGo;
	a_udiMagAllwGo[2] := p_udiOpsMagConvUL2MagAllwGo;
	a_udiMagAllwGo[3] := p_udiOpsMagConvUL3MagAllwGo;
	
	a_bBufferMagPresent[1] := p_bBuffer1MagPresent; //AND p_bBuffer1MagRemoved = FALSE;
	a_bBufferMagPresent[2] := p_bBuffer2MagPresent; //AND p_bBuffer2MagRemoved = FALSE;
	a_bBufferMagPresent[3] := p_bBuffer3MagPresent;// AND p_bBuffer3MagRemoved = FALSE;
	
	a_bMagAWWidthDiff[1] := p_bMagAW1WidthDiff;
	a_bMagAWWidthDiff[2] := p_bMagAW2WidthDiff;
	a_bMagAWWidthDiff[3] := p_bMagAW3WidthDiff;
	
	
	FOR x:= 1 TO SIZEOF(a_bBufferMagPresent)/SIZEOF(a_bBufferMagPresent[1]) DO
	  	//Force a New Mag with Same Rcp to Chg Width
		IF a_bMagAWWidthDiff[x] = FALSE AND NOT(a_bBufferMagPresent[x]) THEN
			a_bForceChgWidthIfSameRcp[x] := TRUE;
		ELSIF (a_bBufferMagPresent[x]) THEN 
			IF p_bOpsMagConvUL1AWDone AND x = 1 THEN 
				a_bForceChgWidthIfSameRcp[x] := FALSE;
			ELSIF p_bOpsMagConvUL2AWDone AND x = 2 THEN
				a_bForceChgWidthIfSameRcp[x] := FALSE;
			ELSIF p_bOpsMagConvUL3AWDone AND x = 3 THEN
				a_bForceChgWidthIfSameRcp[x] := FALSE;
			END_IF
		END_IF

	END_FOR
	
		
	//Change Completed FeedBack
	IF p_bOpsMagConvUL1SlotUpdtDone THEN
		a_bAllwChangeSlot[1] := FALSE;
	END_IF
	IF p_bOpsMagConvUL2SlotUpdtDone THEN
		a_bAllwChangeSlot[2] := FALSE;
	END_IF
	IF p_bOpsMagConvUL3SlotUpdtDone THEN
		a_bAllwChangeSlot[3] := FALSE;
	END_IF
	
	
	p_eULMod	:= USINT_TO_UDINT(p_usiLinkProdRcpCurrRcpMcMod); // 0 Unloader , 1 Rej
END_ACTION
