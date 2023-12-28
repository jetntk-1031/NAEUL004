(** 2019-04-09 **)
ACTION Act_InputConfig:
	
// Input: Assign From Machine Parameter/Nutek Parameter/Digital input&output/Required Triggering Flags From Other Packages	
	//Pass Data To Link
	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep			  	 := g_tyNtParamCurr.bProjInletShutPrep;
	tylocalPneu.In.bDis			  	 	 := g_tyMcParamCurr.bInShutterDis;
	tylocalPneu.In.bUISimu		  	 	 := g_tyUIOut.bSimuMod;
	tylocalPneu.In.bManual		  	 	 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn		 	 := g_tyNtParamCurr.bInShutterTwoCtrlIn;
	tylocalPneu.In.sProgNm			 	 := g_tyNtParamCurr.sInShutterProgNm;
	tylocalPneu.In.bExtSen			 	 := g_tyDInput.bInShutterCloseRS;
	tylocalPneu.In.bRetSen			 	 := g_tyDInput.bInShutterOpenRS;
	
	tylocalPneu.In.tExtTO			 	 := g_tyNtParamCurr.tInShutterExtTO;
	tylocalPneu.In.tRetTO		 	     := g_tyNtParamCurr.tInShutterRetTO ;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen; //Pneumatic With 2 Sensors	
	
	
	//Link bPrep, bEn & bDis
	IF g_tyStartUp.bRun THEN
		tylocalPneu.In.bDis	 := p_bLinkMcParamInShutDis AND g_tyOpsTravLifUL.bInitDone;
	ELSE
		tylocalPneu.In.bDis	 := FALSE;
	END_IF
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsTravLifUL.eInletPneuAct;
	ELSIF tylocalPneu.In.bManual = TRUE OR tylocalPneu.In.bUISimu THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eInShutterAct;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
	
	(* Always Change If Project Change *)
	
END_ACTION
