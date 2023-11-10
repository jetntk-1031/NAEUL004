
ACTION Act_EntP0910Disp: 
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0910GenOut.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0910GenOut ACCESS ADR(tyP0910GenOut.tyGenOut);
	p_tyP0910GenOutOven ACCESS ADR(tyP0910GenOut.tyOven);
	p_tyP0910MagAW ACCESS ADR(tyP0910GenOut.tyMagAW);
	p_tyP0910GenOutCurtainSen ACCESS ADR(tyP0910GenOut.tyGenOutCurtainSen);
	
	
	tyP0910GenOut.tyOven.tyBtnOvenInfoA.uiRtStat.0	:= NOT (p_tyNtParamCurr.bOvenInfoPrep AND p_tyMcParamCurr.bOvenEn );

END_ACTION
