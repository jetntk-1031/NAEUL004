(** 2018-12-08 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_tyLinkBufferStat ACCESS p_Buffer2BffrStat;
	p_bLinkAGVOnline ACCESS p_AGVOnline;
	p_tyLinkAGVtoDTMag ACCESS p_AGVTagAGVToDTMag;
	p_bLinkProjMag2ConvPrep ACCESS p_NtParamProjMag2ConvPrep;
	p_bLinkProjMagConvLane2Prep ACCESS p_NtParamProjMagConvLane2Prep;

	//Pass Data To Internal Use
//	p_eAct ACCESS p_OpsMagConvUL2AGVMagAct;
	p_udiRstErr	ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjAGVPrep;
	p_sProgNm ACCESS p_NtParamAGVMag2ProgNm;
	p_diTxInTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_bBufferMagPresent ACCESS p_DIMagPresentSen2;
	p_bMagConvLftSen ACCESS p_DIMagPresentSen2;
	p_bMagConvRgtSen ACCESS p_DIMagConvEntSen2;
	p_bMagConvMtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bMagConvMtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bAGVInPosSen1	ACCESS p_DIMag2AIVInPosSen1;
	p_bAGVInPosSen2	ACCESS p_DIMag2AIVInPosSen2;
	p_bNtParamAGVInPosSenPrep ACCESS p_NtParamProjAIVInPosSenPrep;
	p_bSOTRcvOk ACCESS p_DISOT2Receive;
	p_bSOTErr ACCESS p_DISOT2Error;
	p_bSOTRdy ACCESS p_DISOT2Ready;
	p_bSOTAvailable ACCESS p_DISOT2Available;
	p_bEn ACCESS p_McParamAGVComEn;
	(* Always Change If Project Change *)
	
END_ACTION
