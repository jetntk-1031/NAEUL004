
ACTION Act_OptP0929MagConv2FBStat:
	
	IF tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue OR tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue THEN	
		tyP0929MagConv2.tyTopFB.tyStringStat.sValue	:= p_sStopper1StatTxt2;
	ELSIF tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue OR tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue THEN
		tyP0929MagConv2.tyTopFB.tyStringStat.sValue	:= p_sStopper2StatTxt2;
	ELSIF tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue OR tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue THEN
		tyP0929MagConv2.tyTopFB.tyStringStat.sValue	:= p_sStopper3StatTxt2;
		
	ELSIF tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue OR tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue THEN
		tyP0929MagConv2.tyBtmFB.tyStringStat.sValue	:= p_sStopper4StatTxt2;
	ELSIF tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue OR tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue THEN
		tyP0929MagConv2.tyBtmFB.tyStringStat.sValue	:= p_sStopper5StatTxt2;

		
	ELSIF tyP0929MagConv2.tyTopFB.tyBtnEnt.bValue OR tyP0929MagConv2.tyTopFB.tyBtnExit.bValue THEN
		tyP0929MagConv2.tyTopFB.tyStringStat.sValue	:= p_sInMagConv2StatTxt;
	ELSIF tyP0929MagConv2.tyBtmFB.tyBtnEnt.bValue OR tyP0929MagConv2.tyBtmFB.tyBtnExit.bValue THEN
		tyP0929MagConv2.tyBtmFB.tyStringStat.sValue	:= p_sOutMagConv2StatTxt;

	END_IF		
		
END_ACTION
