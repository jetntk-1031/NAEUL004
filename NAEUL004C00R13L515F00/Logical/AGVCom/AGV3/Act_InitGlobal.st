(** 2018-12-08 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_tyLinkBufferStat ACCESS p_Buffer3BffrStat;
	p_bLinkAGVOnline ACCESS p_AGVOnline;
	p_tyLinkAGVtoDTMag ACCESS p_AGVTagAGVToDTMag;
	p_bLinkProjMag3ConvPrep ACCESS p_NtParamProjMag3ConvPrep;
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_OpsMagConvUL3AGVMagAct;
	p_udiRstErr	ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjAGVPrep;
	p_sProgNm ACCESS p_NtParamAGVMag3ProgNm;
	p_diTxInTimeOut ACCESS p_McParamMag3ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag3ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_bBufferMagPresent ACCESS p_DIMagPresentSen3;
	p_bMagConvLftSen ACCESS p_DIMagPresentSen3;
	p_bMagConvRgtSen ACCESS p_DIMagConvEntSen3;
	p_bMagConvMtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bMagConvMtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bAGVInPosSen1	ACCESS p_DIMag3AIVInPosSen1;
	p_bAGVInPosSen2	ACCESS p_DIMag3AIVInPosSen2;
	p_bNtParamAGVInPosSenPrep ACCESS p_NtParamProjAIVInPosSenPrep;
	p_bSOTRcvOk ACCESS p_DISOT3Receive;
	p_bSOTErr ACCESS p_DISOT3Error;
	p_bSOTRdy ACCESS p_DISOT3Ready;
	p_bSOTAvailable ACCESS p_DISOT3Available;
	p_bEn ACCESS p_McParamAGVComEn;
	(* Always Change If Project Change *)
	
END_ACTION
