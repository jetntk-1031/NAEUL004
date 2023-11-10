
ACTION 	Act_OptP0950DispBffrCycle: 
	IF tyP0950Simu.tySimuBffrCycleTm.tyDrpDnMagSel.usiValueIdx = 0 THEN
		p_tyBufferDispCycleTmBffr ACCESS p_Simu2DispCyclTmBffr1;
		p_bLocalMagPresent ACCESS ADR(p_tyDI.bMagPresentSen1);
	ELSIF tyP0950Simu.tySimuBffrCycleTm.tyDrpDnMagSel.usiValueIdx = 1 THEN
		p_tyBufferDispCycleTmBffr ACCESS p_Simu2DispCyclTmBffr2;
		p_bLocalMagPresent ACCESS ADR(p_tyDI.bMagPresentSen2);
	ELSIF tyP0950Simu.tySimuBffrCycleTm.tyDrpDnMagSel.usiValueIdx = 2 THEN
		p_tyBufferDispCycleTmBffr ACCESS p_Simu2DispCyclTmBffr3;
		p_bLocalMagPresent ACCESS ADR(p_tyDI.bMagPresentSen3);
	END_IF
		
//	tyP0950Simu.tySimuBffrCycleTm.tyTableList.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBufferDispCycleTmBffr.diDispIdxEnd) - (c_uiP0950TableSize - 1);
	
	//Call Table FB
	fbP0950Table1.sVisuNm				:= tyP0950Table1.sVisuNm;
	fbP0950Table1.udiWorkAreaStartX		:= 15;
	fbP0950Table1.udiWorkAreaEndX		:= 365;
	fbP0950Table1.udiWorkAreaStartY		:= 109;
	fbP0950Table1.udiWorkAreaEndY		:= 429;
	fbP0950Table1.udiMinXDist			:= 20;
	fbP0950Table1.udiMinYDist			:= 20;
	fbP0950Table1.uiSlideScale			:= c_uiP0950TableSize;
	fbP0950Table1.iTotalData			:= DINT_TO_INT(p_tyBufferDispCycleTmBffr.diDispIdxEnd);
	fbP0950Table1.iTotalRow				:= c_uiP0950TableSize;
	fbP0950Table1(uiSliderStatus 		:= tyP0950Simu.tySimuBffrCycleTm.tyTableList.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyHotspot , uiTablePos := tyP0950Table1.uiTablePos , iSliderPos := tyP0950Simu.tySimuBffrCycleTm.tyTableList.tyUISlider.iValue);
	
	tyP0950Table1.uiSelectedRow	:= fbP0950Table1.uiSelectedRow;
	tyP0950Table1.bTableActive	:= fbP0950Table1.bTableActive;
	tyP0950Table1.bSliderActive	:= fbP0950Table1.bSliderActive;
	
	//Table Content
	IF p_bLocalMagPresent  THEN
		FOR i := 1 TO c_uiP0950TableSize DO
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol0[i].sValue		:= p_tyBufferDispCycleTmBffr.a_tyDispBffrDat[tyP0950Table1.uiTablePos + i - 1].sSlttoSltIdx;
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol1[i].sValue		:= p_tyBufferDispCycleTmBffr.a_tyDispBffrDat[tyP0950Table1.uiTablePos + i - 1].sCycleTm;
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol1[i].usiColor	:= DWORD_TO_USINT(p_tyBufferDispCycleTmBffr.a_tyDispBffrDat[tyP0950Table1.uiTablePos + i - 1].dwColor);
			
		END_FOR
	ELSE
		FOR i := 1 TO c_uiP0950TableSize DO
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol0[i].sValue		:= '';
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol1[i].sValue		:= '';
			tyP0950Simu.tySimuBffrCycleTm.tyTableList.a_tyStringDataCol1[i].usiColor	:= 0;
			
		END_FOR
	END_IF
	
	tyP0950Simu.tySimuBffrCycleTm.tyTableList.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBufferDispCycleTmBffr.diDispIdxEnd) - (c_uiP0950TableSize - 1);
		

END_ACTION
