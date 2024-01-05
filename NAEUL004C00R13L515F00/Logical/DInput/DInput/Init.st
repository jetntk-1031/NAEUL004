(** 2019-03-22 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_DIAlmData1	:= ADR(tyAlmData1);
	p_DIAlmData2	:= ADR(tyAlmData2);
	p_DIAlmData3	:= ADR(tyAlmData3);
	p_DIAlmData4	:= ADR(tyAlmData4);
	p_DIAlmData5	:= ADR(tyAlmData5);
	p_DIAlmData6    := ADR(tyAlmData6);
	
	//Output
	p_DI					:= ADR(tyDInput);
	p_DISafetyRlySig		:= ADR(tyDInput.bSafetyRlySig);
	p_DIEStopSig			:= ADR(tyDInput.bEStopSig);
	p_DICoverSWSig			:= ADR(tyDInput.bCoverSWSig);
	p_DIUBAA				:= ADR(tyDInput.bUBAA);
	p_DIUBAB				:= ADR(tyDInput.bUBAB);
	p_DIUBAAStat			:= ADR(tyDInput.bUBAAStat);
	p_DIUBABStat			:= ADR(tyDInput.bUBABStat);
	p_DIPusherExtRS			:= ADR(tyDInput.bPusherExtRS);
	p_DIPusherRetRS			:= ADR(tyDInput.bPusherRetRS);
	p_DIConvLftSen			:= ADR(tyDInput.bConvLftSen);
	p_DIConvMidSen			:= ADR(tyDInput.bConvMidSen);
	p_DIConvRgtSen			:= ADR(tyDInput.bConvRgtSen);
	p_DIConvClrSen			:= ADR(tyDInput.bConvClrSen);
	p_DIOvenInfeedSigA		:= ADR(tyDInput.bOvenInfeedSigA);
	p_DIOvenInfeedSigB		:= ADR(tyDInput.bOvenInfeedSigB);
	p_DILifterTimingBeltSen	:= ADR(tyDInput.bLifterTimingBeltSen);
	p_DILifterSafetyLmtSW1	:= ADR(tyDInput.bLifterSafetyLmtSW1);
	p_DILifterSafetyLmtSW2	:= ADR(tyDInput.bLifterSafetyLmtSW2);
	p_DIMag1FixedClampRS	:= ADR(tyDInput.bMag1FixedClampRS);
	p_DIMag1FixedUnclampRS	:= ADR(tyDInput.bMag1FixedUnclampRS);
	p_DIMag1RemoteClampRS	:= ADR(tyDInput.bMag1RemoteClampRS);
	p_DIMag1RemoteUnclampRS := ADR(tyDInput.bMag1RemoteUnclampRS);
	p_DIMag2FixedClampRS	:= ADR(tyDInput.bMag2FixedClampRS);
	p_DIMag2FixedUnclampRS	:= ADR(tyDInput.bMag2FixedUnclampRS);
	p_DIMag2RemoteClampRS	:= ADR(tyDInput.bMag2RemoteClampRS);
	p_DIMag2RemoteUnclampRS	:= ADR(tyDInput.bMag2RemoteUnclampRS);
	p_DIMag3FixedClampRS	:= ADR(tyDInput.bMag3FixedClampRS);
	p_DIMag3FixedUnclampRS	:= ADR(tyDInput.bMag3FixedUnclampRS);
	p_DIMag3RemoteClampRS	:= ADR(tyDInput.bMag3RemoteClampRS);
	p_DIMag3RemoteUnclampRS	:= ADR(tyDInput.bMag3RemoteUnclampRS);
	p_DIInShutterOpenRS		:= ADR(tyDInput.bInShutterOpenRS);
	p_DIInShutterCloseRS	:= ADR(tyDInput.bInShutterCloseRS);
	p_DIOutShutterOpenRS	:= ADR(tyDInput.bOutShutterOpenRS);
	p_DIOutShutterCloseRS	:= ADR(tyDInput.bOutShutterCloseRS);
	p_DIMagPresentSen1		:= ADR(tyDInput.bMagPresentSen1);
	p_DIMagPresentSen2		:= ADR(tyDInput.bMagPresentSen2);
	p_DIMagPresentSen3		:= ADR(tyDInput.bMagPresentSen3);
	p_DIMagConvEntSen1		:= ADR(tyDInput.bMagConvEntSen1);
	p_DIMagConvEntSen2		:= ADR(tyDInput.bMagConvEntSen2);
	p_DIMagConvEntSen3		:= ADR(tyDInput.bMagConvEntSen3);
	p_DIMag1AIVInPosSen1	:= ADR(tyDInput.bMag1AIVInPosSen1);
	p_DIMag1AIVInPosSen2	:= ADR(tyDInput.bMag1AIVInPosSen2);
	p_DIMag2AIVInPosSen1	:= ADR(tyDInput.bMag2AIVInPosSen1);
	p_DIMag2AIVInPosSen2	:= ADR(tyDInput.bMag2AIVInPosSen2);
	p_DIMag3AIVInPosSen1	:= ADR(tyDInput.bMag3AIVInPosSen1);
	p_DIMag3AIVInPosSen2	:= ADR(tyDInput.bMag3AIVInPosSen2);
	p_DIMag1OrientChkSen1	:= ADR(tyDInput.bMag1OrientChkSen1);
	p_DIMag1OrientChkSen2	:= ADR(tyDInput.bMag1OrientChkSen2);
	p_DIMag2OrientChkSen1	:= ADR(tyDInput.bMag2OrientChkSen1);
	p_DIMag2OrientChkSen2	:= ADR(tyDInput.bMag2OrientChkSen2);
	p_DIMag3OrientChkSen1	:= ADR(tyDInput.bMag3OrientChkSen1);
	p_DIMag3OrientChkSen2	:= ADR(tyDInput.bMag3OrientChkSen2);
	p_DIUSWidthChkSen		:= ADR(tyDInput.bUSWidthChkSen);
	p_DIMagConvHeightSen1	:= ADR(tyDInput.bMagConvHeightSen1);
	p_DIMagConvHeightSen2	:= ADR(tyDInput.bMagConvHeightSen2);
	p_DIMagConvHeightSen3	:= ADR(tyDInput.bMagConvHeightSen3);
	p_DIMagConvSmallMagSen1	:= ADR(tyDInput.bMagConvSmallMagSen1);
	p_DIMagConvSmallMagSen2	:= ADR(tyDInput.bMagConvSmallMagSen2);
	p_DIMagConvSmallMagSen3	:= ADR(tyDInput.bMagConvSmallMagSen3);
	p_DIMagConvLargeMagSen1	:= ADR(tyDInput.bMagConvLargeMagSen1);
	p_DIMagConvLargeMagSen2	:= ADR(tyDInput.bMagConvLargeMagSen2);
	p_DIMagConvLargeMagSen3	:= ADR(tyDInput.bMagConvLargeMagSen3);
	p_DIMagConvCAB717MagSen1:= ADR(tyDInput.bMagConvCAB717MagSen1);
	p_DIMagConvCAB717MagSen2:= ADR(tyDInput.bMagConvCAB717MagSen2);
	p_DIMagConvCAB717MagSen3:= ADR(tyDInput.bMagConvCAB717MagSen3);
	p_DIMag1SelUnclampRS	:= ADR(tyDInput.bMag1SelUnClampRS);
	p_DIMag2SelUnclampRS	:= ADR(tyDInput.bMag2SelUnClampRS);
	p_DIMag3SelUnclampRS	:= ADR(tyDInput.bMag3SelUnClampRS);
	p_DIMag1SafetyBarExtRS	:= ADR(tyDInput.bMag1SafetyBarExtRS);
	p_DIMag1SafetyBarRetRS	:= ADR(tyDInput.bMag1SafetyBarRetRS);
	p_DIMag2SafetyBarExtRS	:= ADR(tyDInput.bMag2SafetyBarExtRS);
	p_DIMag2SafetyBarRetRS	:= ADR(tyDInput.bMag2SafetyBarRetRS);
	p_DIMag3SafetyBarExtRS	:= ADR(tyDInput.bMag3SafetyBarExtRS);
	p_DIMag3SafetyBarRetRS	:= ADR(tyDInput.bMag3SafetyBarRetRS);
	p_DIMag1WallEngageRS	:= ADR(tyDInput.bMag1WallEngageRS);
	p_DIMag1WallDisengageRS	:= ADR(tyDInput.bMag1WallDisengageRS);
	p_DIMag2WallEngageRS	:= ADR(tyDInput.bMag2WallEngageRS);
	p_DIMag2WallDisengageRS	:= ADR(tyDInput.bMag2WallDisengageRS);
	p_DIMag3WallEngageRS	:= ADR(tyDInput.bMag3WallEngageRS);
	p_DIMag3WallDisengageRS	:= ADR(tyDInput.bMag3WallDisengageRS);
	p_DISOT1Receive 		:= ADR(tyDInput.bSOT1Receive);
	p_DISOT1Error 			:= ADR(tyDInput.bSOT1AIVError);
	p_DISOT1SizeLarge		:= ADR(tyDInput.bSOT1AIVSizeLarge);
	p_DISOT1Ready			:= ADR(tyDInput.bSOT1AIVReady);
	p_DISOT1Available		:= ADR(tyDInput.bSOT1AIVAvailable);
	p_DISOT2Receive 		:= ADR(tyDInput.bSOT2Receive);
	p_DISOT2Error 			:= ADR(tyDInput.bSOT2AIVError);
	p_DISOT2SizeLarge		:= ADR(tyDInput.bSOT2AIVSizeLarge);
	p_DISOT2Ready			:= ADR(tyDInput.bSOT2AIVReady);
	p_DISOT2Available		:= ADR(tyDInput.bSOT2AIVAvailable);
	p_DISOT3Receive 		:= ADR(tyDInput.bSOT3Receive);
	p_DISOT3Error 			:= ADR(tyDInput.bSOT3AIVError);
	p_DISOT3SizeLarge		:= ADR(tyDInput.bSOT3AIVSizeLarge);
	p_DISOT3Ready			:= ADR(tyDInput.bSOT3AIVReady);
	p_DISOT3Available		:= ADR(tyDInput.bSOT3AIVAvailable);
	p_DIFleetManagerActive  := ADR(tyDInput.bFleetManagerReady);
	p_DIPusherExtSlwSen		:= ADR(tyDInput.bPusherExtSlwSen);
	p_DIPusherRetSlwSen		:= ADR(tyDInput.bPusherRetSlwSen);
	p_DIMtrPshrTorqueSig	:= ADR(tyDInput.bMtrPshrTorqueSig);
	p_DIMtrPshrAlmSig		:= ADR(tyDInput.bMtrPshrAlmSig);
	p_DIMagWidthChkSen		:= ADR(tyDInput.bMagWidthChkSen);
	p_DIUSWidthChkSen		:= ADR(tyDInput.bUSWidthChkSen);
	p_DIConvLineAInletSen	:= ADR(tyDInput.bConvLineAInletSen);
	p_DIConvLineBInletSen	:= ADR(tyDInput.bConvLineBInletSen);
	p_DIPshrAntiJamSen		:= ADR(tyDInput.bPshrAntiJam);
	
	p_DIInMagConvEntSen		:= ADR(tyDInput.bInMagConvEntSen);
	p_DIInMagConvMidSen		:= ADR(tyDInput.bInMagConvMidSen);
	p_DIInMagConvExtSen		:= ADR(tyDInput.bInMagConvExtSen);
	p_DIOutMagConvEntSen	:= ADR(tyDInput.bOutMagConvEntSen);
	p_DIOutMagConvMidSen	:= ADR(tyDInput.bOutMagConvMidSen);
	p_DIOutMagConvExtSen	:= ADR(tyDInput.bOutMagConvExtSen);
	p_DIInMagConv2EntSen	:= ADR(tyDInput.bInMagConv2EntSen);
	p_DIInMagConv2MidSen	:= ADR(tyDInput.bInMagConv2MidSen);
	p_DIInMagConv2ExtSen	:= ADR(tyDInput.bInMagConv2ExtSen);
	p_DIOutMagConv2EntSen	:= ADR(tyDInput.bOutMagConv2EntSen);
	p_DIOutMagConv2MidSen	:= ADR(tyDInput.bOutMagConv2MidSen);
	p_DIOutMagConv2ExtSen	:= ADR(tyDInput.bOutMagConv2ExtSen);
	p_DILifterLmtSW			:= ADR(tyDInput.bLifterLmtSW); //~~PresentSen1
	p_DILifter2LmtSW		:= ADR(tyDInput.bLifter2LmtSW);//~~PresentSen2
	p_DIMtrOverloadSig		:= ADR(tyDInput.bMtrOverloadSig);
	
	p_DIOutShutterOpenRS2	:= ADR(tyDInput.bOutShutterOpenRS2);
	p_DIOutShutterCloseRS2	:= ADR(tyDInput.bOutShutterCloseRS2);
	
	p_DIOutShutterOpenRS3	:= ADR(tyDInput.bOutShutterOpenRS3);
	p_DIOutShutterCloseRS3	:= ADR(tyDInput.bOutShutterCloseRS3);
	
	p_DIMag1FixedClampSen	:= ADR(tyDInput.bMag1FixedClampSen);
	p_DIMag2FixedClampSen	:= ADR(tyDInput.bMag2FixedClampSen);
	p_DIMag3FixedClampSen	:= ADR(tyDInput.bMag3FixedClampSen);
	
	p_DICurtainSen			:= ADR(tyDInput.bCurtainSen);
	p_DICurtainSenPB		:= ADR(tyDInput.bCurtainSenPB);
	
	p_DIHighMagDetSen1		:= ADR(tyDInput.bHighMagDetSen1); // Detect the Magazine Height together with magazine orientation 
	p_DIHighMagDetSen2		:= ADR(tyDInput.bHighMagDetSen2);
	p_DIHighMagDetSen3		:= ADR(tyDInput.bHighMagDetSen3);															//as mag orientation sen is always detecting magazine at any orientation
	//For magazine without metal plate detecting
	p_DIInletStopperASen	:= ADR(tyDInput.bInletStopperASen);
	p_DIPCBScanComplSig		:= ADR(tyDInput.diScanComplSig);
	
	p_DILifterSafetyStatus		:= ADR(eStatus4);
	(* Always Change If Project Change *)
	
END_PROGRAM