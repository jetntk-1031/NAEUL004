
ACTION Act_OptP1030LoadData:
	
	udiP1030SelectedRow		:= STRING_TO_UDINT(tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[tyP1030Table.uiSelectedRow].sValue);
	
	IF udiP1030SelectedRow <> udiP1030SelectedRowOld OR bRefreshMagRcpDetail = TRUE OR bUpdateP1030LoadData THEN
		
		IF tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[tyP1030Table.uiSelectedRow].sValue <> '' THEN
			//Update Recipe Data
			IF tyP1030MagSet.tyMagSet.tyBtnSort.bValue THEN
				tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue			:= p_tyMagRcpSortedList[udiP1030SelectedRow].sRcpNm;
				tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue		:= p_tyMagRcpSortedList[udiP1030SelectedRow].diSltToSltInUM;
				tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue				:= p_tyMagRcpSortedList[udiP1030SelectedRow].diTtlSlt;
				tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag1Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag2Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag3Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue			:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag1TravPosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue			:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag2TravPosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue			:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMag3TravPosInUM;
				tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx		:= p_tyMagRcpSortedList[udiP1030SelectedRow].usiMagModel;
				tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpSortedList[udiP1030SelectedRow].diMagMaxBrdWidth;
				tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue	:= p_tyMagRcpSortedList[udiP1030SelectedRow].bSafetyBarDisabled;
				tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpSortedList[udiP1030SelectedRow].bMagHeightChkEn;
			ELSE
				tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrList[udiP1030SelectedRow].sRcpNm;
				tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrList[udiP1030SelectedRow].diSltToSltInUM;
				tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrList[udiP1030SelectedRow].diTtlSlt;
				tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag1Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag2Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag3Slt1PosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag1TravPosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag2TravPosInUM;
				tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMag3TravPosInUM;
				tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx		:= p_tyMagRcpCurrList[udiP1030SelectedRow].usiMagModel;
				tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpCurrList[udiP1030SelectedRow].diMagMaxBrdWidth;
				tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue	:= p_tyMagRcpCurrList[udiP1030SelectedRow].bSafetyBarDisabled;
				tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpCurrList[udiP1030SelectedRow].bMagHeightChkEn;
			END_IF
		ELSE
			
			tyP1030MagSet.tyMagSet.tyStringRecipeNm.sValue			:= '';
			tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValue		:= 10000;
			tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue				:= p_tyNtParamCurr.diProjMagMaxSlt;
			tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValue	:= 0;
			tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValue	:= 0;
			tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValue	:= 0;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValue			:= 0;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValue			:= 0;
			tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValue			:= 0;
			tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx		:= 0;
			tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValue		:= 0;
			tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bValue	:= FALSE;
			tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bValue		:= FALSE;
		END_IF
		
		bRefreshMagRcpDetail	:= FALSE;
		bUpdateP1030LoadData	:= FALSE;
		udiP1030SelectedRowOld 	:= udiP1030SelectedRow;
		
		fUIInRtStatOff(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
		
	END_IF
	
END_ACTION
