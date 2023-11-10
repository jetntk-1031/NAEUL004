
ACTION Act_Main_P0920:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 800;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 800;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 800;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 700;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 700;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 700;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE 
		AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 500;//50
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 900;//51
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter2.uiBitmapIdx			:= 901;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 902;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 600;//52
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 500;//53
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv.uiBitmapIdx		:= 900;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv2.uiBitmapIdx		:= 901;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 900; //54
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 600;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 600;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 500;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx		:= 600;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 106;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.usiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 154;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.usiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMagAWPrep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 106;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 200;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 200;	
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.uiBitmapIdx			:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.usiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMagAWPrep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 298;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 300;	
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.uiBitmapIdx			:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.usiBitmapIdx		:= 0;
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 298;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 300;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 300;	
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.uiBitmapIdx			:= 100;	
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.usiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	ELSE
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiBitmapIdx				:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiBitmapIdx			:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.uiBitmapIdx			:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiBitmapIdx		:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiBitmapIdx	:= 0;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.usiBitmapIdx	:= 100;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiBitmapIdx		:= 0;
	END_IF
	
	//Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	
	//Magazine Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	
	//Pneumatic
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep OR p_tyNtParamCurr.bProjOutletShutPrep
																OR p_tyNtParamCurr.bProjStopperAPrep OR p_tyNtParamCurr.bProjStopperBPrep);
	
	//Shutter
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.uiRtStat.0  := NOT(p_tyNtParamCurr.bProjInletShutPrep OR p_tyNtParamCurr.bProjOutletShutPrep);
	
	//Stopper
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperAPrep OR p_tyNtParamCurr.bProjStopperBPrep OR p_tyNtParamCurr.bProjInletStopperPrep);
	
	//Magazine Conveyor
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiRtStat.0	:= NOT((p_tyNtParamCurr.bProjMag1ConvPrep OR p_tyNtParamCurr.bProjMag2ConvPrep OR p_tyNtParamCurr.bProjMag3ConvPrep OR
																	p_tyNtParamCurr.bProjMagConvLane1Prep OR p_tyNtParamCurr.bProjMagConvLane2Prep) AND p_tyNtParamCurr.bProjLifTravMnlLoad= FALSE);
//	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.uiRtStat.0	:= NOT(NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep)XOR
//																	NOT (p_tyNtParamCurr.bProjMagConvLane1Prep AND p_tyNtParamCurr.bProjMagConvLane2Prep)));
//	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag2Conv.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMag2ConvPrep;
//	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag3Conv.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMag3ConvPrep AND (p_tyNtParamCurr.eProjMag = ULMagTriple));

	//Safety Bar
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagSafetyBarPrep;
	//Pusher Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	//Lifter2
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter2.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLifter2Prep;
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLifter2Prep;
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterBigBtn.uiRtStat.0	:= p_tyNtParamCurr.bProjLifter2Prep;
	//Lifter Conveyor
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagConvLane1Prep;
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv2.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagConvLane2Prep;

END_ACTION
