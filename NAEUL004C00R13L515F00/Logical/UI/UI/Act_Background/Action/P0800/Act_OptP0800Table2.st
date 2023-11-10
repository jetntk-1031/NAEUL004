
ACTION Act_OptP0800Table2:
	
	tyP0800MagInfo.tyMagInfo1.tyTable2List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer2DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
	
	//Call Table FB
	fbP0800Table2.sVisuNm				:= tyP0800Table2.sVisuNm;
	fbP0800Table2.udiWorkAreaStartX		:= 15;
	fbP0800Table2.udiWorkAreaEndX		:= 365;
	fbP0800Table2.udiWorkAreaStartY		:= 109;
	fbP0800Table2.udiWorkAreaEndY		:= 429;
	fbP0800Table2.udiMinXDist			:= 20;
	fbP0800Table2.udiMinYDist			:= 20;
	fbP0800Table2.uiSlideScale			:= c_uiP0800TableSize;
	fbP0800Table2.iTotalData			:= DINT_TO_INT(p_tyBuffer2DispBffr.diDispIdxEnd);
	fbP0800Table2.iTotalRow				:= c_uiP0800TableSize;
	fbP0800Table2(uiSliderStatus 		:= tyP0800MagInfo.tyMagInfo1.tyTable2List.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyHotspot , uiTablePos := tyP0800Table2.uiTablePos , iSliderPos := tyP0800MagInfo.tyMagInfo1.tyTable2List.tyUISlider.iValue);
	
	tyP0800Table2.uiSelectedRow	:= fbP0800Table2.uiSelectedRow;
	tyP0800Table2.bTableActive	:= fbP0800Table2.bTableActive;
	tyP0800Table2.bSliderActive	:= fbP0800Table2.bSliderActive;
	
	//Table Content
	IF p_tyDI.bMagPresentSen2 THEN
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol0[i].sValue		:= p_tyBuffer2DispBffr.a_tyDispBffrDat[tyP0800Table2.uiTablePos + i - 1].sSltIdx;
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol1[i].sValue		:= p_tyBuffer2DispBffr.a_tyDispBffrDat[tyP0800Table2.uiTablePos + i - 1].sSltTm;
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol1[i].usiColor	:= DWORD_TO_USINT(p_tyBuffer2DispBffr.a_tyDispBffrDat[tyP0800Table2.uiTablePos + i - 1].dwColor);
			
		END_FOR
	ELSE
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol0[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol1[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo1.tyTable2List.a_tyStringDataCol1[i].usiColor	:= 0;
			
		END_FOR
	END_IF
	
	tyP0800MagInfo.tyMagInfo1.tyTable2List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer2DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
		
END_ACTION
