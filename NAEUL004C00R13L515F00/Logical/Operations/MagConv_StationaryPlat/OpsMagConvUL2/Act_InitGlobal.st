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
	
	p_bLinkDIMagEntrySen ACCESS p_DIMagConvEntSen2;
	p_bLinkMcParamMagAutoDetTm ACCESS p_McParamMagAutoDetTm;
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bLinkMagRcpCurrRcpMagModel ACCESS p_MagRcpCurrRcpMagModel;
	
	p_bLinkNewMagVerified1 ACCESS p_OpsMagConvUL1NewMagVerified;
	p_bLinkNewMagVerified2 ACCESS p_OpsMagConvUL2NewMagVerified;
	p_bLinkNewMagVerified3 ACCESS p_OpsMagConvUL3NewMagVerified;
	
	p_eLinkMcParamMagExMode ACCESS p_McParamMagExMode;
	
	p_bMag2OrientationChkSen1 ACCESS p_DIMag2OrientChkSen1;
	
	//Magazine Height Detection
	p_bMagHeightDetSen2			ACCESS p_DIHighMagDetSen2;
	p_bMagHeightDetEn 			ACCESS p_MagRcpCurrRcpMagHeightChkEn;
	p_bMagHeightDetPrep			ACCESS p_NtParamProjMagHeightChkPrep;
	
	p_bProjLifTravMnlLoad ACCESS p_NtParamProjLifTravMnlLoad;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bEn ACCESS p_NtParamProjMag2ConvPrep;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_sProgNm ACCESS p_NtParamOpsMagConvUL2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	pa_bMagDis ACCESS p_OpsTravLifULMagDis;
	pa_bMagRej ACCESS p_OpsTravLifULMagRej;
