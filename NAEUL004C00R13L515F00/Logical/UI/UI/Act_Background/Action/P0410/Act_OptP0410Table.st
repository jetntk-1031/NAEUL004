
ACTION Act_OptP0410Table:
	
	//Call Table FB
	fbP0410Table.sVisuNm			:= tyP0410Table.sVisuNm;
	fbP0410Table.udiWorkAreaStartX	:= 349;
	fbP0410Table.udiWorkAreaEndX	:= 768;
	fbP0410Table.udiWorkAreaStartY	:= 107;
	fbP0410Table.udiWorkAreaEndY	:= 428;
	fbP0410Table.udiMinXDist		:= 20;
	fbP0410Table.udiMinYDist		:= 20;
	fbP0410Table.uiSlideScale		:= c_uiP0410TableSize;
	fbP0410Table.iTotalData			:= UDINT_TO_INT(c_udiMagRcpMax);;
	fbP0410Table.iTotalRow			:= c_uiP0410TableSize;
	fbP0410Table(uiSliderStatus := tyP0410MagSel.tyMagSel.tyTableRecipe.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyHotspot , uiTablePos := tyP0410Table.uiTablePos , iSliderPos := tyP0410MagSel.tyMagSel.tyTableRecipe.tyUISlider.iValue);
	
	tyP0410Table.uiSelectedRow		:= fbP0410Table.uiSelectedRow;
	tyP0410Table.bTableActive		:= fbP0410Table.bTableActive;
	tyP0410Table.bSliderActive		:= fbP0410Table.bSliderActive;
	
	//Table Content
	IF tyP0410Table.bTableActive = TRUE OR tyP0410Table.bSliderActive = TRUE OR bRefreshMagRcpTable OR bUpdateP0410Table THEN
		FOR i := 1 TO c_uiP0410TableSize DO
			IF tyP0410MagSel.tyMagSel.tyBtnSort.bValue THEN
				
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(tyP0410Table.uiTablePos + i - 1);
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyMagRcpSortedList[tyP0410Table.uiTablePos + i - 1].sRcpNm;
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyMagRcpSortedList[tyP0410Table.uiTablePos + i - 1].sDisplayInfo;
				
			ELSE
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol0[i].sValue	    := UINT_TO_STRING(tyP0410Table.uiTablePos + i - 1);
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].sValue		:= p_tyMagRcpCurrList[tyP0410Table.uiTablePos + i - 1].sRcpNm;
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].sValue		:= p_tyMagRcpCurrList[tyP0410Table.uiTablePos + i - 1].sDisplayInfo;
			END_IF
			
		
		END_FOR
		
		IF bUpdateP0410Table THEN
			bUpdateP0410Table := FALSE;
		END_IF
	END_IF
	
	//Selected Row
	IF tyP0410Table.uiSelectedRow <> tyP0410Table.uiSelectedRowOld THEN
		FOR i := 1 TO c_uiP0410TableSize DO
			IF tyP0410Table.uiSelectedRow = i THEN
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].usiColor	:= 1;
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].usiColor	:= 1;
			ELSE
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[i].usiColor	:= 0;
				tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol2[i].usiColor	:= 0;
			END_IF	
		END_FOR
		
		tyP0410Table.uiSelectedRowOld	:= tyP0410Table.uiSelectedRow;
	END_IF
		
END_ACTION
