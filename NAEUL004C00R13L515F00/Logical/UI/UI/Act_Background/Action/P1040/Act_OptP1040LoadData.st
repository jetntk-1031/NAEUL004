
ACTION Act_OptP1040LoadData:
	
	udiP1040SelectedRow		:= STRING_TO_UDINT(tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol0[tyP1040Table.uiSelectedRow].sValue);
	
	IF udiP1040SelectedRow <> udiP1040SelectedRowOld OR bRefreshProdRcpDetail = TRUE OR bUpdateP1040LoadData THEN
		IF tyP1040ProdSet.tyProdSet.tyStringSearch.sValue = '' THEN
			IF tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol1[tyP1040Table.uiSelectedRow].sValue <> '' THEN
				//Update Recipe Data
				IF tyP1040ProdSet.tyProdSet.tyBtnSort.bValue THEN
					tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].sRcpNm;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diWidthInUM;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diWidthInUM2;
					tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMaxSltValue;
					tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMinSltValue;
					tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= p_tyProdRcpSortedList[udiP1040SelectedRow].diPitch;
					tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diBrdPerSlt;
					tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyProdRcpSortedList[udiP1040SelectedRow].usiMcMod;
					tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bTopToBtm;
					tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bGapBwtnBrd;
					tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bLongBrd;
					tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMinReqFreeBffr;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMtrPshrExtSpd;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMtrPshrExtTorq;
					tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diPshrOffset;
				ELSE
					
					tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= p_tyProdRcpCurrList[udiP1040SelectedRow].sRcpNm;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].diWidthInUM;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= p_tyProdRcpCurrList[udiP1040SelectedRow].diWidthInUM2;
					tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].diMaxSltValue;
					tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].diMinSltValue;
					tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= p_tyProdRcpCurrList[udiP1040SelectedRow].diPitch;
					tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].diBrdPerSlt;
					tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyProdRcpCurrList[udiP1040SelectedRow].usiMcMod;
					tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].bTopToBtm;
					tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].bGapBwtnBrd;
					tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= p_tyProdRcpCurrList[udiP1040SelectedRow].bLongBrd;
					tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= p_tyProdRcpCurrList[udiP1040SelectedRow].diMinReqFreeBffr;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrList[udiP1040SelectedRow].diMtrPshrExtSpd;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrList[udiP1040SelectedRow].diMtrPshrExtTorq;
					tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrList[udiP1040SelectedRow].diPshrOffset;
				END_IF
			ELSE
				tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= '';
				tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= 100000;
				tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= 100000;
				tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyMagRcpCurrRcp.diTtlSlt;
				tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyNtParamCurr.diProjMagMinSlt;
				tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= 1;
				tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= 1;
				tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyMcParamCurr.usiDefaultMcMod;
				tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= 0;
				tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= 8;
				tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= 80;
				tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= 0;
			END_IF
			
		ELSE
			
			IF tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol1[tyP1040Table.uiSelectedRow].sValue <> '' THEN
				//Update Recipe Data
				IF tyP1040ProdSet.tyProdSet.tyBtnSort.bValue THEN
					tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].sRcpNm;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diWidthInUM;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diWidthInUM2;
					tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMaxSltValue;
					tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMinSltValue;
					tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= p_tyProdRcpSortedList[udiP1040SelectedRow].diPitch;
					tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].diBrdPerSlt;
					tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyProdRcpSortedList[udiP1040SelectedRow].usiMcMod;
					tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bTopToBtm;
					tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bGapBwtnBrd;
					tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= p_tyProdRcpSortedList[udiP1040SelectedRow].bLongBrd;
					tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMinReqFreeBffr;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMtrPshrExtSpd;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpSortedList[udiP1040SelectedRow].diMtrPshrExtTorq;
					tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diPshrOffset;	
				ELSE
					tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= p_tyProdRcpFilterList[udiP1040SelectedRow].sRcpNm;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].diWidthInUM;
					tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= p_tyProdRcpSortedList[udiP1040SelectedRow].diWidthInUM2;
					tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].diMaxSltValue;
					tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].diMinSltValue;
					tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= p_tyProdRcpFilterList[udiP1040SelectedRow].diPitch;
					tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].diBrdPerSlt;
					tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyProdRcpFilterList[udiP1040SelectedRow].usiMcMod;
					tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].bTopToBtm;
					tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].bGapBwtnBrd;
					tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= p_tyProdRcpFilterList[udiP1040SelectedRow].bLongBrd;
					tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= p_tyProdRcpFilterList[udiP1040SelectedRow].diMinReqFreeBffr;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpFilterList[udiP1040SelectedRow].diMtrPshrExtSpd;
					tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpFilterList[udiP1040SelectedRow].diMtrPshrExtTorq;
					tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= p_tyProdRcpFilterList[udiP1040SelectedRow].diPshrOffset;
				END_IF
			ELSE
				tyP1040ProdSet.tyProdSet.tyStringRecipeNm.sValue		:= '';
				tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue			:= 100000;
				tyP1040ProdSet.tyProdSet.tyNumProdWidth2.diValue		:= 100000;
				tyP1040ProdSet.tyProdSet.tyNumLastSlt.diValue			:= p_tyMagRcpCurrRcp.diTtlSlt;
				tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValue			:= p_tyNtParamCurr.diProjMagMinSlt;
				tyP1040ProdSet.tyProdSet.tyNumPitch.diValue				:= 1;
				tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValue			:= 1;
				tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueIdx		:= p_tyMcParamCurr.usiDefaultMcMod;
				tyP1040ProdSet.tyProdSet.tyBtnToptoBtm.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyBtnGapBetBrds.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyBtnLongBrd.bValue			:= FALSE;
				tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValue	:= 0;
				tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValue		:= 8;
				tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValue	:= 80;
				tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValue		:= 0;
			END_IF
			
		END_IF
		
		bUpdateP1040LoadData 		:= FALSE;
		bRefreshProdRcpDetail		:= FALSE;
		udiP1040SelectedRowOld 		:= udiP1040SelectedRow;
		
		fUIInRtStatOff(ADR(tyP1040ProdSet.tyProdSet.tyBtnSave.uiMaskRtStat));
		
	END_IF
	
END_ACTION
