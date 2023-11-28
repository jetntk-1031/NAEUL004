
ACTION PrecededByF1Initial: 
	
	//Mag Detail (Rcp)
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= 'MagazinePropsRcp';
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(a_tyMagProps);
	fbFileRead1.udiLen			:= SIZEOF(a_tyMagProps);
	fbFileRead1(bEn := FALSE);

	fbFileWrite1.sDevice	:= 'Retain';
	fbFileWrite1.sFile			:= 'MagazinePropsRcp';
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(a_tyMagPropsWr);
	fbFileWrite1.udiLen			:= SIZEOF(a_tyMagPropsWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	
	//artibitrary type  on Zone 1 (Traverser)
	IF p_bNtParamF1ArbitraryType THEN
		fbFileRead2.sDevice			:= 'Retain';
		fbFileRead2.sFile			:= 'TravRcp';
		fbFileRead2.udiOffset		:= 0;
		fbFileRead2.p_Dest			:= ADR(tyCurrZ1Rcp);
		fbFileRead2.udiLen			:= SIZEOF(tyCurrZ1Rcp);
		fbFileRead2(bEn := FALSE);
	
		fbFileWrite2.sDevice	:= 'Retain';
		fbFileWrite2.sFile			:= 'TravRcp';
		fbFileWrite2.udiOffset		:= 0;
		fbFileWrite2.p_Src			:= ADR(tyZ1RcpWr);
		fbFileWrite2.udiLen			:= SIZEOF(tyZ1RcpWr);
		fbFileWrite2.udiOption		:= 0;
		fbFileWrite2(bEn := FALSE);
	END_IF
END_ACTION
