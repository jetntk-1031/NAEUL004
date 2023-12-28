
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)

	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.bMagRcpCurrRcpSBarDisabled ACCESS p_MagRcpCurrRcpSBarDisabled;
	
	//Pass Data To Internal Use
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep := g_tyNtParamCurr.bProjMagSafetyBarPrep;
//	tylocalPneu.In.bDis := g_tyMcParamMagAWDis;
	tylocalPneu.In.bManual := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn := g_tyNtParamCurr.bMag3SafetyBarTwoCtrlIn;
	tylocalPneu.In.sProgNm := g_tyNtParamCurr.aMag3SafetyBarProgNm;
	tylocalPneu.In.bExtSen := g_tyDIMag3SafetyBarExtRS;
	tylocalPneu.In.bRetSen := g_tyDIMag3SafetyBarRetRS;
	tylocalPneu.In.tExtTO := g_tyNtParamCurr.tMag3SafetyBarExtTO;
	tylocalPneu.In.tRetTO := g_tyNtParamCurr.tMag3SafetyBarRetTO;
	tylocalPneu.In.bNtSettingsLoadDone := g_tyStartupNtSettingsLoadDone;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen;

	//Link bPrep, bEn & bDis
	IF g_tyStartUp.bRun AND tylocalPneu.In.bPrep THEN
		tylocalPneu.In.bDis := tylocalPneu.In.bMagRcpCurrRcpSBarDisabled;
	ELSE
		tylocalPneu.In.bDis := FALSE;
	END_IF
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsMagConvUL3.eSafetyBarAct;
	ELSIF tylocalPneu.In.bManual = TRUE THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eMag3SafetyBarAct;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
	
END_ACTION
