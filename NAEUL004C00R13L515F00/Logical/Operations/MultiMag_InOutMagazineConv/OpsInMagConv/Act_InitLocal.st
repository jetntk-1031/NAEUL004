(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_eInMagConvStat ACCESS ADR(eInMagConvStat);
	p_eInMagConvStatus ACCESS ADR(eInMagConvStatus);
	p_eInMagConv2Stat ACCESS ADR(eInMagConv2Stat);
	p_eInMagConv2Status ACCESS ADR(eInMagConv2Status);

	p_bStepOpsEntMag ACCESS ADR(bStepOpsEntMag);
	p_bStepOpsEntMidMag ACCESS ADR(bStepOpsEntMidMag);
	p_bStepOpsExtMag ACCESS ADR(bStepOpsExtMag);
	p_bStepOpsEntMag2 ACCESS ADR(bStepOpsEntMag2);
	p_bStepOpsEntMidMag2 ACCESS ADR(bStepOpsEntMidMag2);
	p_bStepOpsExtMag2 ACCESS ADR(bStepOpsExtMag2);

	p_bMagSelMiniMag ACCESS ADR(bMagSelMiniMag);
	
	p_bMagHeightChkSen ACCESS ADR(bMagHeightChkSen);
	p_bInMagConvExtSen ACCESS ADR(bInMagConvExtSen);
	p_bCurtainSensorStat ACCESS ADR(bCurtainSensorStat);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
