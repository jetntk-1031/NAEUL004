(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	p_bLinkNtParamMagConv1Prep ACCESS p_NtParamProjMag1ConvPrep;
	p_bLinkNtParamMagConv2Prep ACCESS p_NtParamProjMag2ConvPrep;
	p_bLinkNtParamMagConv3Prep ACCESS p_NtParamProjMag3ConvPrep;
	p_bLinkUSHermesABlkUS ACCESS p_USHermesABlkUS;
	p_bLinkUSHermesBBlkUS ACCESS p_USHermesBBlkUS;
	p_bLinkFollower1USAllow ACCESS p_Follower1USAllow;
	p_bLinkFollower2DSAllow ACCESS p_Follower2DSAllow;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_bLinkDIPshrAntiJamSen ACCESS p_DIPshrAntiJamSen;
	p_bLinkCurtainSen ACCESS p_DICurtainSen;
	p_bLinkPshrRetSen ACCESS p_DIPusherRetRS;
	
	p_diBuffer1NxtLoadSlt ACCESS p_Buffer1NxtLoadSlt;
	p_diBuffer2NxtLoadSlt ACCESS p_Buffer2NxtLoadSlt;
	p_diBuffer3NxtLoadSlt ACCESS p_Buffer3NxtLoadSlt;
	
	p_diMinSlt ACCESS p_ProdRcpCurrRcp1MinSltValue;
	p_diMaxSlt ACCESS p_ProdRcpCurrRcp1MaxSltValue;
	
	p_bTopToBtm ACCESS p_ProdRcpCurrRcp1TopToBtm;
	
	p_bLinkMcParamMagWidthChkDis ACCESS p_McParamMagWidthChkDis;

	
	//p_bMagWidthChkDis
	p_sLinkProdRcpCurrRcp1Nm ACCESS p_ProdRcpCurrRcp1Nm;
	p_diLinkProdRcpCurrRcp1Pitch ACCESS p_ProdRcpCurrRcp1Pitch;
	p_sLinkMagRcpCurrRcpNm ACCESS p_MagRcpCurrRcpNm;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	
	p_tShutterWaitTmr ACCESS p_NtParamShutterWaitTmr;
	p_bCurtainSenPrep ACCESS p_NtParamCurtainSenPrep;
	
	
	p_sProgNm ACCESS p_NtParamOpsTravLifULProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_eULMag ACCESS p_NtParamProjMag;
	p_bInShutDis ACCESS p_McParamInShutterDis;
	
	
	p_eUSCommMod1 ACCESS p_McParamUSCommAMod;
	p_eUSCommMod2 ACCESS p_McParamUSCommBMod;
	
	p_eUSSMEMAStat1 ACCESS p_USSMEMAAStat;
	p_eUSSMEMAStatus1 ACCESS p_USSMEMAAStatus;
	p_bUSSMEMAUSRdy1 ACCESS p_USSMEMAAUSRdy;
	p_bUSSMEMAGdBrdRdy1 ACCESS p_USSMEMAAUSGdBrdRdy;
	p_bUSSMEMATransporting1 ACCESS p_USSMEMAATransporting;
	p_bUSSMEMAConvStart1 ACCESS p_USSMEMAAConvStart;
	p_bUSSMEMAConvStop1 ACCESS p_USSMEMAAConvStop;
	
	p_eUSSMEMAStat2 ACCESS p_USSMEMABStat;
	p_eUSSMEMAStatus2 ACCESS p_USSMEMABStatus;
	p_bUSSMEMAUSRdy2 ACCESS p_USSMEMABUSRdy;
	p_bUSSMEMAGdBrdRdy2 ACCESS p_USSMEMABUSGdBrdRdy;
	p_bUSSMEMATransporting2 ACCESS p_USSMEMABTransporting;
	p_bUSSMEMAConvStart2 ACCESS p_USSMEMABConvStart;
	p_bUSSMEMAConvStop2 ACCESS p_USSMEMABConvStop;
	
	p_eDSSMEMAStat1 ACCESS p_DSSMEMA1Stat;
	p_eDSSMEMAStatus1 ACCESS p_DSSMEMA1Status;
	p_bDSSMEMADSRdy1 ACCESS p_DSSMEMA1DSRdy;
	p_bDSSMEMAConvStart1 ACCESS p_DSSMEMA1ConvStart;
	
	p_eDSSMEMAStat2 ACCESS p_DSSMEMA2Stat;
	p_eDSSMEMAStatus2 ACCESS p_DSSMEMA2Status;
	p_bDSSMEMADSRdy2 ACCESS p_DSSMEMA2DSRdy;
	p_bDSSMEMAConvStart2 ACCESS p_DSSMEMA2ConvStart;
	
	p_eDSSMEMAStat3 ACCESS p_DSSMEMA3Stat;
	p_eDSSMEMAStatus3 ACCESS p_DSSMEMA3Status;
	p_bDSSMEMADSRdy3 ACCESS p_DSSMEMA3DSRdy;
	p_bDSSMEMAConvStart3 ACCESS p_DSSMEMA3ConvStart;
	
	p_bUSHermesUSRdy1 ACCESS p_USHermesAUSRdy;
	p_bUSHermesUSGdRdy1 ACCESS p_USHermesAUSGdRdy;
	p_bUSHermesTransporting1 ACCESS p_USHermesATransporting;
	p_bUSHermesStopTransport1 ACCESS p_USHermesAStopTransport;
	
	p_bUSHermesUSRdy2 ACCESS p_USHermesBUSRdy;
	p_bUSHermesUSGdRdy2 ACCESS p_USHermesBUSGdRdy;
	p_bUSHermesTransporting2 ACCESS p_USHermesBTransporting;
	p_bUSHermesStopTransport2 ACCESS p_USHermesBStopTransport;
	
	p_eConvStat ACCESS p_PshrConvStat;
	p_eConvStatus ACCESS p_PshrConvStatus;
	p_eConvDir ACCESS p_NtParamProjConvDir;
	p_bConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bConvGdBrd ACCESS p_PshrConvGdBrd;
	
	p_eAWStat ACCESS p_AWOpenStat;
	p_eAWStatus ACCESS p_AWOpenStatus;
	p_bAWWidthPosDiff ACCESS p_AWOpenWidthPosDiff;
	
	p_eTravStat ACCESS p_TravStat;
	p_eTravStatus ACCESS p_TravStatus;
	
//	p_eLifStat ACCESS p_LifterBtmStat;
//	p_eLifStatus ACCESS p_LifterBtmStatus;
	
	p_eInletPneuStat ACCESS p_Pneu2SenInShutterStat;
	p_eInletPneuStatus ACCESS p_Pneu2SenInShutterStatus;
	p_bInletPneuCls ACCESS p_Pneu2SenInShutterExtended;
	
	p_eOutletPneuStat ACCESS p_Pneu2SenOutShutterStat;
	p_eOutletPneuStatus ACCESS p_Pneu2SenOutShutterStatus;
	
	p_eOutletPneuStat2 ACCESS p_Pneu2SenOutShutterStat2;
	p_eOutletPneuStatus2 ACCESS p_Pneu2SenOutShutterStatus2;
	
	p_eOutletPneuStat3 ACCESS p_Pneu2SenOutShutterStat3;
	p_eOutletPneuStatus3 ACCESS p_Pneu2SenOutShutterStatus3;
	
	p_eStopperStat1 ACCESS p_PneuNoSenStopperAStat;
	p_eStopperStatus1 ACCESS p_PneuNoSenStopperAStatus;
	p_bStopperBlk1 ACCESS p_PneuNoSenStopperAExtended;
	
	p_eStopperStat2 ACCESS p_PneuNoSenStopperBStat;
	p_eStopperStatus2 ACCESS p_PneuNoSenStopperBStatus;
	p_bStopperBlk2 ACCESS p_PneuNoSenStopperBExtended;
	
	p_eStopperStat3 ACCESS p_PneuNoSenStopperCStat;
	p_eStopperStatus3 ACCESS p_PneuNoSenStopperCStatus;
	p_bStopperBlk3 ACCESS p_PneuNoSenStopperCExtended;
	
	p_bConvLftSen ACCESS p_DIConvLftSen;
	p_bConvMidSen ACCESS p_DIConvMidSen;
	p_bConvRgtSen ACCESS p_DIConvRgtSen;
	p_bConvClrSen ACCESS p_DIConvClrSen;
	p_bConvLineAInletSen ACCESS p_DIConvLineAInletSen;
	p_bConvLineBInletSen ACCESS p_DIConvLineBInletSen;
	
	p_bBufferMagPresent1 ACCESS p_Buffer1MagPresent;
	p_bBufferMagPresent2 ACCESS p_Buffer2MagPresent;
	p_bBufferMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_bBufferMagDet1 ACCESS p_DIMagPresentSen1;
	p_bBufferMagDet2 ACCESS p_DIMagPresentSen2;
	p_bBufferMagDet3 ACCESS p_DIMagPresentSen3;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_bTravAPosDiff ACCESS p_TravAPosDiff;
	p_bTravBPosDiff ACCESS p_TravBPosDiff;
	p_bTravPosDiff ACCESS p_TravPosDiff;
//	p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
//	p_bLifterAPosDiff ACCESS p_LifterBtmAPosDiff;
//	p_bLifterBPosDiff ACCESS p_LifterBtmBPosDiff;
	
	p_bDIInShutterOpenRS ACCESS p_DIInShutterOpenRS;
	p_bDIInShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bDIPusherExtRS ACCESS p_DIPusherExtRS;
	p_bDIPusherRetRS ACCESS p_DIPusherRetRS;
	p_bDIOutShutterOpenRS ACCESS p_DIOutShutterOpenRS;
	p_bDIOutShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bDIOutShutterOpenRS2 ACCESS p_DIOutShutterOpenRS2;
	p_bDIOutShutterCloseRS2 ACCESS p_DIOutShutterCloseRS2;
	p_bDIOutShutterOpenRS3 ACCESS p_DIOutShutterOpenRS3;
	p_bDIOutShutterCloseRS3 ACCESS p_DIOutShutterCloseRS3;
	p_bPshrConvPshrRetracted ACCESS p_PshrConvPshrRetracted;
	
	p_bMagWidthChkSenOn ACCESS p_DIMagWidthChkSen;
	
	p_eAWPushOrPullerStat ACCESS p_AWPushOrPullerStat;
	p_eAWPushOrPullerStatus ACCESS p_AWPushOrPullerStatus;
	p_bAWPushOrPullerWidthPosDiff ACCESS p_AWPushOrPullerPosDiff ;
	
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_diProdRcpCurrRcp1Width ACCESS p_ProdRcpCurrRcp1Width;
	p_diProdRcpCurrRcp2Width ACCESS p_ProdRcpCurrRcp2Width;
	
	p_bCurtainSenPB ACCESS p_DICurtainSenPB;
	
	//	p_bScanEn ACCESS p_NtParamProjScanPrep; 		//Scanner
	p_bTopScannerEn ACCESS p_McParamTopScannerEn;
	p_bBtmScannerEn ACCESS p_McParamBtmScannerEn;
	
	p_eTCPTopStat ACCESS p_TCPTopStat;
	p_eTCPTopStatus ACCESS p_TCPTopStatus;
	p_sTopMsgRd ACCESS p_TCPTopFullMsgRd;
	
	p_eTCPBtmStat ACCESS p_TCPBtmStat;
	p_eTCPBtmStatus ACCESS p_TCPBtmStatus;
	p_sBtmMsgRd ACCESS p_TCPBtmFullMsgRd;
	p_bOpConPrep ACCESS p_NtParamProjOpConPrep;
	p_tyPartReceiveRetCode ACCESS p_OpConPartRcvRetCode;
	p_tyOpConPlcGrabRcvCode ACCESS p_OpConPlcGrabRcvCode;
	
	p_bOpsMagConvUL1UnclmpDone ACCESS p_OpsMagConvUL1UnclmpDone; // Access From Mag Conv UL 1,2,3
	p_bOpsMagConvUL2UnclmpDone ACCESS p_OpsMagConvUL2UnclmpDone;
	p_bOpsMagConvUL3UnclmpDone ACCESS p_OpsMagConvUL3UnclmpDone;
	
	p_bNtParamProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	p_bNtParamProjOutletShut2Prep ACCESS p_NtParamProjOutletShut2Prep;
	p_bNtParamProjOutletShut3Prep ACCESS p_NtParamProjOutletShut3Prep;
	
	
	p_bAutoRcpTravWidthDiffBlk ACCESS p_AutoRcpbTravWidthDiffblk;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	//udiPosallow Go
	//p_udiOpsUSPosAllwGo ACCESS p_OpsUSPosAllwGo;
	//p_udiOpsDSPosAllwGo ACCESS p_OpsDSPosAllwGo;
	
	p_eCustomerReq ACCESS p_NtParamCustomerReq;
	//Inlet stopper
	p_bStopperUnBlkCtrl ACCESS p_InletStopperRetCtrl;
	p_eInletStopperStatus ACCESS p_InletStopperStatus;
	p_eInletStopperStat ACCESS p_InletStopperStat;
	p_bInletStopperPrep ACCESS p_NtParamProjInletStopperPrep;
	p_bDIInletStopperASen ACCESS p_DIInletStopperASen;
	p_diMcParamInStprExtDelayTm ACCESS p_McParamInStopperExtDelayTm;
	//OpCon
	p_bLinkOpConEn ACCESS p_McParamOpConEn;
	p_sTopBtmBarcode ACCESS p_USHermesATopBtmBarcode; //receive bc by hermes
	p_MCUL1StepPLCGrab ACCESS p_OpsMagConvUL1StepPLCGrab; //for opcon plcGrab
	p_MCUL2StepPLCGrab ACCESS p_OpsMagConvUL2StepPLCGrab; 
	p_MCUL3StepPLCGrab ACCESS p_OpsMagConvUL3StepPLCGrab; 
	p_bMagPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bMagPresentSen2 ACCESS p_DIMagPresentSen2;
	p_bMagPresentSen3 ACCESS p_DIMagPresentSen3;
	//DMC Scanner
	p_tyNtParamDISettings ACCESS p_NtParamDISettings;
	p_tyNtParamDOSettings ACCESS p_NtParamDOSettings;
	p_bDIPCBScanComplSig ACCESS p_DIPCBScanComplSig;
	//Auto Bypass Curtain
	p_bRlsMag1 ACCESS p_UIRlsMag1 ;
	p_bRlsMag2 ACCESS p_UIRlsMag2;
	p_bRlsMag3 ACCESS p_UIRlsMag3;
	//Pusher Ret to Slow Sensor ,start traverse
	p_bPshrConvPshrRetSlwSen ACCESS p_PshrConvPshrRetAllwTrav;
	p_bMcParamDMCScannerEn ACCESS p_McParamDMCScannerEn;
	p_diMcParamDMCScanResponseTO ACCESS p_McParamDMCScanWriteTO;
	(* Always Change If Project Change *)
	//added
	p_iLifterSltMoved ACCESS p_LifterBtmMovedSlt;
END_ACTION
