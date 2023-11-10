(** 2022-10-17 **)
ACTION Act_DispBffr:
	
	
	memset(ADR(p_tyDispCycTmBffr) , 0 , SIZEOF(p_tyDispCycTmBffr));
	IF NOT(p_bTravDPosDiff  OR p_bLifterBtmSltAPosDiff) THEN
		p_tyDispCycTmBffr ACCESS ADR(a_tyDispCycTmBffr[0]);
		p_tyBuffer ACCESS p_Buffer1Bffr;
		p_diSlotCount ACCESS p_LifterBtmCurrSltA;
	ELSIF NOT(p_bTravEPosDiff OR p_bLifterBtmSltBPosDiff ) THEN
		p_tyDispCycTmBffr ACCESS ADR(a_tyDispCycTmBffr[1]);
		p_tyBuffer ACCESS p_Buffer2Bffr;
		p_diSlotCount ACCESS p_LifterBtmCurrSltB;
	ELSIF NOT(p_bTravFPosDiff OR p_bLifterBtmSltCPosDiff) THEN
		p_tyDispCycTmBffr ACCESS ADR(a_tyDispCycTmBffr[2]);
		p_tyBuffer ACCESS p_Buffer3Bffr;
		p_diSlotCount ACCESS p_LifterBtmCurrSltC;
	END_IF
	diCnt	:= 0;
	dwNAColor := 0;
	dwGdColor := 1;
	
	FOR dicntr1 := 1 TO p_diBffrTtlSlt DO
			
		//Get Display Index
		diDispIdx	:= p_diBffrTtlSlt * p_diSltCap - diCnt; //p_diLifterBtmCurrSltA
		diCnt := diCnt +1;
		
		

		IF p_diSlotCount = diCnt AND p_tyBuffer.a_tyBffrDat[diCnt].bSltForBrd AND p_tyBuffer.a_tyBffrDat[diCnt].bBrdAvl AND p_tyBuffer.a_tyBffrDat[diCnt].a_tySubBffrDat[1].bSubForBrd AND p_tyBuffer.a_tyBffrDat[diCnt].a_tySubBffrDat[1].bBrdAvl THEN
			ascTIME(dtCycleTim , ADR(p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].sCycleTm) , SIZEOF(p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].sCycleTm));
			p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].dwColor	:= dwGdColor;
			p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].sSlttoSltIdx := sCurrSlotTransition;
		ELSE
			p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].dwColor	:= dwNAColor;
			p_tyDispCycTmBffr.a_tyDispBffrDat[diDispIdx].sSlttoSltIdx := DINT_TO_STRING(dicntr1);
		END_IF
			

	END_FOR
	
	p_tyDispCycTmBffr.diDispIdxSt	:= 1;
	p_tyDispCycTmBffr.diDispIdxEnd	:= p_diBffrTtlSlt * p_diSltCap;
	

END_ACTION
