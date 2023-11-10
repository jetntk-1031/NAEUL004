(** 2019-10-30 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	
	p_bManual ACCESS ADR(bManual);
	p_bOnDirMod ACCESS ADR(bOnDirMod);
	p_diInitTm ACCESS ADR(diInitTm);
	p_tMtrOffDlyTm ACCESS ADR(tMtrOffDlyTm);
	p_diTxInTimeOut ACCESS ADR(diTxInTimeOut);
	p_diTxOutTimeOut ACCESS ADR(diTxOutTimeOut);
	p_eDirection ACCESS ADR(eDirection);
	p_sProgNm ACCESS ADR(sProgNm);
	p_tClprClampTO ACCESS ADR(tClprClampTO);
	p_tClprUnclampTO ACCESS ADR(tClprUnclampTO);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_bLeftSen ACCESS ADR(bLeftSen);
	p_bRightSen ACCESS ADR(bRightSen);
	p_bFixClprClampSen ACCESS ADR(bFixClprClampSen);
	p_bFixClprUnclampSen ACCESS ADR(bFixClprUnclampSen);
	p_bFixClprClampSafetySen ACCESS ADR(bFixClprClampSafetySen);
	p_bFixClprUnclampSafetySen ACCESS ADR(bFixClprUnclampSafetySen);
	p_bRmtClprClampSen ACCESS ADR(bRmtClprClampSen);
	p_bRmtClprUnclampSen ACCESS ADR(bRmtClprUnclampSen);
	p_bRmtClprClampSafetySen ACCESS ADR(bRmtClprClampSafetySen);
	p_bRmtClprUnclampSafetySen ACCESS ADR(bRmtClprUnclampSafetySen);
	p_bWidthChkSenPrep ACCESS ADR (bWidthChkPrep);
	
END_ACTION
