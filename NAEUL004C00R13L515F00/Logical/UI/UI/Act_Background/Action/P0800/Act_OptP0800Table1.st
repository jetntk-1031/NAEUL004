
ACTION Act_OptP0800Table1:
	
	tyP0800MagInfo.tyMagInfo1.tyTable1List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer1DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
	
	//Call Table FB
	fbP0800Table1.sVisuNm				:= tyP0800Table1.sVisuNm;
	fbP0800Table1.udiWorkAreaStartX		:= 15;
	fbP0800Table1.udiWorkAreaEndX		:= 365;
	fbP0800Table1.udiWorkAreaStartY		:= 109;
	fbP0800Table1.udiWorkAreaEndY		:= 429;
	fbP0800Table1.udiMinXDist			:= 20;
	fbP0800Table1.udiMinYDist			:= 20;
	fbP0800Table1.uiSlideScale			:= c_uiP0800TableSize;
	fbP0800Table1.iTotalData			:= DINT_TO_INT(p_tyBuffer1DispBffr.diDispIdxEnd);
	fbP0800Table1.iTotalRow				:= c_uiP0800TableSize;
	fbP0800Table1(uiSliderStatus 		:= tyP0800MagInfo.tyMagInfo1.tyTable1List.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyHotspot , uiTablePos := tyP0800Table1.uiTablePos , iSliderPos := tyP0800MagInfo.tyMagInfo1.tyTable1List.tyUISlider.iValue);
	
	tyP0800Table1.uiSelectedRow	:= fbP0800Table1.uiSelectedRow;
	tyP0800Table1.bTableActive	:= fbP0800Table1.bTableActive;
	tyP0800Table1.bSliderActive	:= fbP0800Table1.bSliderActive;
	
	//Table Content
	IF p_tyDI.bMagPresentSen1 THEN
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol0[i].sValue		:= p_tyBuffer1DispBffr.a_tyDispBffrDat[tyP0800Table1.uiTablePos + i - 1].sSltIdx;
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol1[i].sValue		:= p_tyBuffer1DispBffr.a_tyDispBffrDat[tyP0800Table1.uiTablePos + i - 1].sSltTm;
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol1[i].usiColor	:= DWORD_TO_USINT(p_tyBuffer1DispBffr.a_tyDispBffrDat[tyP0800Table1.uiTablePos + i - 1].dwColor);
			
		END_FOR
	ELSE
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol0[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol1[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo1.tyTable1List.a_tyStringDataCol1[i].usiColor	:= 0;
			
		END_FOR
	END_IF
	
	tyP0800MagInfo.tyMagInfo1.tyTable1List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer1DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
		
END_ACTION
