(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalPneu.In.bLinkDIConvClrSen := g_tyDInput.bConvClrSen;
	tylocalPneu.In.bConvPusherReachedRetSlw := g_tyPshrConv.bPshrRetAllwTrav;
	tylocalPneu.In.bLinkDIPusherRetRS := g_tyDInput.bPusherRetRS;
	tylocalPneu.In.eLinkLifterBtmStat := g_tyLifterBtm.eStat;
	tylocalPneu.In.eLinkLifterBtmStatus := g_tyLifterBtm.eStatus;
	tylocalPneu.In.eLinkLifter2Stat := g_tyLifter2.eStat;
	tylocalPneu.In.eLinkLifter2Status := g_tyLifter2.eStatus;

	//Pass Data To Internal Use
	tylocalPneu.In.bSafetyRelaySig 	 	 := g_tyDInput.bSafetyRlySig;
	tylocalPneu.In.udiRstErr := g_tyRstErr.udiReset;
	tylocalPneu.In.bPrep := g_tyNtParamCurr.bProjOutletShut2Prep;
	tylocalPneu.In.bUISimu := g_tyUIOut.bSimuMod;
	tylocalPneu.In.bManual := g_tyUIOut.bMnlMod;
	tylocalPneu.In.bTwoCtrlIn := g_tyNtParamCurr.bOutShutterTwoCtrlIn;
	tylocalPneu.In.sProgNm := g_tyNtParamCurr.sOutShutterProgNm;
	tylocalPneu.In.bExtSen := g_tyDInput.bOutShutterCloseRS2;
	tylocalPneu.In.bRetSen := g_tyDInput.bOutShutterOpenRS2;
	tylocalPneu.In.tExtTO := g_tyNtParamCurr.tOutShutterExtTO;
	tylocalPneu.In.tRetTO := g_tyNtParamCurr.tOutShutterRetTO;
	tylocalPneu.In.bNtParamProjLifter2Prep := g_tyNtParamProjLifter2Prep;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen; //Pneumatic With 2 Sensors	
	(* Always Change If Project Change *)
	tylocalPneu.In.bEn :=  g_tyNtParamCurr.bCurtainSenPrep;
	
	tylocalPneu.In.bExtSafetySen := (tylocalPneu.In.bLinkDIConvClrSen = FALSE) AND (tylocalPneu.In.bLinkDIPusherRetRS OR tylocalPneu.In.bConvPusherReachedRetSlw);
	
	IF g_tyOps.bRun = TRUE THEN
		IF tylocalPneu.In.bNtParamProjLifter2Prep = FALSE  THEN
			IF tylocalPneu.In.eLinkLifterBtmStat = LifterActIdle AND tylocalPneu.In.eLinkLifterBtmStatus <> Busy  THEN // 
				tylocalPneu.In.eAct := g_tyOpsTravLifUL.eOutletPneuAct2;
			ELSE
				tylocalPneu.In.eAct := eAct;
			END_IF
		ELSE
			IF tylocalPneu.In.eLinkLifterBtmStat = LifterActIdle AND tylocalPneu.In.eLinkLifterBtmStatus <> Busy AND tylocalPneu.In.eLinkLifter2Stat = LifterActIdle AND tylocalPneu.In.eLinkLifter2Status <> Busy  THEN // tylocalPneu.In.eLinkLifter2Status <> Busy 
				tylocalPneu.In.eAct := g_tyOpsTravLifUL.eOutletPneuAct2;
			ELSE
				tylocalPneu.In.eAct := eAct;
			END_IF	
		END_IF
	ELSIF tylocalPneu.In.bManual = TRUE OR tylocalPneu.In.bUISimu THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eOutShutterAct2;
	ELSIF tylocalPneu.In.bSimu THEN
		tylocalPneu.In.eAct := g_tySimu1.eOutShutterAct2;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
END_ACTION
