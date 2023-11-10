(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Output Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_eOutMagConvStat ACCESS ADR(eOutMagConvStat);
	p_eOutMagConvStatus ACCESS ADR(eOutMagConvStatus);
	p_eOutMagConv2Stat ACCESS ADR(eOutMagConv2Stat);
	p_eOutMagConv2Status ACCESS ADR(eOutMagConv2Status);

	p_bStepEntMag ACCESS ADR(bStepEntMag);
	p_bStepEntMag2 ACCESS ADR(bStepEntMag2);
	p_bEntSen ACCESS ADR(bEntSen);
	p_bMidSen ACCESS ADR(bMidSen);
	p_bExtSen ACCESS ADR(bExtSen);
	p_bEntSen2 ACCESS ADR(bEntSen2);
	p_bMidSen2 ACCESS ADR(bMidSen2);
	p_bExtSen2 ACCESS ADR(bExtSen2);
	p_bExitSig ACCESS ADR(bExitSig);
	p_bExitSig2 ACCESS ADR(bExitSig2);
	p_bOpsMnlUnloadMag ACCESS ADR(bOpsMnlUnloadMag);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
