
ACTION Act_OptP0000TouchTimer:
	
	
	IF bLoginSuccess AND p_tyNtParamCurr.bAutoLogoutPrep AND p_tyMcParamCurr.bAutoLogoutEn THEN
		
		fbTouchTm();
		
		fbAutoLogoutTm(IN:= NOT fbTouchTm.bPressed, PT:=DINT_TO_TIME(p_tyMcParamCurr.diAutoLogoutTmInSec));	
		
		//Reset Time When Pressed
		IF fbTouchTm.bPressed THEN	
			fbAutoLogoutTm(IN:=FALSE);
		END_IF

		
		//Auto Logout
		IF fbAutoLogoutTm.Q THEN
			
			bPromptSessionExp	:= TRUE;
			p_tyC0008MsgBox ACCESS ADR(tyP0000SSaver.tyMsgBoxLoginAsk);
			
			IF bChgPageDone=FALSE THEN
				
				IF eCurrPage<>UIP0003MMenu THEN // Previous - UIP0002Menu
					CASE eCurrPage OF
					
						UIP0900GenIn, UIP0910GenOut, UIP0920MtrNPneuCtrl,UIP0921Shutter, UIP0922Stopper, UIP0933PusherConv, UIP0934AW, UIP0935Lifter, UIP0936Trav, UIP0940CommCtrl, UIP0950Simu:

							eChgPage	:=	UIP0003MMenu; // Previous - UIP0002Menu
							
							tyP0002Menu.tyMenu.tyBtnMnlRst.bRtCompl := TRUE ;
							
							bChgPageDone	:= TRUE;
							
						UIP1000Lang, UIP1021McSetGen, UIP1022McSetVComm, UIP1023McSetHComm, UIP1024McSetAntiGap, UIP1026McSetTeach,UIP1030MagSet, UIP1031MagSetTeach,UIP1040ProdSet, UIP1050LFSet:
							
							IF tyCommon.tySet.tyBtnSave.uiMaskRtStat.0 = FALSE THEN
								
								eChgPage	:= UIP0003MMenu; // Previous - UIP0002Menu
								
								bChgPageDone	:= TRUE;
								
							ELSE
								
								eChgPage	:= UIP0003MMenu; //	:= UIP0002Menu;
								
								IF eCurrPage= UIP1021McSetGen THEN
								
									tyP1021McSetGen.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSIF eCurrPage= UIP1022McSetVComm THEN
								
									tyP1022McSetVComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSIF eCurrPage= UIP1023McSetHComm THEN
								
									tyP1023McSetHComm.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSIF eCurrPage= UIP1024McSetAntiGap THEN
								
									tyP1024McSetAntiGap.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSIF eCurrPage= UIP1026McSetTeach THEN
								
									tyP1026McSetTeach.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSIF eCurrPage= UIP1030MagSet THEN
								
									tyP1030MagSet.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
								
								ELSIF eCurrPage= UIP1031MagSetTeach THEN
								
									tyP1031MagSetTeach.tyMsgBoxExitAsk.tyBtnYes.bRtCompl := TRUE;
									
									bChgPageDone	:= TRUE;
									
								ELSE  //language page
									bChgPageDone	:= TRUE;
								END_IF
									
							END_IF
							
						ELSE
							eChgPage		:= UIP0003MMenu; ;//eChgPage		:= UIP0002Menu;
							
							bChgPageDone	:= TRUE;
							
					END_CASE
					
				ELSE
					bChgPageDone	:= TRUE;
				END_IF
			
			END_IF
			
			IF bChgPageDone THEN
			
				eUsrMgmtAct	:= UsrMgmtActLogout;
			
				IF p_eUsrMgmtStat = UsrMgmtActLogout AND p_eUsrMgmtStatus = Done THEN
					eUsrMgmtAct	:= UsrMgmtActIdle;
				
					bLoginSuccess	:= FALSE;
					
					bChgPageDone	:= FALSE;
					
					fbAutoLogoutTm(IN:=FALSE);
					
				END_IF
		
			END_IF
			
		END_IF
		
		
	ELSE	
		fbAutoLogoutTm(IN:=FALSE);
		bChgPageDone	:= FALSE;
	END_IF
	
	//Prompt Relogin After Auto Logout
	IF tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnYes.bRtCompl = TRUE THEN
		tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnYes.bRtCompl 	:= FALSE;
		tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnYes.bValue		:= FALSE;
		p_tyC0008MsgBox ACCESS ADR(tyP0000SSaver.tyMsgBoxHide);
		bPromptSessionExp :=FALSE;
		
	ELSIF tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnNo.bRtCompl = TRUE THEN
		tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnNo.bRtCompl 	:= FALSE;
		tyP0000SSaver.tyMsgBoxLoginAsk.tyBtnNo.bValue		:= FALSE;
		p_tyC0008MsgBox ACCESS ADR(tyP0000SSaver.tyMsgBoxHide);
		eChgPage		:= UIP0100Login;
		bPromptSessionExp :=FALSE;
	END_IF
			
			
	
END_ACTION