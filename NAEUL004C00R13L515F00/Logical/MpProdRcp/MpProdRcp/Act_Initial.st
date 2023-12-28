(** 2019-04-28 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'ProductRecipeXml';
	fbDirCreate2(bEn := FALSE);
	
	tylocalMpProdRcp.In.tyMpProdRcpMpLink	:= gRecipeXml;
	
	fbMpRecipeRegPar.MpLink	:= ADR(tylocalMpProdRcp.In.tyMpProdRcpMpLink);
	fbMpRecipeRegPar.PVName	:= ADR(tylocalMpProdRcp.In.sPVName);
	fbMpRecipeRegPar(Enable := FALSE);
	
	fbMpRecipeXml.MpLink		:= ADR(tylocalMpProdRcp.In.tyMpProdRcpMpLink);
	fbMpRecipeXml.DeviceName	:= ADR('MpProdRcp');
	fbMpRecipeXml.FileName		:= ADR(tylocalMpProdRcp.In.sFileName);
	fbMpRecipeXml(Enable := FALSE);
	
END_ACTION
