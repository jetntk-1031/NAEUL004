(** 2019-01-30 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use
	tylocalBufferMag.In.eNtParamMag := g_tyNtParamCurr.eProjMag;
	tylocalBufferMag.In.usiProRcpProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;
	tylocalBufferMag.In.bOpsStatusRun := g_tyOps.bStatusRun;
	tylocalBufferMag.In.bBufferMagPresent1 := g_tyBuffer1.bMagPresent;
	tylocalBufferMag.In.bBufferMagPresent2 := g_tyBuffer2.bMagPresent;
	tylocalBufferMag.In.bBufferMagPresent3 := g_tyBuffer3.bMagPresent;
	tylocalBufferMag.In.bDIMagPresentSen1 := g_tyDInput.bMagPresentSen1;
	tylocalBufferMag.In.bDIMagPresentSen2 := g_tyDInput.bMagPresentSen2;
	tylocalBufferMag.In.bDIMagPresentSen3 := g_tyDInput.bMagPresentSen3;
	
	tylocalBufferMag.In.tyBufferStat1 := g_tyBuffer1.tyBufferStat;
	tylocalBufferMag.In.tyBufferStat2 := g_tyBuffer2.tyBufferStat;
	tylocalBufferMag.In.tyBufferStat3 := g_tyBuffer3.tyBufferStat;
	
	tylocalBufferMag.In.bNtParamAutoRcpPrep := g_tyNtParamCurr.bAutoRcpPrep;
	tylocalBufferMag.In.bMcParamAutoRcpDis  := g_tyMcParamCurr.bAutoRcpDisable;
	(* Always Change If Project Change *)
	
END_ACTION
