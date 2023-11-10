
ACTION PrecededBySelfInitial: 

	//Mag Detail (Hermes)
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= 'MagazineRcp';
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1.p_Dest			:= ADR(a_tyCurrZ2Rcp);
	fbFileRead1.udiLen			:= SIZEOF(a_tyCurrZ2Rcp);
	fbFileRead1(bEn := FALSE);

	fbFileWrite1.sDevice	:= 'Retain';
	fbFileWrite1.sFile			:= 'MagazineRcp';
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.p_Src			:= ADR(a_tyZ2RcpWr);
	fbFileWrite1.udiLen			:= SIZEOF(a_tyZ2RcpWr);
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	//Trav Detail (Hermes)
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
	
END_ACTION
