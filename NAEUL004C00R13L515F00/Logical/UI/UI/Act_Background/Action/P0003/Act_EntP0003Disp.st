
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
	//hide corresponding button
	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	
	
	//Occupied 		
	usiPosidx := 0 ;
	FOR usidx:= 1 TO SIZEOF(p_tyMcParamCurr.tyOptBtnPos)/SIZEOF(p_tyMcParamCurr.tyOptBtnPos.ePos1) DO 
		IF NOT(p_tyNtParamCurr.tyDOSettings.diBuzzer > 0 AND usidx = 1)THEN
			
			p_eCurrBtnPos ACCESS (ADR(p_tyMcParamCurr.tyOptBtnPos) + (usiPosidx)*SIZEOF(p_tyMcParamCurr.tyOptBtnPos.ePos1));
			
			IF p_eCurrBtnPos = eNA THEN
				a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
			ELSIF p_eCurrBtnPos = eMagUnload THEN
				a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnMnlUnload);
			ELSIF p_eCurrBtnPos= eRlsNewMagazine1 THEN
				a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1);
			ELSIF p_eCurrBtnPos= eRlsNewMagazine2 THEN
				a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2);
			ELSIF p_eCurrBtnPos = eRlsNewMagazine3 THEN
				a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3);
			END_IF
			usiPosidx := usiPosidx +1;
		ELSE
			a_tyPtrtoAddr[usidx] :=   ADR(tyP0003MMenu.tyMMenuBtn.tyBtnHide);
		END_IF 
	END_FOR 
	p_tyP0003Btn1 ACCESS a_tyPtrtoAddr[1];	
	p_tyP0003Btn2 ACCESS a_tyPtrtoAddr[2];
	p_tyP0003Btn3 ACCESS a_tyPtrtoAddr[3];
	p_tyP0003Btn4 ACCESS a_tyPtrtoAddr[4];
	p_tyP0003Btn5 ACCESS a_tyPtrtoAddr[5];
	p_tyP0003Btn6 ACCESS a_tyPtrtoAddr[6];
	p_tyP0003Btn7 ACCESS a_tyPtrtoAddr[7];
	
	
	
	//Not Used 
//	p_tyP0003Btn4 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn4);// If not used, hide it in the data type 
//	p_tyP0003Btn5 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn5);// If not used, hide it in the data type 
//	p_tyP0003Btn6 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn6);// If not used, hide it in the data type 
//    p_tyP0003Btn7 ACCESS ADR(tyP0003MMenu.tyMMenuBtn.tyBtn7);// If not used, hide it in the data type 
	
	

END_ACTION
