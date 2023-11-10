(** 2019-04-04 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bPrepExtdd ACCESS ADR(bPrepExtdd);
	p_bEnExtdd ACCESS ADR(bEnExtdd);
	p_bDisExtdd ACCESS ADR(bDisExtdd);
	p_bBGRun ACCESS ADR(bBGRun);
	p_bManual ACCESS ADR(bManual);
	p_diMinBffr ACCESS ADR(diMinBffr);
	p_diAddBffr ACCESS ADR(diAddBffr);
	p_diBffrMtySlt ACCESS ADR(diBffrMtySlt);
	p_diBrdPerSlt ACCESS ADR(diBrdPerSlt);
	p_bCntUp ACCESS ADR(bCntUp);
	p_bCntDown ACCESS ADR(bCntDown);
	p_diSetBrdInOven ACCESS ADR(diSetBrdInOven);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
