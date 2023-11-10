(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsLifMagULInitDone1 ACCESS p_OpsLifMagULStepInitDone1;
	p_bLinkOpsLifMagULInitDone2 ACCESS p_OpsLifMagULStepInitDone2;
	p_diLinkLifterActualPos ACCESS p_LifterBtmActualPos;
	p_diLinkLifterBtmPos ACCESS p_McParamLifterBtmPos;
	p_diLinkLifter2ActualPos ACCESS p_Lifter2ActualPos;
	p_diLinkLifterBtmPos2 ACCESS p_McParamLifterBtmPos2;
	p_tyLinkBffrStat ACCESS p_Buffer1BffrStat;
	p_tyLinkBffr2Stat ACCESS p_Buffer2BffrStat;
	p_bLinkLifterLmtSW ACCESS p_DILifterLmtSW;
	p_bLinkLifter2LmtSW ACCESS p_DILifter2LmtSW;
	p_bLinkLiftExitMag	ACCESS p_OpsLifMagULStepExtMag1;
	p_bLinkLiftExitMag2	ACCESS p_OpsLifMagULStepExtMag2;
	p_tyLinkDISetting ACCESS p_NtParamDISettings;
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
//	p_bEn ACCESS p_OpsInitULDStepInitDone;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_eOutMagConvStat ACCESS p_OutMagConvStat;
	p_eOutMagConvStatus ACCESS p_OutMagConvStatus;
	p_eOutMagConv2Stat ACCESS p_OutMagConv2Stat;
	p_eOutMagConv2Status ACCESS p_OutMagConv2Status;
	
	p_bEntSen ACCESS p_DIOutMagConvEntSen;
	p_bMidSen ACCESS p_DIOutMagConvMidSen;
	p_bExtSen ACCESS p_DIOutMagConvExtSen;
	p_bEntSen2 ACCESS p_DIOutMagConv2EntSen;
	p_bMidSen2 ACCESS p_DIOutMagConv2MidSen;
	p_bExtSen2 ACCESS p_DIOutMagConv2ExtSen;

	//p_bExitSig ACCESS ADR(bExitSig);
	
	//AGV
	p_eAGVMagStat ACCESS p_AGVMag1Stat;		
	p_eAGVMagStatus ACCESS p_AGVMag1Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag1McRunRdy;
	//DSSOT
	p_eDSSOTStat ACCESS p_DSSOT1Stat;
	p_eDSSOTStatus ACCESS p_DSSOT1Status;
	p_eDSSOTStat2 ACCESS p_DSSOT2Stat;
	p_eDSSOTStatus2 ACCESS p_DSSOT2Status;
	p_bDSSOTTransporting ACCESS p_DSSOT1Transporting;
	p_bDSSOTTransporting2 ACCESS p_DSSOT2Transporting;
	p_bDSSOTConvStart ACCESS p_DSSOT1ConvStart;
	p_bDSSOTConvStop ACCESS p_DSSOT1ConvStop;
	
	p_bOpsMnlUnloadMag ACCESS p_UIOpsMnlUnloadMag;
	p_bOpsMnlUnloadMag2 ACCESS p_UIOpsMnlUnloadMag2;
	
//	p_sProgNm ACCESS p_NtParamOpsULDOutMagProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
