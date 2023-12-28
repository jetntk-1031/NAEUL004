(** 2019-04-26 **)
ACTION Act_Initial:
	
	//Initial
	tylocalBuffer.Out.sStatTxt	:= a_sStatText[eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Retain';
	fbDirCreate2(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= tylocalBuffer.In.sFileName;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(tylocalBuffer.In.tyBuffer);
	fbFileRead1.udiLen			:= SIZEOF(tylocalBuffer.In.tyBuffer);
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'Retain';
	fbFileWrite1.sFile			:= tylocalBuffer.In.sFileName;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(tylocalBuffer.In.tyBuffer);
	fbFileWrite1.udiLen			:= SIZEOF(tylocalBuffer.In.tyBuffer);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	fbCoolFanOffDlyTm.PT	:= DINT_TO_TIME(tylocalBuffer.In.diCoolFanOffDlyTm);
	fbCoolFanOffDlyTm(IN := FALSE);
	
	fbCoolFanOffChkTm(IN := FALSE);
	fbMagAbsentTm(IN := FALSE);
	fbMagPresentTm(IN := FALSE);
	
END_ACTION
