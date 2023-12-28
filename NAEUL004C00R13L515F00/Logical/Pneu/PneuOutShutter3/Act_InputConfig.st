(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkDIConvClrSen ACCESS p_DIConvClrSen;
	p_bLinkDIPusherRetRS ACCESS p_DIPusherRetRS;
	p_bConvPusherReachedRetSlw ACCESS p_PshrConvPshrRetAllwTrav;
	p_eLinkLifterBtmStat ACCESS p_LifterBtmStat;
	p_eLinkLifterBtmStatus ACCESS p_LifterBtmStatus;
	p_eLinkLifter2Stat ACCESS p_Lifter2Stat;
	p_eLinkLifter2Status ACCESS p_Lifter2Status;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjOutletShut3Prep;
	p_bUISimu ACCESS p_UISimuMod;
	p_bManual ACCESS p_UIMnlMod;
	p_bSimu ACCESS p_SimuRun;
	p_bTwoCtrlIn ACCESS p_NtParamOutShutterTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamOutShutterProgNm;
	p_bExtSen ACCESS p_DIOutShutterCloseRS3;
	p_bRetSen ACCESS p_DIOutShutterOpenRS3;
	p_tExtTO ACCESS p_NtParamOutShutterExtTO;
	p_tRetTO ACCESS p_NtParamOutShutterRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bNtParamProjLifter2Prep ACCESS p_NtParamProjLifter2Prep;
	(* Always Change If Project Change *)
	
END_ACTION
