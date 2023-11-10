
ACTION Act_EntP1023Disp: 
	
	//Access Address
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr1);
	ELSE
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviBack);
	END_IF
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1023McSetHCommUSSel ACCESS ADR(tyP1023McSetHComm.tyUSSelA);
	p_tyP1023McSetHCommUSSMEMA ACCESS ADR(tyP1023McSetHComm.tyUSSMEMAA);
	p_tyP1023McSetHCommUSHermes ACCESS ADR(tyP1023McSetHComm.tyUSHermesA);
	
	//Backup Param
	tyP1023McSetHComm.tyUSSelABkUp		:= tyP1023McSetHComm.tyUSSelA;
	tyP1023McSetHComm.tyUSSMEMAABkUp	:= tyP1023McSetHComm.tyUSSMEMAA;
	tyP1023McSetHComm.tyUSHermesABkUp	:= tyP1023McSetHComm.tyUSHermesA;
	tyP1023McSetHComm.tyUSSelBBkUp		:= tyP1023McSetHComm.tyUSSelB;
	tyP1023McSetHComm.tyUSSMEMABBkUp	:= tyP1023McSetHComm.tyUSSMEMAB;
	tyP1023McSetHComm.tyUSHermesBBkUp	:= tyP1023McSetHComm.tyUSHermesB;
	
END_ACTION
