(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsLifMagULInitDone1 ACCESS p_OpsLifMagULStepInitDone1;
	p_bLinkOpsLifMagULInitDone2 ACCESS p_OpsLifMagULStepInitDone2;
	p_diLinkLifterActualPos ACCESS p_LifterBtmActualPos;
	p_diLinkLifter2ActualPos ACCESS p_Lifter2ActualPos;
	p_diLinkLifterTopPos ACCESS p_McParamLifterTopPos;
	p_diLinkLifterTopPos2 ACCESS p_McParamLifterTopPos2;
	p_bLinkExtStprExtended ACCESS p_PneuNoSenTopExtStprExtended;
	p_bLinkExtStprRetracted ACCESS p_PneuNoSenTopExtStprRetracted;
	p_bLinkExtStpr2Retracted ACCESS p_PneuNoSenTopExtStpr2Retracted;
	p_bLinkInMagConvEntSen ACCESS p_DIInMagConvEntSen;
	p_bLinkInMagConvExtSen ACCESS p_DIInMagConvExtSen;
	p_bLinkInMagConvMidSen ACCESS p_DIInMagConvMidSen;
	p_bLinkInMagConv2EntSen ACCESS p_DIInMagConv2EntSen;
	p_bLinkInMagConv2ExtSen ACCESS p_DIInMagConv2ExtSen;
	p_bLinkInMagConv2MidSen ACCESS p_DIInMagConv2MidSen;
	//	p_bLinkUIMagRun ACCESS p_UIMagRun;
	p_bLinkOpsLifterMagStepEntMag ACCESS p_OpsLifMagULStepEntMag1;
	p_bLinkOpsLifterMagStepExtMag ACCESS p_OpsLifMagULStepExtMag1;
	p_bLinkOpsLifterMagStepEntMag2 ACCESS p_OpsLifMagULStepEntMag2;
	p_bLinkOpsLifterMagStepExtMag2 ACCESS p_OpsLifMagULStepExtMag2;
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
//	p_bEn ACCESS p_OpsLifMagULStepInitDone1;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_eInMagConvStat ACCESS p_InMagConvStat;
	p_eInMagConvStatus ACCESS p_InMagConvStatus;
	p_eInMagConv2Stat ACCESS p_InMagConv2Stat;
	p_eInMagConv2Status ACCESS p_InMagConv2Status;

	p_bInMagConvExtSen ACCESS p_DIInMagConvExtSen;
//	p_bMagHeightChkSen ACCESS p_DIMagHeightChkSen;
	
	p_eLiftMagConvStatus ACCESS p_LifterMagConvStatus;
	p_eLiftMagConv2Status ACCESS p_LifterMagConv2Status;
	
	//AGV
	p_eAGVMagStat ACCESS p_AGVMag1Stat;		
	p_eAGVMagStatus ACCESS p_AGVMag1Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag1McRunRdy;
	//USSOT
	p_eUSSOTStat ACCESS p_USSOT1Stat;
	p_eUSSOTStatus ACCESS p_USSOT1Status;
	p_bUSSOTTransporting ACCESS p_USSOT1Transporting;
	p_bUSSOTConvStart ACCESS p_USSOT1ConvStart;
	p_bUSSOTConvStop ACCESS p_USSOT1ConvStop;
	p_bUSSOTUSRdy ACCESS p_USSOT1USRdy;
	p_eUSSOTStat2 ACCESS p_USSOT2Stat;
	p_eUSSOTStatus2 ACCESS p_USSOT2Status;
	p_bUSSOTTransporting2 ACCESS p_USSOT2Transporting;

	//	p_bMagSelMiniMag ACCESS p_MagRcpCurrRcpMiniMag;

//	p_sProgNm ACCESS p_NtParamOpsULDInMagProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
//	p_bCurtainSensorStat ACCESS p_CurtainSensorStat;
	
	(* Always Change If Project Change *)
	
END_ACTION
