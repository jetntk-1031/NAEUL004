
ACTION Act_OptP0926LifterMagConvSen: 

	tyP0926LifterMagConv.tyCom.tyBtnLifterLmtSW.bValue					:= p_tyDI.bLifterLmtSW;
	tyP0926LifterMagConv.tyCom.tyBtnClampRS.bValue						:= p_tyDI.bMag1FixedClampRS;
	tyP0926LifterMagConv.tyCom.tyBtnUnclampRS.bValue					:= p_tyDI.bMag1FixedUnclampRS;
	
//	IF p_tyDI.bMag1FixedClampRS = TRUE THEN
//		tyP0926LifterMagConv.tyCom.tyBitmapMc.usiValueIdx	:= 0;
//	ELSE
//		tyP0926LifterMagConv.tyCom.tyBitmapMc.usiValueIdx	:= 1;
//	END_IF
	
END_ACTION
