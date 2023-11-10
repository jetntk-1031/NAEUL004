(** 2019-07-03 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_sFileName ACCESS ADR(sFileName);
	p_bManual ACCESS ADR(bManual);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_diMinSlt ACCESS ADR(diMinSlt);
	p_diMaxSlt ACCESS ADR(diMaxSlt);
	p_diPitch ACCESS ADR(diPitch);
	p_diSltCap ACCESS ADR(diSltCap);
	p_diBffrTtlSlt ACCESS ADR(diBffrTtlSlt);
	p_diCoolTm ACCESS ADR(diCoolTm);
	p_diSltToSltInUM ACCESS ADR(diSltToSltInUM);
	p_diLifterBtmPosInUM ACCESS ADR(diLifterBtmPosInUM);
	p_diLifterCurrPosInUM ACCESS ADR(diLifterCurrPosInUM);
	p_bAscending ACCESS ADR(bAscending);
	p_bFIFO ACCESS ADR(bFIFO);
	p_bGdBrdIn ACCESS ADR(bGdBrdIn);
	p_bGdBrdReq ACCESS ADR(bGdBrdReq);
	p_bNxtLoadSeq ACCESS ADR(bNxtLoadSeq);
	pa_bSkip ACCESS ADR(a_bSkip);
	p_diCoolFanOffDlyTm ACCESS ADR(diCoolFanOffDlyTm);
	p_bMagPresentSensor ACCESS ADR(bMagPresentSensor);
	p_bPrepCoolFan ACCESS ADR(bPrepCoolFan);
	p_bCoolFanTm ACCESS ADR(bCoolFanTm);
	p_tyBuffer ACCESS ADR(tyBuffer);
	p_tyDispBuffer ACCESS ADR(tyDispBuffer);
	p_tyBufferStat ACCESS ADR(tyBufferStat);
	p_sBffrNm ACCESS ADR(sBffrNm);
	p_sProdNm ACCESS ADR(sProdNm);
	p_sBarcode1 ACCESS ADR(sBarcode1);
	p_sBarcode2 ACCESS ADR(sBarcode2);
	p_sCurrRcpNm ACCESS ADR(sCurrRcpNm);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
