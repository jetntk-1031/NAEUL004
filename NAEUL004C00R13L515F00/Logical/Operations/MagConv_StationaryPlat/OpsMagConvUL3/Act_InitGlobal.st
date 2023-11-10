(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkDIMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bLinkMagConv2Clp1MtrIn ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bLinkMagConv2Clp1MtrOut ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bLinkDIMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bLinkMagConv2Clp2MtrIn ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bLinkMagConv2Clp2MtrOut ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bLinkDIMagPresentSen3 ACCESS p_DIMagPresentSen3;
	p_bLinkMagConv2Clp3MtrIn ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bLinkMagConv2Clp3MtrOut ACCESS p_MagConv2Clp3MtrDirOrRToL;
	
	p_bLinkFixedMagClampRS1 ACCESS p_DIMag1FixedClampRS;
	p_bLinkRmtMagClampRS1 ACCESS p_DIMag1RemoteClampRS;
	
	p_bLinkFixedMagClampRS2 ACCESS p_DIMag2FixedClampRS;
	p_bLinkRmtMagClampRS2 ACCESS p_DIMag2RemoteClampRS;
	
	p_bLinkFixedMagClampRS3 ACCESS p_DIMag3FixedClampRS;
	p_bLinkRmtMagClampRS3 ACCESS p_DIMag3RemoteClampRS;
	
	p_bLinkDIMagEntrySen ACCESS p_DIMagConvEntSen3;
	p_bLinkMcParamMagAutoDetTm ACCESS p_McParamMagAutoDetTm;
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bLinkMagRcpCurrRcpMagModel ACCESS p_MagRcpCurrRcpMagModel;
	
	p_bLinkNewMagVerified1 ACCESS p_OpsMagConvUL1NewMagVerified;
	p_bLinkNewMagVerified2 ACCESS p_OpsMagConvUL2NewMagVerified;
	p_bLinkNewMagVerified3 ACCESS p_OpsMagConvUL3NewMagVerified;
	
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;
	
	p_bMag3OrientationChkSen1 ACCESS p_DIMag3OrientChkSen1;
	
	//Magazine Height Detection
	p_bMagHeightDetSen3			ACCESS p_DIHighMagDetSen3;
	p_bMagHeightDetEn 			ACCESS p_MagRcpCurrRcpMagHeightChkEn;	
	p_bMagHeightDetPrep			ACCESS p_NtParamProjMagHeightChkPrep;
	
	p_bProjLifTravMnlLoad ACCESS p_NtParamProjLifTravMnlLoad;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bEn ACCESS p_NtParamProjMag3ConvPrep;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsMagConvUL3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifULMagDis;
	pa_bMagRej ACCESS p_OpsTravLifULMagRej;
//	p_bUSAllow ACCESS p_Follower2USAllow;

	
	p_bNewMag ACCESS p_UINewMag3;
	p_bRlsMag ACCESS p_UIRlsMag3;
	
	p_bConvInitDone ACCESS p_OpsTravLifULInitDone;
	p_bConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bConvGdBrd ACCESS p_PshrConvGdBrd;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bMagEntrySen ACCESS p_DIMagConvEntSen3;
	p_bMagEntrySen1 ACCESS p_DIMagConvEntSen1;
	p_bMagEntrySen2 ACCESS p_DIMagConvEntSen2;
	p_bMagEntrySen3 ACCESS p_DIMagConvEntSen3;
	
	p_bMagPresentSen ACCESS p_DIMagPresentSen3;
	p_bMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bMagPresentSen3 ACCESS p_DIMagPresentSen3;
	
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_eBufferStat ACCESS p_Buffer3Stat;
	p_eBufferStatus ACCESS p_Buffer3Status;
	
	p_bBufferMagRemoved ACCESS p_Buffer3MagRemoved;
	
	p_eMagConv2ClpStat ACCESS p_MagConv2Clp3Stat;
	p_eMagConv2ClpStatus ACCESS p_MagConv2Clp3Status;
	p_bMagConv2ClpHvMag ACCESS p_MagConv2Clp3HvMag;
	
	p_eUSSMEMAStat ACCESS p_USSMEMA3Stat;
	p_eUSSMEMAStatus ACCESS p_USSMEMA3Status;
	p_bUSSMEMATransporting ACCESS p_USSMEMA3Transporting;
	p_bUSSMEMAConvStart ACCESS p_USSMEMA3ConvStart;
	p_bUSSMEMAConvStop ACCESS p_USSMEMA3ConvStop;
	
	p_eAGVMagStat ACCESS p_AGVMag3Stat;
	p_eAGVMagStatus ACCESS p_AGVMag3Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag3McRunRdy;
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	
	p_eSelClampCtrlStat ACCESS p_PneuNoSenSelClamp3Stat;
	p_eSelClampCtrlStatus ACCESS p_PneuNoSenSelClamp3Status;
	

	
	
	p_bDIMagConvHeightSen ACCESS p_DIMagConvHeightSen3;
	p_bDIMagConvSelUnclampRS ACCESS p_DIMag3SelUnclampRS;
	p_bDIMagConvCAB717Sen ACCESS p_DIMagConvCAB717MagSen3;
	p_bDIMagConvSmallSen ACCESS p_DIMagConvSmallMagSen3;
	p_bDIMagConvLargeSen ACCESS p_DIMagConvLargeMagSen3;
	p_bDIOutShutterClosedRS ACCESS p_DIOutShutterCloseRS;
	p_bDIOutShutterClosedRS3 ACCESS p_DIOutShutterCloseRS3;
	p_bNtParamProjOutletShut3Prep ACCESS p_NtParamProjOutletShut3Prep;
	
	p_eNtParamProjMagBuffferActLoad	ACCESS p_NtParamProjMagBuffferActLoad;
	
	p_eSafetyBarStat ACCESS p_Pneu2SMag3SafetyBarStat;
	p_eSafetyBarStatus ACCESS p_Pneu2SMag3SafetyBarStatus;
	p_bSafetyBarExtended ACCESS p_Pneu2SMag3SafetyBarExtended;
	p_bSafetyBarRetracted ACCESS p_Pneu2SMag3SafetyBarRetracted;
	
	p_eMagAWEngageStat ACCESS p_Pneu2SMag3AWEngageStat;
	p_eMagAWEngageStatus ACCESS p_Pneu2SMag3AWEngageStatus;
	
	p_eMagAWStat ACCESS p_MagAWOpen3Stat;
	p_eMagAWStatus ACCESS p_MagAWOpen3Status;
	p_bMagAWEngaging ACCESS p_MagAWOpen3Engaging;
	p_bMagAWErr ACCESS p_MagAWOpen3AxisErr;
	p_bMagAWOpenLimit ACCESS p_MagAWOpen3OpenSen;
	p_bMagAWCloseLimit ACCESS p_MagAWOpen3CloseSen;
	
	//USSOT
	p_eUSSOTStat ACCESS p_USSOT3Stat;
	p_eUSSOTStatus ACCESS p_USSOT3Status;
	p_bUSSOTTransporting ACCESS p_USSOT3Transporting;
	p_bUSSOTConvStart ACCESS p_USSOT3ConvStart;
	p_bUSSOTConvStop ACCESS p_USSOT3ConvStop;
	p_bUSSOTUSRdy ACCESS p_USSOT3USRdy;
	p_bUSSOTUSLargeMagRdy ACCESS p_USSOT3USLargeMagRdy;
		
	//DSSOT
	p_eDSSOTStat ACCESS p_DSSOT3Stat;
	p_eDSSOTStatus ACCESS p_DSSOT3Status;
	p_bDSSOTConvStart ACCESS p_DSSOT3ConvStart;
	p_bDSSOTConvStop ACCESS p_DSSOT3ConvStop;
	
	p_bOpsTravLifExitBrd ACCESS p_OpsTravLifULExitBrd;
	p_bOpsTravLifMov ACCESS p_OpsTravLifULTravLifMov;
	
	p_bSelfTest ACCESS p_OpsTravLifULSelfTest;
	
	p_bMcParamMagAWDis ACCESS p_McParamMagAWDis;
	p_bDISOTRcv ACCESS p_DISOT3Receive;
	p_bDISOTAGVReady ACCESS p_DISOT3Ready;
	
	p_eConvStat ACCESS p_PshrConvStat;
	p_eConvStatus ACCESS p_PshrConvStatus;
	
	p_sProdRcpCurrRcp1Name ACCESS p_ProdRcpCurrRcp1Nm;
	p_sProdRcpCurrRcp2Name ACCESS p_ProdRcpCurrRcp2Nm;
	
	p_bOpsTravLifErrCmdUnclmp ACCESS p_OpsTravLifWChkErrCmdUnclmp3;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	
	pa_bMagChangeOverBlk ACCESS p_AutoRcpbMagChangeOverBlk;
	p_bMagPropDiffBlk ACCESS p_AutoRcpbMag3PropDiffBlk;
	p_bChgMagWidth ACCESS p_AutoRcpbMag3WidthChg;
	p_bChgMagSlot ACCESS p_AutoRcpbMag3SlotChg;
	
	p_bMagOrientChkSenPrep ACCESS p_NtParamProjMagOrientChkSenPrep;
	p_bDIMagFixedClampSen ACCESS p_DIMag3FixedClampSen;
	
	p_eCustomerReq ACCESS p_NtParamCustomerReq;
	//For Siemen
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv3;
	p_bOpsTravLifAllwExitMag ACCESS p_OpsTravLifAllwExitMag3;
	p_diMcParamMESResponseTO ACCESS p_McParamMESResponseTO;
	p_bMcParamMESEn ACCESS p_McParamMESEn;
	p_bAutoRcpForceExitMag ACCESS p_AutoRcpForceExitMag; //for switching Product
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_dtOpsMagConvUL1AcptTm ACCESS p_OpsMagConvUL1AcptTm;
	p_dtOpsMagConvUL2AcptTm ACCESS p_OpsMagConvUL2AcptTm;
	p_iOpsMagConvUL1MESAcptCond ACCESS p_OpsMagConvUL1MESAcptCond;
	p_iOpsMagConvUL2MESAcptCond ACCESS p_OpsMagConvUL2MESAcptCond;
	p_bOpsMagConvUL1MagExitedWait ACCESS p_OpsMagConvUL1MagExitedWait;
	p_bOpsMagConvUL2MagExitedWait ACCESS p_OpsMagConvUL2MagExitedWait;
	(* Always Change If Project Change *)
	
	//Manual Flush when different Horizontal Com Mod
	p_usiUIHcomModchanged ACCESS p_UIHcomModchanged;
	
END_ACTION
