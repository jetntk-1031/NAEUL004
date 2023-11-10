(** 2021-08-01 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Retain';
	fbDirCreate2(bEn := FALSE);
	
	fbDirCreate3.sDevice	:= 'User';
	fbDirCreate3.sDirName	:= 'Log';
	fbDirCreate3(bEn := FALSE);
	
	fbDirCreate4.sDevice	:= 'User';
	fbDirCreate4.sDirName	:= 'MachineParameter';
	fbDirCreate4(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'McParam';
	fbFileRead1.sFile			:= p_sConfigFileName;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(tyCurrConfiguration);
	fbFileRead1.udiLen			:= SIZEOF(tyCurrConfiguration);
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'McParam';
	fbFileWrite1.sFile			:= p_sConfigFileName;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(tyConfigurationWr);
	fbFileWrite1.udiLen			:= SIZEOF(tyConfigurationWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	fbFileRead2.sDevice			:= 'Retain';
	fbFileRead2.sFile			:= p_sRetainFileName1;
	fbFileRead2.udiOffset		:= 0;
	fbFileRead2(bEn := FALSE);
	
	fbFileWrite2.sDevice		:= 'Retain';
	fbFileWrite2.sFile			:= p_sRetainFileName1;
	fbFileWrite2.udiOffset		:= 0;
	fbFileWrite2.udiOption		:= 0;
	fbFileWrite2(bEn := FALSE);
	
	fbFileRead3.sDevice			:= 'Retain';
	fbFileRead3.sFile			:= p_sRetainFileName2;
	fbFileRead3.udiOffset		:= 0;
	fbFileRead3(bEn := FALSE);
	
	fbFileWrite3.sDevice		:= 'Retain';
	fbFileWrite3.sFile			:= p_sRetainFileName2;
	fbFileWrite3.udiOffset		:= 0;
	fbFileWrite3.udiOption		:= 0;
	fbFileWrite3(bEn := FALSE);
	
	fbFileRead4.sDevice			:= 'Retain';
	fbFileRead4.sFile			:= p_sRetainFileName3;
	fbFileRead4.udiOffset		:= 0;
	fbFileRead4(bEn := FALSE);
	
	fbFileWrite4.sDevice		:= 'Retain';
	fbFileWrite4.sFile			:= p_sRetainFileName3;
	fbFileWrite4.udiOffset		:= 0;
	fbFileWrite4.udiOption		:= 0;
	fbFileWrite4(bEn := FALSE);
	
	fbFileRead5.sDevice			:= 'Retain';
	fbFileRead5.sFile			:= p_sRetainFileName4;
	fbFileRead5.udiOffset		:= 0;
	fbFileRead5(bEn := FALSE);
	
	fbFileWrite5.sDevice		:= 'Retain';
	fbFileWrite5.sFile			:= p_sRetainFileName4;
	fbFileWrite5.udiOffset		:= 0;
	fbFileWrite5.udiOption		:= 0;
	fbFileWrite5(bEn := FALSE);
	
END_ACTION
