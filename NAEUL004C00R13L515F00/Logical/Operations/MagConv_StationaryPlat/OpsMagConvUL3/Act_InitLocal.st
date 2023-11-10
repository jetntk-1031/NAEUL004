(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_usiMagConv ACCESS ADR(usiMagConv);
	p_bInfoEn ACCESS ADR(bInfoEn);
	
	pa_bMagDis ACCESS ADR(a_bMagDis);
	pa_bMagRej ACCESS ADR(a_bMagRej);
	p_bUSAllow ACCESS ADR(bUSAllow);

	p_bAllwChgWidth  ACCESS ADR(bAllwChgWidth);
	p_bAllwChgSlot ACCESS ADR(bAllwChgSlot);
	
	p_bNewMag ACCESS ADR(bNewMag);
	p_bRlsMag ACCESS ADR(bRlsMag);
	
	p_bConvInitDone ACCESS ADR(bConvInitDone);
	p_bConvHvBrd ACCESS ADR(bConvHvBrd);
	p_bConvGdBrd ACCESS ADR(bConvGdBrd);
	
	p_tyBufferStat1 ACCESS ADR(tyBufferStat1);
	p_tyBufferStat2 ACCESS ADR(tyBufferStat2);
	p_tyBufferStat3 ACCESS ADR(tyBufferStat3);
	
	p_bMagClampRS1 ACCESS ADR(bMagClampRS1);
	p_bMagClampRS2 ACCESS ADR(bMagClampRS2);
	p_bMagClampRS3 ACCESS ADR(bMagClampRS3);
	
	p_bMagEntrySen1 ACCESS ADR(bMagEntrySen1);
	p_bMagEntrySen2 ACCESS ADR(bMagEntrySen2);
	p_bMagEntrySen3 ACCESS ADR(bMagEntrySen3);
	
	p_bMagPresentSen1 ACCESS ADR(bMagPresentSen1);
	p_bMagPresentSen2 ACCESS ADR(bMagPresentSen2);
	p_bMagPresentSen3 ACCESS ADR(bMagPresentSen3);
	
	p_bBufferMagPresent1 ACCESS ADR(bBufferMagPresent1);
	p_bBufferMagPresent2 ACCESS ADR(bBufferMagPresent2);
	p_bBufferMagPresent3 ACCESS ADR(bBufferMagPresent3);
	
	p_dtBufferMagPresentTm1 ACCESS ADR(dtBufferMagPresentTm1);
	p_dtBufferMagPresentTm2 ACCESS ADR(dtBufferMagPresentTm2);
	p_dtBufferMagPresentTm3 ACCESS ADR(dtBufferMagPresentTm3);
	
	p_eBufferStat ACCESS ADR(eBufferStat);
	p_eBufferStatus ACCESS ADR(eBufferStatus);
	
	p_eMagConv2ClpStat ACCESS ADR(eMagConv2ClpStat);
	p_eMagConv2ClpStatus ACCESS ADR(eMagConv2ClpStatus);
	p_bMagConv2ClpHvMag ACCESS ADR(bMagConv2ClpHvMag);
	
	p_eUSSMEMAStat ACCESS ADR(eUSSMEMAStat);
	p_eUSSMEMAStatus ACCESS ADR(eUSSMEMAStatus);
	p_bUSSMEMATransporting ACCESS ADR(bUSSMEMATransporting);
	p_bUSSMEMAConvStart ACCESS ADR(bUSSMEMAConvStart);
	p_bUSSMEMAConvStop ACCESS ADR(bUSSMEMAConvStop);
	
	p_eAGVMagStat ACCESS ADR(eAGVMagStat);
	p_eAGVMagStatus ACCESS ADR(eAGVMagStatus);
	p_bAGVMagMcRunRdy ACCESS ADR(bAGVMagMcRunRdy);
	p_tyAGVToDTMag ACCESS ADR(tyAGVToDualMag);
	
	p_dtOpsMagConvUL3AcptTm ACCESS ADR(dtMagConvAcptTm);
	p_iOpsMagConvUL3MESAcptCond ACCESS ADR(iMagMESAcptCond);
END_ACTION
