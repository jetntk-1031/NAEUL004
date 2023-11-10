(** 2019-01-20 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_sProgNm ACCESS ADR(sProgNm);
	p_tyAGVToDTMag ACCESS ADR(tyAGVToDTMag);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_diTxInTimeOut ACCESS ADR(diTxInTimeOut);
	p_diTxOutTimeOut ACCESS ADR(diTxOutTimeOut);
	p_eDirection ACCESS ADR(eDirection);
	p_bBufferMagPresent ACCESS ADR(bBufferMagPresent);
	p_bMagConvLftSen ACCESS ADR(bMagConvLftSen);
	p_bMagConvRgtSen ACCESS ADR(bMagConvRgtSen);
	p_bMagConvMtrIn ACCESS ADR(bMagConvMtrIn);
	p_bMagConvMtrOut ACCESS ADR(bMagConvMtrOut);
	p_bAGVInPosSen1	ACCESS ADR(bAGVInPosSen1);
	p_bAGVInPosSen2	ACCESS ADR(bAGVInPosSen2);
	p_bNtParamAGVInPosSenPrep ACCESS ADR(bNtParamAGVInPosSenPrep);
END_ACTION
