
ACTION Act_EntP0950Disp:
	
	// Access Address
	p_tyC0002FullMask ACCESS ADR (tyP0950Simu.tyFullMaskHide);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0950Simu ACCESS ADR(tyP0950Simu.tySimu);
	
	p_tyP0950SimuCycleTim ACCESS ADR(tyP0950Simu.tySimuBffrCycleTm);
	
	p_tyP0950SimuAGVtoMC ACCESS ADR(tyP0950Simu.tyAGVToMc);

	p_tyP0950SimuMCtoAGV ACCESS ADR(tyP0950Simu.tyMcToAGV);
	
	//Display
	
	tyP0950Simu.tySimu.tyNumTravSpd.diValue := p_diNtParamTravAutoSpd;
	tyP0950Simu.tySimu.tyNumLifterSpd.diValue := p_diNtParamLifterAutoSpd;
	tyP0950Simu.tySimu.tyNumAddr.diValue := p_usiNtParamNtAddr;
	tyP0950Simu.tySimu.tyStringJobNo.sValue:= p_sNtParamJobNo;
END_ACTION
