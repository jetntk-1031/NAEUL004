(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkDISafetyRlySig				 := g_tyDISafetyRlySig;
	tylocalPneu.In.udiRstErr		 	 := g_tyRstErrOut.udiRstErr;
	tylocalPneu.In.bPrep 	 			 := g_tyNtParamCurr.bMagAutoVerifyPrep;
	tylocalPneu.In.bManual		  	 	 := g_tyUIOut.bUIManualMod;
	tylocalPneu.In.bTwoCtrlIn		 	 := g_tyNtParamCurr.bSelClamp1TwoCtrlIn;
	tylocalPneu.In.sProgNm			 	 := g_tyNtParamCurr.sSelClamp1ProgNm;
	tylocalPneu.In.bExtSen 				 := g_tyDIMag1SelUnclampRS;
	//tylocalPneu.In.bRetSen := g_tyDIOutShutterOpenRS;
	tylocalPneu.In.tExtTO 				 := g_tyNtParamCurr.SelClamp1ExtDlyTm;
	tylocalPneu.In.tRetTO 				 := g_tyNtParamCurr.SelClamp1RetDlyTm;
	tylocalPneu.In.ePneuSel				 := Pneu2Sen;
	(* Always Change If Project Change *)
	tylocalPneu.In.bRetSen := NOT(tylocalPneu.In.bExtSen);
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalPneu.In.eAct := g_tyOpsMagConvUL1.eSelClampCtrl;
	ELSIF tylocalPneu.In.bManual = TRUE THEN
		tylocalPneu.In.eAct := g_tyUIOut.eMnlAct.eMagConvSelClp1Act;
	ELSE
		tylocalPneu.In.eAct := eAct;
	END_IF
END_ACTION
