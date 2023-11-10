(** 2022-10-17 **)
ACTION Act_OpsRun:
	
	//A15<-A13 | timetaken

	IF (p_eOpsTravLifOpsStep =  TravLifULStepExitBrd AND p_eOpsTravLifGotoOpsStep = TravLifULStepOutletPneuCls)  THEN
		memset(ADR(dtCycleTim),0,SIZEOF(dtCycleTim));
		IF FIND(sCurrSlotTransition,'<-') <> 0 THEN
			sCurrSlotTransition := LEFT( sCurrSlotTransition , FIND(sCurrSlotTransition,'<-') - 1);
		END_IF 
		
		IF NOT(p_bTravDPosDiff  OR p_bLifterBtmSltAPosDiff)   THEN
			itoa(DINT_TO_INT(p_diLifterBtmCurrSltA),ADR(sSltnumber));
			sCurrSlotTransition := CONCAT(CONCAT(CONCAT('A',sSltnumber),'<-'),sCurrSlotTransition);
			dtCycleTim := ((DT_TO_TIME(p_dtTimeCurrDT) +UINT_TO_TIME(p_uiTimeCurrDTStructMS) -tPrevTim )+ tAccumulateTimer);
			tPrevTim 			:= DT_TO_TIME(p_dtTimeCurrDT) + UINT_TO_TIME(p_uiTimeCurrDTStructMS);
		ELSIF NOT(p_bTravEPosDiff OR p_bLifterBtmSltBPosDiff )  THEN
			itoa(DINT_TO_INT(p_diLifterBtmCurrSltB),ADR(sSltnumber));
			sCurrSlotTransition := CONCAT(CONCAT(CONCAT('B',sSltnumber),'<-'),sCurrSlotTransition);
			dtCycleTim := ((DT_TO_TIME(p_dtTimeCurrDT) +UINT_TO_TIME(p_uiTimeCurrDTStructMS) -tPrevTim )+ tAccumulateTimer);
			tPrevTim 			:= DT_TO_TIME(p_dtTimeCurrDT) + UINT_TO_TIME(p_uiTimeCurrDTStructMS);
		ELSIF NOT(p_bTravFPosDiff OR p_bLifterBtmSltCPosDiff)  THEN
			itoa(DINT_TO_INT(p_diLifterBtmCurrSltC),ADR(sSltnumber));
			sCurrSlotTransition := CONCAT(CONCAT(CONCAT('C',sSltnumber),'<-'),sCurrSlotTransition);
			dtCycleTim := ((DT_TO_TIME(p_dtTimeCurrDT) +UINT_TO_TIME(p_uiTimeCurrDTStructMS) -tPrevTim )+ tAccumulateTimer); //+ tAccumulateTimer
			tPrevTim 			:= DT_TO_TIME(p_dtTimeCurrDT) + UINT_TO_TIME(p_uiTimeCurrDTStructMS);
		ELSE 
			sCurrSlotTransition := '';
			tPrevTim 			:= 0;
		END_IF
		IF memcmp(ADR(dtCycleTim),ADR(dtDumyTim),SIZEOF(dtCycleTim)) <> 0 THEN ;
			Act_DispBffr;
		END_IF
	ELSIF (p_eOpsTravLifGotoOpsStep = TravLifULStepUSComm AND (p_eOpsTravLifOpsStep = TravLifULStepInletPneuOpn OR p_eOpsTravLifOpsStep= TravLifULStepTravLifMov ))  THEN
			IF tPrevTim <> 0 THEN 
				tAccumulateTimer := (DT_TO_TIME(p_dtTimeCurrDT)+UINT_TO_TIME(p_uiTimeCurrDTStructMS) ) - tPrevTim  ;
			END_IF
	ELSIF (p_eOpsTravLifOpsStep =  TravLifULStepUSComm AND p_eOpsTravLifGotoOpsStep = TravLifULStepEntBrd) THEN
			tPrevTim		  := DT_TO_TIME(p_dtTimeCurrDT) +UINT_TO_TIME(p_uiTimeCurrDTStructMS) ;
	END_IF
	
	
	
END_ACTION
