
ACTION PrecededBySelfBackground1: 

	//Converting BA from US Hermes to Rcp
	IF p_bLinkOpsRun THEN
		IF  p_bHermesBADataAccepted THEN
			tyCurrReqRcp.sBoardId := p_tyHermesBARcv.tyData.sBoardId; 
			tyCurrReqRcp.sBoardIdCreatedBy := p_tyHermesBARcv.tyData.sBoardIdCreatedBy;
			tyCurrReqRcp.eFailedBoard := p_tyHermesBARcv.tyData.eFailedBoard; 
			tyCurrReqRcp.sProductTypeId := p_tyHermesBARcv.tyData.sProductTypeId; 
			tyCurrReqRcp.eFlippedBoard := p_tyHermesBARcv.tyData.eFlippedBoard; 
			tyCurrReqRcp.sTopBarcode := p_tyHermesBARcv.tyData.sTopBarcode; 
			tyCurrReqRcp.sBottomBarcode := p_tyHermesBARcv.tyData.sBottomBarcode;
			tyCurrReqRcp.rLength := p_tyHermesBARcv.tyData.rLength;
			tyCurrReqRcp.rWidth := p_tyHermesBARcv.tyData.rWidth;
			tyCurrReqRcp.rThickness := p_tyHermesBARcv.tyData.rThickness;
			tyCurrReqRcp.rConveyorSpeed := p_tyHermesBARcv.tyData.rConveyorSpeed;
			tyCurrReqRcp.rTopClearanceHeight := p_tyHermesBARcv.tyData.rTopClearanceHeight;
			tyCurrReqRcp.rBottomClearanceHeight := p_tyHermesBARcv.tyData.rBottomClearanceHeight;
			tyCurrReqRcp.rWeight := p_tyHermesBARcv.tyData.rWeight;
			tyCurrReqRcp.sWorkOrderId := p_tyHermesBARcv.tyData.sWorkOrderId;
			tyCurrReqRcp.sBatchId := p_tyHermesBARcv.tyData.sBatchId;
		ELSIF p_bHermesBFDataAccepted THEN
			//Converting BF from US Hermes to Rcp
			tyCurrReqRcp.sBoardId := p_tyHermesBFRcv.tyData.sBoardId; 
			tyCurrReqRcp.sBoardIdCreatedBy := p_tyHermesBFRcv.tyData.sBoardIdCreatedBy;
			tyCurrReqRcp.eFailedBoard := p_tyHermesBFRcv.tyData.eFailedBoard; 
			tyCurrReqRcp.sProductTypeId := p_tyHermesBFRcv.tyData.sProductTypeId; 
			tyCurrReqRcp.eFlippedBoard := p_tyHermesBFRcv.tyData.eFlippedBoard; 
			tyCurrReqRcp.sTopBarcode := p_tyHermesBFRcv.tyData.sTopBarcode; 
			tyCurrReqRcp.sBottomBarcode := p_tyHermesBFRcv.tyData.sBottomBarcode;
			tyCurrReqRcp.rLength := p_tyHermesBFRcv.tyData.rLength;
			tyCurrReqRcp.rWidth := p_tyHermesBFRcv.tyData.rWidth;
			tyCurrReqRcp.rThickness := p_tyHermesBFRcv.tyData.rThickness;
			tyCurrReqRcp.rConveyorSpeed := p_tyHermesBFRcv.tyData.rConveyorSpeed;
			tyCurrReqRcp.rTopClearanceHeight := p_tyHermesBFRcv.tyData.rTopClearanceHeight;
			tyCurrReqRcp.rBottomClearanceHeight := p_tyHermesBFRcv.tyData.rBottomClearanceHeight;
			tyCurrReqRcp.rWeight := p_tyHermesBFRcv.tyData.rWeight;
			tyCurrReqRcp.sWorkOrderId := p_tyHermesBFRcv.tyData.sWorkOrderId;
			tyCurrReqRcp.sBatchId := p_tyHermesBFRcv.tyData.sBatchId;
		END_IF
	END_IF
	
	//For Zone 1 Initialization Only
	IF bInitializedFollower1Done = FALSE AND p_bLinkOpsRun THEN
		IF tyCurrZ1Rcp.rWidth = 0 THEN //nothing found in retain
			IF p_bHermesBrdAvlDataNewBrdAvl1stZ  THEN //if no brd retain
				IF p_tyInternalReqProdRcp.diWidthInUM <> 0 THEN
					tyCurrZ1Rcp.rWidth := p_tyInternalReqProdRcp.diWidthInUM/1000 ; 
				ELSE //internalReq Rcp=0
					tyCurrZ1Rcp.rWidth := p_diNtParamProdRcpMinWidth/1000 ;
				END_IF
			ELSE //taken From Hermes Retain
				fbParseBrdAvlExternal.p_XMLTable := ADR(pa_tyLinkXMLTableDataBrdAvl1);
				fbParseBrdAvlExternal.iTotalIdxWrite := p_iLinkXMLTableDataBrdAvlTtlIdx1;
				fbParseBrdAvlExternal;
				
				tyCurrZ1Rcp.sBoardId := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBoardId; 
				tyCurrZ1Rcp.sBoardIdCreatedBy := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBoardIdCreatedBy;
				tyCurrZ1Rcp.eFailedBoard := fbParseBrdAvlExternal.tyBoardAvailable.tyData.eFailedBoard; 
				tyCurrZ1Rcp.sProductTypeId := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sProductTypeId; 
				tyCurrZ1Rcp.eFlippedBoard := fbParseBrdAvlExternal.tyBoardAvailable.tyData.eFlippedBoard; 
				tyCurrZ1Rcp.sTopBarcode := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sTopBarcode; 
				tyCurrZ1Rcp.sBottomBarcode := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBottomBarcode;
				tyCurrZ1Rcp.rLength := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rLength;
				tyCurrZ1Rcp.rWidth := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rWidth;
				tyCurrZ1Rcp.rThickness := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rThickness;
				tyCurrZ1Rcp.rConveyorSpeed := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rConveyorSpeed;
				tyCurrZ1Rcp.rTopClearanceHeight := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rTopClearanceHeight;
				tyCurrZ1Rcp.rBottomClearanceHeight := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rBottomClearanceHeight;
				tyCurrZ1Rcp.rWeight := fbParseBrdAvlExternal.tyBoardAvailable.tyData.rWeight;
				tyCurrZ1Rcp.sWorkOrderId := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sWorkOrderId;
				tyCurrZ1Rcp.sBatchId := fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBatchId;
			END_IF
		END_IF
		bOverWriteTravLifProperties := TRUE;
		bInitializedFollower1Done := TRUE;
	END_IF 
	
	//Error Handling
	IF p_bLinkOpsRun AND (p_bHermesBADataAccepted OR p_bHermesBFDataAccepted) THEN //   
		IF tyCurrReqRcp.rWidth < DINT_TO_REAL(p_diNtParamProdRcpMinWidth)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10010;
		ELSIF tyCurrReqRcp.rWidth  > DINT_TO_REAL(p_diNtParamProdRcpMaxWidth)/1000.0 THEN 
			eStatus := Error; 
			udiStatus := 10011;
		ELSIF  tyCurrReqRcp.rThickness  > DINT_TO_REAL(p_eNtParamAutoRcpParamLmt.diThicknessInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10012;
		ELSIF  tyCurrReqRcp.rBottomClearanceHeight  > DINT_TO_REAL(p_eNtParamAutoRcpParamLmt.diMaxBottomCleranceInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10013;
		ELSIF tyCurrReqRcp.rTopClearanceHeight > DINT_TO_REAL(p_eNtParamAutoRcpParamLmt.diMaxTopClearamceInUM)/1000.0 THEN
			eStatus := Error; 
			udiStatus := 10014;
		END_IF
		IF eStatus = Error THEN
			memset(ADR(tyCurrReqRcp),0,SIZEOF(tyCurrReqRcp));	
		END_IF
	END_IF
	

	IF eStatus <> Error THEN //do not feed F1 with F2 with invalid recipe
		//Follower1
		IF memcmp(ADR(tyCurrZ1Rcp) , ADR(tyCurrReqRcp) , SIZEOF(tyCurrZ1Rcp)) <> 0 AND tyCurrReqRcp.rWidth <> 0 THEN
			bTravLifWidthDiffBlk := TRUE;
			IF p_bZ1AccNewRcpCondition THEN
				tyCurrZ1Rcp := tyCurrReqRcp;
				bOverWriteTravLifProperties := TRUE;
				usiChg2 := usiChg2 +1;
			END_IF 
		ELSE
			bTravLifWidthDiffBlk := FALSE;
			bOverWriteTravLifProperties := TRUE;
		END_IF
	
		//Follower 2
		FOR ii:= 1 TO SIZEOF(a_bBufferMagPresent)/SIZEOF(a_bBufferMagPresent[1]) DO
			IF p_bZ2AccNewRcpCondition THEN	 //in Ops
				IF a_bBufferMagPresent[ii] = FALSE THEN //all time , at the start time
					memset((ADR(a_tyCurrZ2Rcp[1])+(ii-1)*SIZEOF(a_tyCurrZ2Rcp[1])),0,SIZEOF(a_tyCurrZ2Rcp[1])) ; 
					a_bMagChangOverBlk[ii] := FALSE;
				ELSE //if present
					p_tyCmpRcp ACCESS (ADR(a_tyCurrZ2Rcp[1])+(ii-1)*SIZEOF(a_tyCurrZ2Rcp[1])) ;
					a_bCheckDifferent[ii]:= (p_tyCmpRcp.sProductTypeId <> tyCurrZ1Rcp.sProductTypeId) OR 
					(p_tyCmpRcp.sBatchId <> tyCurrZ1Rcp.sBatchId AND p_bMcParamAutoRcpBatchIDChgCmp) OR 
					(p_tyCmpRcp.sWorkOrderId <> tyCurrZ1Rcp.sWorkOrderId) OR
					p_tyCmpRcp.rWidth <> tyCurrZ1Rcp.rWidth OR	
					(p_tyCmpRcp.rTopClearanceHeight <> tyCurrZ1Rcp.rTopClearanceHeight AND NOT(p_bMcParamAutoRcpIgnoreTopClr)) OR
					(p_tyCmpRcp.rBottomClearanceHeight <> tyCurrZ1Rcp.rBottomClearanceHeight AND NOT(p_bMcParamAutoRcpIgnoreBtmClr)) OR
					(p_tyCmpRcp.rThickness <> tyCurrZ1Rcp.rThickness AND NOT(p_bMcParamAutoRcpIgnoreThickns)) OR
					p_tyCmpRcp.eFlippedBoard <> tyCurrZ1Rcp.eFlippedBoard	;
					IF a_bCheckDifferent[ii] THEN
						a_bAllwChangeWidth[ii] := FALSE;
						IF a_tyBffrStat[ii].bBffrMty THEN //udiAllwGo and WidthDiff and empty then change rcp
							p_tyCmpRcp := tyCurrZ1Rcp;
							usiChg := usiChg + 1;
							a_bMagChangOverBlk[ii] := FALSE; 
							bOverWriteMagProperties := TRUE;
							a_bAllwChangeSlot[ii]  := TRUE;
						ELSE // WidthDiff and not empty then blk
							a_bMagChangOverBlk[ii] := TRUE;
						END_IF	
					ELSE //if rcp same mean changewidth allow change until width is same
						a_bMagChangOverBlk[ii] := FALSE;
						a_bAllwChangeWidth[ii] := (a_bMagAWWidthDiff[ii] OR a_bForceChgWidthIfSameRcp[ii]) AND a_tyBffrStat[ii].bBffrMty AND p_bNtParamProjMagAWPrep;
						
					END_IF
	
				END_IF
	
				 
			END_IF
		END_FOR
	END_IF
	//wait new udiAllwGo to toggle and FIND the other empty to change
	
	

	
	//IF all was block with magazine available then Force the Magazine Exit
	iChgOvrCntr := 0;
	FOR ii:= 1 TO SIZEOF(a_bBufferMagPresent)/SIZEOF(a_bBufferMagPresent[1]) DO
		IF  (a_bBufferMagPresent[ii] AND a_bMagChangOverBlk[ii] = TRUE) THEN
			iChgOvrCntr := iChgOvrCntr +1 ;
			EXIT;
		END_IF 
	END_FOR 
	IF iChgOvrCntr >= 1 THEN
		bForceExitMag := TRUE; //force Magazine to exit the highest priority Mag
	ELSE
		bForceExitMag := FALSE;
	END_IF 
	
END_ACTION
