
ACTION Act_OptP0202ToP0204_P0003UnloadMag: 
	
	//Reset
	IF EDGEPOS(p_bOpsStatusStop) THEN
		bUnloadMag	:= FALSE;
		
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl := FALSE;
		
		p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
		p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
		p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
	END_IF
	
	//Control
	IF tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxUnloadAsk);
			
			IF tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxResumeAsk);
			
			IF tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0202OpsMag1.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0202OpsMag1.tyMsgBoxHide);
				
				tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	ELSIF tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxUnloadAsk);
			
			IF tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxResumeAsk);
			
			IF tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0203OpsMag2.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0203OpsMag2.tyMsgBoxHide);
				
				tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	ELSIF tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxUnloadAsk);
			
			IF tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxResumeAsk);
			
			IF tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			ELSIF tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0204OpsMag3.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
				
				tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		////////
	ELSIF tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl = TRUE THEN
		
		IF bUnloadMag = FALSE THEN
			
			p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxUnloadAsk);
			
			IF tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				bUnloadMag	:= TRUE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl	:= FALSE;
				
			ELSIF tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxUnloadAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl	:= FALSE;
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxResumeAsk);
			
			IF tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnYes.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				bUnloadMag	:= FALSE;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl	:= FALSE;
				
			ELSIF tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl = TRUE THEN
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bRtCompl	:= FALSE;
				tyP0003MMenu.tyMsgBoxResumeAsk.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	END_IF
	
	//Display
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagULUnloading;
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagULUnloading;
	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.bRtLk	:= p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagULUnloading;
	tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.bRtLk := p_bOpsStatusStop = FALSE AND bUnloadMag AND NOT p_bOpsLifMagULUnloading;
	
	IF p_bOpsStatusStop = FALSE AND p_bOpsLifMagULUnloading = TRUE THEN
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 1;
		tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiTxtIdx	:= 30;
	ELSE
		tyP0202OpsMag1.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0203OpsMag2.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0204OpsMag3.tyOps.tyBtnUnloadMag.usiTxtIdx	:= 0;
		tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiTxtIdx	:= 5;
	END_IF
	
	IF p_bOpsStatusStop = FALSE AND bUnloadMag = TRUE AND p_bOpsLifMagULUnloading = TRUE THEN
		
		fbUnloadBlinkTm(IN := TRUE);
		
		IF fbUnloadBlinkTm.Q = TRUE THEN
			fbUnloadBlinkTm(IN := FALSE);
			
			IF tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx = 0 THEN
				tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 3;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiBitmapIdx    := 4; //Yellow
			ELSE
				tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiBitmapIdx    := 0; //Silver
			END_IF
			
		END_IF
		
	ELSIF p_bOpsStatusStop = FALSE AND bUnloadMag = TRUE THEN
		
		fbUnloadBlinkTm(IN := FALSE);
		
		tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 1;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiBitmapIdx    := 1; //Green
		
	ELSE
		
		fbUnloadBlinkTm(IN := FALSE);
		
		tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.usiValueIdx	:= 0;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.usiBitmapIdx    := 0; 
		
	END_IF
	
	//Mask
	IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF p_bOpsStatusStop 
			OR (p_bOpsTravLifMov AND p_bPshrConvHvBrd AND NOT(p_bOutShutterRetracted))
			THEN //p_bOpsLifMagULLifMov
			
			fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.uiMaskRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload.uiMaskRtStat));
		END_IF
	END_IF	
END_ACTION
