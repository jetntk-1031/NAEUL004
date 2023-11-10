
ACTION Act_OptP0920ChgPage:
	
	IF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnShutter.bValue		:= FALSE;
		eChgPage														:= UIP0921Shutter;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnStopper.bValue		:= FALSE;
		eChgPage														:= UIP0922Stopper;
				
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv.bRtCompl AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv.bValue		:= FALSE;
		eChgPage														:= UIP0926LifterConv;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv2.bRtCompl AND p_tyNtParamCurr.bProjMagConvLane2Prep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv2.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifterConv2.bValue			:= FALSE;
		eChgPage														:= UIP0927LifterConv2;

	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0928MagConv;
			
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv1 AND NOT(p_tyNtParamCurr.bProjMagConvLane1Prep) THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0930MagConv1;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv2 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0931MagConv2;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl AND bDispMagConv3 THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMag1Conv.bValue			:= FALSE;
		eChgPage														:= UIP0932MagConv3;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnPusherConv.bValue		:= FALSE;
		eChgPage														:= UIP0933PusherConv;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bRtCompl				:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.bValue				:= FALSE;
		eChgPage														:= UIP0934AW;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bRtCompl			:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter.bValue			:= FALSE;
		eChgPage														:= UIP0935Lifter;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bRtCompl			:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnTrav.bValue				:= FALSE;
		eChgPage														:= UIP0936Trav;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.bRtCompl			:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.bValue			:= FALSE;
		eChgPage														:= UIP0938MagAW;
		
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter2.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter2.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnLifter2.bValue		:= FALSE;
		eChgPage													:= UIP0939Lifter2;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bRtCompl = TRUE THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bRtCompl		:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.bValue		:= FALSE;
		eChgPage														:= UIP0937AWPushOrPuller;
	
	ELSIF tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bRtCompl THEN
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bRtCompl	:= FALSE;
		tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu.tyBtnSafetyBar.bValue	:= FALSE;
		eChgPage														:= UIP0923SafetyBar;
	END_IF
	
END_ACTION
