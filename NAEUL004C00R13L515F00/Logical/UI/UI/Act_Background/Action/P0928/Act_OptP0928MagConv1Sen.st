
ACTION Act_OptP0928MagConv1Sen: 
	// connect sensors to inputs
	tyP0928MagConv.tyCom.tyBtnTopEntSen.bValue			:= p_tyDI.bInMagConvEntSen;
	tyP0928MagConv.tyCom.tyBtnTopMidSen.bValue			:= p_tyDI.bInMagConvMidSen;
	tyP0928MagConv.tyCom.tyBtnTopExtSen.bValue			:= p_tyDI.bInMagConvExtSen;
	tyP0928MagConv.tyCom.tyBtnBtmEntSen.bValue			:= p_tyDI.bOutMagConvEntSen;
	tyP0928MagConv.tyCom.tyBtnBtmMidSen.bValue			:= p_tyDI.bOutMagConvMidSen;
	tyP0928MagConv.tyCom.tyBtnBtmExtSen.bValue			:= p_tyDI.bOutMagConvExtSen;


	//Machine Bitmap
	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		IF tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN //Top layer
			tyP0928MagConv.tyCom.tyBitmapMc.uiValueIdx := 0;
		ELSIF tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN
			tyP0928MagConv.tyCom.tyBitmapMc.uiValueIdx := 1;
		END_IF
	END_IF

END_ACTION
