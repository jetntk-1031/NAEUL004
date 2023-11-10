(** 2019-04-26 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Retain';
	fbDirCreate2(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= p_sFileName;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(p_tyBuffer);
	fbFileRead1.udiLen			:= SIZEOF(p_tyBuffer);
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'Retain';
	fbFileWrite1.sFile			:= p_sFileName;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(p_tyBuffer);
	fbFileWrite1.udiLen			:= SIZEOF(p_tyBuffer);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	fbCoolFanOffDlyTm.PT	:= DINT_TO_TIME(p_diCoolFanOffDlyTm);
	fbCoolFanOffDlyTm(IN := FALSE);
	
	fbCoolFanOffChkTm(IN := FALSE);
	fbMagAbsentTm(IN := FALSE);
	fbMagPresentTm(IN := FALSE);
	
END_ACTION
