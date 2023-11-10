(** 2022-10-17 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_eInShuttStat ACCESS ADR(eInShutt1Stat);
	p_eInShuttStatus ACCESS ADR(eInShutt1Status);
	p_eOutShuttStat ACCESS ADR(eOutShuttStat);
	p_eOutShuttStatus ACCESS ADR(eOutShuttStatus);
	p_eOutShutt2Stat ACCESS ADR(eOutShutt2Stat);
	p_eOutShutt2Status ACCESS ADR(eOutShutt2Status);
	p_eOutShutt3Stat ACCESS ADR(eOutShutt3Stat);
	p_eOutShutt3Status ACCESS ADR(eOutShutt3Status);

	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
