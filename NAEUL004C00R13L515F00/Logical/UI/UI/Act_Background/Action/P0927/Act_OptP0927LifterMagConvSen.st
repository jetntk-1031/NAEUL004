
ACTION Act_OptP0927LifterMagConvSen: 

	tyP0927LifterMagConv2.tyCom.tyBtnLifterLmtSW.bValue					:= p_tyDI.bLifter2LmtSW;
	tyP0927LifterMagConv2.tyCom.tyBtnClampRS.bValue						:= p_tyDI.bMag2FixedClampRS;
	tyP0927LifterMagConv2.tyCom.tyBtnUnclampRS.bValue					:= p_tyDI.bMag2FixedUnclampRS;
	
//	IF p_tyDI.bMag2FixedClampRS = TRUE THEN
//		tyP0927LifterMagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 0;
//	ELSE
//		tyP0927LifterMagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 1;
//	END_IF
	
END_ACTION
