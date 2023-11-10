
ACTION Act_EntP0410Disp: 
	
	//Access Addres
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0410MagSel.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0410MagSel ACCESS ADR(tyP0410MagSel.tyMagSel);
	p_tyP0410MagDet ACCESS ADR(tyP0410MagSel.tyMagDet);
	
	tyP0410MagSel.tyMagSel.tyBtnSort.bValue 	:= FALSE;
	tyP0410MagSel.tyMagSel.tyBtnSort.bRtCompl 	:= FALSE;
	
	bRefreshMagRcpTable := TRUE;
	
	fUIInRtStatHide(ADR(tyP0410MagSel.tyMagDet.tyLyr.uiRtStat));
	
	// Enabling Display Auto Detect Magazine Mode
	tyP0410MagSel.tyMagSel.tyTxtMagModel.uiRtStat :=  NOT(p_tyNtParamCurr.bMagAutoVerifyPrep);
	
END_ACTION
