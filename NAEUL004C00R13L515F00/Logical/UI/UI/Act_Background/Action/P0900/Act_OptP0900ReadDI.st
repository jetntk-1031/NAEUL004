
ACTION Act_OptP0900ReadDI:

	tyP0900GenIn.tyGenIn1.tyBtnSafetyRly.bValue				:= p_tyDI.bSafetyRlySig;
	tyP0900GenIn.tyGenIn1.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
	tyP0900GenIn.tyGenIn1.tyBtnCoverSW.bValue				:= p_tyDI.bCoverSWSig;
	tyP0900GenIn.tyGenIn1.tyBtnLifterTimingBeltSen.bValue	:= p_tyDI.bLifterTimingBeltSen;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW1.bValue	:= p_tyDI.bLifterSafetyLmtSW1;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW2.bValue	:= p_tyDI.bLifterSafetyLmtSW2;
	tyP0900GenIn.tyGenIn1.tyBtnMag1PresentSen.bValue		:= p_tyDI.bMagPresentSen1;
	tyP0900GenIn.tyGenIn1.tyBtnMag2PresentSen.bValue		:= p_tyDI.bMagPresentSen2;
	tyP0900GenIn.tyGenIn1.tyBtnMag3PresentSen.bValue		:= p_tyDI.bMagPresentSen3;
	tyP0900GenIn.tyGenIn1.tyBtnOvenInfeedSigA.bValue		:= p_tyDI.bOvenInfeedSigA;
	tyP0900GenIn.tyGenIn1.tyBtnOvenInfeedSigB.bValue		:= p_tyDI.bOvenInfeedSigB;
	
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen1.bValue	:= p_tyDI.bMag2OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen2.bValue	:= p_tyDI.bMag2OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag1HeightSen.bValue				:= p_tyDI.bHighMagDetSen1;
	tyP0900GenIn.tyGenIn2.tyBtnMag2HeightSen.bValue				:= p_tyDI.bHighMagDetSen2;
	tyP0900GenIn.tyGenIn2.tyBtnMag3HeightSen.bValue				:= p_tyDI.bHighMagDetSen3;

	tyP0900GenIn.tyGenIn3.tyBtnCurtainSen.bValue		:= p_tyDI.bCurtainSen;
	tyP0900GenIn.tyGenIn3.tyBtnCurtainSenPB.bValue		:= p_tyDI.bCurtainSenPB;
	
	tyP0900GenIn.tyGenIn1.tyBtnMagWidthChk.bValue		:= p_tyDI.bMagWidthChkSen;
	
END_ACTION
