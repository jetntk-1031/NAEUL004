
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'Private';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'Private';
	fbDirCreate2.sDirName	:= 'NutekParameter';
	fbDirCreate2(bEn := FALSE);
	
	fbDirCreate3.sDevice	:= 'Private';
	fbDirCreate3.sDirName	:= 'NutekParameterXml';
	fbDirCreate3(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'NtParam';
	fbFileRead1.sFile			:= tylocalNtParam.In.sFileName;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(tyNtParamCurr);
	fbFileRead1.udiLen			:= SIZEOF(tyNtParamCurr);
	fbFileRead1.usiEncryptCode	:= 130;
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'NtParam';
	fbFileWrite1.sFile			:= tylocalNtParam.In.sFileName;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(tyNtParamCurr);
	fbFileWrite1.udiLen			:= SIZEOF(tyNtParamCurr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1.usiEncryptCode	:= 130;
	fbFileWrite1(bEn := FALSE);
	
	tyMpNtParamMpLink	:= gRecipeXml;
	
	fbMpNtParamRegPar.MpLink	:= ADR(tyMpNtParamMpLink);
	fbMpNtParamRegPar.PVName	:= ADR(tylocalNtParam.In.sPVName);
	fbMpNtParamRegPar(Enable := FALSE);
	
	fbMpNtParamXml.MpLink		:= ADR(tyMpNtParamMpLink);
	fbMpNtParamXml.DeviceName	:= ADR('MpNtParam');
	fbMpNtParamXml.FileName		:= ADR(tylocalNtParam.In.sFileName1);
	fbMpNtParamXml(Enable := FALSE);
	
END_ACTION
