(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkPshrExtCtrl ACCESS p_PshrConvPshrExtCtrl;
	p_bLinkPshrRetCtrl ACCESS p_PshrConvPshrRetCtrl;
	p_bLinkAlarmSig ACCESS p_DIMtrPshrAlmSig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMotorizedPusherPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bDir ACCESS p_NtParamMtrPshrDir;
	p_tExtTO ACCESS p_NtParamMtrPshrExtTO;
	p_tRetTO ACCESS p_NtParamMtrPshrRetTO;
	p_diExtSlowSpd ACCESS p_NtParamMtrPshrExtSlowSpd;
	p_diRetSlowSpd ACCESS p_NtParamMtrPshrRetSlowSpd;
	p_diRetNomSpd ACCESS p_NtParamMtrPshrRetNomSpd;
	p_diRetTorque ACCESS p_NtParamMtrPshrRetTorq;
	p_diStartTorque ACCESS p_NtParamMtrPshrStartTorq;
	p_sProgNm ACCESS p_NtParamMtrPshrProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bExtSen ACCESS p_DIPusherExtRS;
	p_bRetSen ACCESS p_DIPusherRetRS;
	p_bExtSlowSen ACCESS p_DIPusherExtSlwSen;
	p_bRetSlowSen ACCESS p_DIPusherRetSlwSen;
//	p_bAlarmSig ACCESS p_DIMtrPshrAlmSig;
	p_bTorqueSig ACCESS p_DIMtrPshrTorqueSig;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	(* Always Change If Project Change *)
	
END_ACTION
