
ACTION Act_EntP0938Disp: 
	
	CASE p_tyMagRcpCurrRcp.usiMagModel OF
		0://CAB706.2
			bSmallMagLimSen1:= TRUE;
			bSmallMagLimSen2:= TRUE;
			bSmallMagLimSen3:= TRUE;
			bSmallMagLimSen4:= TRUE;
		1://CAB716.2
			bSmallMagLimSen1:= TRUE;
			bSmallMagLimSen2:= TRUE;
			bSmallMagLimSen3:= TRUE;
			bSmallMagLimSen4:= TRUE;
		2://CAB717.2	
			bSmallMagLimSen1:= FALSE;
			bSmallMagLimSen2:= FALSE;
			bSmallMagLimSen3:= FALSE;
			bSmallMagLimSen4:= FALSE;
	END_CASE
			
	//Access Address
	IF bDispMagAW1 = TRUE THEN
		
		(*Magazine Auto Width 1*)
		p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd1);
		
		p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskHide);
		
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi2Lyr1);
		ELSE
			p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr1);
		END_IF
		
		p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
		
		p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0938MagAW.tyMsgBoxHide);
		
		p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
		p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW1);
		
	ELSIF bDispMagAW2 = TRUE THEN
		
		(*Magazine Auto Width 2*)
		p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd2);
		
		p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskHide);
		
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi2Lyr2);
		ELSE
			p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr2);
		END_IF
		
		p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
		
		p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0938MagAW.tyMsgBoxHide);
		
		p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
		p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW2);
		
	ELSIF bDispMagAW3 = TRUE THEN
		
		(*Magazine Auto Width 3*)
		p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd3);
		
		p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskHide);
		
		p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr3);
		
		p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
		
		p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0938MagAW.tyMsgBoxHide);
		
		p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
		p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW3);
		
	END_IF
	
	//Display
	(*Magazine Auto Width 1*)
	tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValue	:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue	:= p_bMag1AWEngageExtCtrl;
	tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue	:= p_bMag1AWEngageRetCtrl;
	
	tyP0938MagAW.tyMotionStd1.tyBtnPwr.bValue	:= p_bMagAWOpen1PwrOn;
	
	
	
	(*Magazine Auto Width 2*)
	tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValue	:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue	:= p_bMag2AWEngageExtCtrl;
	tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue	:= p_bMag2AWEngageRetCtrl;
	
	tyP0938MagAW.tyMotionStd2.tyBtnPwr.bValue	:= p_bMagAWOpen2PwrOn;
	
	
	
	(*Magazine Auto Width 3*)
	tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValue	:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue	:= p_bMag3AWEngageExtCtrl;
	tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue	:= p_bMag3AWEngageRetCtrl;
	
	tyP0938MagAW.tyMotionStd3.tyBtnPwr.bValue	:= p_bMagAWOpen3PwrOn;
	
END_ACTION
