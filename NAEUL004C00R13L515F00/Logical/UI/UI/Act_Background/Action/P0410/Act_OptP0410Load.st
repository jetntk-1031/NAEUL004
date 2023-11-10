
ACTION Act_OptP0410Load:
	
	IF tyP0410MagSel.tyMagSel.tyBtnLoad.bRtCompl = TRUE THEN
		
		IF usiSelMagRcpStep = 0 THEN
			//Message Confirmation Ask
			//Mask
			tyP0410MagSel.tyMagSel.tyTableRecipe.uiMaskRtStat.0		:= FALSE;
			tyP0410MagSel.tyMagSel.tyBtnPreview.uiMaskRtStat.0		:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxSelRcpAsk);
			
			IF tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnYes.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxHide);
				
				usiSelMagRcpStep		:= 1;
				
			ELSIF tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0410MagSel.tyMsgBoxSelRcpAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxHide);
				
				usiSelMagRcpStep		:= 99;
				
			END_IF
			
		ELSIF usiSelMagRcpStep = 1 THEN
			//Load Magazine Recipe
			tyMagRcpInfoIn.sRcpNm		:= tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[tyP0410Table.uiSelectedRow].sValue;
			
			eMagRcpAct	:= MagRcpActLoadRcp;
			
			IF p_eMagRcpStat = MagRcpActLoadRcp AND p_eMagRcpStatus = Done THEN
				eMagRcpAct	:= MagRcpActIdle;
				
				IF p_bMagRcpNmEmpty = TRUE AND p_bMagRcpNmNotExist = TRUE THEN
					usiSelMagRcpStep	:= 2;
				ELSE
					//Update UI Current Recipe
					tyP0410MagSel.tyMagSel.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrRcp.sRcpNm;
					tyP0410MagSel.tyMagSel.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrRcp.diSltToSltInUM;
					tyP0410MagSel.tyMagSel.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrRcp.diTtlSlt;
					tyP0410MagSel.tyMagSel.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag1Slt1PosInUM;
					tyP0410MagSel.tyMagSel.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag2Slt1PosInUM;
					tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag3Slt1PosInUM;
					tyP0410MagSel.tyMagSel.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrRcp.diMag1TravPosInUM;
					tyP0410MagSel.tyMagSel.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrRcp.diMag2TravPosInUM;
					tyP0410MagSel.tyMagSel.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrRcp.diMag3TravPosInUM;
					tyP0410MagSel.tyMagSel.tyTxtMagModel.usiValueIdx		:= p_tyMagRcpCurrRcp.usiMagModel;
					tyP0410MagSel.tyMagSel.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpCurrRcp.diMagMaxBrdWidth;
					tyP0410MagSel.tyMagSel.tyBtnSafetyBar.bValue			:= p_tyMagRcpCurrRcp.bSafetyBarDisabled;
					tyP0410MagSel.tyMagSel.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpCurrRcp.bMagHeightChkEn;
					
					tyMagRcpCurrRcpWr	:= p_tyMagRcpCurrRcp;
					
					usiSelMagRcpStep	:= 99;
				END_IF
				
			ELSIF p_eProdRcpStatus = Error THEN
				
				usiSelMagRcpStep		:= 99;
				
			END_IF
			
		ELSIF usiSelMagRcpStep = 2 THEN
			//Message Name Not Found
			p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxSelRcpNoNm);
			
			IF tyP0410MagSel.tyMsgBoxSelRcpNoNm.tyBtnNo.bRtCompl = TRUE THEN
				tyP0410MagSel.tyMsgBoxSelRcpNoNm.tyBtnNo.bRtCompl	:= FALSE;
				tyP0410MagSel.tyMsgBoxSelRcpNoNm.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxHide);
				
				usiSelMagRcpStep		:= 99;
				
			END_IF
			
		ELSIF usiSelMagRcpStep = 99 THEN
			//Complete
			//Unmask
			tyP0410MagSel.tyMagSel.tyTableRecipe.uiMaskRtStat.0		:= TRUE;
			tyP0410MagSel.tyMagSel.tyBtnPreview.uiMaskRtStat.0		:= TRUE;
			
			//Reset
			tyP0410MagSel.tyMagSel.tyBtnLoad.bRtCompl				:= FALSE;
			tyP0410MagSel.tyMagSel.tyBtnLoad.bValue					:= FALSE;
			
			usiSelMagRcpStep			:= 0;
			
		END_IF
		
	END_IF
	
END_ACTION
