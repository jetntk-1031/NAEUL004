
ACTION Act_OptP0929MagConv2Sen: 
	// connect sensors to inputs
	tyP0929MagConv2.tyCom.tyBtnTopEntSen.bValue			:= p_tyDI.bInMagConv2EntSen;
	tyP0929MagConv2.tyCom.tyBtnTopMidSen.bValue			:= p_tyDI.bInMagConv2MidSen;
	tyP0929MagConv2.tyCom.tyBtnTopExtSen.bValue			:= p_tyDI.bInMagConv2ExtSen;
	tyP0929MagConv2.tyCom.tyBtnBtmEntSen.bValue			:= p_tyDI.bOutMagConv2EntSen;
	tyP0929MagConv2.tyCom.tyBtnBtmMidSen.bValue			:= p_tyDI.bOutMagConv2MidSen;
	tyP0929MagConv2.tyCom.tyBtnBtmExtSen.bValue			:= p_tyDI.bOutMagConv2ExtSen;


	//Machine Bitmap
	IF p_tyNtParamCurr.bProjMagConvLane2Prep THEN
		IF tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN //Top layer
			tyP0929MagConv2.tyCom.tyBitmapMc.uiValueIdx := 0;
		ELSIF tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN
			tyP0929MagConv2.tyCom.tyBitmapMc.uiValueIdx := 1;
		END_IF
	END_IF

	

END_ACTION
