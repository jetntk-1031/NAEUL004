(** 2019-05-07 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiMax ACCESS ADR(c_udiMagRcpMax);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bDis ACCESS ADR(bDis);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_sSearch ACCESS ADR(sSearch);
	p_tyInfoIn ACCESS ADR(tyInfoIn);
	p_tyCurrRcpWr ACCESS ADR(tyCurrRcpWr);
	p_sListFileName ACCESS ADR(sListFileName);
	p_sSingleFileName ACCESS ADR(sSingleFileName);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
