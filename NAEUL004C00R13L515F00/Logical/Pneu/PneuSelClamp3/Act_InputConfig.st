(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkDISafetyRlySig 				 := g_tyDISafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep 	 			 := g_tyNtParamCurr.bMagAutoVerifyPrep;
	tylocalPneu.In.bManual		  	 	 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn		 	 := g_tyNtParamCurr.bSelClamp3TwoCtrlIn;
	tylocalPneu.In.sProgNm			 	 := g_tyNtParamCurr.sSelClamp3ProgNm;
	tylocalPneu.In.bExtSen 				 := g_tyDIMag3SelUnclampRS;
	//tylocalPneu.In.bRetSen := g_tyDIOutShutterOpenRS;
	tylocalPneu.In.tExtTO 				 := g_tyNtParamCurr.SelClamp3ExtDlyTm;
	tylocalPneu.In.tRetTO 				 := g_tyNtParamCurr.SelClamp3RetDlyTm;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen;
	(* Always Change If Project Change *)
	tylocalPneu.In.bRetSen := NOT(tylocalPneu.In.bExtSen);
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsMagConvUL3.eSelClampCtrl;
	ELSIF tylocalPneu.In.bManual = TRUE THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eMagConvSelClp3Act;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
END_ACTION
