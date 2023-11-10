(** 2022-10-17 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_SimuRun;
	p_bStop ACCESS p_SimuStop;
	p_bStep ACCESS p_SimuStep;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;


	//OpsCycleTim 
	p_bTravDPosDiff ACCESS p_TravDPosDiff;
	p_bTravEPosDiff ACCESS p_TravEPosDiff;	
	p_bTravFPosDiff ACCESS p_TravFPosDiff;
	p_bLifterBtmSltAPosDiff ACCESS p_LifterBtmSltAPosDiff;
	p_bLifterBtmSltBPosDiff ACCESS p_LifterBtmSltBPosDiff;
	p_bLifterBtmSltCPosDiff ACCESS p_LifterBtmSltCPosDiff;
	p_diLifterBtmCurrSltA ACCESS p_LifterBtmCurrSltA;
	p_diLifterBtmCurrSltB ACCESS p_LifterBtmCurrSltB;
	p_diLifterBtmCurrSltC ACCESS p_LifterBtmCurrSltC;

	p_eOpsTravLifOpsStep ACCESS p_OpsTravLifOpsStep;
	p_eOpsTravLifGotoOpsStep ACCESS p_OpsTravLifGotoOpsStep;
	p_dtTimeCurrDT ACCESS p_TimeCurrDT	;
	p_diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
    p_uiTimeCurrDTStructMS ACCESS p_TimeCurrDTStructMS;
	//p_sProgNm ACCESS p_NtParamSimuTeleNOProgNm;
	
	(* Always Change If Project Change *)
	
END_ACTION
