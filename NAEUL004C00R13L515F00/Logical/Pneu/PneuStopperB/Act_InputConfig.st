(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link

	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep			  	 := g_tyNtParamCurr.bProjStopperBPrep;
	tylocalPneu.In.bDis			  	 	 := g_tyMcParamCurr.bStopperBDis;
	
	tylocalPneu.In.bManual		  	 	 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn		 	 := g_tyNtParamCurr.bStopperBTwoCtrlIn;
	tylocalPneu.In.sProgNm			 	 := g_tyNtParamCurr.sStopperBProgNm;

	tylocalPneu.In.tExtTO			 	 := g_tyNtParamCurr.tStopperBExtDlyTm;
	tylocalPneu.In.tRetTO		 	     := g_tyNtParamCurr.tStopperBRetDlyTm ;
	tylocalPneu.In.ePneuSel				 := PneuNoSen; //Pneumatic With 2 Sensors	



	IF g_tyOps.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsTravLifUL.eStopperAct2;
	ELSIF tylocalPneu.In.bManual = TRUE OR tylocalPneu.In.bUISimu THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eStopperBAct;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF


END_ACTION
