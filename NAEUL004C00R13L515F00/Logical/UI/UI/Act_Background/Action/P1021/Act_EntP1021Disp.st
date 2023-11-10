
ACTION Act_EntP1021Disp: 
	
	//Access Address
	IF bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr2);
	ELSIF ((p_tyNtParamCurr.bProjMagConvLane1Prep AND p_tyNtParamCurr.bProjMagConvLane2Prep) 
		OR bTeachLifterTopPos OR bTeachLifterTopPos2 OR bTeachLifterBtmPos OR bTeachLifterBtmPos2) OR (p_tyNtParamCurr.tyDISettings.diMagWidthChkSen <>0) THEN
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr3);
	ELSE
		p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1021McSetGen ACCESS ADR(tyP1021McSetGen.tyGen);
	p_tyP1021McSetNetwork ACCESS ADR(tyP1021McSetGen.tyNetwork);
	
	//Display
//	tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat.0	:= bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB;
//	tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat.0	:= NOT(bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB);
	
	//Backup Param
	IF NOT(bTeachTravPosA OR bTeachTravPosB OR bTeachLifterPosA OR bTeachLifterPosB OR 
		bTeachLifterTopPos OR bTeachLifterBtmPos OR bTeachLifterTopPos2 OR bTeachLifterBtmPos2) THEN
		tyP1021McSetGen.tyGenBkUp	:= tyP1021McSetGen.tyGen;
	ELSE
		bTeachTravPosA		:= FALSE;
		bTeachTravPosB		:= FALSE;
		bTeachLifterPosA	:= FALSE;
		bTeachLifterPosB	:= FALSE;
		bTeachLifterTopPos	:= FALSE;
		bTeachLifterBtmPos	:= FALSE;
		bTeachLifterTopPos2	:= FALSE;
		bTeachLifterBtmPos2	:= FALSE;	
	END_IF
	//Network Configuration Display
	usiNetworkModeOld := DINT_TO_USINT(p_tyMcParamCurr.eNetworkMod);
	
	fUIInRtStatHide(ADR(tyP1021McSetGen.tyNetwork.tyLyr.uiRtStat));
	
	IF p_tyDI.bInShutterCloseRS THEN
		tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiMaskRtStat.0 := FALSE;
	ELSE
		tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiMaskRtStat.0 := TRUE;
	END_IF

//	//Penumatic
//	tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiRtStat.0 := TRUE;
	tyP1021McSetGen.tyGen.tyBtnStopperADis.uiRtStat.0 := TRUE;
	tyP1021McSetGen.tyGen.tyBtnStopperBDis.uiRtStat.0 := TRUE;
	
//	CASE p_tyNtParamCurr.eProjMag OF
//		ULMagDual:
//			tyP1021McSetGen.tyGen.tyStringMcNm.sValue := 'Dual Magazine Line Unloader';
//			
//		ULMagTriple:
//			tyP1021McSetGen.tyGen.tyStringMcNm.sValue := 'Triple Magazine Line Unloader';
//			
//		ULMagQuadruple:
//			tyP1021McSetGen.tyGen.tyStringMcNm.sValue := 'Quadruple Magazine Line Unloader';
//	END_CASE
	
	tyP1021McSetGen.tyGen.tyBtnLFBuzMute.uiRtStat.0 := NOT (p_tyMcParamCurr.bLFEn AND p_tyNtParamCurr.bLFPrep AND p_tyNtParamCurr.tyDOSettings.diBuzzer > 0);
	
	//Siemen Request Hide inlet shutter
	IF p_eNtParamCustomerReq = Siemens THEN
		IF p_tyUsrMgmtCurrAccessRgt.bUsrMgmt THEN
			tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiMaskRtStat := TRUE;
		ELSE
			tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiMaskRtStat := FALSE;
		END_IF
	ELSE
		tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiMaskRtStat := TRUE;
	END_IF
	//Siemen update change for RFID
	tyP1021McSetGen.tyGen.tyBtnMESEn.bValue					:= p_tyMcParamCurr.bMESEn;	//RFID
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue					:= p_tyMcParamCurr.bHermesSvyEn;	//RFID
	
END_ACTION
