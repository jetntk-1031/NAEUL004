
ACTION Act_OptP0928MagConv1FBStat:
	
	IF tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue OR tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue THEN	
		tyP0928MagConv.tyTopFB.tyStringStat.sValue	:= p_sStopper1StatTxt;
	ELSIF tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue OR tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue THEN
		tyP0928MagConv.tyTopFB.tyStringStat.sValue	:= p_sStopper2StatTxt;
	ELSIF tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue OR tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue THEN
		tyP0928MagConv.tyTopFB.tyStringStat.sValue	:= p_sStopper3StatTxt;
		
	ELSIF tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue OR tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue THEN
		tyP0928MagConv.tyBtmFB.tyStringStat.sValue	:= p_sStopper4StatTxt;
	ELSIF tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue OR tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue THEN
		tyP0928MagConv.tyBtmFB.tyStringStat.sValue	:= p_sStopper5StatTxt;

		
	ELSIF tyP0928MagConv.tyTopFB.tyBtnEnt.bValue OR tyP0928MagConv.tyTopFB.tyBtnExit.bValue THEN
		tyP0928MagConv.tyTopFB.tyStringStat.sValue	:= p_sInMagConvStatTxt;
	ELSIF tyP0928MagConv.tyBtmFB.tyBtnEnt.bValue OR tyP0928MagConv.tyBtmFB.tyBtnExit.bValue THEN
		tyP0928MagConv.tyBtmFB.tyStringStat.sValue	:= p_sOutMagConvStatTxt;

	END_IF		
		
END_ACTION
