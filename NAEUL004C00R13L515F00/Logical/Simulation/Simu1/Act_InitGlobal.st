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


	p_eInShuttStat ACCESS p_Pneu2SenInShutterStat;
	p_eInShuttStatus ACCESS p_Pneu2SenInShutterStatus;
	
	p_eOutShuttStat ACCESS p_Pneu2SenOutShutterStat;
	p_eOutShuttStatus ACCESS p_Pneu2SenOutShutterStatus;
	
	p_eOutShutt2Stat ACCESS p_Pneu2SenOutShutterStat2;
	p_eOutShutt2Status ACCESS p_Pneu2SenOutShutterStatus2;
	
	p_eOutShutt3Stat ACCESS p_Pneu2SenOutShutterStat3;
	p_eOutShutt3Status ACCESS p_Pneu2SenOutShutterStatus3;

	
	//p_sProgNm ACCESS p_NtParamSimuTeleNOProgNm;
	
	(* Always Change If Project Change *)
	
END_ACTION
