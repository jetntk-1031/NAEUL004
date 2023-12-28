
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep 				 := g_tyNtParamCurr.bProjMagAWPrep;
	tylocalPneu.In.bDis 				 := g_tyMcParamCurr.bMagAWDis;
	tylocalPneu.In.bManual 				 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn 			 := g_tyNtParamCurr.bMag2AWEngageTwoCtrlIn;
	tylocalPneu.In.sProgNm 				 := g_tyNtParamCurr.sMag2AWEngageProgNm;
	tylocalPneu.In.bExtSen 				 := g_tyDInput.bMag2WallEngageRS;
	tylocalPneu.In.bRetSen 				 := g_tyDInput.bMag2WallDisengageRS;
	tylocalPneu.In.tExtTO 				 := g_tyNtParamCurr.tMag2AWEngageExtTO;
	tylocalPneu.In.tRetTO 				 := g_tyNtParamCurr.tMag2AWEngageRetTO;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen;
	
	IF g_tyStartUp.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsMagConvUL2MagAWEngageAct;
	ELSIF tylocalPneu.In.bManual = TRUE THEN
		tylocalPneu.In.eAct := g_tyUIMag2AWEngageAct;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
	
END_ACTION
