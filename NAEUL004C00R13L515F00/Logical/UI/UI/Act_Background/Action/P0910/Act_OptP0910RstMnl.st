
ACTION Act_OptP0910RstMnl:
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eRstErrStatus = Error)) THEN
		eRstErrAct	:= RstErrActIdle;
		
		tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bValue	:= FALSE;
	END_IF
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eTLBuzStatus = Error)) THEN
		eTLBuzAct	:= TLBuzActIdle;
		
		tyP0910GenOut.tyGenOut.tyBtnTLGreen.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnTLRed.bValue		:= FALSE;
		tyP0910GenOut.tyGenOut.tyBtnBuzzer.bValue		:= FALSE;
	END_IF
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eOvenInfoAStatus = Error)) THEN
		eOvenInfoAAct	:= OvenInfoActIdle;
		
		tyP0910GenOut.tyOven.tyBtnOvenInfoA.bValue	:= FALSE;
	END_IF
	
	IF EDGEPOS((bUIManualMod = FALSE) OR (p_eOvenInfoAStatus = Error)) THEN
		eOvenInfoBAct	:= OvenInfoActIdle;
		
		tyP0910GenOut.tyOven.tyBtnOvenInfoB.bValue	:= FALSE;
	END_IF

	IF EDGEPOS(bUIManualMod = FALSE) 
		THEN
		tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp1.bValue 				:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp2.bValue				:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp3.bValue 				:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp4.bValue 				:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen1.bValue 			:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen2.bValue 			:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen3.bValue 			:= FALSE;
		tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen4.bValue 			:= FALSE;
		
		//Bypass Curtain Sensor and LED Display
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSenPBLED.bValue	:= FALSE;
		tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSen.bValue		:= FALSE;
		
		//Variable Data
		bBypCurtainSen		:= FALSE;
		bBypCurtainPBLED	:= FALSE;
		
		bMagAWOpenLimByp1 	:= FALSE;
		bMagAWOpenLimByp2 	:= FALSE;
		bMagAWOpenLimByp3	:= FALSE;
		bMagAWOpenLimByp4 	:= FALSE;
		bSmallMagLimSen1	:= FALSE;
		bSmallMagLimSen2	:= FALSE;
		bSmallMagLimSen3	:= FALSE;
		bSmallMagLimSen4	:= FALSE;
		
	END_IF
	
//	tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl	:= FALSE;
//	tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bValue   	:= FALSE;
//	bSafetyCurtainReset	:= FALSE;
	

	
END_ACTION
