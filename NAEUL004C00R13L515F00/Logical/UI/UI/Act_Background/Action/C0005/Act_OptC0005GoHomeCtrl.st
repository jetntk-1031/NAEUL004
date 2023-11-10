
ACTION Act_OptC0005GoHomeCtrl:

	//Control
	IF tyCommon.tyMain.tyBtnHome.bRtCompl = TRUE OR tyCommon.tyMain1.tyBtnHome.bRtCompl = TRUE THEN
		tyCommon.tyMain.tyBtnHome.bRtCompl	:= FALSE;
		tyCommon.tyMain1.tyBtnHome.bRtCompl := FALSE;
		eChgPage							:= UIP0002Menu;
	END_IF
	
	//Go Main 
	IF tyCommon.tyMain.tyBtnGoMain.bRtCompl = TRUE THEN
		tyCommon.tyMain.tyBtnGoMain.bRtCompl := FALSE;
		eChgPage		:= UIP0003MMenu;
	END_IF
	
	
	//Mask
	IF tyP0100Login.tyLogin.tyBtnLogin.bRtCompl 					OR tyP0100Login.tyLogout.tyBtnLogout.bRtCompl
		OR tyP0400ProdSel.tyProdSel.tyBtnLoad.bRtCompl 				OR tyP0400ProdSel.tyProdSel.tyStringSearch.bRtCompl
		OR tyP0410MagSel.tyMagSel.tyBtnLoad.bRtCompl				OR tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.bRtCompl
		OR tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.bRtCompl		OR tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyBtnDelete.bRtCompl				OR tyP1030MagSet.tyMagSet.tyBtnSave.bRtCompl
		OR tyP1040ProdSet.tyProdSet.tyBtnDelete.bRtCompl			OR tyP1040ProdSet.tyProdSet.tyBtnSave.bRtCompl
		OR tyP1040ProdSet.tyProdSet.tyBtnToXML.bRtCompl				OR tyP1040ProdSet.tyProdSet.tyBtnFromXML.bRtCompl
		OR tyP1050LFSet.tyLdr.tyBtnDelete.bRtCompl					OR tyP1050LFSet.tyLdr.tyBtnOnline.bRtCompl
		OR tyP1050LFSet.tyLdr.tyBtnOffline.bRtCompl					OR tyP1050LFSet.tyLdr.tyBtnShftUp.bRtCompl
		OR tyP1050LFSet.tyLdr.tyBtnShftDwn.bRtCompl					OR tyP1080UsrMgmt.tyUsrMgmt.tyBtnDeleteUsr.bRtCompl
		OR tyP1080UsrMgmt.tyUsrMgmt.tyBtnEditDetail.bRtCompl		OR tyP1080UsrMgmt.tyUsrMgmt.tyBtnNewUsr.bRtCompl
		OR tyCommon.tySet.tyBtnSave.bRtCompl						OR bTeachTravPosA
		OR bTeachTravPosB											OR bTeachTravPosMag1
		OR bTeachTravPosMag2										OR bTeachTravPosMag3
		OR bTeachLifterPosA											OR bTeachLifterPosB
		OR bTeachLifterMag1Slt1Pos									OR bTeachLifterMag2Slt1Pos
		OR bTeachLifterMag3Slt1Pos 
		OR p_bSimuStatusRun
		THEN
		
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnHome.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyCommon.tyMain1.tyBtnHome.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyCommon.tyMain.tyBtnGoMain.uiMaskRtStat));
		
	ELSIF bUIManualMod THEN
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnHome.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyCommon.tyMain1.tyBtnHome.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnGoMain.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnHome.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyCommon.tyMain1.tyBtnHome.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyCommon.tyMain.tyBtnGoMain.uiMaskRtStat));
	END_IF
	
END_ACTION