//	p_bUSAllow ACCESS p_Follower2USAllow;
	
	p_bNewMag ACCESS p_UINewMag2;
	p_bRlsMag ACCESS p_UIRlsMag2;
	
	p_bConvInitDone ACCESS p_OpsTravLifULInitDone;
	p_bConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bConvGdBrd ACCESS p_PshrConvGdBrd;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bMagEntrySen ACCESS p_DIMagConvEntSen2;
	p_bMagEntrySen1 ACCESS p_DIMagConvEntSen1;
	p_bMagEntrySen2 ACCESS p_DIMagConvEntSen2;
	p_bMagEntrySen3 ACCESS p_DIMagConvEntSen3;
	
	p_bMagPresentSen ACCESS p_DIMagPresentSen2;
	p_bMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bMagPresentSen3 ACCESS p_DIMagPresentSen3;
	
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_eBufferStat ACCESS p_Buffer2Stat;
	p_eBufferStatus ACCESS p_Buffer2Status;
	
	p_bBufferMagRemoved ACCESS p_Buffer2MagRemoved;
	
	p_eMagConv2ClpStat ACCESS p_MagConv2Clp2Stat;
	p_eMagConv2ClpStatus ACCESS p_MagConv2Clp2Status;
	p_bMagConv2ClpHvMag ACCESS p_MagConv2Clp2HvMag;
	
	p_eUSSMEMAStat ACCESS p_USSMEMA2Stat;
	p_eUSSMEMAStatus ACCESS p_USSMEMA2Status;
	p_bUSSMEMATransporting ACCESS p_USSMEMA2Transporting;
	p_bUSSMEMAConvStart ACCESS p_USSMEMA2ConvStart;
	p_bUSSMEMAConvStop ACCESS p_USSMEMA2ConvStop;
	
	p_eAGVMagStat ACCESS p_AGVMag2Stat;
	p_eAGVMagStatus ACCESS p_AGVMag2Status;
	p_bAGVMagMcRunRdy ACCESS p_AGVMag2McRunRdy;
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	
	p_eSelClampCtrlStat ACCESS p_PneuNoSenSelClamp2Stat;
	p_eSelClampCtrlStatus ACCESS p_PneuNoSenSelClamp2Status;
	
	
	
	p_bDIMagConvHeightSen ACCESS p_DIMagConvHeightSen2;
	p_bDIMagConvSelUnclampRS ACCESS p_DIMag2SelUnclampRS;
	p_bDIMagConvCAB717Sen ACCESS p_DIMagConvCAB717MagSen2;
	p_bDIMagConvSmallSen ACCESS p_DIMagConvSmallMagSen2;
	p_bDIMagConvLargeSen ACCESS p_DIMagConvLargeMagSen2;
	p_bDIOutShutterClosedRS ACCESS p_DIOutShutterCloseRS;
	p_bDIOutShutterClosedRS2 ACCESS p_DIOutShutterCloseRS2;
	p_bNtParamProjOutletShut2Prep ACCESS p_NtParamProjOutletShut2Prep;
	
	p_eNtParamProjMagBuffferActLoad	ACCESS p_NtParamProjMagBuffferActLoad;
	
	p_eSafetyBarStat ACCESS p_Pneu2SMag2SafetyBarStat;
	p_eSafetyBarStatus ACCESS p_Pneu2SMag2SafetyBarStatus;
	p_bSafetyBarExtended ACCESS p_Pneu2SMag2SafetyBarExtended;
	p_bSafetyBarRetracted ACCESS p_Pneu2SMag2SafetyBarRetracted;
	
	p_eMagAWEngageStat ACCESS p_Pneu2SMag2AWEngageStat;
	p_eMagAWEngageStatus ACCESS p_Pneu2SMag2AWEngageStatus;
	
	p_eMagAWStat ACCESS p_MagAWOpen2Stat;
	p_eMagAWStatus ACCESS p_MagAWOpen2Status;
	p_bMagAWEngaging ACCESS p_MagAWOpen2Engaging;
	p_bMagAWErr ACCESS p_MagAWOpen2AxisErr;
	p_bMagAWOpenLimit ACCESS p_MagAWOpen2OpenSen;
	p_bMagAWCloseLimit ACCESS p_MagAWOpen2CloseSen;
	
	//USSOT
	p_eUSSOTStat ACCESS p_USSOT2Stat;
	p_eUSSOTStatus ACCESS p_USSOT2Status;
	p_bUSSOTTransporting ACCESS p_USSOT2Transporting;
	p_bUSSOTConvStart ACCESS p_USSOT2ConvStart;
	p_bUSSOTConvStop ACCESS p_USSOT2ConvStop;
	p_bUSSOTUSRdy ACCESS p_USSOT2USRdy;
	p_bUSSOTUSLargeMagRdy ACCESS p_USSOT2USLargeMagRdy;
		
	//DSSOT
	p_eDSSOTStat ACCESS p_DSSOT2Stat;
	p_eDSSOTStatus ACCESS p_DSSOT2Status;
	p_bDSSOTConvStart ACCESS p_DSSOT2ConvStart;
	p_bDSSOTConvStop ACCESS p_DSSOT2ConvStop;
	
	p_bOpsTravLifExitBrd ACCESS p_OpsTravLifULExitBrd;
	p_bOpsTravLifMov ACCESS p_OpsTravLifULTravLifMov;
	
	p_bSelfTest ACCESS p_OpsTravLifULSelfTest;
	
	p_bMcParamMagAWDis ACCESS p_McParamMagAWDis;
	p_bDISOTRcv ACCESS p_DISOT2Receive;
	p_bDISOTAGVReady ACCESS p_DISOT2Ready;
	
	p_eConvStat ACCESS p_PshrConvStat;
	p_eConvStatus ACCESS p_PshrConvStatus;
	
	p_sProdRcpCurrRcp1Name ACCESS p_ProdRcpCurrRcp1Nm;
	p_sProdRcpCurrRcp2Name ACCESS p_ProdRcpCurrRcp2Nm;
	
	p_bOpsTravLifErrCmdUnclmp ACCESS p_OpsTravLifWChkErrCmdUnclmp2;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	
	pa_bMagChangeOverBlk ACCESS p_AutoRcpbMagChangeOverBlk;
	p_bMagPropDiffBlk ACCESS p_AutoRcpbMag2PropDiffBlk;
	p_bChgMagWidth ACCESS p_AutoRcpbMag2WidthChg;
	p_bChgMagSlot ACCESS p_AutoRcpbMag2SlotChg;
	
	p_bMagOrientChkSenPrep ACCESS p_NtParamProjMagOrientChkSenPrep;
	p_bDIMagFixedClampSen ACCESS p_DIMag2FixedClampSen;
	
	p_eCustomerReq ACCESS p_NtParamCustomerReq;
	//For Siemen
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv2;
	p_bOpsTravLifAllwExitMag ACCESS p_OpsTravLifAllwExitMag2;
	p_diMcParamMESResponseTO ACCESS p_McParamMESResponseTO;
	p_bMcParamMESEn ACCESS p_McParamMESEn;
	p_bAutoRcpForceExitMag ACCESS p_AutoRcpForceExitMag; //for switching Product
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_dtOpsMagConvUL1AcptTm ACCESS p_OpsMagConvUL1AcptTm;
	p_dtOpsMagConvUL3AcptTm ACCESS p_OpsMagConvUL3AcptTm;
	p_iOpsMagConvUL1MESAcptCond ACCESS p_OpsMagConvUL1MESAcptCond;
	p_iOpsMagConvUL3MESAcptCond ACCESS p_OpsMagConvUL3MESAcptCond;
	p_bOpsMagConvUL1MagExitedWait ACCESS p_OpsMagConvUL1MagExitedWait;
	p_bOpsMagConvUL3MagExitedWait ACCESS p_OpsMagConvUL3MagExitedWait;
	
	//Manual Flush when different Horizontal Com Mod
	p_usiUIHcomModchanged ACCESS p_UIHcomModchanged;
	(* Always Change If Project Change *)

	
END_ACTION
