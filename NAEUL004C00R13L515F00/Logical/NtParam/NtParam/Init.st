(** 2019-05-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_NtParamStat						:= ADR(eStat);
	p_NtParamStatus						:= ADR(eStatus);
	p_NtParamStatTxt					:= ADR(sStatTxt);
	
	//Alarm
	p_NtParamAlmData					:= ADR(tyAlmData);
	
	//Output
	p_NtParamFileNotFound				:= ADR(bFileNotFound);
	
	p_NtParamCurr						:= ADR(tyNtParamCurr);
	
	p_NtParamDISettings					:= ADR(tyNtParamCurr.tyDISettings);
	p_NtParamDOSettings					:= ADR(tyNtParamCurr.tyDOSettings);
	p_NtParamAWPushPulPrep				:= ADR(tyNtParamCurr.bAWPusherPrep);
	p_NtParamAWPrep						:= ADR(tyNtParamCurr.bAWPrep);
	p_NtParamLFPrep						:= ADR(tyNtParamCurr.bLFPrep);
	p_NtParamLeaderMc					:= ADR(tyNtParamCurr.bLeaderMc);
	p_NtParamLFUsrSetPrep				:= ADR(tyNtParamCurr.bLFUsrSetPrep);
	p_NtParamLFWidth2Prep				:= ADR(tyNtParamCurr.bLFProdWidth2Prep);
	p_NtParamLFWidthLimit				:= ADR(tyNtParamCurr.diLFWidthLimit);
	p_NtParamLFProdWidthChk				:= ADR(tyNtParamCurr.bLFProdWidthChk);
	p_NtParamUSWidthChkPrep				:= ADR(tyNtParamCurr.bUSWidthChkPrep);
	p_NtParamLCSLFPrep					:= ADR(tyNtParamCurr.bLCSLFPrep);
	p_NtParamLCSReqRcpPrep				:= ADR(tyNtParamCurr.bLCSReqRcpPrep);
	p_NtParamLCSManageRcpPrep			:= ADR(tyNtParamCurr.bLCSManageRcpPrep);
	p_NtParamLCSLiveDatPrep				:= ADR(tyNtParamCurr.bLCSLiveDatPrep);
	p_NtParamIPCSMEMA9851ExtdPrep		:= ADR(tyNtParamCurr.bIPCSMEMA9851ExtdPrep);
	p_NtParamVSMEMAPrep					:= ADR(tyNtParamCurr.bVSMEMAPrep);
	p_NtParamHermesPrep					:= ADR(tyNtParamCurr.bHermesPrep);
	p_NtParamHermesRmtPrep				:= ADR(tyNtParamCurr.bHermesRmtPrep);
	p_NtParamOvenInfoPrep				:= ADR(tyNtParamCurr.bOvenInfoPrep);
	p_NtParamOvenInfoExtdPrep			:= ADR(tyNtParamCurr.bOvenInfoExtdPrep);
	p_NtParamSSaverPrep					:= ADR(tyNtParamCurr.bSSaverPrep);
	p_NtParamWidthOffset				:= ADR(tyNtParamCurr.diWidthOffsetInUM);
	p_NtParamPushPulAWidthOffset		:= ADR(tyNtParamCurr.diAWPushPulOffsetInUM);
	p_NtParamJobNo						:= ADR(tyNtParamCurr.sJobNo);
	p_NtParamNtAddr						:= ADR(tyNtParamCurr.usiNtAddr);
	p_NtParamShutterWaitTmr				:= ADR(tyNtParamCurr.tShutterWaitTmr);
	p_NtParamProjAIVInPosSenPrep		:= ADR(tyNtParamCurr.bProjAIVInPosSenPrep);
	p_NtParamProjMagBuffferActLoad		:= ADR(tyNtParamCurr.eProjMagBuffferActLoad);
	p_NtParamProjLifterMagPlatform		:= ADR(tyNtParamCurr.bProjLifterMagPlatform);
	
	p_NtParamProjLaneBPrep				:= ADR(tyNtParamCurr.bProjLaneBPrep);
	p_NtParamProjBrdPerSltPrep			:= ADR(tyNtParamCurr.bProjBrdPerSltPrep);
	p_NtParamProjLongBrdPrep			:= ADR(tyNtParamCurr.bProjLongBrdPrep);
	p_NtParamProjInletShutPrep			:= ADR(tyNtParamCurr.bProjInletShutPrep);
	p_NtParamProjOutletShutPrep			:= ADR(tyNtParamCurr.bProjOutletShutPrep);
	p_NtParamProjOutletShut2Prep		:= ADR(tyNtParamCurr.bProjOutletShut2Prep);
	p_NtParamProjOutletShut3Prep		:= ADR(tyNtParamCurr.bProjOutletShut3Prep);
	p_NtParamProjStopperAPrep			:= ADR(tyNtParamCurr.bProjStopperAPrep);
	p_NtParamProjStopperBPrep			:= ADR(tyNtParamCurr.bProjStopperBPrep);
	p_NtParamProjMag1ConvPrep			:= ADR(tyNtParamCurr.bProjMag1ConvPrep);
	p_NtParamProjMag2ConvPrep			:= ADR(tyNtParamCurr.bProjMag2ConvPrep);
	p_NtParamProjMag3ConvPrep			:= ADR(tyNtParamCurr.bProjMag3ConvPrep);
	p_NtParamProjMagOrientChkSenPrep	:= ADR(tyNtParamCurr.bProjMagOrientChkSenPrep);
	p_NtParamProjAGVPrep				:= ADR(tyNtParamCurr.bProjAGVPrep);
	p_NtParamProjTCPAGVSigPrep			:= ADR(tyNtParamCurr.bProjTCPAGVSigPrep);
	p_NtParamProjBypsInitConvPrep		:= ADR(tyNtParamCurr.bProjBypsInitConvPrep);
	p_NtParamProjRlsNewProdPrep			:= ADR(tyNtParamCurr.bProjRlsNewProdPrep);
	p_NtParamProjBtnInsertRmvMag		:= ADR(tyNtParamCurr.bProjBtnInsertRmvMag);
	p_NtParamProjMagMinSlt				:= ADR(tyNtParamCurr.diProjMagMinSlt);
	p_NtParamProjMagMaxSlt				:= ADR(tyNtParamCurr.diProjMagMaxSlt);
	p_NtParamProjMag					:= ADR(tyNtParamCurr.eProjMag);
	p_NtParamProjConvDir				:= ADR(tyNtParamCurr.eProjConvDir);
	p_NtParamProjMagConvDir				:= ADR(tyNtParamCurr.eProjMagConvDir);
	p_NtParamProjMagAutoVerifyPrep		:= ADR(tyNtParamCurr.bMagAutoVerifyPrep);
	p_NtParamProjMotorizedPusherPrep	:= ADR(tyNtParamCurr.bProjMotorizedPusherPrep);
	p_NtParamProjMagAWPrep				:= ADR(tyNtParamCurr.bProjMagAWPrep);
	p_NtParamProjMagSafetyBarPrep		:= ADR(tyNtParamCurr.bProjMagSafetyBarPrep);
	p_NtParamProjFixClpMagDSenPrep		:= ADR(tyNtParamCurr.bProjFixClprMagDetectSenPrep);
	
	p_NtParamProjLifter2Prep			:= ADR(tyNtParamCurr.bProjLifter2Prep); 
	p_NtParamProjMagConvLane1Prep		:= ADR(tyNtParamCurr.bProjMagConvLane1Prep); //MagConv Lane1 ,2
	p_NtParamProjMagConvLane2Prep		:= ADR(tyNtParamCurr.bProjMagConvLane2Prep);
	p_NtParamProjInMagConvDir			:= ADR(tyNtParamCurr.eProjInMagConvDir);
	p_NtParamProjOutMagConvDir			:= ADR(tyNtParamCurr.eProjOutMagConvDir);
	p_NtParamProjLifterMagConvDir		:= ADR(tyNtParamCurr.eProjLifterMagConvDir);
	p_NtParamProjInMagConv2Dir			:= ADR(tyNtParamCurr.eProjInMagConv2Dir);
	p_NtParamProjOutMagConv2Dir			:= ADR(tyNtParamCurr.eProjOutMagConv2Dir);
	p_NtParamProjLifterMagConv2Dir		:= ADR(tyNtParamCurr.eProjLifterMagConv2Dir);
	
	p_NtParamProjTopEntStprPrep			:= ADR(tyNtParamCurr.bProjTopEntStprPrep);
	p_NtParamProjTopMidStprPrep			:= ADR(tyNtParamCurr.bProjTopMidStprPrep);
	p_NtParamProjTopExtStprPrep			:= ADR(tyNtParamCurr.bProjTopExtStprPrep);
	p_NtParamProjBtmMidStprPrep			:= ADR(tyNtParamCurr.bProjBtmMidStprPrep);
	p_NtParamProjBtmExtStprPrep			:= ADR(tyNtParamCurr.bProjBtmExtStprPrep);
	p_NtParamProjTopEntStprPrep2			:= ADR(tyNtParamCurr.bProjTopEntStprPrep2);
	p_NtParamProjTopMidStprPrep2			:= ADR(tyNtParamCurr.bProjTopMidStprPrep2);
	p_NtParamProjTopExtStprPrep2			:= ADR(tyNtParamCurr.bProjTopExtStprPrep2);
	p_NtParamProjBtmMidStprPrep2			:= ADR(tyNtParamCurr.bProjBtmMidStprPrep2);
	p_NtParamProjBtmExtStprPrep2			:= ADR(tyNtParamCurr.bProjBtmExtStprPrep2);
	
	p_NtParamTopEntStprProgNm			:= ADR(tyNtParamCurr.sTopEntStprProgNm); //Lane1 top zone stopper
	p_NtParamTopEntStprTwoCtrlIn		:= ADR(tyNtParamCurr.bTopEntStprTwoCtrlIn);
	p_NtParamTopEntStprExtDlyTm			:= ADR(tyNtParamCurr.tTopEntStprExtDlyTm);
	p_NtParamTopEntStprRetDlyTm			:= ADR(tyNtParamCurr.tTopEntStprRetDlyTm);
	p_NtParamTopMidStprProgNm			:= ADR(tyNtParamCurr.sTopMidStprProgNm); 
	p_NtParamTopMidStprTwoCtrlIn		:= ADR(tyNtParamCurr.bTopMidStprTwoCtrlIn);
	p_NtParamTopMidStprExtDlyTm			:= ADR(tyNtParamCurr.tTopMidStprExtDlyTm);
	p_NtParamTopMidStprRetDlyTm			:= ADR(tyNtParamCurr.tTopMidStprRetDlyTm);
	p_NtParamTopExtStprProgNm			:= ADR(tyNtParamCurr.sTopExtStprProgNm); 
	p_NtParamTopExtStprTwoCtrlIn		:= ADR(tyNtParamCurr.bTopExtStprTwoCtrlIn);
	p_NtParamTopExtStprExtDlyTm			:= ADR(tyNtParamCurr.tTopExtStprExtDlyTm);
	p_NtParamTopExtStprRetDlyTm			:= ADR(tyNtParamCurr.tTopExtStprRetDlyTm);
	p_NtParamBtmMidStprProgNm			:= ADR(tyNtParamCurr.sBtmMidStprProgNm); 
	p_NtParamBtmMidStprTwoCtrlIn		:= ADR(tyNtParamCurr.bBtmMidStprTwoCtrlIn);
	p_NtParamBtmMidStprExtDlyTm			:= ADR(tyNtParamCurr.tBtmMidStprExtDlyTm);
	p_NtParamBtmMidStprRetDlyTm			:= ADR(tyNtParamCurr.tBtmMidStprRetDlyTm);
	p_NtParamBtmExtStprProgNm			:= ADR(tyNtParamCurr.sBtmExtStprProgNm); 
	p_NtParamBtmExtStprTwoCtrlIn		:= ADR(tyNtParamCurr.bBtmExtStprTwoCtrlIn);
	p_NtParamBtmExtStprExtDlyTm			:= ADR(tyNtParamCurr.tBtmExtStprExtDlyTm);
	p_NtParamBtmExtStprRetDlyTm			:= ADR(tyNtParamCurr.tBtmExtStprRetDlyTm);
	
	p_NtParamTopEntStprProgNm2				:= ADR(tyNtParamCurr.sTopEntStprProgNm2); //Lane2 top zone stopper
	p_NtParamTopEntStprTwoCtrlIn2			:= ADR(tyNtParamCurr.bTopEntStprTwoCtrlIn2);
	p_NtParamTopEntStprExtDlyTm2			:= ADR(tyNtParamCurr.tTopEntStprExtDlyTm2);
	p_NtParamTopEntStprRetDlyTm2			:= ADR(tyNtParamCurr.tTopEntStprRetDlyTm2);
	p_NtParamTopMidStprProgNm2				:= ADR(tyNtParamCurr.sTopMidStprProgNm2); 
	p_NtParamTopMidStprTwoCtrlIn2			:= ADR(tyNtParamCurr.bTopMidStprTwoCtrlIn2);
	p_NtParamTopMidStprExtDlyTm2			:= ADR(tyNtParamCurr.tTopMidStprExtDlyTm2);
	p_NtParamTopMidStprRetDlyTm2			:= ADR(tyNtParamCurr.tTopMidStprRetDlyTm2);
	p_NtParamTopExtStprProgNm2				:= ADR(tyNtParamCurr.sTopExtStprProgNm2); 
	p_NtParamTopExtStprTwoCtrlIn2			:= ADR(tyNtParamCurr.bTopExtStprTwoCtrlIn2);
	p_NtParamTopExtStprExtDlyTm2			:= ADR(tyNtParamCurr.tTopExtStprExtDlyTm2);
	p_NtParamTopExtStprRetDlyTm2			:= ADR(tyNtParamCurr.tTopExtStprRetDlyTm2);
	p_NtParamBtmMidStprProgNm2				:= ADR(tyNtParamCurr.sBtmMidStprProgNm2); 
	p_NtParamBtmMidStprTwoCtrlIn2			:= ADR(tyNtParamCurr.bBtmMidStprTwoCtrlIn2);
	p_NtParamBtmMidStprExtDlyTm2			:= ADR(tyNtParamCurr.tBtmMidStprExtDlyTm2);
	p_NtParamBtmMidStprRetDlyTm2			:= ADR(tyNtParamCurr.tBtmMidStprRetDlyTm2);
	p_NtParamBtmExtStprProgNm2				:= ADR(tyNtParamCurr.sBtmExtStprProgNm2); 
	p_NtParamBtmExtStprTwoCtrlIn2			:= ADR(tyNtParamCurr.bBtmExtStprTwoCtrlIn2);
	p_NtParamBtmExtStprExtDlyTm2			:= ADR(tyNtParamCurr.tBtmExtStprExtDlyTm2);
	p_NtParamBtmExtStprRetDlyTm2			:= ADR(tyNtParamCurr.tBtmExtStprRetDlyTm2);


	p_NtParamInMagConvProgNm			:= ADR(tyNtParamCurr.sInMagConvProgNm); //InMag, OutMag, LifterMag Lane1
	p_NtParamInMagConvOnDirMod			:= ADR(tyNtParamCurr.bInMagConvOnDirMod);
	p_NtParamInMagConvMtrOffDlyTm		:= ADR(tyNtParamCurr.tInMagConvMtrOffDlyTm);
	p_NtParamOutMagConvProgNm			:= ADR(tyNtParamCurr.sOutMagConvProgNm);
	p_NtParamOutMagConvOnDirMod			:= ADR(tyNtParamCurr.bOutMagConvOnDirMod);
	p_NtParamOutMagConvMtrOffDlyTm		:= ADR(tyNtParamCurr.tOutMagConvMtrOffDlyTm);
	p_NtParamLifterMagProgNm			:= ADR(tyNtParamCurr.sLifterMagProgNm);
	p_NtParamLifterMagOnDirMod			:= ADR(tyNtParamCurr.bLifterMagOnDirMod);
	p_NtParamLifterMagMtrOffDlyTm		:= ADR(tyNtParamCurr.tLifterMagMtrOffDlyTm);
	p_NtParamLifterMagClprClampTO		:= ADR(tyNtParamCurr.tLifterMagClprClampTO);
	p_NtParamLifterMagClprUnclampTO		:= ADR(tyNtParamCurr.tLifterMagClprUnclampTO);
	p_NtParamInMagConv2ProgNm			:= ADR(tyNtParamCurr.sInMagConv2ProgNm); //InMag, OutMag, LifterMag Lane2
	p_NtParamInMagConv2OnDirMod			:= ADR(tyNtParamCurr.bInMagConv2OnDirMod);
	p_NtParamInMagConv2MtrOffDlyTm		:= ADR(tyNtParamCurr.tInMagConv2MtrOffDlyTm);
	p_NtParamOutMagConv2ProgNm			:= ADR(tyNtParamCurr.sOutMagConv2ProgNm);
	p_NtParamOutMagConv2OnDirMod		:= ADR(tyNtParamCurr.bOutMagConv2OnDirMod);
	p_NtParamOutMagConv2MtrOffDlyTm		:= ADR(tyNtParamCurr.tOutMagConv2MtrOffDlyTm);
	p_NtParamLifterMag2ProgNm			:= ADR(tyNtParamCurr.sLifterMag2ProgNm);
	p_NtParamLifterMag2OnDirMod			:= ADR(tyNtParamCurr.bLifterMag2OnDirMod);
	p_NtParamLifterMag2MtrOffDlyTm		:= ADR(tyNtParamCurr.tLifterMag2MtrOffDlyTm);
	p_NtParamLifterMagClprClampTO2		:= ADR(tyNtParamCurr.tLifterMagClprClampTO2);
	p_NtParamLifterMagClprUnclampTO2		:= ADR(tyNtParamCurr.tLifterMagClprUnclampTO2); //##

	p_NtParamUsrFolderProgNm			:= ADR(tyNtParamCurr.sUsrFolderProgNm);
	p_NtParamLibVersionProgNm			:= ADR(tyNtParamCurr.sLibVersionProgNm);
	p_NtParamTimeProgNm					:= ADR(tyNtParamCurr.sTimeProgNm);
	
	p_NtParamHWInfoProgNm				:= ADR(tyNtParamCurr.sHWInfoProgNm);
	p_NtParamHWInfoDevice				:= ADR(tyNtParamCurr.sHWInfoDevice);
	

	p_NtParamTLBuzMode					:= ADR(tyNtParamCurr.eTLBuzMode);
	
	p_NtParamTLChgRcpBlinkTm		:= ADR(tyNtParamCurr.tTLChgRcpBlinkTm);
	
	p_NtParamTLErrBlinkTm			:= ADR(tyNtParamCurr.tTLErrBlinkTm);
	p_NtParamBuzErrOnTm				:= ADR(tyNtParamCurr.tBuzErrOnTm);
	p_NtParamBuzErrRestTm			:= ADR(tyNtParamCurr.tBuzErrRestTm);
	p_NtParamBuzErrOnCntr			:= ADR(tyNtParamCurr.usiBuzErrOnCntr);
	p_NtParamBuzErrStopSeqEn		:= ADR(tyNtParamCurr.bBuzErrStopSeqEn);
	p_NtParamBuzErrStopSeqCntr		:= ADR(tyNtParamCurr.usiBuzErrStopSeqCntr);
	
	p_NtParamTLWarnBlinkTm			:= ADR(tyNtParamCurr.tTLWarnBlinkTm);
	p_NtParamBuzWarnOnTm			:= ADR(tyNtParamCurr.tBuzWarnOnTm);
	p_NtParamBuzWarnRestTm			:= ADR(tyNtParamCurr.tBuzWarnRestTm);
	p_NtParamBuzWarnOnCntr			:= ADR(tyNtParamCurr.usiBuzWarnOnCntr);
	p_NtParamBuzWarnStopSeqEn		:= ADR(tyNtParamCurr.bBuzWarnStopSeqEn);
	p_NtParamBuzWarnStopSeqCntr		:= ADR(tyNtParamCurr.usiBuzWarnStopSeqCntr);
	
	p_NtParamTLWarn1BlinkTm			:= ADR(tyNtParamCurr.tTLWarn1BlinkTm);
	p_NtParamBuzWarn1OnTm			:= ADR(tyNtParamCurr.tBuzWarn1OnTm);
	p_NtParamBuzWarn1RestTm			:= ADR(tyNtParamCurr.tBuzWarn1RestTm);
	p_NtParamBuzWarn1OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn1OnCntr);
	p_NtParamBuzWarn1StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn1StopSeqEn);
	p_NtParamBuzWarn1StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn1StopSeqCntr);
	
	p_NtParamTLWarn2BlinkTm			:= ADR(tyNtParamCurr.tTLWarn2BlinkTm);
	p_NtParamBuzWarn2OnTm			:= ADR(tyNtParamCurr.tBuzWarn2OnTm);
	p_NtParamBuzWarn2RestTm			:= ADR(tyNtParamCurr.tBuzWarn2RestTm);
	p_NtParamBuzWarn2OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn2OnCntr);
	p_NtParamBuzWarn2StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn2StopSeqEn);
	p_NtParamBuzWarn2StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn2StopSeqCntr);
	
	p_NtParamTLWarn3BlinkTm			:= ADR(tyNtParamCurr.tTLWarn3BlinkTm);
	p_NtParamBuzWarn3OnTm			:= ADR(tyNtParamCurr.tBuzWarn3OnTm);
	p_NtParamBuzWarn3RestTm			:= ADR(tyNtParamCurr.tBuzWarn3RestTm);
	p_NtParamBuzWarn3OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn3OnCntr);
	p_NtParamBuzWarn3StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn3StopSeqEn);
	p_NtParamBuzWarn3StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn3StopSeqCntr);
	
	p_NtParamTLWarn4BlinkTm			:= ADR(tyNtParamCurr.tTLWarn4BlinkTm);
	p_NtParamBuzWarn4OnTm			:= ADR(tyNtParamCurr.tBuzWarn4OnTm);
	p_NtParamBuzWarn4RestTm			:= ADR(tyNtParamCurr.tBuzWarn4RestTm);
	p_NtParamBuzWarn4OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn4OnCntr);
	p_NtParamBuzWarn4StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn4StopSeqEn);
	p_NtParamBuzWarn4StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn4StopSeqCntr);
	
	p_NtParamTLWarn5BlinkTm			:= ADR(tyNtParamCurr.tTLWarn5BlinkTm);
	p_NtParamBuzWarn5OnTm			:= ADR(tyNtParamCurr.tBuzWarn5OnTm);
	p_NtParamBuzWarn5RestTm			:= ADR(tyNtParamCurr.tBuzWarn5RestTm);
	p_NtParamBuzWarn5OnCntr			:= ADR(tyNtParamCurr.usiBuzWarn5OnCntr);
	p_NtParamBuzWarn5StopSeqEn		:= ADR(tyNtParamCurr.bBuzWarn5StopSeqEn);
	p_NtParamBuzWarn5StopSeqCntr	:= ADR(tyNtParamCurr.usiBuzWarn5StopSeqCntr);
	
	p_NtParamBuzAlertOnTm			:= ADR(tyNtParamCurr.tBuzAlertOnTm);
	p_NtParamBuzAlertRestTm			:= ADR(tyNtParamCurr.tBuzAlertRestTm);
	p_NtParamBuzAlertOnCntr			:= ADR(tyNtParamCurr.usiBuzAlertOnCntr);
	p_NtParamBuzAlertStopSeqEn		:= ADR(tyNtParamCurr.bBuzAlertStopSeqEn);
	p_NtParamBuzAlertStopSeqCntr	:= ADR(tyNtParamCurr.usiBuzAlertStopSeqCntr);
	
	p_NtParamTLBlueBlinkTm			:= ADR(tyNtParamCurr.tTLBlueBlinkTm);
	p_NtParamTLAmberBlinkTm			:= ADR(tyNtParamCurr.tTLAmberBlinkTm);
	p_NtParamTLWhiteBlinkTm			:= ADR(tyNtParamCurr.tTLWhiteBlinkTm);
	p_NtParamTLRedBlinkTm			:= ADR(tyNtParamCurr.tTLRedBlinkTm);
	p_NtParamTLGreenBlinkTm			:= ADR(tyNtParamCurr.tTLGreenBlinkTm);
	
	p_NtParamAlmProgNm					:= ADR(tyNtParamCurr.sAlmProgNm);
	p_NtParamAlmFileKeepDay				:= ADR(tyNtParamCurr.udiAlmFileKeepDay);
	
	p_NtParamProdRcpProgNm				:= ADR(tyNtParamCurr.sProdRcpProgNm);
	p_NtParamProdRcpListFileNm			:= ADR(tyNtParamCurr.sProdRcpListFileNm);
	p_NtParamProdRcpSingleFileNm		:= ADR(tyNtParamCurr.sProdRcpSingleFileNm);
	
	p_NtParamMpProdRcpProgNm			:= ADR(tyNtParamCurr.sMpProdRcpProgNm);
	p_NtParamMpProdRcpFileNm			:= ADR(tyNtParamCurr.sMpProdRcpFileNm);
	p_NtParamMpProdRcpPVNm				:= ADR(tyNtParamCurr.sMpProdRcpPVNm);
	
	p_NtParamMagRcpProgNm				:= ADR(tyNtParamCurr.sMagRcpProgNm);
	p_NtParamMagRcpListFileNm			:= ADR(tyNtParamCurr.sMagRcpListFileNm);
	p_NtParamMagRcpSingleFileNm			:= ADR(tyNtParamCurr.sMagRcpSingleFileNm);
	
	p_NtParamMcParamProgNm				:= ADR(tyNtParamCurr.sMcParamProgNm);
	p_NtParamMcParamFileNm				:= ADR(tyNtParamCurr.sMcParamFileNm);
	
	p_NtParamUsrMgmtProgNm				:= ADR(tyNtParamCurr.sUsrMgmtProgNm);
	
	p_NtParamBffr1ProgNm				:= ADR(tyNtParamCurr.sBffr1ProgNm);
	p_NtParamBffr1FileNm				:= ADR(tyNtParamCurr.sBffr1FileNm);
	p_NtParamBffr1NxtLoadSeq			:= ADR(tyNtParamCurr.bBffr1NxtLoadSeq);
	
	p_NtParamBffr2ProgNm				:= ADR(tyNtParamCurr.sBffr2ProgNm);
	p_NtParamBffr2FileNm				:= ADR(tyNtParamCurr.sBffr2FileNm);
	p_NtParamBffr2NxtLoadSeq			:= ADR(tyNtParamCurr.bBffr2NxtLoadSeq);
	
	p_NtParamBffr3ProgNm				:= ADR(tyNtParamCurr.sBffr3ProgNm);
	p_NtParamBffr3FileNm				:= ADR(tyNtParamCurr.sBffr3FileNm);
	p_NtParamBffr3NxtLoadSeq			:= ADR(tyNtParamCurr.bBffr3NxtLoadSeq);
	
	p_NtParamUSSMEMAAProgNm				:= ADR(tyNtParamCurr.sUSSMEMAAProgNm);
	p_NtParamUSSMEMAARstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMAARstDlyTm);
	p_NtParamUSSMEMAASigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMAASigInChkTm);
	
	p_NtParamUSSMEMABProgNm				:= ADR(tyNtParamCurr.sUSSMEMABProgNm);
	p_NtParamUSSMEMABRstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMABRstDlyTm);
	p_NtParamUSSMEMABSigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMABSigInChkTm);
	
	p_NtParamUSSMEMA1ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA1ProgNm);
	p_NtParamUSSMEMA1RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA1RstDlyTm);
	p_NtParamUSSMEMA1SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA1SigInChkTm);
	
	p_NtParamUSSMEMA2ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA2ProgNm);
	p_NtParamUSSMEMA2RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA2RstDlyTm);
	p_NtParamUSSMEMA2SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA2SigInChkTm);
	
	p_NtParamUSSMEMA3ProgNm				:= ADR(tyNtParamCurr.sUSSMEMA3ProgNm);
	p_NtParamUSSMEMA3RstDlyTm			:= ADR(tyNtParamCurr.tUSSMEMA3RstDlyTm);
	p_NtParamUSSMEMA3SigInChkTm			:= ADR(tyNtParamCurr.tUSSMEMA3SigInChkTm);
	
	p_NtParamDSSMEMA1ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA1ProgNm);
	p_NtParamDSSMEMA1RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA1RstDlyTm);
	p_NtParamDSSMEMA1SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA1SigInChkTm);
	
	p_NtParamDSSMEMA2ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA2ProgNm);
	p_NtParamDSSMEMA2RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA2RstDlyTm);
	p_NtParamDSSMEMA2SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA2SigInChkTm);
	
	p_NtParamDSSMEMA3ProgNm				:= ADR(tyNtParamCurr.sDSSMEMA3ProgNm);
	p_NtParamDSSMEMA3RstDlyTm			:= ADR(tyNtParamCurr.tDSSMEMA3RstDlyTm);
	p_NtParamDSSMEMA3SigInChkTm			:= ADR(tyNtParamCurr.tDSSMEMA3SigInChkTm);
	
	p_NtParamInShutterProgNm			:= ADR(tyNtParamCurr.sInShutterProgNm);
	p_NtParamInShutterTwoCtrlIn			:= ADR(tyNtParamCurr.bInShutterTwoCtrlIn);
	p_NtParamInShutterExtTO				:= ADR(tyNtParamCurr.tInShutterExtTO);
	p_NtParamInShutterRetTO				:= ADR(tyNtParamCurr.tInShutterRetTO);
	
	p_NtParamOutShutterProgNm			:= ADR(tyNtParamCurr.sOutShutterProgNm);
	p_NtParamOutShutterTwoCtrlIn		:= ADR(tyNtParamCurr.bOutShutterTwoCtrlIn);
	p_NtParamOutShutterExtTO			:= ADR(tyNtParamCurr.tOutShutterExtTO);
	p_NtParamOutShutterRetTO			:= ADR(tyNtParamCurr.tOutShutterRetTO);
	
	p_NtParamInletStopperProgNm				:= ADR(tyNtParamCurr.sInletStopperProgNm);
	p_NtParamInletStopperTwoCtrlIn			:= ADR(tyNtParamCurr.bInletStopperTwoCtrlIn);
	p_NtParamInletStopperExtDlyTm			:= ADR(tyNtParamCurr.tInletStopperExtDlyTm);
	p_NtParamInletStopperRetDlyTm			:= ADR(tyNtParamCurr.tInletStopperRetDlyTm);
	
	p_NtParamStopperAProgNm				:= ADR(tyNtParamCurr.sStopperAProgNm);
	p_NtParamStopperATwoCtrlIn			:= ADR(tyNtParamCurr.bStopperATwoCtrlIn);
	p_NtParamStopperAExtDlyTm			:= ADR(tyNtParamCurr.tStopperAExtDlyTm);
	p_NtParamStopperARetDlyTm			:= ADR(tyNtParamCurr.tStopperARetDlyTm);
	
	p_NtParamStopperBProgNm				:= ADR(tyNtParamCurr.sStopperBProgNm);
	p_NtParamStopperBTwoCtrlIn			:= ADR(tyNtParamCurr.bStopperBTwoCtrlIn);
	p_NtParamStopperBExtDlyTm			:= ADR(tyNtParamCurr.tStopperBExtDlyTm);
	p_NtParamStopperBRetDlyTm			:= ADR(tyNtParamCurr.tStopperBRetDlyTm);
	
	p_NtParamPshrConvProgNm				:= ADR(tyNtParamCurr.sPshrConvProgNm);
	p_NtParamPshrConvOnDirMod			:= ADR(tyNtParamCurr.bPshrConvOnDirMod);
	p_NtParamPshrConvMtrOffDlyTm		:= ADR(tyNtParamCurr.tPshrConvMtrOffDlyTm);
	p_NtParamPshrConvPshrExtTO			:= ADR(tyNtParamCurr.tPshrConvPshrExtTO);
	p_NtParamPshrConvPshrRetTO			:= ADR(tyNtParamCurr.tPshrConvPshrRetTO);
	
	p_NtParamMagConv1ProgNm				:= ADR(tyNtParamCurr.sMagConv1ProgNm);
	p_NtParamMagConv1OnDirMod			:= ADR(tyNtParamCurr.bMagConv1OnDirMod);
	p_NtParamMagConv1MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv1MtrOffDlyTm);
	p_NtParamMagConv1ClprClampTO		:= ADR(tyNtParamCurr.tMagConv1ClprClampTO);
	p_NtParamMagConv1ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv1ClprUnclampTO);
	
	p_NtParamMagConv2ProgNm				:= ADR(tyNtParamCurr.sMagConv2ProgNm);
	p_NtParamMagConv2OnDirMod			:= ADR(tyNtParamCurr.bMagConv2OnDirMod);
	p_NtParamMagConv2MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv2MtrOffDlyTm);
	p_NtParamMagConv2ClprClampTO		:= ADR(tyNtParamCurr.tMagConv2ClprClampTO);
	p_NtParamMagConv2ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv2ClprUnclampTO);
	
	p_NtParamMagConv3ProgNm				:= ADR(tyNtParamCurr.sMagConv3ProgNm);
	p_NtParamMagConv3OnDirMod			:= ADR(tyNtParamCurr.bMagConv3OnDirMod);
	p_NtParamMagConv3MtrOffDlyTm		:= ADR(tyNtParamCurr.tMagConv3MtrOffDlyTm);
	p_NtParamMagConv3ClprClampTO		:= ADR(tyNtParamCurr.tMagConv3ClprClampTO);
	p_NtParamMagConv3ClprUnclampTO		:= ADR(tyNtParamCurr.tMagConv3ClprUnclampTO);
	
	p_NtParamMag1SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag1SafetyBarProgNm);
	p_NtParamMag1SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag1SafetyBarTwoCtrlIn);
	p_NtParamMag1SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag1SafetyBarExtTO);
	p_NtParamMag1SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag1SafetyBarRetTO);
	
	p_NtParamMag2SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag2SafetyBarProgNm);
	p_NtParamMag2SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag2SafetyBarTwoCtrlIn);
	p_NtParamMag2SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag2SafetyBarExtTO);
	p_NtParamMag2SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag2SafetyBarRetTO);
	
	p_NtParamMag3SafetyBarProgNm		:= ADR(tyNtParamCurr.sMag3SafetyBarProgNm);
	p_NtParamMag3SafetyBarTwoCtrlIn		:= ADR(tyNtParamCurr.bMag3SafetyBarTwoCtrlIn);
	p_NtParamMag3SafetyBarExtTO			:= ADR(tyNtParamCurr.tMag3SafetyBarExtTO);
	p_NtParamMag3SafetyBarRetTO			:= ADR(tyNtParamCurr.tMag3SafetyBarRetTO);
	
	p_NtParamMag1AWEngageProgNm			:= ADR(tyNtParamCurr.sMag1AWEngageProgNm);
	p_NtParamMag1AWEngageTwoCtrlIn		:= ADR(tyNtParamCurr.bMag1AWEngageTwoCtrlIn);
	p_NtParamMag1AWEngageExtTO			:= ADR(tyNtParamCurr.tMag1AWEngageExtTO);
	p_NtParamMag1AWEngageRetTO			:= ADR(tyNtParamCurr.tMag1AWEngageRetTO);
	
	p_NtParamMag2AWEngageProgNm			:= ADR(tyNtParamCurr.sMag2AWEngageProgNm);
	p_NtParamMag2AWEngageTwoCtrlIn		:= ADR(tyNtParamCurr.bMag2AWEngageTwoCtrlIn);
	p_NtParamMag2AWEngageExtTO			:= ADR(tyNtParamCurr.tMag2AWEngageExtTO);
	p_NtParamMag2AWEngageRetTO			:= ADR(tyNtParamCurr.tMag2AWEngageRetTO);
	
	p_NtParamMag3AWEngageProgNm			:= ADR(tyNtParamCurr.sMag3AWEngageProgNm);
	p_NtParamMag3AWEngageTwoCtrlIn		:= ADR(tyNtParamCurr.bMag3AWEngageTwoCtrlIn);
	p_NtParamMag3AWEngageExtTO			:= ADR(tyNtParamCurr.tMag3AWEngageExtTO);
	p_NtParamMag3AWEngageRetTO			:= ADR(tyNtParamCurr.tMag3AWEngageRetTO);

	p_NtParamMtrPshrProgNm				:= ADR(tyNtParamCurr.sMtrPshrProgNm);
	p_NtParamMtrPshrDir					:= ADR(tyNtParamCurr.bMtrPshrDir);
	p_NtParamMtrPshrAlmRstTm			:= ADR(tyNtParamCurr.tMtrPshrAlmRstTm);
	p_NtParamMtrPshrAlmTrigTm			:= ADR(tyNtParamCurr.tMtrPshrAlmTrigTm);
	p_NtParamMtrPshrExtTO				:= ADR(tyNtParamCurr.tMtrPshrExtTO);
	p_NtParamMtrPshrRetTO				:= ADR(tyNtParamCurr.tMtrPshrRetTO);
	p_NtParamMtrPshrExtSlowSpd			:= ADR(tyNtParamCurr.diMtrPshrExtSlowSpd);
	p_NtParamMtrPshrRetSlowSpd			:= ADR(tyNtParamCurr.diMtrPshrRetSlowSpd);
	p_NtParamMtrPshrExtNomSpd			:= ADR(tyNtParamCurr.diMtrPshrExtNomSpd);
	p_NtParamMtrPshrRetNomSpd			:= ADR(tyNtParamCurr.diMtrPshrRetNomSpd);
	p_NtParamMtrPshrExtTorq				:= ADR(tyNtParamCurr.diMtrPshrRetNomSpd);
	p_NtParamMtrPshrRetTorq				:= ADR(tyNtParamCurr.diMtrPshrRetTorq);
	p_NtParamMtrPshrStartTorq			:= ADR(tyNtParamCurr.diMtrPshrStartTorq);
	
	p_NtParamAWPushPulProgNm			:= ADR(tyNtParamCurr.sAWPushPullProgNm);
	p_NtParamAWPushPulDevice			:= ADR(tyNtParamCurr.sAWPushPullDevice);
	p_NtParamAWPushPulNode				:= ADR(tyNtParamCurr.usiAWPushPullNode);
	p_NtParamAWPushPulDir				:= ADR(tyNtParamCurr.bAWPushPullDir);
	p_NtParamAWPushPulDirBl				:= ADR(tyNtParamCurr.bAWPushPullDirBl);
	p_NtParamAWPushPulPitchInUM			:= ADR(tyNtParamCurr.diAWPushPullPitchInUM);
	p_NtParamAWPushPulMovBlDistInUM		:= ADR(tyNtParamCurr.diAWPushPullMovBlDistInUM);
	p_NtParamAWPushPulParamInHm			:= ADR(tyNtParamCurr.tyAWPushPullParamInHm);
	p_NtParamAWPushPulParamInConvert	:= ADR(tyNtParamCurr.tyAWPushPullParamInConvert);
	p_NtParamAWPushPulParam				:= ADR(tyNtParamCurr.tyAWPushPullParam);
	p_NtParamAWPushPulAcc				:= ADR(tyNtParamCurr.tyAWPushPullParam.diAccInMS);
	p_NtParamAWPushPulDec				:= ADR(tyNtParamCurr.tyAWPushPullParam.diDecInMS);
	p_NtParamAWPushPulAutoSpd			:= ADR(tyNtParamCurr.tyAWPushPullParam.diAutoSpdInUMPS);
	p_NtParamAWPushPulTuning			:= ADR(tyNtParamCurr.tyAWPushPullTuning);
	p_NtParamAWPushPulMotorType			:= ADR(tyNtParamCurr.eAWPushPullServoMotorType);
	
	p_NtParamAWProgNm					:= ADR(tyNtParamCurr.sAWProgNm);
	p_NtParamAWDevice					:= ADR(tyNtParamCurr.sAWDevice);
	p_NtParamAWNode						:= ADR(tyNtParamCurr.usiAWNode);
	p_NtParamAWDir						:= ADR(tyNtParamCurr.bAWDir);
	p_NtParamAWDirBl					:= ADR(tyNtParamCurr.bAWDirBl);
	p_NtParamAWPitchInUM				:= ADR(tyNtParamCurr.diAWPitchInUM);
	p_NtParamAWMovBlDistInUM			:= ADR(tyNtParamCurr.diAWMovBlDistInUM);
	p_NtParamAWParamInHm				:= ADR(tyNtParamCurr.tyAWParamInHm);
	p_NtParamAWParamInConvert			:= ADR(tyNtParamCurr.tyAWParamInConvert);
	p_NtParamAWParam					:= ADR(tyNtParamCurr.tyAWParam);
	p_NtParamAWAcc						:= ADR(tyNtParamCurr.tyAWParam.diAccInMS);
	p_NtParamAWDec						:= ADR(tyNtParamCurr.tyAWParam.diDecInMS);
	p_NtParamAWAutoSpd					:= ADR(tyNtParamCurr.tyAWParam.diAutoSpdInUMPS);
	p_NtParamAWTuning					:= ADR(tyNtParamCurr.tyAWTuning);
	p_NtParamAWMotorType				:= ADR(tyNtParamCurr.eAWServoMotorType);
	
	p_NtParamTravProgNm					:= ADR(tyNtParamCurr.sTravProgNm);
	p_NtParamTravDevice					:= ADR(tyNtParamCurr.sTravDevice);
	p_NtParamTravNode					:= ADR(tyNtParamCurr.usiTravNode);
	p_NtParamTravDir					:= ADR(tyNtParamCurr.bTravDir);
	p_NtParamTravParamInHm				:= ADR(tyNtParamCurr.tyTravParamInHm);
	p_NtParamTravParamInConvert			:= ADR(tyNtParamCurr.tyTravParamInConvert);
	p_NtParamTravParam					:= ADR(tyNtParamCurr.tyTravParam);
	p_NtParamTravAcc					:= ADR(tyNtParamCurr.tyTravParam.diAccInMS);
	p_NtParamTravDec					:= ADR(tyNtParamCurr.tyTravParam.diDecInMS);
	p_NtParamTravAutoSpd				:= ADR(tyNtParamCurr.tyTravParam.diAutoSpdInUMPS);
	p_NtParamTravLongBrdAutoSpd			:= ADR(tyNtParamCurr.diTravAutoSpdLongBrdInUMPS);
	p_NtParamTravMotorType				:= ADR(tyNtParamCurr.eTravServoMotorType);
	p_NtParamTravTuning					:= ADR(tyNtParamCurr.tyTravTuning);
	
	p_NtParamLifterProgNm				:= ADR(tyNtParamCurr.sLifterProgNm);
	p_NtParamLifterDevice				:= ADR(tyNtParamCurr.sLifterDevice);
	p_NtParamLifterNode					:= ADR(tyNtParamCurr.usiLifterNode);
	p_NtParamLifterDir					:= ADR(tyNtParamCurr.bLifterDir);
	p_NtParamLifterParamInHm			:= ADR(tyNtParamCurr.tyLifterParamInHm);
	p_NtParamLifterParamInConvert		:= ADR(tyNtParamCurr.tyLifterParamInConvert);
	p_NtParamLifterParam				:= ADR(tyNtParamCurr.tyLifterParam);
	p_NtParamLifterAcc					:= ADR(tyNtParamCurr.tyLifterParam.diAccInMS);
	p_NtParamLifterDec					:= ADR(tyNtParamCurr.tyLifterParam.diDecInMS);
	p_NtParamLifterAutoSpd				:= ADR(tyNtParamCurr.tyLifterParam.diAutoSpdInUMPS);
	p_NtParamLifterTuning				:= ADR(tyNtParamCurr.tyLifterTuning);
	p_NtParamLifterMotorType			:= ADR(tyNtParamCurr.eLifterServoMotorType);
	
	p_NtParamLifter2ProgNm				:= ADR(tyNtParamCurr.sLifterProgNm2);
	p_NtParamLifter2Device				:= ADR(tyNtParamCurr.sLifterDevice2);
	p_NtParamLifter2Node				:= ADR(tyNtParamCurr.usiLifterNode2);
	p_NtParamLifter2Dir					:= ADR(tyNtParamCurr.bLifterDir2);
	p_NtParamLifter2ParamInHm			:= ADR(tyNtParamCurr.tyLifterParamInHm2);
	p_NtParamLifter2ParamInConvert		:= ADR(tyNtParamCurr.tyLifterParamInConvert2);
	p_NtParamLifter2Param				:= ADR(tyNtParamCurr.tyLifterParam2);
	p_NtParamLifter2Acc					:= ADR(tyNtParamCurr.tyLifterParam2.diAccInMS);
	p_NtParamLifter2Dec					:= ADR(tyNtParamCurr.tyLifterParam2.diDecInMS);
	p_NtParamLifter2AutoSpd				:= ADR(tyNtParamCurr.tyLifterParam2.diAutoSpdInUMPS);
	p_NtParamLifter2Tuning				:= ADR(tyNtParamCurr.tyLifterTuning2);
	p_NtParamLifter2MotorType			:= ADR(tyNtParamCurr.eLifterServoMotorType2);
	
	p_NtParamDIProgNm					:= ADR(tyNtParamCurr.sDIProgNm);
	
	p_NtParamAGVProgNm					:= ADR(tyNtParamCurr.sAGVProgNm);
	
	p_NtParamAGVMag1ProgNm				:= ADR(tyNtParamCurr.sAGVMag1ProgNm);
	
	p_NtParamAGVMag2ProgNm				:= ADR(tyNtParamCurr.sAGVMag2ProgNm);
	
	p_NtParamAGVMag3ProgNm				:= ADR(tyNtParamCurr.sAGVMag3ProgNm);
	
	p_NtParamHermesProgNm				:= ADR(tyNtParamCurr.sHermesProgNm);
	p_NtParamHermesRetainFileNm			:= ADR(tyNtParamCurr.sHermesRetainFileNm);
	p_NtParamHermesConfigFileNm			:= ADR(tyNtParamCurr.sHermesConfigFileNm);
	
	p_NtParamUSHermesAProgNm			:= ADR(tyNtParamCurr.sUSHermesAProgNm);
	p_NtParamUSHermesAFileKeepDay		:= ADR(tyNtParamCurr.udiUSHermesAFileKeepDay);
	p_NtParamUSHermesAAliveTmInSec		:= ADR(tyNtParamCurr.udiUSHermesAAliveTmInSec);
	p_NtParamUSHermesAConnTO			:= ADR(tyNtParamCurr.tUSHermesAConnTO);
	
	p_NtParamUSHermesBProgNm			:= ADR(tyNtParamCurr.sUSHermesBProgNm);
	p_NtParamUSHermesBFileKeepDay		:= ADR(tyNtParamCurr.udiUSHermesBFileKeepDay);
	p_NtParamUSHermesBAliveTmInSec		:= ADR(tyNtParamCurr.udiUSHermesBAliveTmInSec);
	p_NtParamUSHermesBConnTO			:= ADR(tyNtParamCurr.tUSHermesBConnTO);
	
	p_NtParamRmtHermesProgNm			:= ADR(tyNtParamCurr.sRmtHermesProgNm);
	p_NtParamRmtHermesConfigFileNm		:= ADR(tyNtParamCurr.sRmtHermesConfigFileNm);
	p_NtParamRmtHermesFileKeepDay		:= ADR(tyNtParamCurr.udiRmtHermesFileKeepDay);
	p_NtParamRmtHermesAliveTmInSec		:= ADR(tyNtParamCurr.udiRmtHermesAliveTmInSec);
	p_NtParamRmtHermesSndBffrSize		:= ADR(tyNtParamCurr.udiRmtHermesSndBffrSize);
	p_NtParamRmtHermesRcvBffrSize		:= ADR(tyNtParamCurr.udiRmtHermesRcvBffrSize);
	
	p_NtParamLFLeaderProgNm				:= ADR(tyNtParamCurr.sLFLeaderProgNm);
	p_NtParamLFLeaderOnlineChkDlyTm		:= ADR(tyNtParamCurr.tLFLeaderOnlineChkDlyTm);
	p_NtParamLFLeaderSetTmOffDlyTm		:= ADR(tyNtParamCurr.tLFLeaderSetTmOffDlyTm);
	
	p_NtParamLFFllowerOnlineChkDlyTm:= ADR(tyNtParamCurr.tLFFollowerOnlineChkDlyTm);
	p_NtParamLFFollowerProgNm			:= ADR(tyNtParamCurr.sLFFollowerProgNm);
	
	p_NtParamFollower1ProgNm			:= ADR(tyNtParamCurr.sFollower1ProgNm);
	p_NtParamFollower2ProgNm			:= ADR(tyNtParamCurr.sFollower2ProgNm);
	
	p_NtParamLCSProgNm					:= ADR(tyNtParamCurr.sLCSProgNm);
	
	p_NtParamLCSMngRcpProgNm			:= ADR(tyNtParamCurr.sLCSMngRcpProgNm);
	
	p_NtParamLCSLFProgNm				:= ADR(tyNtParamCurr.sLCSLFProgNm);
	
	p_NtParamOpsTravLifULProgNm			:= ADR(tyNtParamCurr.sOpsTravLifULProgNm);
	
	p_NtParamOpsMagUL1ProgNm			:= ADR(tyNtParamCurr.sOpsMagUL1ProgNm);
	
	p_NtParamOpsMagUL2ProgNm			:= ADR(tyNtParamCurr.sOpsMagUL2ProgNm);
	
	p_NtParamOpsMagUL3ProgNm			:= ADR(tyNtParamCurr.sOpsMagUL3ProgNm);
	
	p_NtParamOpsMagConvUL1ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvUL1ProgNm);
	
	p_NtParamOpsMagConvUL2ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvUL2ProgNm);
	
	p_NtParamOpsMagConvUL3ProgNm		:= ADR(tyNtParamCurr.sOpsMagConvUL3ProgNm);
	
	p_NtParamOpsMagConvStprProgNm		:= ADR(tyNtParamCurr.sOpsMagConvStprProgNm);
	p_NtParamOpsMagConvStprProgNm1		:= ADR(tyNtParamCurr.sOpsMagConvStprProgNm1);
	
	p_NtParamProdRcpMinWidth			:= ADR(tyNtParamCurr.tyProdRcpWidth.diMin);
	p_NtParamProdRcpMaxWidth			:= ADR(tyNtParamCurr.tyProdRcpWidth.diMax);
	p_NtParamProdRcpMinMinSlt			:= ADR(tyNtParamCurr.tyProdRcpMinSlt.diMin);
	p_NtParamProdRcpMaxMinSlt			:= ADR(tyNtParamCurr.tyProdRcpMinSlt.diMax);
	p_NtParamProdRcpMinMaxSlt			:= ADR(tyNtParamCurr.tyProdRcpMaxSlt.diMin);
	p_NtParamProdRcpMaxMaxSlt			:= ADR(tyNtParamCurr.tyProdRcpMaxSlt.diMax);
	p_NtParamProdRcpMinPitch			:= ADR(tyNtParamCurr.tyProdRcpPitch.diMin);
	p_NtParamProdRcpMaxPitch			:= ADR(tyNtParamCurr.tyProdRcpPitch.diMax);
	p_NtParamProdRcpMinBrdPerSlt		:= ADR(tyNtParamCurr.tyProdRcpBrdPerSlt.diMin);
	p_NtParamProdRcpMaxBrdPerSlt		:= ADR(tyNtParamCurr.tyProdRcpBrdPerSlt.diMax);
	p_NtParamProdRcpMinMcModA			:= ADR(tyNtParamCurr.tyProdRcpMcModA.diMin);
	p_NtParamProdRcpMaxMcModA			:= ADR(tyNtParamCurr.tyProdRcpMcModA.diMax);
	p_NtParamProdRcpMinMcModAB			:= ADR(tyNtParamCurr.tyProdRcpMcModAB.diMin);
	p_NtParamProdRcpMaxMcModAB			:= ADR(tyNtParamCurr.tyProdRcpMcModAB.diMax);
	p_NtParamProdRcpMinMinReqFrBffr		:= ADR(tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMin);
	p_NtParamProdRcpMaxMinReqFrBffr		:= ADR(tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMax);
	
	p_NtParamSelClamp1ProgNm			:= ADR(tyNtParamCurr.sSelClamp1ProgNm);
	p_NtParamSelClamp1TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp1TwoCtrlIn);
	p_NtParamSelClamp1ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp1ExtDlyTm);
	p_NtParamSelClamp1RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp1RetDlyTm);
	
	p_NtParamSelClamp2ProgNm			:= ADR(tyNtParamCurr.sSelClamp2ProgNm);
	p_NtParamSelClamp2TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp2TwoCtrlIn);
	p_NtParamSelClamp2ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp2ExtDlyTm);
	p_NtParamSelClamp2RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp2RetDlyTm);
	
	p_NtParamSelClamp3ProgNm			:= ADR(tyNtParamCurr.sSelClamp3ProgNm);
	p_NtParamSelClamp3TwoCtrlIn			:= ADR(tyNtParamCurr.bSelClamp3TwoCtrlIn);
	p_NtParamSelClamp3ExtDlyTm			:= ADR(tyNtParamCurr.tSelClamp3ExtDlyTm);
	p_NtParamSelClamp3RetDlyTm			:= ADR(tyNtParamCurr.tSelClamp3RetDlyTm);
	
	p_NtParamMagAW1ProgNm				:= ADR(tyNtParamCurr.sMagAW1ProgNm);
	p_NtParamMagAW1Device				:= ADR(tyNtParamCurr.sMagAW1Device);
	p_NtParamMagAW1Node					:= ADR(tyNtParamCurr.usiMagAW1Node);
	p_NtParamMagAW1Dir					:= ADR(tyNtParamCurr.bMagAW1Dir);
	p_NtParamMagAW1DirBl				:= ADR(tyNtParamCurr.bMagAW1DirBl);
	p_NtParamMagAW1PitchInUM			:= ADR(tyNtParamCurr.diMagAW1PitchInUM);
	p_NtParamMagAW1MovBlDistInUM		:= ADR(tyNtParamCurr.diMagAW1MovBlDistInUM);
	p_NtParamMagAW1ParamInHm			:= ADR(tyNtParamCurr.tyMagAW1ParamInHm);
	p_NtParamMagAW1ParamInConvert		:= ADR(tyNtParamCurr.tyMagAW1ParamInConvert);
	p_NtParamMagAW1Param				:= ADR(tyNtParamCurr.tyMagAW1Param);
	p_NtParamMagAW1Acc					:= ADR(tyNtParamCurr.tyMagAW1Param.diAccInMS);
	p_NtParamMagAW1Dec					:= ADR(tyNtParamCurr.tyMagAW1Param.diDecInMS);
	p_NtParamMagAW1AutoSpd				:= ADR(tyNtParamCurr.tyMagAW1Param.diAutoSpdInUMPS);
	p_NtParamMagAW1Tuning				:= ADR(tyNtParamCurr.tyMagAW1Tuning);
	p_NtParamMagAW1EngageSpdInUMPS		:= ADR(tyNtParamCurr.diMagAW1EngageSpdInUMPS);
	p_NtParamMagAW1MotorType			:= ADR(tyNtParamCurr.eMagAW1ServoMotorType);
	p_NtParamMag1WidthOffset			:= ADR(tyNtParamCurr.diMag1WidthOffsetInUM);

	
	p_NtParamMagAW2ProgNm				:= ADR(tyNtParamCurr.sMagAW2ProgNm);
	p_NtParamMagAW2Device				:= ADR(tyNtParamCurr.sMagAW2Device);
	p_NtParamMagAW2Node					:= ADR(tyNtParamCurr.usiMagAW2Node);
	p_NtParamMagAW2Dir					:= ADR(tyNtParamCurr.bMagAW2Dir);
	p_NtParamMagAW2DirBl				:= ADR(tyNtParamCurr.bMagAW2DirBl);
	p_NtParamMagAW2PitchInUM			:= ADR(tyNtParamCurr.diMagAW2PitchInUM);
	p_NtParamMagAW2MovBlDistInUM		:= ADR(tyNtParamCurr.diMagAW2MovBlDistInUM);
	p_NtParamMagAW2ParamInHm			:= ADR(tyNtParamCurr.tyMagAW2ParamInHm);
	p_NtParamMagAW2ParamInConvert		:= ADR(tyNtParamCurr.tyMagAW2ParamInConvert);
	p_NtParamMagAW2Param				:= ADR(tyNtParamCurr.tyMagAW2Param);
	p_NtParamMagAW2Acc					:= ADR(tyNtParamCurr.tyMagAW2Param.diAccInMS);
	p_NtParamMagAW2Dec					:= ADR(tyNtParamCurr.tyMagAW2Param.diDecInMS);
	p_NtParamMagAW2AutoSpd				:= ADR(tyNtParamCurr.tyMagAW2Param.diAutoSpdInUMPS);
	p_NtParamMagAW2Tuning				:= ADR(tyNtParamCurr.tyMagAW2Tuning);
	p_NtParamMagAW2EngageSpdInUMPS		:= ADR(tyNtParamCurr.diMagAW2EngageSpdInUMPS);
	p_NtParamMagAW2MotorType			:= ADR(tyNtParamCurr.eMagAW2ServoMotorType);
	p_NtParamMag2WidthOffset			:= ADR(tyNtParamCurr.diMag2WidthOffsetInUM);

	
	p_NtParamMagAW3ProgNm				:= ADR(tyNtParamCurr.sMagAW3ProgNm);
	p_NtParamMagAW3Device				:= ADR(tyNtParamCurr.sMagAW3Device);
	p_NtParamMagAW3Node					:= ADR(tyNtParamCurr.usiMagAW3Node);
	p_NtParamMagAW3Dir					:= ADR(tyNtParamCurr.bMagAW3Dir);
	p_NtParamMagAW3DirBl				:= ADR(tyNtParamCurr.bMagAW3DirBl);
	p_NtParamMagAW3PitchInUM			:= ADR(tyNtParamCurr.diMagAW3PitchInUM);
	p_NtParamMagAW3MovBlDistInUM		:= ADR(tyNtParamCurr.diMagAW3MovBlDistInUM);
	p_NtParamMagAW3ParamInHm			:= ADR(tyNtParamCurr.tyMagAW3ParamInHm);
	p_NtParamMagAW3ParamInConvert		:= ADR(tyNtParamCurr.tyMagAW3ParamInConvert);
	p_NtParamMagAW3Param				:= ADR(tyNtParamCurr.tyMagAW3Param);
	p_NtParamMagAW3Acc					:= ADR(tyNtParamCurr.tyMagAW3Param.diAccInMS);
	p_NtParamMagAW3Dec					:= ADR(tyNtParamCurr.tyMagAW3Param.diDecInMS);
	p_NtParamMagAW3AutoSpd				:= ADR(tyNtParamCurr.tyMagAW3Param.diAutoSpdInUMPS);
	p_NtParamMagAW3Tuning				:= ADR(tyNtParamCurr.tyMagAW3Tuning);
	p_NtParamMagAW3EngageSpdInUMPS		:= ADR(tyNtParamCurr.diMagAW3EngageSpdInUMPS);
	p_NtParamMagAW3MotorType			:= ADR(tyNtParamCurr.eMagAW3ServoMotorType);
	p_NtParamMag3WidthOffset			:= ADR(tyNtParamCurr.diMag3WidthOffsetInUM);

	
	p_NtParamMcProgNm					:= ADR(tyNtParamCurr.sMachineProgNm);
	
	p_NtParamUSSOT1ProgNm				:= ADR(tyNtParamCurr.sUSSOT1ProgNm);
	p_NtParamUSSOT1RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT1RstDlyTm);
	p_NtParamUSSOT1SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT1SigInChkTm);
	
	p_NtParamUSSOT2ProgNm				:= ADR(tyNtParamCurr.sUSSOT2ProgNm);
	p_NtParamUSSOT2RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT2RstDlyTm);
	p_NtParamUSSOT2SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT2SigInChkTm);
	
	p_NtParamUSSOT3ProgNm				:= ADR(tyNtParamCurr.sUSSOT3ProgNm);
	p_NtParamUSSOT3RstDlyTm				:= ADR(tyNtParamCurr.tUSSOT3RstDlyTm);
	p_NtParamUSSOT3SigInChkTm			:= ADR(tyNtParamCurr.tUSSOT3SigInChkTm);
	
	p_NtParamDSSOT1ProgNm				:= ADR(tyNtParamCurr.sDSSOT1ProgNm);
	p_NtParamDSSOT1RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT1RstDlyTm);
	p_NtParamDSSOT1SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT1SigInChkTm);
	
	p_NtParamDSSOT2ProgNm				:= ADR(tyNtParamCurr.sDSSOT2ProgNm);
	p_NtParamDSSOT2RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT2RstDlyTm);
	p_NtParamDSSOT2SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT2SigInChkTm);
	
	p_NtParamDSSOT3ProgNm				:= ADR(tyNtParamCurr.sDSSOT3ProgNm);
	p_NtParamDSSOT3RstDlyTm				:= ADR(tyNtParamCurr.tDSSOT3RstDlyTm);
	p_NtParamDSSOT3SigInChkTm			:= ADR(tyNtParamCurr.tDSSOT3SigInChkTm);
	
	p_NtParamProjSOTSenPrep				:= ADR(tyNtParamCurr.bProjSOTSensorPrep);
	p_NtParamSOTReadyOnFirst			:= ADR(tyNtParamCurr.bSOTReadyOnFirst);
	
	p_NtParamShowMESName				:= ADR(tyNtParamCurr.bShowMESName);
	p_NtParamShowFMorMESActive			:= ADR(tyNtParamCurr.bShowFMorMESActive);
	
	p_NtParamProjUsFixToFixRail			:= ADR(tyNtParamCurr.bProjUSFixToFixRail);
	p_NtParamUIConvDirRL				:= ADR(tyNtParamCurr.bUIConvDirRL);
	
	p_NtParamProjServoPullPusherPrep	:= ADR(tyNtParamCurr.bProjServoPullerPusherPrep);
	p_NtParamPPProgNm					:= ADR(tyNtParamCurr.sPPProgNm);
	p_NtParamPPDevice					:= ADR(tyNtParamCurr.sPPDevice);
	p_NtParamPPNode						:= ADR(tyNtParamCurr.usiPPNode);
	p_NtParamPPDir						:= ADR(tyNtParamCurr.bPPDir);
	p_NtParamPPDirBl					:= ADR(tyNtParamCurr.bPPDirBl);
	p_NtParamPPPitchInUM				:= ADR(tyNtParamCurr.diPPPitchInUM);
	p_NtParamPPMovBlDistInUM			:= ADR(tyNtParamCurr.diPPMovBlDistInUM);
	p_NtParamPPParamInHm				:= ADR(tyNtParamCurr.tyPPParamInHm);
	p_NtParamPPParamInConvert			:= ADR(tyNtParamCurr.tyPPParamInConvert);
	p_NtParamPPParam					:= ADR(tyNtParamCurr.tyPPParam);
	p_NtParamPPAcc						:= ADR(tyNtParamCurr.tyPPParam.diAccInMS);
	p_NtParamPPDec						:= ADR(tyNtParamCurr.tyPPParam.diDecInMS);
	p_NtParamPPAutoSpd					:= ADR(tyNtParamCurr.tyPPParam.diAutoSpdInUMPS);
	p_NtParamPPTuning					:= ADR(tyNtParamCurr.tyPPTuning);
	p_NtParamPPMotorType				:= ADR(tyNtParamCurr.ePPServoMotorType);
	
	p_NtParamCurtainSenPrep				:= ADR(tyNtParamCurr.bCurtainSenPrep);
	p_NtParamProjMagHeightChkPrep		:= ADR(tyNtParamCurr.bProjMagHeightChkPrep);
	p_NtParamTravGotoMagWidthChkPt1		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt1);
	p_NtParamTravGotoMagWidthChkPt2		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt2);
	p_NtParamTravGotoMagWidthChkPt3		:= ADR(tyNtParamCurr.diTravGoToMagWidthChkPt3);
	
	p_NtParamProjScanPrep				:= ADR(tyNtParamCurr.bProjScanPrep); //Top Btm TCP
	p_NtParamProjOpConPrep				:= ADR(tyNtParamCurr.bProjOpConPrep);
	p_NtParamPPTorqParam				:= ADR(tyNtParamCurr.tyPPTorqParam);
	p_NtParamProjLifTravMnlLoad			:= ADR(tyNtParamCurr.bProjLifTravMnlLoad);

	p_NtParamMidSenNcNo					:= ADR(tyNtParamCurr.eMidSenNcNoType);
	p_NtParamCustomerReq				:=ADR(tyNtParamCurr.eCustomerReq);
	
	
	p_NtParamHermesSvyPrep			:= ADR(tyNtParamCurr.bHermesSvyPrep);
	p_NtParamHermesSvyFirstMc		:= ADR(tyNtParamCurr.bHermesSvyFirstMcInTheLine);//First Machine in the line, set for Loader / Destacker
	p_NtParamHermesSvyMagTypeMc		:= ADR(tyNtParamCurr.bHermesSvyMagTypeMc);//Magazine type Machine
	p_NtParamSvyHermesProgNm		:= ADR(tyNtParamCurr.sSvyHermesProgNm);
	p_NtParamSvyHermesConfigFileNm	:= ADR(tyNtParamCurr.sSvyHermesConfigFileNm);
	p_NtParamSvyHermesFileKeepDay	:= ADR(tyNtParamCurr.udiSvyHermesFileKeepDay);
	p_NtParamSvyHermesAliveTmInSec	:= ADR(tyNtParamCurr.udiSvyHermesAliveTmInSec);
	p_NtParamSvyHermesConnTO		:= ADR(tyNtParamCurr.tSvyHermesConnTO);
	p_NtParamSvyHermesRetainFileNm	:= ADR(tyNtParamCurr.sSvyHermesRetainFileNm);
	p_NtParamDSHermesRetainFileNm	:= ADR(tyNtParamCurr.sDSHermesRetainFileNm); //50 Board Data retain file name
	p_NtParamDSHermesMcCycleTm	    := ADR(tyNtParamCurr.rMachineCycleTime); //Machine Board Transfer Cycle Time
	p_NtParamDSHermesAWCycleTm	    := ADR(tyNtParamCurr.rAutoWidthCycleTime); //Machine Autowidth Cycle Time
	p_NtParamHermesScannerPrep    	:= ADR(tyNtParamCurr.bHermesScannerPrep);
	p_NtParamHermesInput            := ADR(tyNtParamCurr.iInput);//Total Input = How many inlet
	p_NtParamHermesOutput           := ADR(tyNtParamCurr.iOutput);//Total Outlet  = How many outlet
	//AutoRcp
	p_NtParamAutoRcpPrep			:= ADR(tyNtParamCurr.bAutoRcpPrep);
	p_NtParamAutoRcpParamLmt		:= ADR(tyNtParamCurr.eAutoRcpParamLmt);
	p_NtParamAutoRcpPrecededBy		:= ADR(tyNtParamCurr.eAutoRcpPrecededBy);
	p_NtParamAutoRcpProgNm			:= ADR(tyNtParamCurr.sAutoRcpProgNm);
	
	(* Always Change If Project Change *)
	//Inlet Stopper
	p_NtParamProjInletStopperPrep			:= ADR(tyNtParamCurr.bProjInletStopperPrep);
	p_NtParamInletStopperProgNm				:= ADR(tyNtParamCurr.sInletStopperProgNm);
	p_NtParamInletStopperTwoCtrlIn			:= ADR(tyNtParamCurr.bInletStopperTwoCtrlIn);
	p_NtParamInletStopperExtDlyTm			:= ADR(tyNtParamCurr.tInletStopperExtDlyTm);
	p_NtParamInletStopperRetDlyTm			:= ADR(tyNtParamCurr.tInletStopperRetDlyTm);
	
	//Language
	p_NtParamProjChinesePrep 	:= ADR(tyNtParamCurr.bChinesePrep);
	p_NtParamProjGermanPrep 	:= ADR(tyNtParamCurr.bGermanPrep);

	//HMI Mac Address
	p_NtParamHWInfoHMIMacAddress		:= ADR(tyNtParamCurr.sHWInfoHMIMacAddress);
END_PROGRAM