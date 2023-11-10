(** 2018-12-08 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_tyLinkBufferStat ACCESS p_Buffer1BffrStat;
	p_bLinkAGVOnline ACCESS p_AGVOnline;
	p_tyLinkAGVtoDTMag ACCESS p_AGVTagAGVToDTMag;
	p_bLinkProjMag1ConvPrep ACCESS p_NtParamProjMag1ConvPrep;
	p_bLinkProjMagConvLane1Prep ACCESS p_NtParamProjMagConvLane1Prep;
	
	//Pass Data To Internal Use
//	p_eAct ACCESS p_OpsMagConvUL1AGVMagAct;
	p_udiRstErr	ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjAGVPrep;
	p_sProgNm ACCESS p_NtParamAGVMag1ProgNm;
	p_diTxInTimeOut ACCESS p_McParamMag1ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag1ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_bBufferMagPresent ACCESS p_DIMagPresentSen1;
	p_bMagConvLftSen ACCESS p_DIMagPresentSen1;
	p_bMagConvRgtSen ACCESS p_DIMagConvEntSen1;
	p_bMagConvMtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bMagConvMtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bAGVInPosSen1	ACCESS p_DIMag1AIVInPosSen1;
	p_bAGVInPosSen2	ACCESS p_DIMag1AIVInPosSen2;
	p_bNtParamAGVInPosSenPrep ACCESS p_NtParamProjAIVInPosSenPrep;
	p_bSOTRcvOk ACCESS p_DISOT1Receive;
	p_bSOTErr ACCESS p_DISOT1Error;
	p_bSOTRdy ACCESS p_DISOT1Ready;
	p_bSOTAvailable ACCESS p_DISOT1Available;
	p_bEn ACCESS p_McParamAGVComEn;

	(* Always Change If Project Change *)
	
END_ACTION
