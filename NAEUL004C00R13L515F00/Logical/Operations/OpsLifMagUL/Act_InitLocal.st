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
	
	pa_bMagDis ACCESS ADR(a_bMagDis);
	pa_bMagRej ACCESS ADR(a_bMagRej);
	p_bUnloadMag ACCESS ADR(bUnloadMag);
	p_bUSAllow ACCESS ADR(bUSAllow);
	p_eNtParamProjMagBuffferActLoad	ACCESS ADR(eMagBuffferActLoad);
	
	p_bConvInitDone ACCESS ADR(bConvInitDone);
	p_bConvHvBrd ACCESS ADR(bConvHvBrd);
	p_bConvGdBrd ACCESS ADR(bConvGdBrd);
	
	p_tyBufferStat1 ACCESS ADR(tyBufferStat1);
	p_tyBufferStat2 ACCESS ADR(tyBufferStat2);
	p_tyBufferStat3 ACCESS ADR(tyBufferStat3);
	
	p_bMagPresentSen1 ACCESS ADR(bMagPresentSen1);
	p_bMagPresentSen2 ACCESS ADR(bMagPresentSen2);
	p_bMagPresentSen3 ACCESS ADR(bMagPresentSen3);
	
	p_bBufferMagPresent1 ACCESS ADR(bBufferMagPresent1);
	p_bBufferMagPresent2 ACCESS ADR(bBufferMagPresent2);
	p_bBufferMagPresent3 ACCESS ADR(bBufferMagPresent3);
	
	p_dtBufferMagPresentTm1 ACCESS ADR(dtBufferMagPresentTm1);
	p_dtBufferMagPresentTm2 ACCESS ADR(dtBufferMagPresentTm2);
	p_dtBufferMagPresentTm3 ACCESS ADR(dtBufferMagPresentTm3);
	
	p_eLifterStat ACCESS ADR(eLifterStat);
	p_eLifterStatus ACCESS ADR(eLifterStatus);
	
	p_eBufferStat1 ACCESS ADR(eBufferStat1);
	p_eBufferStatus1 ACCESS ADR(eBufferStatus1);
	
	p_eBufferStat2 ACCESS ADR(eBufferStat2);
	p_eBufferStatus2 ACCESS ADR(eBufferStatus2);
	
	p_eBufferStat3 ACCESS ADR(eBufferStat3);
	p_eBufferStatus3 ACCESS ADR(eBufferStatus3);
	
	p_eUSSMEMAStat1 ACCESS ADR(eUSSMEMAStat1);
	p_eUSSMEMAStatus1 ACCESS ADR(eUSSMEMAStatus1);
	p_bUSSMEMATransporting1 ACCESS ADR(bUSSMEMATransporting1);
	p_bUSSMEMAConvStart1 ACCESS ADR(bUSSMEMAConvStart1);
	p_bUSSMEMAConvStop1 ACCESS ADR(bUSSMEMAConvStop1);
	
	p_eUSSMEMAStat2 ACCESS ADR(eUSSMEMAStat2);
	p_eUSSMEMAStatus2 ACCESS ADR(eUSSMEMAStatus2);
	p_bUSSMEMATransporting2 ACCESS ADR(bUSSMEMATransporting2);
	p_bUSSMEMAConvStart2 ACCESS ADR(bUSSMEMAConvStart2);
	p_bUSSMEMAConvStop2 ACCESS ADR(bUSSMEMAConvStop2);
	
	p_eUSSMEMAStat3 ACCESS ADR(eUSSMEMAStat3);
	p_eUSSMEMAStatus3 ACCESS ADR(eUSSMEMAStatus3);
	p_bUSSMEMATransporting3 ACCESS ADR(bUSSMEMATransporting3);
	p_bUSSMEMAConvStart3 ACCESS ADR(bUSSMEMAConvStart3);
	p_bUSSMEMAConvStop3 ACCESS ADR(bUSSMEMAConvStop3);
	
	//Lifter Conv
	p_eLifter2Stat ACCESS ADR(eLifter2Stat);
	p_eLifter2Status ACCESS ADR(eLifter2Status);
	p_eLifterMagConvStat ACCESS ADR(eLifterMagConvStat);
	p_eLifterMagConvStatus ACCESS ADR(eLifterMagConvStatus);
	p_eLifterMagConv2Stat ACCESS ADR(eLifterMagConv2Stat);
	p_eLifterMagConv2Status ACCESS ADR(eLifterMagConv2Status);
	//IN out mag conv
	p_eInMagConvStat ACCESS ADR(eInMagConvStat);
	p_eInMagConvStatus ACCESS ADR(eInMagConvStatus);
	p_eOutMagConvStat ACCESS ADR(eOutMagConvStat);
	p_eOutMagConvStatus ACCESS ADR(eOutMagConvStatus);
	p_eInMagConv2Stat ACCESS ADR(eInMagConv2Stat);
	p_eInMagConv2Status ACCESS ADR(eInMagConv2Status);
	p_eOutMagConv2Stat ACCESS ADR(eOutMagConv2Stat);
	p_eOutMagConv2Status ACCESS ADR(eOutMagConv2Status);

	
	p_usiMag1Rdy ACCESS ADR(usiMag1Rdy);
	p_usiMag2Rdy ACCESS ADR(usiMag2Rdy);
	p_bPresentMag1 ACCESS ADR(bPresentMag1);
	p_bPresentMag2 ACCESS ADR(bPresentMag2);

	p_bMagConvLanePrep ACCESS ADR(bMagConvLanePrep);
END_ACTION
