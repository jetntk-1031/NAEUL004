(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_tyLinkUsrFolderAlmData ACCESS p_UsrFolderAlmData;
	p_tyLinkLibVerAlmData ACCESS p_LibVerAlmData;
	p_tyLinkTimeAlmData ACCESS p_TimeAlmData;
	p_tyLinkTimeAlmData1 ACCESS p_TimeAlmData1;
	p_tyLinkHWInfoAlmData ACCESS p_HWInfoAlmData;
	p_tyLinkProdRcpAlmData ACCESS p_ProdRcpAlmData;
	p_tyLinkMpProdRcpAlmData ACCESS p_MpProdRcpAlmData;
	p_tyLinkMagRcpAlmData ACCESS p_MagRcpAlmData;
	p_tyLinkMcParamAlmData ACCESS p_McParamAlmData;
	p_tyLinkNtParamAlmData ACCESS p_NtParamAlmData;
	p_tyLinkUsrMgmtAlmData ACCESS p_UsrMgmtAlmData;
	p_tyLinkBuffer1AlmData ACCESS p_Buffer1AlmData;
	p_tyLinkBuffer2AlmData ACCESS p_Buffer2AlmData;
	p_tyLinkBuffer3AlmData ACCESS p_Buffer3AlmData;
	p_tyLinkUSSMEMAAAlmData ACCESS p_USSMEMAAAlmData;
	p_tyLinkUSSMEMABAlmData ACCESS p_USSMEMABAlmData;
	p_tyLinkUSSMEMA1AlmData ACCESS p_USSMEMA1AlmData;
	p_tyLinkUSSMEMA2AlmData ACCESS p_USSMEMA2AlmData;
	p_tyLinkUSSMEMA3AlmData ACCESS p_USSMEMA3AlmData;
	p_tyLinkDSSMEMA1AlmData ACCESS p_DSSMEMA1AlmData;
	p_tyLinkDSSMEMA2AlmData ACCESS p_DSSMEMA2AlmData;
	p_tyLinkDSSMEMA3AlmData ACCESS p_DSSMEMA3AlmData;
	p_tyLinkInShutterAlmData ACCESS p_Pneu2SenInShutterAlmData;
	p_tyLinkOutShutterAlmData ACCESS p_Pneu2SenOutShutterAlmData;
	p_tyLinkOutShutterAlmData2 ACCESS p_Pneu2SenOutShutterAlmData2;
	p_tyLinkOutShutterAlmData3 ACCESS p_Pneu2SenOutShutterAlmData3;
	p_tyLinkStopperAAlmData ACCESS p_PneuNoSenStopperAAlmData;
	p_tyLinkStopperBAlmData ACCESS p_PneuNoSenStopperBAlmData;
	p_tyLinkPshrConvAlmData ACCESS p_PshrConvAlmData;
	p_tyLinkMagConv1AlmData ACCESS p_MagConv2Clp1AlmData;
	p_tyLinkMagConv2AlmData ACCESS p_MagConv2Clp2AlmData;
	p_tyLinkMagConv3AlmData ACCESS p_MagConv2Clp3AlmData;
	p_tyLinkAWOpenAlmData ACCESS p_AWOpenAlmData;
	p_tyLinkAWOpenAlmData1 ACCESS p_AWOpenAlmData1;
	p_tyLinkAWOpenAlmData2 ACCESS p_AWOpenAlmData2;
	p_tyLinkAWOpenAlmData3 ACCESS p_AWOpenAlmData3;
	p_tyLinkTravAlmData ACCESS p_TravAlmData;
	p_tyLinkTravAlmData1 ACCESS p_TravAlmData1;
	p_tyLinkTravAlmData2 ACCESS p_TravAlmData2;
	p_tyLinkTravAlmData3 ACCESS p_TravAlmData3;
	p_tyLinkLifterBtmAlmData ACCESS p_LifterBtmAlmData;
	p_tyLinkLifterBtmAlmData1 ACCESS p_LifterBtmAlmData1;
	p_tyLinkLifterBtmAlmData2 ACCESS p_LifterBtmAlmData2;
	p_tyLinkLifterBtmAlmData3 ACCESS p_LifterBtmAlmData3;
	p_tyLinkDIAlmData1 ACCESS p_DIAlmData1;
	p_tyLinkDIAlmData2 ACCESS p_DIAlmData2;
	p_tyLinkDIAlmData3 ACCESS p_DIAlmData3;
	p_tyLinkDIAlmData4 ACCESS p_DIAlmData4;
	p_tyLinkDIAlmData5 ACCESS p_DIAlmData5;
	p_tyLinkDIAlmData6 ACCESS p_DIAlmData6;
	p_tyLinkAGVMag1AlmData ACCESS p_AGVMag1AlmData;
	p_tyLinkAGVMag2AlmData ACCESS p_AGVMag2AlmData;
	p_tyLinkAGVMag3AlmData ACCESS p_AGVMag3AlmData;
	p_tyLinkHermesAlmData ACCESS p_HermesAlmData;
	p_tyLinkUSHermesAAlmData ACCESS p_USHermesAAlmData;
	p_tyLinkUSHermesAAlmData1 ACCESS p_USHermesAAlmData1;
	p_tyLinkUSHermesAAlmData2 ACCESS p_USHermesAAlmData2;
	p_tyLinkUSHermesAAlmData3 ACCESS p_USHermesAAlmData3;
	p_tyLinkUSHermesAAlmData4 ACCESS p_USHermesAAlmData4;
	p_tyLinkUSHermesAAlmData5 ACCESS p_USHermesAAlmData5;
	p_tyLinkUSHermesAInfoData ACCESS p_USHermesAInfoData;
	p_tyLinkUSHermesBAlmData ACCESS p_USHermesBAlmData;
	p_tyLinkUSHermesBAlmData1 ACCESS p_USHermesBAlmData1;
	p_tyLinkUSHermesBAlmData2 ACCESS p_USHermesBAlmData2;
	p_tyLinkUSHermesBAlmData3 ACCESS p_USHermesBAlmData3;
	p_tyLinkUSHermesBAlmData4 ACCESS p_USHermesBAlmData4;
	p_tyLinkUSHermesBAlmData5 ACCESS p_USHermesBAlmData5;
	p_tyLinkUSHermesBInfoData ACCESS p_USHermesBInfoData;
	p_tyLinkRmtHermesAlmData ACCESS p_RmtHermesAlmData;
	p_tyLinkRmtHermesAlmData1 ACCESS p_RmtHermesAlmData1;
	p_tyLinkRmtHermesAlmData2 ACCESS p_RmtHermesAlmData2;
	p_tyLinkRmtHermesAlmData3 ACCESS p_RmtHermesAlmData3;
	//Svy Hermes
	p_tyLinkSvyHermesAlmData ACCESS p_SvyHermesAlmData;
	p_tyLinkSvyHermesAlmData1 ACCESS p_SvyHermesAlmData1;
	p_tyLinkSvyHermesAlmData2 ACCESS p_SvyHermesAlmData2;
	p_tyLinkSvyHermesAlmData3 ACCESS p_SvyHermesAlmData3;
	p_tyLinkSvyHermesAlmData4 ACCESS p_SvyHermesAlmData4;
	p_tyLinkSvyHermesInfoData ACCESS p_SvyHermesInfoData;
	p_tyLinkSvyHermesInfoData1 ACCESS p_SvyHermesInfoData1;
	p_tyLinkSvyHermesInfoData2 ACCESS p_SvyHermesInfoData2;
	p_tyLinkSvyHermesInfoData3 ACCESS p_SvyHermesInfoData3;
	p_tyLinkSvyHermesInfoData4 ACCESS p_SvyHermesInfoData4;
	
	
	p_tyLinkLFLeaderAlmData ACCESS p_LFLeaderAlmData;
	p_tyLinkLFFollowerAlmData ACCESS p_LFFollowerAlmData;
	p_tyLinkLFFollowerInfoData ACCESS p_LFFollowerInfoData;
	p_tyLinkLFFollowerInfoData1 ACCESS p_LFFollowerInfoData1;
	p_tyLinkFollower1AlmData ACCESS p_Follower1AlmData;
	p_tyLinkFollower1InfoData ACCESS p_Follower1InfoData;
	p_tyLinkFollower1InfoData1 ACCESS p_Follower1InfoData1;
	p_tyLinkFollower2AlmData ACCESS p_Follower2AlmData;
	p_tyLinkFollower2InfoData ACCESS p_Follower2InfoData;
	p_tyLinkFollower2InfoData1 ACCESS p_Follower2InfoData1;
	p_tyLinkLCSMngRcpAlmData ACCESS p_LCSMngRcpAlmData;
	p_tyLinkLCSLFAlmData ACCESS p_LCSLFAlmData;
	p_tyLinkLCSLFInfoData ACCESS p_LCSLFInfoData;
	p_tyLinkOpsTravLifULAlmData ACCESS p_OpsTravLifULAlmData;
//	p_tyLinkOpsMagUL1AlmData ACCESS p_OpsMagUL1AlmData;
//	p_tyLinkOpsMagUL1AlmData1 ACCESS p_OpsMagUL1AlmData1;
//	p_tyLinkOpsMagUL2AlmData ACCESS p_OpsMagUL2AlmData;
//	p_tyLinkOpsMagUL2AlmData1 ACCESS p_OpsMagUL2AlmData1;
//	p_tyLinkOpsMagUL3AlmData ACCESS p_OpsMagUL3AlmData;
//	p_tyLinkOpsMagUL3AlmData1 ACCESS p_OpsMagUL3AlmData1;
	p_tyLinkOpsLifMagULAlmData ACCESS p_OpsLifMagULAlmData;
	p_tyLinkOpsLifMagULAlmData1 ACCESS p_OpsLifMagULAlmData1;
	p_tyLinkOpsLifMagULAlmData2 ACCESS p_OpsLifMagULAlmData2;
	
	p_tyLinkOpsMagConvUL1AlmData ACCESS p_OpsMagConvUL1AlmData;
	p_tyLinkOpsMagConvUL1AlmData1 ACCESS p_OpsMagConvUL1AlmData1;
	p_tyLinkOpsMagConvUL2AlmData ACCESS p_OpsMagConvUL2AlmData;
	p_tyLinkOpsMagConvUL2AlmData1 ACCESS p_OpsMagConvUL2AlmData1;
	p_tyLinkOpsMagConvUL3AlmData ACCESS p_OpsMagConvUL3AlmData;
	p_tyLinkOpsMagConvUL3AlmData1 ACCESS p_OpsMagConvUL3AlmData1;
	p_tyLinkMag1SafetyBarAlmData ACCESS p_Pneu2SMag1SafetyBarAlmData;
	p_tyLinkMag2SafetyBarAlmData ACCESS p_Pneu2SMag2SafetyBarAlmData;
	p_tyLinkMag3SafetyBarAlmData ACCESS p_Pneu2SMag3SafetyBarAlmData;
	p_tyLinkMag1AWEngageAlmData ACCESS p_Pneu2SMag1AWEngageAlmData;
	p_tyLinkMag2AWEngageAlmData ACCESS p_Pneu2SMag2AWEngageAlmData;
	p_tyLinkMag3AWEngageAlmData ACCESS p_Pneu2SMag3AWEngageAlmData;
	p_tyLinkMagAWOpen1AlmData ACCESS p_MagAWOpen1AlmData;
	p_tyLinkMagAWOpen1AlmData1 ACCESS p_MagAWOpen1AlmData1;
	p_tyLinkMagAWOpen1AlmData2 ACCESS p_MagAWOpen1AlmData2;
	p_tyLinkMagAWOpen1AlmData3 ACCESS p_MagAWOpen1AlmData3;
	p_tyLinkMagAWOpen2AlmData ACCESS p_MagAWOpen2AlmData;
	p_tyLinkMagAWOpen2AlmData1 ACCESS p_MagAWOpen2AlmData1;
	p_tyLinkMagAWOpen2AlmData2 ACCESS p_MagAWOpen2AlmData2;
	p_tyLinkMagAWOpen2AlmData3 ACCESS p_MagAWOpen2AlmData3;
	p_tyLinkMagAWOpen3AlmData ACCESS p_MagAWOpen3AlmData;
	p_tyLinkMagAWOpen3AlmData1 ACCESS p_MagAWOpen3AlmData1;
	p_tyLinkMagAWOpen3AlmData2 ACCESS p_MagAWOpen3AlmData2;
	p_tyLinkMagAWOpen3AlmData3 ACCESS p_MagAWOpen3AlmData3;
	p_tyLinkMcAlarmData ACCESS p_McAlmData;
	p_tyLinkUSSOT1AlmData ACCESS p_USSOT1AlmData;
	p_tyLinkUSSOT2AlmData ACCESS p_USSOT2AlmData;
	p_tyLinkUSSOT3AlmData ACCESS p_USSOT3AlmData;
	p_tyLinkDSSOT1AlmData ACCESS p_DSSOT1AlmData;
	p_tyLinkDSSOT2AlmData ACCESS p_DSSOT2AlmData;
	p_tyLinkDSSOT3AlmData ACCESS p_DSSOT3AlmData;
	p_tyLinkMag1SelClampAlmData ACCESS p_PneuNoSenSelClamp1AlmData;
	p_tyLinkMag2SelClampAlmData ACCESS p_PneuNoSenSelClamp2AlmData;
	p_tyLinkMag3SelClampAlmData ACCESS p_PneuNoSenSelClamp3AlmData;
	p_tyLinkAGVAlmData1 ACCESS p_AGVAlmData1;
	p_tyLinkAWPushOrPullerAlmData ACCESS p_AWPushOrPullerAlmData;
	p_tyLinkAWPushOrPullerAlmData1 ACCESS p_AWPushOrPullerAlmData1;
	p_tyLinkAWPushOrPullerAlmData2 ACCESS p_AWPushOrPullerAlmData2;
	p_tyLinkAWPushOrPullerAlmData3 ACCESS p_AWPushOrPullerAlmData3;
	p_tyLinkMtrPshrAlmData ACCESS p_MtrPshrAlmData;
	
	//MagConv Alarm
	p_tyLinkTopEntStprAlmData ACCESS p_PneuNoSenTopEntStprAlmData;
	p_tyLinkTopMidStprAlmData ACCESS p_PneuNoSenTopMidStprAlmData;
	p_tyLinkTopExtStprAlmData ACCESS p_PneuNoSenTopExtStprAlmData;
	p_tyLinkBtmMidStprAlmData ACCESS p_PneuNoSenBtmMidStprAlmData;
	p_tyLinkBtmExtStprAlmData ACCESS p_PneuNoSenBtmExtStprAlmData;
	p_tyLinkTopEntStpr2AlmData ACCESS p_PneuNoSenTopEntStpr2AlmData;
	p_tyLinkTopMidStpr2AlmData ACCESS p_PneuNoSenTopMidStpr2AlmData;
	p_tyLinkTopExtStpr2AlmData ACCESS p_PneuNoSenTopExtStpr2AlmData;
	p_tyLinkBtmMidStpr2AlmData ACCESS p_PneuNoSenBtmMidStpr2AlmData;
	p_tyLinkBtmExtStpr2AlmData ACCESS p_PneuNoSenBtmExtStpr2AlmData;

	p_tyLinkInMagConvAlmData ACCESS p_InMagConvAlmData;
	p_tyLinkOutMagConvAlmData ACCESS p_OutMagConvAlmData;
	p_tyLinkInMagConv2AlmData ACCESS p_InMagConv2AlmData;
	p_tyLinkOutMagConv2AlmData ACCESS p_OutMagConv2AlmData;
	p_tyLinkLifterMagConvAlmData ACCESS p_LifterMagConvAlmData;
	p_tyLinkLifterMagConv2AlmData ACCESS p_LifterMagConv2AlmData;
	
	p_bNtParamProjMagConvLane1Prep ACCESS p_NtParamProjMagConvLane1Prep;
	p_bNtParamProjMagConvLane2Prep ACCESS p_NtParamProjMagConvLane2Prep;
	p_tyLinkOpsInMagConvAlmData ACCESS p_OpsInMagConvAlmData;
	p_tyLinkOpsOutMagConvAlmData ACCESS p_OpsOutMagConvAlmData;
	
	p_bNtParamProjLifter2Prep ACCESS p_NtParamProjLifter2Prep;
	p_tyLinkLifter2AlmData ACCESS p_Lifter2AlmData;
	p_tyLinkLifter2AlmData1 ACCESS p_Lifter2AlmData1;
	p_tyLinkLifter2AlmData2 ACCESS p_Lifter2AlmData2;
	p_tyLinkLifter2AlmData3 ACCESS p_Lifter2AlmData3;
	//	p_tyLinkOpsStprAlmData ACCESS p_OpsStprAlmData;
	p_tyLinkPPAlmData ACCESS p_PPAlmData;
	p_tyLinkPPAlmData1 ACCESS p_PPAlmData1;
	p_tyLinkPPAlmData2 ACCESS p_PPAlmData2;
	p_tyLinkPPAlmData3 ACCESS p_PPAlmData3;
	
	p_bNTParamTCPAGVSigPrep ACCESS p_NtParamProjTCPAGVSigPrep;
	p_tyLinkTCPAlmData ACCESS p_TCPAlmData;
	p_tyLinkTCPAlmData ACCESS p_TCPAlmData; //TCPAGV
	p_tyLinkTCPAlmData1 ACCESS p_TCPAlmData1;
	p_tyLinkTCPAlmData2 ACCESS p_TCPAlmData2;
	p_tyLinkTCPAlmData3 ACCESS p_TCPAlmData3;
	
	p_bNtParamTCPScannerPrep ACCESS  p_NtParamProjScanPrep; 
	p_tyLinkTCPTopAlmData ACCESS p_TCPTopAlmData; //TCPScanner
	p_tyLinkTCPBtmAlmData ACCESS p_TCPBtmAlmData;
	
	//Auto Rcp
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_tyLinkAutoRcpAlmData ACCESS  p_AutoRcpAlmData;
	
	
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_eAct ACCESS p_StartupAlarmAct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_udiFileKeepDay ACCESS p_NtParamAlmFileKeepDay;
	p_sProgNm ACCESS p_NtParamAlmProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bStartupUISettingsLoadDone ACCESS p_StartupUISettingsLoadDone;
	// ADD
	
	(* Always Change If Project Change *)
	
END_ACTION
