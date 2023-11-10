(** 2021-04-20 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bManual ACCESS ADR(bManual);
	p_diTransferOutTO ACCESS ADR(diTransferOutTO);
	p_bDirLToR ACCESS ADR(bDirLToR);
	p_bRdySend ACCESS ADR(bRdySend);
	p_bLeftSen ACCESS ADR(bLeftSen);
	p_bRightSen ACCESS ADR(bRightSen);
	p_bComplSigOn ACCESS ADR(bComplSigOn);
	p_bDSB ACCESS ADR(bDSB);
	p_bVirtualEn ACCESS ADR(bVirtualEn);
	p_bDSBVirtual ACCESS ADR(bDSBVirtual);
	p_tRstDlyTm ACCESS ADR(tRstDlyTm);
	p_tSigInChkTm ACCESS ADR(tSigInChkTm);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_bMagSizeLarge ACCESS ADR(bMagSizeLarge);
	
END_ACTION
