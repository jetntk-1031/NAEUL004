(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link

	tylocalMtrPshr.In.bLinkDISafetyRlySig := g_tyDISafetyRlySig;
	tylocalMtrPshr.In.bLinkPshrExtCtrl := g_tyPshrConvPshrExtCtrl;
	tylocalMtrPshr.In.bLinkPshrRetCtrl := g_tyPshrConvPshrRetCtrl;
	tylocalMtrPshr.In.bLinkAlarmSig := g_tyDIMtrPshrAlmSig;
	
	//Pass Data To Internal Use
	tylocalMtrPshr.In.udiRstErr := g_tyRstErrReset;
	tylocalMtrPshr.In.bPrep := g_tyNtParamProjMotorizedPusherPrep;
	tylocalMtrPshr.In.bManual := g_tyUIMnlMod;
	tylocalMtrPshr.In.bDir := g_tyNtParamMtrPshrDir;
	tylocalMtrPshr.In.tExtTO := g_tyNtParamMtrPshrExtTO;
	tylocalMtrPshr.In.tRetTO := g_tyNtParamMtrPshrRetTO;
	tylocalMtrPshr.In.diExtSlowSpd := g_tyNtParamMtrPshrExtSlowSpd;
	tylocalMtrPshr.In.diRetSlowSpd := g_tyNtParamMtrPshrRetSlowSpd;
	tylocalMtrPshr.In.diRetNomSpd := g_tyNtParamMtrPshrRetNomSpd;
	tylocalMtrPshr.In.diRetTorque := g_tyNtParamMtrPshrRetTorq;
	tylocalMtrPshr.In.diStartTorque := g_tyNtParamMtrPshrStartTorq;

	tylocalMtrPshr.In.bExtSen := g_tyDIPusherExtRS;
	tylocalMtrPshr.In.bRetSen := g_tyDIPusherRetRS;
	tylocalMtrPshr.In.bExtSlowSen := g_tyDIPusherExtSlwSen;
	tylocalMtrPshr.In.bRetSlowSen := g_tyDIPusherRetSlwSen;
//	tylocalMtrPshr.In.bAlarmSig := g_tyDIMtrPshrAlmSig;
	tylocalMtrPshr.In.bTorqueSig := g_tyDIMtrPshrTorqueSig;
	
	tylocalMtrPshr.In.bNtParamAutoRcpPrep := g_tyNtParamAutoRcpPrep ;
	tylocalMtrPshr.In.bMcParamAutoRcpDis  := g_tyMcParamAutoRcpDisable;
	(* Always Change If Project Change *)
	
	
		
	IF g_tyOps.bRun THEN
	
		IF (tylocalMtrPshr.Out.eStatus <> Busy AND tylocalMtrPshr.Out.eStatus <> Idle)OR (tylocalMtrPshr.In.bLinkPshrExtCtrl = FALSE AND tylocalMtrPshr.In.bLinkPshrRetCtrl = FALSE)  THEN
			tylocalMtrPshr.In.eAct := MtrPshrActIdle;
		ELSIF tylocalMtrPshr.In.bLinkPshrExtCtrl AND tylocalMtrPshr.In.bLinkPshrRetCtrl = FALSE 
			AND tylocalMtrPshr.In.bExtSen = FALSE
			THEN
			tylocalMtrPshr.In.eAct := MtrPshrActExt;
			
		ELSIF tylocalMtrPshr.In.bLinkPshrExtCtrl = FALSE AND tylocalMtrPshr.In.bLinkPshrRetCtrl
			AND tylocalMtrPshr.In.bRetSen = FALSE
			THEN
			tylocalMtrPshr.In.eAct := MtrPshrActRet;
		END_IF
		
	ELSIF tylocalMtrPshr.In.bManual = TRUE THEN

		IF (tylocalMtrPshr.Out.eStatus <> Busy AND tylocalMtrPshr.Out.eStatus <> Idle)OR (tylocalMtrPshr.In.bLinkPshrExtCtrl = FALSE AND tylocalMtrPshr.In.bLinkPshrRetCtrl = FALSE)  THEN
			tylocalMtrPshr.In.eAct := MtrPshrActIdle;
		ELSIF tylocalMtrPshr.In.bLinkPshrExtCtrl AND tylocalMtrPshr.In.bLinkPshrRetCtrl = FALSE 
			AND tylocalMtrPshr.In.bExtSen = FALSE
			THEN
			tylocalMtrPshr.In.eAct := MtrPshrActExt;
			
		ELSIF tylocalMtrPshr.In.bLinkPshrExtCtrl = FALSE AND tylocalMtrPshr.In.bLinkPshrRetCtrl
			AND tylocalMtrPshr.In.bRetSen = FALSE
			THEN
			tylocalMtrPshr.In.eAct := MtrPshrActRet;
		END_IF

		
	ELSE
		tylocalMtrPshr.In.eAct := MtrPshrActIdle;
	END_IF
END_ACTION
