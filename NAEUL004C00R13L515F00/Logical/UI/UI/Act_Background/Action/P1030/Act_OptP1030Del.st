
ACTION Act_OptP1030Del:
	
	IF tyP1030MagSet.tyMagSet.tyBtnDelete.bRtCompl = TRUE THEN
		IF usiDelMagRcpStep = 0 THEN
			tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat					:= FALSE;
		
			IF tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[tyP1030Table.uiSelectedRow].sValue = p_tyMagRcpCurrRcp.sRcpNm THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxDelCurrRcpAsk);
				
				IF tyP1030MagSet.tyMsgBoxDelCurrRcpAsk.tyBtnNo.bRtCompl = TRUE THEN
					tyP1030MagSet.tyMsgBoxDelCurrRcpAsk.tyBtnNo.bRtCompl 	:= FALSE;
					tyP1030MagSet.tyMsgBoxDelCurrRcpAsk.tyBtnNo.bValue 		:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
					
					usiDelMagRcpStep	:= 99;
				END_IF
			ELSE
				p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxDelAsk);
				
				IF tyP1030MagSet.tyMsgBoxDelAsk.tyBtnYes.bRtCompl = TRUE THEN
					tyP1030MagSet.tyMsgBoxDelAsk.tyBtnYes.bRtCompl				:= FALSE;
					tyP1030MagSet.tyMsgBoxDelAsk.tyBtnYes.bValue				:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
					
					usiDelMagRcpStep	:= 1;
					
				ELSIF tyP1030MagSet.tyMsgBoxDelAsk.tyBtnNo.bRtCompl = TRUE THEN
					tyP1030MagSet.tyMsgBoxDelAsk.tyBtnNo.bRtCompl			:= FALSE;
					tyP1030MagSet.tyMsgBoxDelAsk.tyBtnNo.bValue				:= FALSE;
			
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
					
					usiDelMagRcpStep	:= 99;

				END_IF
			END_IF
			
		ELSIF usiDelMagRcpStep = 1 THEN
			tyMagRcpInfoIn.sRcpNm			:= tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[tyP1030Table.uiSelectedRow].sValue;
	
			eMagRcpAct					:= MagRcpActDel;
			
			IF p_eMagRcpStat = MagRcpActDel AND p_eMagRcpStatus = Done THEN
				eMagRcpAct				:= MagRcpActIdle;
				
				IF p_bMagRcpNmEmpty = TRUE THEN
					usiDelMagRcpStep		:= 2;
				ELSIF p_bMagRcpNmNotExist = TRUE THEN
					usiDelMagRcpStep		:= 3;
				ELSE
					tyP1030MagSet.tyMagSet.tyBtnSort.bValue	:= FALSE;
					bRefreshMagRcpTable		:= TRUE;
					bRefreshMagRcpDetail	:= TRUE;
					usiDelMagRcpStep		:= 99;
				END_IF
				
			ELSIF p_eMagRcpStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxDelErr);
				
				IF tyP1030MagSet.tyMsgBoxDelErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1030MagSet.tyMsgBoxDelErr.tyBtnNo.bRtCompl 				:= FALSE;
					tyP1030MagSet.tyMsgBoxDelErr.tyBtnNo.bValue 				:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
			
					usiDelMagRcpStep		:= 99;
				END_IF
			END_IF
			
		ELSIF usiDelMagRcpStep = 2 THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxDelNmEmpty);
				
			IF tyP1030MagSet.tyMsgBoxDelNmEmpty.tyBtnNo.bRtCompl = TRUE THEN
				tyP1030MagSet.tyMsgBoxDelNmEmpty.tyBtnNo.bRtCompl 				:= FALSE;
				tyP1030MagSet.tyMsgBoxDelNmEmpty.tyBtnNo.bValue 				:= FALSE;
					
				p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);

				usiDelMagRcpStep		:= 99;
			END_IF
			
		ELSIF usiDelMagRcpStep = 3 THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxDelNmNotExist);
			
			IF tyP1030MagSet.tyMsgBoxDelNmNotExist.tyBtnNo.bRtCompl = TRUE THEN
				tyP1030MagSet.tyMsgBoxDelNmNotExist.tyBtnNo.bRtCompl 	:= FALSE;
				tyP1030MagSet.tyMsgBoxDelNmNotExist.tyBtnNo.bValue 		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
				
				usiDelMagRcpStep	:= 99;
			END_IF
		
		ELSIF usiDelMagRcpStep = 99 THEN
			bRefreshMagRcpTable	:= FALSE;

			//Unmask
			tyP1030MagSet.tyMagSet.tyTableRecipe.uiMaskRtStat			:= TRUE;
			
			//Reset
			tyP1030MagSet.tyMagSet.tyBtnDelete.bRtCompl					:= FALSE;
			tyP1030MagSet.tyMagSet.tyBtnDelete.bValue					:= FALSE;
		
			usiDelMagRcpStep		:= 0;
		END_IF
		
	END_IF
	
END_ACTION
