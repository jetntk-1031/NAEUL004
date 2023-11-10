(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_eUSCommMod1 ACCESS ADR(eUSCommMod1);
	p_eUSCommMod2 ACCESS ADR(eUSCommMod2);
	p_eUSCommMod3 ACCESS ADR(eUSCommMod3);
	p_eDSCommMod1 ACCESS ADR(eDSCommMod1);
	p_eDSCommMod2 ACCESS ADR(eDSCommMod2);
	p_eDSCommMod3 ACCESS ADR(eDSCommMod3);

	p_bUSSMEMAUSRdy3 ACCESS ADR(bUSSMEMAUSRdy3);
	p_bUSSMEMAGdBrdRdy3 ACCESS ADR(bUSSMEMAGdBrdRdy3);
	
	p_bDSHermesDSRdy1 ACCESS ADR(bDSHermesDSRdy1);
	p_bDSHermesDSRdy2 ACCESS ADR(bDSHermesDSRdy2);
	p_bDSHermesDSRdy3 ACCESS ADR(bDSHermesDSRdy3);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_bBypsGdBadBrd ACCESS ADR(bBypsGdBadBrd);
	p_eULMod ACCESS ADR(eULMode);
	
END_ACTION
