(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkDIInMagConvExtSen ACCESS p_DIInMagConvExtSen;
	p_bLinkDIOutMagConvEntSen ACCESS p_DIOutMagConvEntSen;
	p_bLinkDIOutMagConvMidSen ACCESS p_DIOutMagConvMidSen;
	
	p_bLinkDIInMagConv2ExtSen ACCESS p_DIInMagConv2ExtSen; 
	p_bLinkDIOutMagConv2EntSen ACCESS p_DIOutMagConv2EntSen; 
	p_bLinkDIOutMagConv2MidSen ACCESS p_DIOutMagConv2MidSen; 
	
	p_bOpsOutMagConvStepInitDone ACCESS p_OpsOutMagConvStepInitDone;
	p_bOpsOutMagConv2StepInitDone ACCESS p_OpsOutMagConv2StepInitDone;
	
	p_bLinkOpsMnlUnloadMag ACCESS p_UIOpsMnlUnloadMag; //no use
	p_bLinkOpsOutMagConvStepWaitRmv ACCESS p_OpsOutMagConvStepWaitToRmvMag;
	p_bLinkOpsOutMagConv2StepWaitRmv ACCESS p_OpsOutMagConv2StepWaitToRmvMag;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsMagUL1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifULMagDis;
	pa_bMagRej ACCESS p_OpsTravLifULMagRej;
	p_bUnloadMag ACCESS p_UIUnloadMag;
	p_bLinkFollower2USAllow ACCESS p_Follower2USAllow;
	p_eNtParamProjMagBuffferActLoad	ACCESS p_NtParamProjMagBuffferActLoad;
	
	p_bConvInitDone ACCESS p_OpsTravLifULInitDone;
	p_bConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bConvGdBrd ACCESS p_PshrConvGdBrd;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bMagPresentSen1 ACCESS p_DIMagPresentSen1; // == lifterlimitSW ,no need assign again
	p_bMagPresentSen2 ACCESS p_DIMagPresentSen2; // == lifterlimitSW2,no need assign again
	p_bMagPresentSen3 ACCESS p_DIMagPresentSen3;
	
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_eLifterStat ACCESS p_LifterBtmStat;
	p_eLifterStatus ACCESS p_LifterBtmStatus;
	
	p_eBufferStat1 ACCESS p_Buffer1Stat;
	p_eBufferStatus1 ACCESS p_Buffer1Status;
	
	p_eBufferStat2 ACCESS p_Buffer2Stat;
	p_eBufferStatus2 ACCESS p_Buffer2Status;
	
	p_eBufferStat3 ACCESS p_Buffer3Stat;
	p_eBufferStatus3 ACCESS p_Buffer3Status;
	
	p_eUSSMEMAStat1 ACCESS p_USSMEMA1Stat;
	p_eUSSMEMAStatus1 ACCESS p_USSMEMA1Status;
	p_bUSSMEMATransporting1 ACCESS p_USSMEMA1Transporting;
	p_bUSSMEMAConvStart1 ACCESS p_USSMEMA1ConvStart;
	p_bUSSMEMAConvStop1 ACCESS p_USSMEMA1ConvStop;
	
	p_eUSSMEMAStat2 ACCESS p_USSMEMA2Stat;
	p_eUSSMEMAStatus2 ACCESS p_USSMEMA2Status;
	p_bUSSMEMATransporting2 ACCESS p_USSMEMA2Transporting;
	p_bUSSMEMAConvStart2 ACCESS p_USSMEMA2ConvStart;
	p_bUSSMEMAConvStop2 ACCESS p_USSMEMA2ConvStop;
	
	p_eUSSMEMAStat3 ACCESS p_USSMEMA3Stat;
	p_eUSSMEMAStatus3 ACCESS p_USSMEMA3Status;
	p_bUSSMEMATransporting3 ACCESS p_USSMEMA3Transporting;
	p_bUSSMEMAConvStart3 ACCESS p_USSMEMA3ConvStart;
	p_bUSSMEMAConvStop3 ACCESS p_USSMEMA3ConvStop;
	
	p_bDIInShutterOpenRS ACCESS p_DIInShutterOpenRS;
	p_bDIInShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bDIOutShutterOpenRS ACCESS p_DIOutShutterOpenRS;
	p_bDIOutShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	
	p_bDIPusherRetRS ACCESS p_DIPusherRetRS;
	
	p_sProdRcpCurrRcp1Name ACCESS p_ProdRcpCurrRcp1Nm;
	p_sProdRcpCurrRcp2Name ACCESS p_ProdRcpCurrRcp2Nm;
	
	//Lifter Conv
	p_eLifter2Stat ACCESS p_Lifter2Stat;
	p_eLifter2Status ACCESS p_Lifter2Status;
	p_eLifterMagConvStat ACCESS p_LifterMagConvStat;
	p_eLifterMagConvStatus ACCESS p_LifterMagConvStatus;
	p_eLifterMagConv2Stat ACCESS p_LifterMagConv2Stat;
	p_eLifterMagConv2Status ACCESS p_LifterMagConv2Status;
	//IN out mag conv
	p_eInMagConvStat ACCESS p_InMagConvStat;
	p_eInMagConvStatus ACCESS p_InMagConvStatus;
	p_eOutMagConvStat ACCESS p_OutMagConvStat;
	p_eOutMagConvStatus ACCESS p_OutMagConvStatus;
	p_eInMagConv2Stat ACCESS p_InMagConv2Stat;
	p_eInMagConv2Status ACCESS p_InMagConv2Stat;
	p_eOutMagConv2Stat ACCESS p_OutMagConv2Stat;
	p_eOutMagConv2Status ACCESS p_OutMagConv2Stat;

	p_bMagConvLanePrep ACCESS p_NtParamProjMagConvLane1Prep;
	p_bMagConvLane2Prep ACCESS p_NtParamProjMagConvLane2Prep;
	p_bNtParamProjLifter2Prep ACCESS p_NtParamProjLifter2Prep;
	p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended;
	
	p_bEn ACCESS p_NtParamProjLifterMagPlatform; // Added 

	(* Always Change If Project Change *)
	
END_ACTION
