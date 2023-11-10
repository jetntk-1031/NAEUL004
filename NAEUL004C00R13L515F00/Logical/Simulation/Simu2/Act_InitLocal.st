(** 2022-10-17 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_diSltCap ACCESS ADR(diSltCap);
	p_diBffrTtlSlt ACCESS ADR(diBffrTtlSlt);
	p_tyDispCycTmBffr ACCESS ADR(tyDispCycTmBffr);
	p_tyBuffer ACCESS ADR(tyBuffer);
	p_diSltCap ACCESS ADR(diSltCap);
	p_diSlotCount ACCESS ADR(diCnt);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
