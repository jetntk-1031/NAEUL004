
ACTION Act_OptP1030Sort:	
	
	IF tyP1030MagSet.tyMagSet.tyBtnSort.bValue THEN
		tyP1030MagSet.tyMagSet.tyBtnSort.usiTxtIdx 	:= 1;
	ELSE
		tyP1030MagSet.tyMagSet.tyBtnSort.usiTxtIdx 	:= 0;
	END_IF
	
	IF tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl THEN
		bUpdateP1030LoadData := TRUE;
	END_IF
	
	IF tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl THEN
		
		IF tyP1030MagSet.tyMagSet.tyBtnSort.bValue THEN
	
			tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat.0	:= FALSE;
			
			eMagRcpAct	:= MagRcpActSort;			
			
			IF p_eMagRcpStat = MagRcpActSort AND p_eMagRcpStatus = Done THEN
				eMagRcpAct		:= MagRcpActIdle;
					
				FOR i := 1 TO c_uiP1030TableSize DO
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(tyP1030Table.uiTablePos + i - 1);
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyMagRcpSortedList[tyP1030Table.uiTablePos + i - 1].sRcpNm;
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyMagRcpSortedList[tyP1030Table.uiTablePos + i - 1].sDisplayInfo;
				END_FOR
					
					
				//Unmask
				tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat.0	:= TRUE;
					
				tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl := FALSE;
					
			ELSIF p_eMagRcpStatus = Error THEN
				FOR i := 1 TO c_uiP1030TableSize DO
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[i].sValue		:= UINT_TO_STRING(tyP1030Table.uiTablePos + i - 1);
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].sValue		:= '';
					tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].sValue		:= '';
				END_FOR
					
				p_tyC0008MsgBox ACCESS ADR (tyP1030MagSet.tyMsgBoxListErr);
					
				IF tyP1030MagSet.tyMsgBoxListErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1030MagSet.tyMsgBoxListErr.tyBtnNo.bRtCompl 		:= TRUE;
					tyP1030MagSet.tyMsgBoxListErr.tyBtnNo.bValue			:= TRUE;
						
					p_tyC0008MsgBox ACCESS ADR (tyP1030MagSet.tyMsgBoxHide);
						
					//Unmask
					tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat.0	:= TRUE;
						
					//Reset
					tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl := FALSE;
				END_IF
			END_IF
			
		ELSE
			
			bUpdateP1030Table	:= TRUE;
			
			tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl := FALSE;
			
		END_IF
		
	END_IF
	
		
	
			
	
END_ACTION
