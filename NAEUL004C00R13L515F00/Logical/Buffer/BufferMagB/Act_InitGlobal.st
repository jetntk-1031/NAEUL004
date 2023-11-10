(** 2019-01-30 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use
	p_eNtParamMag ACCESS p_NtParamProjMag;
	//p_usiMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;
	p_bOpsStatusRun ACCESS p_OpsStatusRun;
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	p_bDIMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bDIMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bDIMagPresentSen3 ACCESS p_DIMagPresentSen3;
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	(* Always Change If Project Change *)
	
END_ACTION
