(** 2019-03-25 **)
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
	p_bClprClampSen ACCESS ADR(bClprClampSen);
	p_bClprUnclampSen ACCESS ADR(bClprUnclampSen);
	p_bClprClampSafetySen ACCESS ADR(bClprClampSafetySen);
	p_bClprUnclampSafetySen ACCESS ADR(bClprUnclampSafetySen);
	
END_ACTION
