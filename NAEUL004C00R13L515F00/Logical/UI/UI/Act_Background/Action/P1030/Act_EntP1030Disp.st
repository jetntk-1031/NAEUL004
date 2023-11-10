
ACTION Act_EntP1030Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1030MagSet.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1030MagSet ACCESS ADR(tyP1030MagSet.tyMagSet);
	
	IF bTeachTravPosMag1 OR bTeachTravPosMag2 OR bTeachTravPosMag3 OR bTeachLifterMag1Slt1Pos OR bTeachLifterMag2Slt1Pos OR bTeachLifterMag3Slt1Pos THEN
		bTeachTravPosMag1		:= FALSE;
		bTeachTravPosMag2		:= FALSE;
		bTeachTravPosMag3		:= FALSE;
		bTeachLifterMag1Slt1Pos	:= FALSE;
		bTeachLifterMag2Slt1Pos	:= FALSE;
		bTeachLifterMag3Slt1Pos	:= FALSE;
	ELSE
		udiP1030SelectedRowOld	 := 0;
	END_IF
	
	// Enabling Auto Detect Magazine Model Setting
	tyP1030MagSet.tyMagSet.tyDrpDnMagModel.uiRtStat := NOT(p_tyNtParamCurr.bMagAutoVerifyPrep (*OR p_tyNtParamCurr.bMagSelPrep*));
	tyP1030MagSet.tyMagSet.tyTxtMagModel.uiRtStat	:= NOT(p_tyNtParamCurr.bMagAutoVerifyPrep (*OR p_tyNtParamCurr.bMagSelPrep*));
	
//	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND NOT p_tyNtParamCurr.bMagSelPrep THEN
		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueMinIdx	:= 0;
		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueMaxIdx	:= 2;
		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx		:= 0;
//	ELSIF NOT p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bMagSelPrep THEN
//		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueMinIdx	:= 3;
//		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueMaxIdx	:= 4;
//		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueIdx		:= 3;
//	END_IF
	tyP1030MagSet.tyMagSet.tyBtnSort.bValue		:= FALSE;
	tyP1030MagSet.tyMagSet.tyBtnSort.bRtCompl	:= FALSE;
END_ACTION
