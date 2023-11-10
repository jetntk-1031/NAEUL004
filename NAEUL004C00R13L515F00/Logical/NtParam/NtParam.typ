(*2020-07-28*)
(**)

TYPE
	tyUILmt : 	STRUCT 
		diMax : DINT;
		diMin : DINT;
	END_STRUCT;
END_TYPE

(**)
(*Data*)

TYPE
	tyNtParam : 	STRUCT 
		tyDISettings : tyDigitalInputSettings := (diSafetyRlySig:=1,diEStopSig:=2,diCoverSWSig:=3,diUBAA:=4,diUBAB:=5,diUBAAStat:=6,diUBABStat:=7,diPusherExtRS:=12,diPusherRetRS:=13,diConvLftSen:=27,diConvMidSen:=28,diConvRgtSen:=29,diConvClrSen:=30,diOvenInfeedSigA:=0,diOvenInfeedSigB:=0,diLifterTimingBeltSen:=10,diLifterSafetyLmtSW1:=11,diLifterSafetyLmtSW2:=0,diMag1FixedClampRS:=0,diMag1FixedUnclampRS:=0,diMag1RemoteClampRS:=0,diMag1RemoteUnclampRS:=0,diMag2FixedClampRS:=0,diMag2FixedUnclampRS:=0,diMag2RemoteClampRS:=0,diMag2RemoteUnclampRS:=0,diMag3FixedClampRS:=0,diMag3FixedUnclampRS:=0,diMag3RemoteClampRS:=0,diMag3RemoteUnclampRS:=0,diInShutterOpenRS:=14,diInShutterCloseRS:=15,diOutShutterOpenRS:=16,diOutShutterCloseRS:=17,diMagPresentSen1:=8,diMagPresentSen2:=9,diMagPresentSen3:=19,diMagConvEntSen1:=0,diMagConvEntSen2:=0,diMagConvEntSen3:=0,diMag1AIVInPosSen1:=0,diMag1AIVInPosSen2:=0,diMag2AIVInPosSen1:=0,diMag2AIVInPosSen2:=0,diMag3AIVInPosSen1:=0,diMag3AIVInPosSen2:=0,diMag1OrientChkSen1:=0,diMag1OrientChkSen2:=0,diMag2OrientChkSen1:=0,diMag2OrientChkSen2:=0,diMag3OrientChkSen1:=0,diMag3OrientChkSen2:=0,diUSWidthChkSen:=0,diConvLineAInletSen:=0,diConvLineBInletSen:=0,diMagConvHeightSen1:=0,diMagConvHeightSen2:=0,diMagConvHeightSen3:=0,diMagConvSmallMagSen1:=0,diMagConvSmallMagSen2:=0,diMagConvSmallMagSen3:=0,diMagConvLargeMagSen1:=0,diMagConvLargeMagSen2:=0,diMagConvLargeMagSen3:=0,diMagConvCAB717MagSen1:=0,diMagConvCAB717MagSen2:=0,diMagConvCAB717MagSen3:=0,diMag1SelUnClampRS:=0,diMag2SelUnClampRS:=0,diMag3SelUnClampRS:=0,diMag1WallEngageRS:=0,diMag1WallDisengageRS:=0,diMag2WallEngageRS:=0,diMag2WallDisengageRS:=0,diMag3WallEngageRS:=0,diMag3WallDisengageRS:=0,diMag1SafetyBarExtRS:=0,diMag1SafetyBarRetRS:=0,diMag2SafetyBarExtRS:=0,diMag2SafetyBarRetRS:=0,diMag3SafetyBarExtRS:=0,diMag3SafetyBarRetRS:=0,diSOT1Receive:=0,diSOT1AIVError:=0,diSOT1AIVSizeLarge:=0,diSOT1AIVReady:=0,diSOT1AIVAvailable:=0,diSOT2Receive:=0,diSOT2AIVError:=0,diSOT2AIVSizeLarge:=0,diSOT2AIVReady:=0,diSOT2AIVAvailable:=0,diSOT3Receive:=0,diSOT3AIVError:=0,diSOT3AIVSizeLarge:=0,diSOT3AIVReady:=0,diSOT3AIVAvailable:=0,diSOT4Receive:=0,diSOT4AIVError:=0,diSOT4AIVSizeLarge:=0,diSOT4AIVReady:=0,diSOT4AIVAvailable:=0,diFleetManagerReady:=0,diPusherExtSlwSen:=0,diPusherRetSlwSen:=0,diMtrPshrTorqueSig:=0,diMtrPshrAlmSig:=0,diMagWidthChkSen:=0,diPshrAntiJam:=20,diInMagConvEntSen:=0,diInMagConvExtSen:=0,diInMagConvMidSen:=0,diOutMagConvEntSen:=0,diOutMagConvExtSen:=0,diOutMagConvMidSen:=0,diInMagConv2EntSen:=0,diInMagConv2ExtSen:=0,diInMagConv2MidSen:=0,diOutMagConv2EntSen:=0,diOutMagConv2ExtSen:=0,diOutMagConv2MidSen:=0,diLifterLmtSW:=0,diLifter2LmtSW:=0,diMtrOverloadSig:=0,diOutShutterOpenRS2:=0,diOutShutterCloseRS2:=0,diOutShutterOpenRS3:=0,diOutShutterCloseRS3:=0,diMag1FixedClampSen:=0,diMag2FixedClampSen:=0,diMag3FixedClampSen:=0,diCurtainSenPB:=0,diCurtainSen:=0,diCurtainSafetySig:=0,diHighMagDetSen1:=0,diHighMagDetSen2:=0,diHighMagDetSen3:=0,diInletStopperASen:=0,diScanComplSig:=0,diPCBScanSen:=0,diSPARE17:=0,diSPARE18:=0,diSPARE19:=0,diSPARE20:=0);
		tyDOSettings : tyDigitalOutputSettings := (diSafetyRlyRst:=1,diTLRed:=4,diTLAmber:=3,diTLGreen:=2,diBuzzer:=5,diUSBA:=8,diUSBB:=9,diOvenInfoSigA:=7,diOvenInfoSigB:=10,diPusherExtCtrl:=11,diStopperUnblkCtrlA:=0,diStopperUnblkCtrlB:=0,diMag1FixedClampCtrl:=0,diMag1RemoteClampCtrl:=0,diMag2FixedClampCtrl:=0,diMag2RemoteClampCtrl:=0,diMag3FixedClampCtrl:=0,diMag3RemoteClampCtrl:=0,diInShutterOpenCtrl:=15,diInShutterCloseCtrl:=16,diOutShutterOpenCtrl:=17,diOutShutterCloseCtrl:=18,diMag1ConvMtrIn:=0,diMag1ConvMtrOut:=0,diMag2ConvMtrIn:=0,diMag2ConvMtrOut:=0,diMag3ConvMtrIn:=0,diMag3ConvMtrOut:=0,diMag1SelClampCtrl:=0,diMag2SelClampCtrl:=0,diMag3SelClampCtrl:=0,diPushConvMtrOn:=12,diMag1WallEngageCtrl:=0,diMag2WallEngageCtrl:=0,diMag3WallEngageCtrl:=0,diMag1SafetyBarRetCtrl:=0,diMag2SafetyBarRetCtrl:=0,diMag3SafetyBarRetCtrl:=0,diSOT1MagError:=0,diSOT1MagSizeLarge:=0,diSOT1MagReady:=0,diSOT1MagAvailable:=0,diSOT2MagError:=0,diSOT2MagSizeLarge:=0,diSOT2MagReady:=0,diSOT2MagAvailable:=0,diSOT3MagError:=0,diSOT3MagSizeLarge:=0,diSOT3MagReady:=0,diSOT3MagAvailable:=0,diSOT4MagError:=0,diSOT4MagSizeLarge:=0,diSOT4MagReady:=0,diSOT4MagAvailable:=0,diMagAWOpenLimByp1:=0,diMagAWOpenLimByp2:=0,diMagAWOpenLimByp3:=0,diMagAWOpenLimByp4:=0,diMagAWSmallLimSen1:=0,diMagAWSmallLimSen2:=0,diMagAWSmallLimSen3:=0,diMagAWSmallLimSen4:=0,diMag1ReqToBring:=0,diMag1ReqToGet:=0,diMag2ReqToBring:=0,diMag2ReqToGet:=0,diMag3ReqToBring:=0,diMag3ReqToGet:=0,diMag4ReqToBring:=0,diMag4ReqToGet:=0,diMtrPshrExt:=0,diMtrPshrRet:=0,diMtrPshrOn:=0,diMtrPshrBrakeRls:=0,diMtrPshrSpdBinBit0:=0,diMtrPshrSpdBinBit1:=0,diMtrPshrSpdBinBit2:=0,diMtrPshrAlmRst:=0,diInMagConvMtrOn:=0,diOutMagConvMtrOn:=0,diInMagConv2MtrOn:=0,diOutMagConv2MtrOn:=0,diEntTopStprUnblkCtrl:=0,diMidTopStprUnblkCtrl:=0,diExtTopStprUnblkCtrl:=0,diMidBtmStprUnblkCtrl:=0,diExtBtmStprUnblkCtrl:=0,diEntTopStprUnblkCtrl2:=0,diMidTopStprUnblkCtrl2:=0,diExtTopStprUnblkCtrl2:=0,diMidBtmStprUnblkCtrl2:=0,diExtBtmStprUnblkCtrl2:=0,diMtrPwrRly:=0,diMag1FixedClampOpenCtrl:=0,diMag1RemoteClampOpenCtrl:=0,diMag2FixedClampOpenCtrl:=0,diMag2RemoteClampOpenCtrl:=0,diMag3FixedClampOpenCtrl:=0,diMag3RemoteClampOpenCtrl:=0,diOutShutterOpenCtrl2:=0,diOutShutterCloseCtrl2:=0,diOutShutterOpenCtrl3:=0,diOutShutterCloseCtrl3:=0,diBypCurtainSen:=0,diRstCurtainSen:=0,diBypCurtainPBLED:=6,diInletStopperRetCtrl:=0,diInletStopperExtCtrl:=0,diScanTrigSig:=0,diMag1ExitPCB:=0,diMag2ExitPCB:=0,diMag3ExitPCB:=0,diMag1SelUnClampCtrl:=0);
		bAWPusherPrep : BOOL := FALSE;
		bAWPrep : BOOL := TRUE;
		bLFPrep : BOOL := TRUE;
		bLeaderMc : BOOL := FALSE;
		bLFUsrSetPrep : BOOL := TRUE;
		diLFWidthLimit : DINT := 3000;
		bLFProdWidthChk : BOOL := FALSE;
		bUSWidthChkPrep : BOOL := FALSE;
		bLCSLFPrep : BOOL := FALSE;
		bLCSReqRcpPrep : BOOL := FALSE;
		bLCSManageRcpPrep : BOOL := FALSE;
		bLCSLiveDatPrep : BOOL := FALSE;
		bIPCSMEMA9851ExtdPrep : BOOL := TRUE;
		bVSMEMAPrep : BOOL := TRUE;
		bHermesPrep : BOOL := FALSE;
		bHermesRmtPrep : BOOL := FALSE;
		bOvenInfoPrep : BOOL := TRUE;
		bOvenInfoExtdPrep : BOOL := FALSE;
		bSSaverPrep : BOOL := TRUE;
		diAWPushPulOffsetInUM : DINT := 0;
		diWidthOffsetInUM : DINT := 0;
		sJobNo : STRING[30] := '2023-0329J01';
		usiNtAddr : USINT := 4;
		bProjLifterMagPlatform : BOOL := TRUE;
		bProjLaneBPrep : BOOL := FALSE;
		bProjBrdPerSltPrep : BOOL := FALSE;
		bProjLongBrdPrep : BOOL := FALSE;
		bProjInletShutPrep : BOOL := TRUE;
		bProjOutletShutPrep : BOOL := TRUE;
		bProjStopperAPrep : BOOL := FALSE;
		bProjStopperBPrep : BOOL := FALSE;
		bProjMag1ConvPrep : BOOL := FALSE;
		bProjMag2ConvPrep : BOOL := FALSE;
		bProjMag3ConvPrep : BOOL := FALSE;
		bProjLifter2Prep : BOOL := FALSE;
		bProjMagConvLane1Prep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjMagConvLane2Prep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopEntStprPrep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopMidStprPrep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopExtStprPrep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjBtmMidStprPrep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjBtmExtStprPrep : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopEntStprPrep2 : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopMidStprPrep2 : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjTopExtStprPrep2 : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjBtmMidStprPrep2 : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjBtmExtStprPrep2 : BOOL := FALSE; (*TopBtm Conv, Lifter Conv*)
		bProjMagOrientChkSenPrep : BOOL := FALSE;
		bProjAGVPrep : BOOL := FALSE;
		bProjTCPAGVSigPrep : BOOL := FALSE;
		bProjBypsInitConvPrep : BOOL := TRUE;
		bProjRlsNewProdPrep : BOOL := FALSE;
		bProjBtnInsertRmvMag : BOOL := TRUE; (*fixed type*)
		bProjSOTSensorPrep : BOOL := FALSE;
		bProjMotorizedPusherPrep : BOOL := FALSE;
		bProjMagAWPrep : BOOL := FALSE;
		bProjMagSafetyBarPrep : BOOL := TRUE;
		diProjMagMinSlt : DINT := 1;
		diProjMagMaxSlt : DINT := 50;
		eProjMag : eULMag := ULMagTriple;
		eProjConvDir : eConvDir := ConvDirLToR;
		eProjMagConvDir : eConvDir := ConvDirLToL;
		eProjMagBuffferActLoad : eLifMagULUpdateData := BufferActLoadWhenStarted;
		eProjInMagConvDir : eConvDir := ConvDirRToL; (*Top*)
		eProjOutMagConvDir : eConvDir := ConvDirLToR; (*Bottom*)
		eProjLifterMagConvDir : eConvDir := ConvDirRToR; (*LifterConv*)
		eProjInMagConv2Dir : eConvDir := ConvDirRToL; (*Top*)
		eProjOutMagConv2Dir : eConvDir := ConvDirLToR; (*Bottom*)
		eProjLifterMagConv2Dir : eConvDir := ConvDirRToR; (*LifterConv*)
		sUsrFolderProgNm : STRING[15] := 'UsrFolder';
		sLibVersionProgNm : STRING[15] := 'LibVer';
		sTimeProgNm : STRING[15] := 'Time';
		sHWInfoProgNm : STRING[15] := 'HWInfo';
		sHWInfoDevice : STRING[3] := 'IF2';
		tTLChgRcpBlinkTm : TIME := T#500ms;
		tTLErrBlinkTm : TIME := T#500ms;
		tBuzErrOnTm : TIME := T#500ms;
		tBuzErrRestTm : TIME := T#500ms;
		usiBuzErrOnCntr : USINT := 3;
		bBuzErrStopSeqEn : BOOL := FALSE;
		usiBuzErrStopSeqCntr : USINT := 3;
		tTLWarnBlinkTm : TIME := T#500ms;
		tBuzWarnOnTm : TIME := T#500ms;
		tBuzWarnRestTm : TIME := T#5s;
		usiBuzWarnOnCntr : USINT := 3;
		bBuzWarnStopSeqEn : BOOL := FALSE;
		usiBuzWarnStopSeqCntr : USINT := 3;
		tTLWarn1BlinkTm : TIME := T#500ms;
		tBuzWarn1OnTm : TIME := T#500ms;
		tBuzWarn1RestTm : TIME := T#5s;
		usiBuzWarn1OnCntr : USINT := 3;
		bBuzWarn1StopSeqEn : BOOL := FALSE;
		usiBuzWarn1StopSeqCntr : USINT := 3;
		tTLWarn2BlinkTm : TIME := T#500ms;
		tBuzWarn2OnTm : TIME := T#500ms;
		tBuzWarn2RestTm : TIME := T#5s;
		usiBuzWarn2OnCntr : USINT := 3;
		bBuzWarn2StopSeqEn : BOOL := FALSE;
		usiBuzWarn2StopSeqCntr : USINT := 3;
		tTLWarn3BlinkTm : TIME := T#500ms;
		tBuzWarn3OnTm : TIME := T#500ms;
		tBuzWarn3RestTm : TIME := T#5s;
		usiBuzWarn3OnCntr : USINT := 3;
		bBuzWarn3StopSeqEn : BOOL := FALSE;
		usiBuzWarn3StopSeqCntr : USINT := 3;
		tTLWarn4BlinkTm : TIME := T#500ms;
		tBuzWarn4OnTm : TIME := T#500ms;
		tBuzWarn4RestTm : TIME := T#5s;
		usiBuzWarn4OnCntr : USINT := 3;
		bBuzWarn4StopSeqEn : BOOL := FALSE;
		usiBuzWarn4StopSeqCntr : USINT := 3;
		tTLWarn5BlinkTm : TIME := T#500ms;
		tBuzWarn5OnTm : TIME := T#500ms;
		tBuzWarn5RestTm : TIME := T#5s;
		usiBuzWarn5OnCntr : USINT := 3;
		bBuzWarn5StopSeqEn : BOOL := FALSE;
		usiBuzWarn5StopSeqCntr : USINT := 3;
		tBuzAlertOnTm : TIME := T#500ms;
		tBuzAlertRestTm : TIME := T#5s;
		usiBuzAlertOnCntr : USINT := 3;
		bBuzAlertStopSeqEn : BOOL := FALSE;
		usiBuzAlertStopSeqCntr : USINT := 3;
		tTLBlueBlinkTm : TIME := T#500ms;
		tTLAmberBlinkTm : TIME := T#500ms;
		tTLWhiteBlinkTm : TIME := T#500ms;
		tTLRedBlinkTm : TIME := T#500ms;
		tTLGreenBlinkTm : TIME := T#500ms;
		eTLBuzMode : eTLBuzMod := TLBuzModNutek;
		sAlmProgNm : STRING[15] := 'Alarm';
		udiAlmFileKeepDay : UDINT := 30;
		sProdRcpProgNm : STRING[15] := 'ProdRcp';
		sProdRcpListFileNm : STRING[80] := 'ProductRecipeList.dat';
		sProdRcpSingleFileNm : STRING[80] := 'ProductRecipe.dat';
		sMpProdRcpProgNm : STRING[15] := 'MpProdRcp';
		sMpProdRcpFileNm : STRING[255] := 'MpProductRecipe.xml';
		sMpProdRcpPVNm : STRING[100] := 'MpProdRcp:a_tyMpProdRcp1';
		sMagRcpProgNm : STRING[15] := 'MagRcp';
		sMagRcpListFileNm : STRING[80] := 'MagazineRecipeList.dat';
		sMagRcpSingleFileNm : STRING[80] := 'MagazineRecipe.dat';
		sMcParamProgNm : STRING[15] := 'McParam';
		sMcParamFileNm : STRING[80] := 'MachineParameter.dat';
		sUsrMgmtProgNm : STRING[15] := 'UsrMgmt';
		sBffr1ProgNm : STRING[15] := 'Buffer 1';
		sBffr1FileNm : STRING[80] := 'Buffer1.dat';
		bBffr1NxtLoadSeq : BOOL := TRUE;
		sBffr2ProgNm : STRING[15] := 'Buffer 2';
		sBffr2FileNm : STRING[80] := 'Buffer2.dat';
		bBffr2NxtLoadSeq : BOOL := TRUE;
		sBffr3ProgNm : STRING[15] := 'Buffer 3';
		sBffr3FileNm : STRING[80] := 'Buffer3.dat';
		bBffr3NxtLoadSeq : BOOL := TRUE;
		sUSSMEMAAProgNm : STRING[15] := 'USSMEMA A';
		tUSSMEMAARstDlyTm : TIME := T#500ms;
		tUSSMEMAASigInChkTm : TIME := T#100ms;
		sUSSMEMABProgNm : STRING[15] := 'USSMEMA B';
		tUSSMEMABRstDlyTm : TIME := T#500ms;
		tUSSMEMABSigInChkTm : TIME := T#100ms;
		sUSSMEMA1ProgNm : STRING[15] := 'Mag1_US';
		tUSSMEMA1RstDlyTm : TIME := T#0s;
		tUSSMEMA1SigInChkTm : TIME := T#100ms;
		sUSSMEMA2ProgNm : STRING[15] := 'Mag2_US';
		tUSSMEMA2RstDlyTm : TIME := T#0s;
		tUSSMEMA2SigInChkTm : TIME := T#100ms;
		sUSSMEMA3ProgNm : STRING[15] := 'Mag3_US';
		tUSSMEMA3RstDlyTm : TIME := T#0s;
		tUSSMEMA3SigInChkTm : TIME := T#100ms;
		sDSSMEMA1ProgNm : STRING[15] := 'Mag1_DS';
		tDSSMEMA1RstDlyTm : TIME := T#0s;
		tDSSMEMA1SigInChkTm : TIME := T#100ms;
		sDSSMEMA2ProgNm : STRING[15] := 'Mag2_DS';
		tDSSMEMA2RstDlyTm : TIME := T#0s;
		tDSSMEMA2SigInChkTm : TIME := T#100ms;
		sDSSMEMA3ProgNm : STRING[15] := 'Mag3_DS';
		tDSSMEMA3RstDlyTm : TIME := T#0s;
		tDSSMEMA3SigInChkTm : TIME := T#100ms;
		sInShutterProgNm : STRING[15] := 'Inlet Shutter';
		bInShutterTwoCtrlIn : BOOL := TRUE;
		tInShutterExtTO : TIME := T#20s;
		tInShutterRetTO : TIME := T#20s;
		sOutShutterProgNm : STRING[15] := 'Outlet Shutter';
		bOutShutterTwoCtrlIn : BOOL := TRUE;
		tOutShutterExtTO : TIME := T#20s;
		tOutShutterRetTO : TIME := T#20s;
		sSelClamp1ProgNm : STRING[15] := 'Sel Clamp 1';
		bSelClamp1TwoCtrlIn : BOOL := TRUE;
		tSelClamp1ExtDlyTm : TIME := T#10s;
		tSelClamp1RetDlyTm : TIME := T#10s;
		sSelClamp2ProgNm : STRING[15] := 'Sel Clamp 2';
		bSelClamp2TwoCtrlIn : BOOL := FALSE;
		tSelClamp2ExtDlyTm : TIME := T#10s;
		tSelClamp2RetDlyTm : TIME := T#10s;
		sSelClamp3ProgNm : STRING[15] := 'Sel Clamp 3';
		bSelClamp3TwoCtrlIn : BOOL := FALSE;
		tSelClamp3ExtDlyTm : TIME := T#10s;
		tSelClamp3RetDlyTm : TIME := T#10s;
		sTopEntStprProgNm : STRING[15] := 'Top Ent Stpr';
		bTopEntStprTwoCtrlIn : BOOL := FALSE;
		tTopEntStprExtDlyTm : TIME := T#1s;
		tTopEntStprRetDlyTm : TIME := T#1s;
		sTopMidStprProgNm : STRING[15] := 'Top Mid Stpr';
		bTopMidStprTwoCtrlIn : BOOL := FALSE;
		tTopMidStprExtDlyTm : TIME := T#1s;
		tTopMidStprRetDlyTm : TIME := T#1s;
		sTopExtStprProgNm : STRING[15] := 'Top Ext Stpr';
		bTopExtStprTwoCtrlIn : BOOL := FALSE;
		tTopExtStprExtDlyTm : TIME := T#1s;
		tTopExtStprRetDlyTm : TIME := T#1s;
		sBtmMidStprProgNm : STRING[15] := 'Top Mid Stpr';
		bBtmMidStprTwoCtrlIn : BOOL := FALSE;
		tBtmMidStprExtDlyTm : TIME := T#1s;
		tBtmMidStprRetDlyTm : TIME := T#1s;
		sBtmExtStprProgNm : STRING[15] := 'Btm Ext Stpr';
		bBtmExtStprTwoCtrlIn : BOOL := FALSE;
		tBtmExtStprExtDlyTm : TIME := T#1s;
		tBtmExtStprRetDlyTm : TIME := T#1s;
		sTopEntStprProgNm2 : STRING[15] := 'Top Ent Stpr2';
		bTopEntStprTwoCtrlIn2 : BOOL := FALSE;
		tTopEntStprExtDlyTm2 : TIME := T#1s;
		tTopEntStprRetDlyTm2 : TIME := T#1s;
		sTopMidStprProgNm2 : STRING[15] := 'Top Mid Stpr2';
		bTopMidStprTwoCtrlIn2 : BOOL := FALSE;
		tTopMidStprExtDlyTm2 : TIME := T#1s;
		tTopMidStprRetDlyTm2 : TIME := T#1s;
		sTopExtStprProgNm2 : STRING[15] := 'Top Ext Stpr2';
		bTopExtStprTwoCtrlIn2 : BOOL := FALSE;
		tTopExtStprExtDlyTm2 : TIME := T#1s;
		tTopExtStprRetDlyTm2 : TIME := T#1s;
		sBtmMidStprProgNm2 : STRING[15] := 'Top Mid Stpr2';
		bBtmMidStprTwoCtrlIn2 : BOOL := FALSE;
		tBtmMidStprExtDlyTm2 : TIME := T#1s;
		tBtmMidStprRetDlyTm2 : TIME := T#1s;
		sBtmExtStprProgNm2 : STRING[15] := 'Btm Ext Stpr2';
		bBtmExtStprTwoCtrlIn2 : BOOL := FALSE;
		tBtmExtStprExtDlyTm2 : TIME := T#1s;
		tBtmExtStprRetDlyTm2 : TIME := T#1s;
		sStopperAProgNm : STRING[15] := 'Stopper A';
		bStopperATwoCtrlIn : BOOL := FALSE;
		tStopperAExtDlyTm : TIME := T#1s;
		tStopperARetDlyTm : TIME := T#1s;
		sStopperBProgNm : STRING[15] := 'Stopper B';
		bStopperBTwoCtrlIn : BOOL := FALSE;
		tStopperBExtDlyTm : TIME := T#1s;
		tStopperBRetDlyTm : TIME := T#1s;
		sPshrConvProgNm : STRING[15] := 'PusherConv';
		bPshrConvOnDirMod : BOOL := FALSE;
		tPshrConvMtrOffDlyTm : TIME := T#0s;
		tPshrConvPshrExtTO : TIME := T#20s;
		tPshrConvPshrRetTO : TIME := T#20s;
		sMag1SafetyBarProgNm : STRING[15] := 'Mag1 SafetyBar';
		bMag1SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag1SafetyBarExtTO : TIME := T#20s;
		tMag1SafetyBarRetTO : TIME := T#20s;
		sMag2SafetyBarProgNm : STRING[15] := 'Mag2 SafetyBar';
		bMag2SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag2SafetyBarExtTO : TIME := T#20s;
		tMag2SafetyBarRetTO : TIME := T#20s;
		sMag3SafetyBarProgNm : STRING[15] := 'Mag3 SafetyBar';
		bMag3SafetyBarTwoCtrlIn : BOOL := FALSE;
		tMag3SafetyBarExtTO : TIME := T#20s;
		tMag3SafetyBarRetTO : TIME := T#20s;
		sMag1AWEngageProgNm : STRING[15] := 'Mag1 AWEngage';
		bMag1AWEngageTwoCtrlIn : BOOL := FALSE;
		tMag1AWEngageExtTO : TIME := T#20s;
		tMag1AWEngageRetTO : TIME := T#20s;
		sMag2AWEngageProgNm : STRING[15] := 'Mag2 AWEngage';
		bMag2AWEngageTwoCtrlIn : BOOL := FALSE;
		tMag2AWEngageExtTO : TIME := T#20s;
		tMag2AWEngageRetTO : TIME := T#20s;
		sMag3AWEngageProgNm : STRING[15] := 'Mag3 AWEngage';
		bMag3AWEngageTwoCtrlIn : BOOL := FALSE;
		tMag3AWEngageExtTO : TIME := T#20s;
		tMag3AWEngageRetTO : TIME := T#20s;
		sMagConv1ProgNm : STRING[15] := 'MagConv 1';
		bMagConv1OnDirMod : BOOL := FALSE;
		tMagConv1MtrOffDlyTm : TIME := T#0s;
		tMagConv1ClprClampTO : TIME := T#20s;
		tMagConv1ClprUnclampTO : TIME := T#20s;
		sMagConv2ProgNm : STRING[15] := 'MagConv 2';
		bMagConv2OnDirMod : BOOL := FALSE;
		tMagConv2MtrOffDlyTm : TIME := T#0s;
		tMagConv2ClprClampTO : TIME := T#20s;
		tMagConv2ClprUnclampTO : TIME := T#20s;
		sMagConv3ProgNm : STRING[15] := 'MagConv 3';
		bMagConv3OnDirMod : BOOL := FALSE;
		tMagConv3MtrOffDlyTm : TIME := T#0s;
		tMagConv3ClprClampTO : TIME := T#20s;
		tMagConv3ClprUnclampTO : TIME := T#20s;
		sMtrPshrProgNm : STRING[15] := 'Motorized Pshr';
		bMtrPshrDir : BOOL := TRUE;
		tMtrPshrAlmRstTm : TIME := T#1s;
		tMtrPshrAlmTrigTm : TIME := T#1s;
		tMtrPshrExtTO : TIME := T#20s;
		tMtrPshrRetTO : TIME := T#20s;
		diMtrPshrExtSlowSpd : DINT := 1;
		diMtrPshrRetSlowSpd : DINT := 3;
		diMtrPshrExtNomSpd : DINT := 4;
		diMtrPshrRetNomSpd : DINT := 8;
		diMtrPshrExtTorq : DINT := 50;
		diMtrPshrRetTorq : DINT := 100;
		diMtrPshrStartTorq : DINT := 100;
		sInMagConvProgNm : STRING[15] := 'Input Mag Conv'; (*Top*)
		bInMagConvOnDirMod : BOOL := FALSE;
		tInMagConvMtrOffDlyTm : TIME := T#500ms;
		sOutMagConvProgNm : STRING[15] := 'Output Mag Conv'; (*Bottom*)
		bOutMagConvOnDirMod : BOOL := FALSE;
		tOutMagConvMtrOffDlyTm : TIME := T#100ms;
		sLifterMagProgNm : STRING[15] := 'Lifter Mag Conv'; (*Lifter*)
		bLifterMagOnDirMod : BOOL := FALSE;
		tLifterMagMtrOffDlyTm : TIME := T#2s;
		tLifterMagClprClampTO : TIME := T#20s;
		tLifterMagClprUnclampTO : TIME := T#20s;
		sInMagConv2ProgNm : STRING[15] := 'In Mag Conv2';
		bInMagConv2OnDirMod : BOOL := FALSE;
		tInMagConv2MtrOffDlyTm : TIME := T#500ms;
		sOutMagConv2ProgNm : STRING[15] := 'Out Mag Conv2';
		bOutMagConv2OnDirMod : BOOL := FALSE;
		tOutMagConv2MtrOffDlyTm : TIME := T#100ms;
		sLifterMag2ProgNm : STRING[15] := 'Lift Mag Conv2';
		bLifterMag2OnDirMod : BOOL := FALSE;
		tLifterMag2MtrOffDlyTm : TIME := T#2s;
		tLifterMagClprClampTO2 : TIME := T#20s;
		tLifterMagClprUnclampTO2 : TIME := T#20s;
		sAWPushPullProgNm : STRING[15] := 'AWPusher';
		sAWPushPullDevice : STRING[3] := 'IF7';
		usiAWPushPullNode : USINT := 22;
		bAWPushPullDir : BOOL := FALSE;
		bAWPushPullDirBl : BOOL := FALSE;
		diAWPushPullPitchInUM : DINT := 3000;
		diAWPushPullMovBlDistInUM : DINT := 3000;
		tyAWPushPullParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=15000,diAcc:=50);
		tyAWPushPullParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000);
		tyAWPushPullParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=15000);
		tyAWPushPullTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=100,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=40,diPronetSpdLoopGain:=250,diPronetSpdIntegral:=200,diPronetTorqueFilter:=100,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=10,diPronetStopMode:=5);
		eAWPushPullServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sAWProgNm : STRING[15] := 'AWOpen';
		sAWDevice : STRING[3] := 'IF7';
		usiAWNode : USINT := 16;
		bAWDir : BOOL := TRUE;
		bAWDirBl : BOOL := FALSE;
		diAWPitchInUM : DINT := 3000;
		diAWMovBlDistInUM : DINT := 3000;
		tyAWParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=15000,diAcc:=25);
		tyAWParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000);
		tyAWParam : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=15000);
		tyAWTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=80,diPronetSpdLoopGain:=750,diPronetSpdIntegral:=600,diPronetTorqueFilter:=4,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=5);
		eAWServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sTravProgNm : STRING[15] := 'Trav';
		sTravDevice : STRING[3] := 'IF7';
		usiTravNode : USINT := 18;
		bTravDir : BOOL := TRUE;
		tyTravParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=50000,diAcc:=25);
		tyTravParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=25000,diPrimaryGearRatio:=1,diSecondaryGearRatio:=1); (*belt190530,estun1048576*)
		tyTravParam : tyMotionParam := (diAccInMS:=300,diDecInMS:=300,diAutoSpdInUMPS:=100000); (*500;1500*)
		tyTravTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=80,diPronetSpdLoopGain:=750,diPronetSpdIntegral:=600,diPronetTorqueFilter:=4,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=5);
		eTravServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		diTravAutoSpdLongBrdInUMPS : DINT := 100000;
		sLifterProgNm : STRING[15] := 'LifterBtm';
		sLifterDevice : STRING[3] := 'IF7';
		usiLifterNode : USINT := 17;
		bLifterDir : BOOL := TRUE;
		tyLifterParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=25000,diAcc:=25);
		tyLifterParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=10000,diPrimaryGearRatio:=1,diSecondaryGearRatio:=1); (*estun1048576*)
		tyLifterParam : tyMotionParam := (diAccInMS:=300,diDecInMS:=300,diAutoSpdInUMPS:=50000); (*closed spd150, 10s spd 5000(000)*)
		tyLifterTuning : tyMotionCANTuning := (diAsdaA2Inertia:=62,diAsdaA2PosLoopGain:=64,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=257,diAsdaA2SpdIntegral:=41,diAsdaA2LowPassFltr:=40,diAsdaA2AntiInterGain:=41,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=1116,diLex28LTNIintegralGain_P801:=321,diLex28LTNIVdeIntlGain_P802:=319,diLex28LTNPpropotionalGain_P803:=482,diLex28LTNUSERGAIN_P804:=1000,diLex28NLAFFLPFHZspringFil_P805:=5000,diLex28NLFILTDAMPING_P814:=35,diLex28NLFILTT1_P815:=25,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=40,diPronetSpdLoopGain:=250,diPronetSpdIntegral:=500,diPronetTorqueFilter:=100,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=10,diPronetStopMode:=5);
		eLifterServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sLifterProgNm2 : STRING[15] := 'Lifter2';
		sLifterDevice2 : STRING[3] := 'IF7';
		usiLifterNode2 : USINT := 25;
		bLifterDir2 : BOOL := TRUE;
		tyLifterParamInHm2 : tyMotionCANParamInHm := (diStartVelInUMPS:=25000,diAcc:=25);
		tyLifterParamInConvert2 : tyMotionCANParamInConvert := (diPitchInUM:=10000,diPulsePerRev:=1048576); (*estun1048576*)
		tyLifterParam2 : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=50000); (*closed spd150*)
		tyLifterTuning2 : tyMotionCANTuning := (diAsdaA2Inertia:=62,diAsdaA2PosLoopGain:=64,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=257,diAsdaA2SpdIntegral:=41,diAsdaA2LowPassFltr:=40,diAsdaA2AntiInterGain:=41,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=1116,diLex28LTNIintegralGain_P801:=321,diLex28LTNIVdeIntlGain_P802:=319,diLex28LTNPpropotionalGain_P803:=482,diLex28LTNUSERGAIN_P804:=1000,diLex28NLAFFLPFHZspringFil_P805:=5000,diLex28NLFILTDAMPING_P814:=35,diLex28NLFILTT1_P815:=25,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=40,diPronetSpdLoopGain:=250,diPronetSpdIntegral:=500,diPronetTorqueFilter:=100,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=10,diPronetStopMode:=5);
		eLifterServoMotorType2 : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		sDIProgNm : STRING[15] := 'DInput';
		sAGVProgNm : STRING[15] := 'AGV';
		sAGVMag1ProgNm : STRING[15] := 'AGVMag 1';
		sAGVMag2ProgNm : STRING[15] := 'AGVMag 2';
		sAGVMag3ProgNm : STRING[15] := 'AGVMag 3';
		sHermesProgNm : STRING[15] := 'Hermes';
		sHermesRetainFileNm : STRING[80] := 'Hermes.dat';
		sHermesConfigFileNm : STRING[80] := 'Hermes.dat';
		sUSHermesAProgNm : STRING[15] := 'USHermes A';
		udiUSHermesAFileKeepDay : UDINT := 7;
		udiUSHermesAAliveTmInSec : UDINT := 5;
		tUSHermesAConnTO : TIME := T#30s;
		sUSHermesBProgNm : STRING[15] := 'USHermes B';
		udiUSHermesBFileKeepDay : UDINT := 7;
		udiUSHermesBAliveTmInSec : UDINT := 5;
		tUSHermesBConnTO : TIME := T#30s;
		sRmtHermesProgNm : STRING[15] := 'RmtHermes';
		sRmtHermesConfigFileNm : STRING[80] := 'RmtHermes.dat';
		udiRmtHermesFileKeepDay : UDINT := 7;
		udiRmtHermesAliveTmInSec : UDINT := 5;
		udiRmtHermesSndBffrSize : UDINT := 65536;
		udiRmtHermesRcvBffrSize : UDINT := 65536;
		sLFLeaderProgNm : STRING[15] := 'LFLeader';
		tLFLeaderOnlineChkDlyTm : TIME := T#20s;
		tLFLeaderSetTmOffDlyTm : TIME := T#10s;
		sLFFollowerProgNm : STRING[15] := 'Follower';
		sFollower1ProgNm : STRING[15] := 'Follower 1';
		sFollower2ProgNm : STRING[15] := 'Follower 2';
		sLCSProgNm : STRING[15] := 'LCS';
		sLCSMngRcpProgNm : STRING[15] := 'LCSMngRcp';
		sLCSLFProgNm : STRING[15] := 'LCSLF';
		sOpsTravLifULProgNm : STRING[15] := 'OpsTravLifUL';
		sOpsMagUL1ProgNm : STRING[15] := 'OpsMagUL 1';
		sOpsMagUL2ProgNm : STRING[15] := 'OpsMagUL 2';
		sOpsMagUL3ProgNm : STRING[15] := 'OpsMagUL 3';
		sOpsMagConvUL1ProgNm : STRING[15] := 'OpsMagConvUL 1';
		sOpsMagConvUL2ProgNm : STRING[15] := 'OpsMagConvUL 2';
		sOpsMagConvUL3ProgNm : STRING[15] := 'OpsMagConvUL 3';
		sOpsInMagConv : STRING[15] := 'In Mag Conv';
		sOpsOutMagConv : STRING[15] := 'Out Mag Conv';
		sOpsMagConvStprProgNm : STRING[15] := 'OpsMagConvStpr1';
		sOpsMagConvStprProgNm1 : STRING[15] := 'OpsMagConvStpr2';
		tyProdRcpWidth : tyUILmt := (diMax:=250000,diMin:=70000);
		tyProdRcpMinSlt : tyUILmt := (diMax:=50,diMin:=1);
		tyProdRcpMaxSlt : tyUILmt := (diMax:=50,diMin:=1);
		tyProdRcpPitch : tyUILmt := (diMax:=49,diMin:=1);
		tyProdRcpBrdPerSlt : tyUILmt := (diMax:=2,diMin:=1);
		tyProdRcpMcModA : tyUILmt := (diMax:=2,diMin:=0);
		tyProdRcpMcModAB : tyUILmt := (diMax:=8,diMin:=0);
		tyProdRcpOvenMinReqFreeBffr : tyUILmt := (diMax:=50,diMin:=0);
		tyUISSaverTm : tyUILmt := (diMax:=1800,diMin:=10);
		tyUIConvInitTm : tyUILmt := (diMax:=60000,diMin:=3000);
		tyUIMagConvRunTm : tyUILmt := (diMax:=60000,diMin:=5000);
		tyUILifterTopPos : tyUILmt := (diMax:=750000,diMin:=-10000);
		tyUILifterBtmPos : tyUILmt := (diMax:=750000,diMin:=-10000);
		tyUITranInErrDlyTm : tyUILmt := (diMax:=120000,diMin:=1000);
		tyUIOvenMaxBffrBtwnMc : tyUILmt := (diMax:=100,diMin:=1);
		tyUIHermesSndAliveTm : tyUILmt := (diMax:=1800000,diMin:=5000);
		tyUIHermesLnID : tyUILmt := (diMax:=1000,diMin:=1);
		tyUIAntiGapSenOnTm : tyUILmt := (diMax:=5000,diMin:=0);
		tyUIAntiGapSenOffTm : tyUILmt := (diMax:=5000,diMin:=0);
		tyUISltToSltDist : tyUILmt := (diMax:=50000,diMin:=1000);
		tyUIAWTargetPos : tyUILmt := (diMax:=250000,diMin:=100000);
		tyUIAWStepSize : tyUILmt := (diMax:=400000,diMin:=-400000);
		tyUIAWNomSpd : tyUILmt := (diMax:=15000,diMin:=5000);
		tyUIAWSlwSpd : tyUILmt := (diMax:=15000,diMin:=5000);
		tyUITravTargetPos : tyUILmt := (diMax:=1170000,diMin:=-20000);
		tyUITravStepSize : tyUILmt := (diMax:=1170000,diMin:=-1170000);
		tyUITravNomSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUITravSlwSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUILifterTargetPos : tyUILmt := (diMax:=750000,diMin:=0);
		tyUILifterStepSize : tyUILmt := (diMax:=750000,diMin:=-750000);
		tyUILifterNomSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUILifterSlwSpd : tyUILmt := (diMax:=100000,diMin:=5000);
		tyUIMagAWTargetPos : tyUILmt := (diMax:=250000,diMin:=70000);
		tyUIMagAWStepSize : tyUILmt := (diMax:=250000,diMin:=-250000);
		tyUIMagAWNomSpd : tyUILmt := (diMax:=15000,diMin:=1000);
		tyUIMagAWSlwSpd : tyUILmt := (diMax:=15000,diMin:=1000);
		tyUILFIndexBeforeOven : tyUILmt := (diMax:=100,diMin:=1);
		tyUILFIndexAfterOven : tyUILmt := (diMax:=100,diMin:=1);
		sUIDefaultLoginNm : STRING[30];
		sUIDefaultLoginPw : STRING[30];
		tShutterWaitTmr : TIME := T#500ms;
		tyUIAWOffset : tyUILmt := (diMax:=2000,diMin:=-2000);
		bAutoLogoutPrep : BOOL := TRUE;
		tyUIAutoLogoutTm : tyUILmt := (diMax:=1800000,diMin:=60000);
		bMagAutoVerifyPrep : BOOL := FALSE;
		tyUIMcParamMagAutoEntSenTm : tyUILmt := (diMax:=5000,diMin:=0);
		bProjAIVInPosSenPrep : BOOL := FALSE;
		sMpNtParamFileNm : STRING[255] := 'NutekParameter.xml';
		sMpNtParamPVNm : STRING[100] := 'NtParam:tyMpNtParamCurr1';
		tyNetworkMode : tyUILmt := (diMax:=1,diMin:=0);
		bHermesSvyPrep : BOOL := FALSE; (*Supervisory Hermes Preparation*)
		bHermesSvyFirstMcInTheLine1 : BOOL := FALSE; (*Turn On this for Loader / Destacker Only. Other type of machine turns off.*)
		bHermesSvyMagTypeMc : BOOL := FALSE; (*Turn On this for Loader (Magazine type machine) Only. Other type of machine turns off.
*)
		sSvyHermesProgNm : STRING[15] := 'SvyHermes';
		sSvyHermesConfigFileNm : STRING[80] := 'SvyHermes.dat';
		udiSvyHermesFileKeepDay : UDINT := 7;
		udiSvyHermesAliveTmInSec : UDINT := 5;
		tSvyHermesConnTO : TIME := T#30s;
		sSvyHermesRetainFileNm : STRING[80] := 'WorkOrder.dat';
		sDSHermesRetainFileNm : STRING[80] := 'BoardData.dat';
		rMachineCycleTime : REAL := 6.0; (*1.0 = 1 second*)
		rAutoWidthCycleTime : REAL := 30.0; (*30.0 = 30 seconds*)
		bHermesScannerPrep1 : BOOL := FALSE; (*Turn On if machine has fixed scanner or handheld scanner*)
		iInput : INT := 1; (*Total Inlet, Single Track = 1, Dual Track = 2, and so on*)
		iOutput : INT := 1; (*Total Outlet, Single Track = 1, Dual Track = 2, and so on*)
		bLFProdWidth2Prep : BOOL := FALSE;
		tLFFollowerOnlineChkDlyTm : TIME := T#30s;
		sMagAW1ProgNm : STRING[15] := 'MagAWOpen1';
		sMagAW1Device : STRING[3] := 'IF7';
		usiMagAW1Node : USINT := 19;
		bMagAW1Dir : BOOL := TRUE;
		bMagAW1DirBl : BOOL := FALSE;
		diMagAW1PitchInUM : DINT := 10000;
		diMagAW1MovBlDistInUM : DINT := 0;
		tyMagAW1ParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=10000,diAcc:=25);
		tyMagAW1ParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=10000);
		tyMagAW1Param : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=20000);
		tyMagAW1Tuning : tyMotionCANTuning := (diAsdaA2Inertia:=14,diAsdaA2PosLoopGain:=150,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=200,diAsdaA2SpdIntegral:=124,diAsdaA2LowPassFltr:=13,diAsdaA2AntiInterGain:=124,diAsdaA2FirstTorqueCmd:=300);
		diMagAW1EngageSpdInUMPS : DINT := 5000;
		eMagAW1ServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		diMag1WidthOffsetInUM : DINT := 0;
		sMagAW2ProgNm : STRING[15] := 'MagAWOpen2';
		sMagAW2Device : STRING[3] := 'IF7';
		usiMagAW2Node : USINT := 20;
		bMagAW2Dir : BOOL := TRUE;
		bMagAW2DirBl : BOOL := FALSE;
		diMagAW2PitchInUM : DINT := 10000;
		diMagAW2MovBlDistInUM : DINT := 0;
		tyMagAW2ParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=10000,diAcc:=25);
		tyMagAW2ParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=10000);
		tyMagAW2Param : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=20000);
		tyMagAW2Tuning : tyMotionCANTuning := (diAsdaA2Inertia:=14,diAsdaA2PosLoopGain:=150,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=200,diAsdaA2SpdIntegral:=124,diAsdaA2LowPassFltr:=13,diAsdaA2AntiInterGain:=124,diAsdaA2FirstTorqueCmd:=300);
		diMagAW2EngageSpdInUMPS : DINT := 5000;
		eMagAW2ServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		diMag2WidthOffsetInUM : DINT := 0;
		sMagAW3ProgNm : STRING[15] := 'MagAWOpen3';
		sMagAW3Device : STRING[3] := 'IF7';
		usiMagAW3Node : USINT := 21;
		bMagAW3Dir : BOOL := TRUE;
		bMagAW3DirBl : BOOL := FALSE;
		diMagAW3PitchInUM : DINT := 10000;
		diMagAW3MovBlDistInUM : DINT := 0;
		tyMagAW3ParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=10000,diAcc:=25);
		tyMagAW3ParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=10000);
		tyMagAW3Param : tyMotionParam := (diAccInMS:=500,diDecInMS:=500,diAutoSpdInUMPS:=20000);
		tyMagAW3Tuning : tyMotionCANTuning := (diAsdaA2Inertia:=14,diAsdaA2PosLoopGain:=150,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=200,diAsdaA2SpdIntegral:=124,diAsdaA2LowPassFltr:=13,diAsdaA2AntiInterGain:=124,diAsdaA2FirstTorqueCmd:=300);
		diMagAW3EngageSpdInUMPS : DINT := 5000;
		eMagAW3ServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		diMag3WidthOffsetInUM : DINT := 0;
		sMachineProgNm : STRING[15] := 'Machine';
		sUSSOT1ProgNm : STRING[15] := 'USSOT1';
		tUSSOT1RstDlyTm : TIME := T#0s;
		tUSSOT1SigInChkTm : TIME := T#100ms;
		sUSSOT2ProgNm : STRING[15] := 'USSOT2';
		tUSSOT2RstDlyTm : TIME := T#0s;
		tUSSOT2SigInChkTm : TIME := T#100ms;
		sUSSOT3ProgNm : STRING[15] := 'USSOT3';
		tUSSOT3RstDlyTm : TIME := T#0s;
		tUSSOT3SigInChkTm : TIME := T#100ms;
		sDSSOT1ProgNm : STRING[15] := 'DSSOT1';
		tDSSOT1RstDlyTm : TIME := T#0s;
		tDSSOT1SigInChkTm : TIME := T#100ms;
		sDSSOT2ProgNm : STRING[15] := 'DSSOT2';
		tDSSOT2RstDlyTm : TIME := T#0s;
		tDSSOT2SigInChkTm : TIME := T#100ms;
		sDSSOT3ProgNm : STRING[15] := 'DSSOT3';
		tDSSOT3RstDlyTm : TIME := T#0s;
		tDSSOT3SigInChkTm : TIME := T#100ms;
		bSOTReadyOnFirst : BOOL := TRUE;
		bShowMESName : BOOL := FALSE;
		bShowFMorMESActive : BOOL := FALSE;
		tyProdRcpMtrPshrExtSpd : tyUILmt := (diMax:=8,diMin:=1);
		tyProdRcpMtrPshrExtTorq : tyUILmt := (diMax:=100,diMin:=20);
		bProjUSFixToFixRail : BOOL := FALSE;
		bUIConvDirRL : BOOL := TRUE;
		bDSWidthChkPrep : BOOL := FALSE;
		bProjServoPullerPusherPrep : BOOL := FALSE;
		sPPProgNm : STRING[15] := 'ServoPullPusher';
		sPPDevice : STRING[3] := 'IF7';
		usiPPNode : USINT := 23;
		bPPDir : BOOL := FALSE;
		bPPDirBl : BOOL := FALSE;
		diPPPitchInUM : DINT := 3000;
		diPPMovBlDistInUM : DINT := 0;
		tyPPParamInHm : tyMotionCANParamInHm := (diStartVelInUMPS:=15000,diAcc:=25);
		tyPPParamInConvert : tyMotionCANParamInConvert := (diPitchInUM:=3000); (*estun1048576*)
		tyPPParam : tyMotionParam := (diAccInMS:=100,diDecInMS:=100,diAutoSpdInUMPS:=150000);
		tyPPTuning : tyMotionCANTuning := (diAsdaA2Inertia:=76,diAsdaA2PosLoopGain:=53,diAsdaA2PosFFGain:=50,diAsdaA2SpdLoopGain:=213,diAsdaA2SpdIntegral:=34,diAsdaA2LowPassFltr:=49,diAsdaA2AntiInterGain:=34,diAsdaA2FirstTorqueCmd:=300,diLex28LTNDderivativeGain_P800:=0,diLex28LTNIintegralGain_P801:=0,diLex28LTNIVdeIntlGain_P802:=0,diLex28LTNPpropotionalGain_P803:=0,diLex28LTNUSERGAIN_P804:=0,diLex28NLAFFLPFHZspringFil_P805:=0,diLex28NLFILTDAMPING_P814:=0,diLex28NLFILTT1_P815:=0,diPronetInertia:=0,diPronetRealTimeAutoAdjSet:=0,diPronetPosLoopGain:=0,diPronetSpdLoopGain:=0,diPronetSpdIntegral:=0,diPronetTorqueFilter:=0,diPronetPosFeedForward:=0,diPronetLowSpeedTestFiltering:=0,diPronetStopMode:=0);
		ePPServoMotorType : eServoMotorType := DeltaAsdaA2; (*Selection of  Motor Brand*)
		bProjFixClprMagDetectSenPrep : BOOL := FALSE;
		bCurtainSenPrep : BOOL := FALSE;
		bProjMagHeightChkPrep : BOOL := FALSE;
		diTravGoToMagWidthChkPt1 : DINT := 2000;
		diTravGoToMagWidthChkPt2 : DINT := 2000;
		diTravGoToMagWidthChkPt3 : DINT := 2000;
		bProjOutletShut2Prep : BOOL := FALSE;
		bProjOutletShut3Prep : BOOL := FALSE;
		bProjScanPrep : BOOL := FALSE;
		bProjOpConPrep : BOOL := FALSE;
		tyPPTorqParam : PPTorqParam := (usiStartTorque:=10,uiRatio:=478); (*Ratio= x/100*)
		bProjLifTravMnlLoad : BOOL := 0;
		eMidSenNcNoType : eMidSenParam := No;
		bHermesScannerPrep : BOOL := FALSE;
		bHermesSvyFirstMcInTheLine : BOOL := FALSE;
		bAutoRcpPrep : BOOL := FALSE;
		eCustomerReq : eCustomer := NA;
		bProjInletStopperPrep : BOOL := FALSE;
		sInletStopperProgNm : STRING[15] := 'Stopper A';
		bInletStopperTwoCtrlIn : BOOL := FALSE;
		tInletStopperExtDlyTm : TIME := T#1s;
		tInletStopperRetDlyTm : TIME := T#1s;
		eAutoRcpParamLmt : eAutoRcpLmt := (diMaxBottomCleranceInUM:=5500,diMaxTopClearamceInUM:=30000,diThicknessInUM:=6700);
		sAutoRcpProgNm : STRING[15] := 'AutoRcp';
		eAutoRcpPrecededBy : eAutoRcpPreceded := PrecededByF1;
		bChinesePrep : BOOL := FALSE;
		bGermanPrep : BOOL := FALSE;
		sHWInfoHMIMacAddress : STRING[27] := '00 - 60 - 65 - 7A - DC - 83';
		tyUIBtnPosLmt : tyUILmt := (diMax:=1,diMin:=1);
	END_STRUCT;
