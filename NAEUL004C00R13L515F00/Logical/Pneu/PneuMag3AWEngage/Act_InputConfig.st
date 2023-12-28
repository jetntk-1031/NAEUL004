
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep 				 := g_tyNtParamCurr.bProjMagAWPrep;
	tylocalPneu.In.bDis 				 := g_tyMcParamCurr.bMagAWDis;
	tylocalPneu.In.bManual 				 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn 			 := g_tyNtParamCurr.bMag3AWEngageTwoCtrlIn;
	tylocalPneu.In.sProgNm 				 := g_tyNtParamCurr.sMag3AWEngageProgNm;
	tylocalPneu.In.bExtSen 				 := g_tyDInput.bMag3WallEngageRS;
	tylocalPneu.In.bRetSen 				 := g_tyDInput.bMag3WallDisengageRS;
	tylocalPneu.In.tExtTO 				 := g_tyNtParamCurr.tMag3AWEngageExtTO;
	tylocalPneu.In.tRetTO 				 := g_tyNtParamCurr.tMag3AWEngageRetTO;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen;
	
	IF g_tyStartUp.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsMagConvUL3MagAWEngageAct;
	ELSIF tylocalPneu.In.bManual = TRUE THEN
		tylocalPneu.In.eAct := g_tyUIMag3AWEngageAct;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
	
END_ACTION
