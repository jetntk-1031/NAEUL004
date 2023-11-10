
ACTION Act_OptP1030Table:
	
	//Call Table FB
	fbP1030Table.sVisuNm			:= tyP1030Table.sVisuNm;
	fbP1030Table.udiWorkAreaStartX	:= 386;
	fbP1030Table.udiWorkAreaEndX	:= 796;
	fbP1030Table.udiWorkAreaStartY	:= 85;
	fbP1030Table.udiWorkAreaEndY	:= 405;
	fbP1030Table.udiMinXDist		:= 20;
	fbP1030Table.udiMinYDist		:= 20;
	fbP1030Table.uiSlideScale		:= c_uiP1030TableSize;
	fbP1030Table.iTotalData			:= UDINT_TO_INT(c_udiMagRcpMax);
	fbP1030Table.iTotalRow			:= c_uiP1030TableSize;
	fbP1030Table.p_uiSliderStatus	:= ADR(tyP1030MagSet.tyMagSet.tyTableRecipe.tyUISlider.uiRtStat);
	fbP1030Table.pa_tyUIHotspot		:= ADR(tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyHotspot);
	fbP1030Table.p_uiTablePos		:= ADR(tyP1030Table.uiTablePos);
	fbP1030Table.p_iSliderPos		:= ADR(tyP1030MagSet.tyMagSet.tyTableRecipe.tyUISlider.iValue);
	fbP1030Table.p_uiSelectedRow	:= ADR(tyP1030Table.uiSelectedRow);
	fbP1030Table.p_bTableActive		:= ADR(tyP1030Table.bTableActive);
	fbP1030Table.p_bSliderActive	:= ADR(tyP1030Table.bSliderActive);
	fbP1030Table;
	
	//Table Content
	IF tyP1030Table.bTableActive = TRUE OR tyP1030Table.bSliderActive = TRUE OR bRefreshMagRcpTable = TRUE OR bUpdateP1030Table THEN
		FOR i := 1 TO c_uiP1030TableSize DO
			IF tyP1030MagSet.tyMagSet.tyBtnSort.bValue THEN
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	    := UINT_TO_STRING(tyP1030Table.uiTablePos + i - 1);
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].sValue		:= p_tyMagRcpSortedList[tyP1030Table.uiTablePos + i - 1].sRcpNm;
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].sValue		:= p_tyMagRcpSortedList[tyP1030Table.uiTablePos + i - 1].sDisplayInfo;
			ELSE
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	    := UINT_TO_STRING(tyP1030Table.uiTablePos + i - 1);
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].sValue		:= p_tyMagRcpCurrList[tyP1030Table.uiTablePos + i - 1].sRcpNm;
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].sValue		:= p_tyMagRcpCurrList[tyP1030Table.uiTablePos + i - 1].sDisplayInfo;
			END_IF
		END_FOR
		
		IF bUpdateP1030Table THEN
			bUpdateP1030Table := FALSE;
		END_IF
	END_IF
	
	//Selected Row
	IF tyP1030Table.uiSelectedRow <> tyP1030Table.uiSelectedRowOld THEN
		FOR i := 1 TO c_uiP1030TableSize DO
			IF tyP1030Table.uiSelectedRow = i THEN
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].usiColor	:= 1;
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].usiColor	:= 1;
			ELSE
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].usiColor	:= 0;
				tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].usiColor	:= 0;
			END_IF	
		END_FOR
		
		tyP1030Table.uiSelectedRowOld	:= tyP1030Table.uiSelectedRow;
	END_IF
	
		
END_ACTION
