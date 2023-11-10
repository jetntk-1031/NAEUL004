
ACTION Act_OptP0800Table3:
	
	tyP0800MagInfo.tyMagInfo2.tyTable3List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer3DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
	
	//Call Table FB
	fbP0800Table3.sVisuNm				:= tyP0800Table3.sVisuNm;
	fbP0800Table3.udiWorkAreaStartX		:= 15;
	fbP0800Table3.udiWorkAreaEndX		:= 365;
	fbP0800Table3.udiWorkAreaStartY		:= 109;
	fbP0800Table3.udiWorkAreaEndY		:= 429;
	fbP0800Table3.udiMinXDist			:= 20;
	fbP0800Table3.udiMinYDist			:= 20;
	fbP0800Table3.uiSlideScale			:= c_uiP0800TableSize;
	fbP0800Table3.iTotalData			:= DINT_TO_INT(p_tyBuffer3DispBffr.diDispIdxEnd);
	fbP0800Table3.iTotalRow				:= c_uiP0800TableSize;
	fbP0800Table3(uiSliderStatus 		:= tyP0800MagInfo.tyMagInfo2.tyTable3List.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyHotspot , uiTablePos := tyP0800Table3.uiTablePos , iSliderPos := tyP0800MagInfo.tyMagInfo2.tyTable3List.tyUISlider.iValue);
	
	tyP0800Table3.uiSelectedRow	:= fbP0800Table3.uiSelectedRow;
	tyP0800Table3.bTableActive	:= fbP0800Table3.bTableActive;
	tyP0800Table3.bSliderActive	:= fbP0800Table3.bSliderActive;
	
	//Table Content
	IF p_tyDI.bMagPresentSen3 THEN
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol0[i].sValue		:= p_tyBuffer3DispBffr.a_tyDispBffrDat[tyP0800Table3.uiTablePos + i - 1].sSltIdx;
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol1[i].sValue		:= p_tyBuffer3DispBffr.a_tyDispBffrDat[tyP0800Table3.uiTablePos + i - 1].sSltTm;
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol1[i].usiColor	:= DWORD_TO_USINT(p_tyBuffer3DispBffr.a_tyDispBffrDat[tyP0800Table3.uiTablePos + i - 1].dwColor);
			
		END_FOR
	ELSE
		FOR i := 1 TO c_uiP0800TableSize DO
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol0[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol1[i].sValue		:= '';
			tyP0800MagInfo.tyMagInfo2.tyTable3List.a_tyStringDataCol1[i].usiColor	:= 0;
			
		END_FOR
	END_IF
	
	tyP0800MagInfo.tyMagInfo2.tyTable3List.tyUISlider.iMaxValue	:= DINT_TO_INT(p_tyBuffer3DispBffr.diDispIdxEnd) - (c_uiP0800TableSize - 1);
		
END_ACTION