END_TYPE

(**)

TYPE
	PPTorqParam : 	STRUCT 
		usiStartTorque : USINT;
		uiRatio : UINT;
	END_STRUCT;
END_TYPE

(*NtBosch China With Mid Sensor changed*)

TYPE
	eMidSenParam : 
		(
		No,
		NcBoschChina
		);
	eCustomer : 
		(
		NA,
		Bosch_China, (*Reject Mode notify When one Mag Full, Standard notify when two Mag full*)
		Bosch_Portugal,
		Bosch_America,
		Bosch_Malaysia,
		Siemens,
		We_Fabricate,
		New_Member5,
		New_Member6,
		New_Member7,
		New_Member8,
		New_Member9,
		New_Member10
		);
	eAutoRcpLmt : 	STRUCT 
		diMaxBottomCleranceInUM : DINT;
		diMaxTopClearamceInUM : DINT;
		diThicknessInUM : DINT;
	END_STRUCT;
	eAutoRcpPreceded : 
		(
		PrecededBySelf,
		PrecededByF1,
		PrecededByF2
		);
END_TYPE

(**)
(*Action*)

TYPE
	eNtParamAction : 
		(
		NtParamActIdle,
		NtParamActCreateDir,
		NtParamActRead,
		NtParamActWrite,
		NtParamActLoad,
		NtParamActSave
		);
END_TYPE
