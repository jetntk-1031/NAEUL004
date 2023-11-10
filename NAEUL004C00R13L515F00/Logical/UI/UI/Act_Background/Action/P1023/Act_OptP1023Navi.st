
ACTION Act_OptP1023Navi: 
	
	tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN	
		eChgPage	:= UIP1020McSetNavi;
			
		tyP1023McSetHComm.tyNaviLyr1.tyBtnBack.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyNaviLyr2.tyBtnBack.bRtCompl		:= FALSE;
		tyP1023McSetHComm.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
	
	ELSIF tyP1023McSetHComm.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE THEN
		
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr2);	
		p_tyP1023McSetHCommUSSel ACCESS ADR(tyP1023McSetHComm.tyUSSelB);
		p_tyP1023McSetHCommUSSMEMA ACCESS ADR(tyP1023McSetHComm.tyUSSMEMAB);
		p_tyP1023McSetHCommUSHermes ACCESS ADR(tyP1023McSetHComm.tyUSHermesB);
		
		tyP1023McSetHComm.tyUSSelB.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
		
		tyP1023McSetHComm.tyNaviLyr1.tyBtnLeft.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyNaviLyr1.tyBtnRgt.bRtCompl	:= FALSE;
		
	ELSIF tyP1023McSetHComm.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE OR tyP1023McSetHComm.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE THEN
		
		p_tyC0004Navi ACCESS ADR(tyP1023McSetHComm.tyNaviLyr1);
		p_tyP1023McSetHCommUSSel ACCESS ADR(tyP1023McSetHComm.tyUSSelA);
		p_tyP1023McSetHCommUSSMEMA ACCESS ADR(tyP1023McSetHComm.tyUSSMEMAA);
		p_tyP1023McSetHCommUSHermes ACCESS ADR(tyP1023McSetHComm.tyUSHermesA);
		
		tyP1023McSetHComm.tyUSSelA.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
		
		tyP1023McSetHComm.tyNaviLyr2.tyBtnLeft.bRtCompl	:= FALSE;
		tyP1023McSetHComm.tyNaviLyr2.tyBtnRgt.bRtCompl	:= FALSE;
		
	END_IF	
	
END_ACTION
