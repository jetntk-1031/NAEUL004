
ACTION Act_EntP0003Disp:
	
	//Access
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain1);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyP0003Gen ACCESS ADR(tyP0003MMenu.tyMMenuGen);
	
	IF NOT bPromptSessionExp THEN 
		p_tyC0008MsgBox ACCESS ADR(tyP0003MMenu.tyMsgBoxHide);
	END_IF
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
	p_tyP0003BtnAuto ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAuto);
	p_tyP0003BtnStop ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnStop);
	p_tyP0003BtnReset ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnReset);
	p_tyP0003BtnBuz ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnBuz);
	p_tyP0003AcceptData ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAccDat);
	

	
	//Communication
	tyP0200OpsGen.tyUSCommB.tyLyr.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	//Occupied 		
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer > 0 THEN
		
	   // Start with Pos 2 as Pos 1 is occupied with buzzer.
	   // For Pos 2 		
		IF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eMagUnload THEN
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eRlsNewMagazine THEN
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eMnlUnload THEN
//			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
		//For Pos 3
		IF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eMagUnload THEN
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eRlsNewMagazine THEN
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eMnlUnload THEN
//			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
		//For Pos 4
		IF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eMagUnload THEN
			p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eRlsNewMagazine THEN
			p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eMnlUnload THEN
//			p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
	ELSE
		// Without Buzzer
		// For Pos 1 		
		IF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eMagUnload THEN
			p_tyP0003Btn1 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eRlsNewMagazine THEN
			p_tyP0003Btn1 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos1 = eMnlUnload THEN
//			p_tyP0003Btn1 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn1 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
		//For Pos 2
		IF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eMagUnload THEN
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eRlsNewMagazine THEN
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos2 = eMnlUnload THEN
//			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn2 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
		//For Pos 3
		IF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eMagUnload THEN
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eRlsNewMagazine THEN
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag);
//		ELSIF p_tyMcParamCurr.tyOptBtnPos.ePos3 = eMnlUnload THEN
//			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
		ELSE
			p_tyP0003Btn3 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF
		
		p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);

	END_IF
	
	
	//Not Used 
//	p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn4);// If not used, hide it in the data type 
	p_tyP0003Btn5 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn5);// If not used, hide it in the data type 
	p_tyP0003Btn6 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn6);// If not used, hide it in the data type 
    p_tyP0003Btn7 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn7);// If not used, hide it in the data type 
	
	

END_ACTION
