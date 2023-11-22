(** 2020-09-22 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_McParamStat		:= ADR(eStat);
	p_McParamStatus		:= ADR(eStatus);
	p_McParamStatTxt	:= ADR(sStatTxt);
	
	//Alarmhorizontal
	p_McParamAlmData	:= ADR(tyAlmData);
	
	//Output
	p_McParamFileNotFound				:= ADR(bFileNotFound);
	
	p_McParamCurr						:= ADR(tyMcParamCurr);
	
	p_McParamLFOnline					:= ADR(tyMcParamCurr.a_bLFOnline);
	p_McParamLFIPAddr					:= ADR(tyMcParamCurr.a_sLFIPAddr);
	
	p_McParamMcNm						:= ADR(tyMcParamCurr.sMcNm);
	p_McParamSSaverTm					:= ADR(tyMcParamCurr.uiSSaverTmInSec);
	p_McParamSSaverEn					:= ADR(tyMcParamCurr.bSSaverEn);
	p_McParamDefaultMcMod				:= ADR(tyMcParamCurr.usiDefaultMcMod);
	p_McParamWidthAtHmPos				:= ADR(tyMcParamCurr.diWidthAtHmPosInUM);
	p_McParamConvInitTm					:= ADR(tyMcParamCurr.diConvInitTmInMS);
	p_McParamTranInErrDlyTm				:= ADR(tyMcParamCurr.diTranInErrDlyTmInMS);
	p_McParamMag1ConvRunTmOut			:= ADR(tyMcParamCurr.diMag1ConvRunTmOutInMS);
	p_McParamMag2ConvRunTmOut			:= ADR(tyMcParamCurr.diMag2ConvRunTmOutInMS);
	p_McParamMag3ConvRunTmOut			:= ADR(tyMcParamCurr.diMag3ConvRunTmOutInMS);
	p_McParamOvenMaxBffr				:= ADR(tyMcParamCurr.diOvenMaxBffr);
	p_McParamTravPosA					:= ADR(tyMcParamCurr.diTravPosA);
	p_McParamTravPosB					:= ADR(tyMcParamCurr.diTravPosB);
	p_McParamLifterPosA					:= ADR(tyMcParamCurr.diLifterPosA);
	p_McParamLifterPosB					:= ADR(tyMcParamCurr.diLifterPosB);
	p_McParamAWDis						:= ADR(tyMcParamCurr.bAWDis);
	p_McParamMnlAccDat					:= ADR(tyMcParamCurr.bMnlAccDat);
	p_McParamAutoStepEn					:= ADR(tyMcParamCurr.bAutoStepEn);
	p_McParamVSMEMAEn					:= ADR(tyMcParamCurr.bVSMEMAEn);
	p_McParamChgParamEn					:= ADR(tyMcParamCurr.bChgParamEn);
	p_McParamHermesRmtEn				:= ADR(tyMcParamCurr.bHermesRmtEn);
	p_McParamGapBwtnBrdEn				:= ADR(tyMcParamCurr.bGapBwtnBrdEn); 
	p_McParamLongBrdEn					:= ADR(tyMcParamCurr.bLongBrdEn); 
	p_McParamOvenEn						:= ADR(tyMcParamCurr.bOvenEn); 
	p_McParamExtdOvenEn					:= ADR(tyMcParamCurr.bExtdOvenEn); 
	p_McParamInShutterDis				:= ADR(tyMcParamCurr.bInShutterDis);
	p_McParamStopperADis				:= ADR(tyMcParamCurr.bStopperADis);
	p_McParamStopperBDis				:= ADR(tyMcParamCurr.bStopperBDis);
	p_McParamMagAutoDetTm				:= ADR(tyMcParamCurr.diMagAutoDetectSenTmInMS);
	p_McParamAGVComEn					:= ADR(tyMcParamCurr.bAGVComEn);
	
	p_McParamLFEn						:= ADR(tyMcParamCurr.bLFEn);
	p_McParamLCSLFEn					:= ADR(tyMcParamCurr.bLCSLFEn);
	p_McParamLCSReqRcpEn				:= ADR(tyMcParamCurr.bLCSReqRcpEn);
	p_McParamLCSManageRcpEn				:= ADR(tyMcParamCurr.bLCSManageRcpEn);
	p_McParamLCSLiveDatEn				:= ADR(tyMcParamCurr.bLCSLiveDatEn);
	p_McParamLFLeaderMc					:= ADR(tyMcParamCurr.bLFLeaderMc);
	p_McParamSectionLeader				:= ADR(tyMcParamCurr.bSectionLeader);
	p_McParamUSWidthChkEn				:= ADR(tyMcParamCurr.bUSWidthChkEn);
	p_McParamLFMcIdxBeforeOven			:= ADR(tyMcParamCurr.diLFMcIdxBeforeOven);
	p_McParamLFMcIdxAfterOven			:= ADR(tyMcParamCurr.diLFMcIdxAfterOven);
	
	p_McParamLang						:= ADR(tyMcParamCurr.usiLang);
	
	p_McParamConvLftSenAntiGap			:= ADR(tyMcParamCurr.tyLftSenAntiGapDly);
	p_McParamConvLftSenOnTm				:= ADR(tyMcParamCurr.tyLftSenAntiGapDly.diSigOnTm);
	p_McParamConvLftSenOffTm			:= ADR(tyMcParamCurr.tyLftSenAntiGapDly.diSigOffTm);
	p_McParamConvMidSenAntiGap			:= ADR(tyMcParamCurr.tyMidSenAntiGapDly);
	p_McParamConvMidSenOnTm				:= ADR(tyMcParamCurr.tyMidSenAntiGapDly.diSigOnTm);
	p_McParamConvMidSenOffTm			:= ADR(tyMcParamCurr.tyMidSenAntiGapDly.diSigOffTm);
	p_McParamConvRgtSenAntiGap			:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly);
	p_McParamConvRgtSenOnTm				:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly.diSigOnTm);
	p_McParamConvRgtSenOffTm			:= ADR(tyMcParamCurr.tyRgtSenAntiGapDly.diSigOffTm);
	p_McParamConvClrSenAntGap			:= ADR(tyMcParamCurr.tyClrSenAntiGapDly);
	p_McParamConvClrSenOnTm				:= ADR(tyMcParamCurr.tyClrSenAntiGapDly.diSigOnTm);
	p_McParamConvClrSenOffTm			:= ADR(tyMcParamCurr.tyClrSenAntiGapDly.diSigOffTm);
	
		
	p_McParamMagConvEntrySenAntiGap		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly);
	p_McParamMagConvEntrySenOnTm		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm);
	p_McParamMagConvEntrySenOffTm		:= ADR(tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm);
	
	p_McParamMagConvPresentAntiGap		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly);
	p_McParamMagConvPresentSenOnTm		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
	p_McParamMagConvPresentSenOffTm		:= ADR(tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);
	
	p_McParamUSCommAMod					:= ADR(tyMcParamCurr.eUSCommA);
	p_McParamUSSMEMAAParam				:= ADR(tyMcParamCurr.tyUSCommASMEMA);
	p_McParamUSSMEMAASelection			:= ADR(tyMcParamCurr.tyUSCommASMEMA.eSelection);
	p_McParamUBAAStatSetGd				:= ADR(tyMcParamCurr.tyUSCommASMEMA.bStatSigSetGd);
	
	p_McParamUSCommBMod					:= ADR(tyMcParamCurr.eUSCommB);
	p_McParamUSSMEMABParam				:= ADR(tyMcParamCurr.tyUSCommBSMEMA);
	p_McParamUSSMEMABSelection			:= ADR(tyMcParamCurr.tyUSCommBSMEMA.eSelection);
	p_McParamUBABStatSetGd				:= ADR(tyMcParamCurr.tyUSCommBSMEMA.bStatSigSetGd);
	
	p_McParamLFMcIdxBeforeOven2			:= ADR(tyMcParamCurr.diLFMcIdxBeforeOven2);
	p_McParamLFMcIdxAfterOven2			:= ADR(tyMcParamCurr.diLFMcIdxAfterOven2);
	//	p_McParamAIVComm					:= ADR(tyMcParamCurr.tyAIVComm);
	//	p_McParamAIVSvrPort					:= ADR(tyMcParamCurr.tyAIVComm.uiSvrPort);
	//	p_McParamAIVClientPort				:= ADR(tyMcParamCurr.tyAIVComm.uiClientPort);
	//	p_McParamAIVClientAddr				:= ADR(tyMcParamCurr.tyAIVComm.sClientAddress);
	
	p_McParamWidthOffset				:= ADR(tyMcParamCurr.diWidthOffsetInUM);
	
	p_McParamNetworkMod					:= ADR(tyMcParamCurr.eNetworkMod);
	
	p_McParamLFSeqStayActive			:= ADR(tyMcParamCurr.bLFSeqStayActive);
	
	p_McParamMagAWDis					:= ADR(tyMcParamCurr.bMagAWDis);
	p_McParamMagSafetyBarDis			:= ADR(tyMcParamCurr.bMagSafetyBarDis);
	p_McParamMag1WidthAtHmPos			:= ADR(tyMcParamCurr.diMag1WidthAtHmPosInUM);
	p_McParamMag2WidthAtHmPos			:= ADR(tyMcParamCurr.diMag2WidthAtHmPosInUM);
	p_McParamMag3WidthAtHmPos			:= ADR(tyMcParamCurr.diMag3WidthAtHmPosInUM);
	p_McParamLFBuzMute					:= ADR(tyMcParamCurr.bLFBuzMute);
	
	p_McParamAGVComProtocol				:= ADR(tyMcParamCurr.eAGVComProtocol);
	p_McParamMagExMode					:= ADR(tyMcParamCurr.eMagExMode);
	
	p_McParamAWPusherAtHmPos			:= ADR(tyMcParamCurr.diAWPusherAtHmPosInUM);
	p_McParamAWPusherDis				:= ADR(tyMcParamCurr.bAWPusherDis);
	

	p_McParamTravInletFixtoFixPos	:= ADR(tyMcParamCurr.diTravInletFixtoFixPos);
	p_McParamDisableFMWarning		:= ADR(tyMcParamCurr.bDisableFMWarning);
	
	p_McParamConvLineAInletSenOnTm	:= ADR(tyMcParamCurr.tyLineAInletSenAntiGapDly.diSigOnTm);
	p_McParamConvLineAInletSenOffTm	:= ADR(tyMcParamCurr.tyLineAInletSenAntiGapDly.diSigOffTm);
	p_McParamConvLineBInletSenOnTm	:= ADR(tyMcParamCurr.tyLineBInletSenAntiGapDly.diSigOnTm);
	p_McParamConvLineBInletSenOffTm	:= ADR(tyMcParamCurr.tyLineBInletSenAntiGapDly.diSigOffTm);
	p_McParamUSWidthChkSenOnTm		:= ADR(tyMcParamCurr.tyUSWidthChkSenAntiGapDly.diSigOnTm);
	p_McParamUSWidthChkSenOffTm		:= ADR(tyMcParamCurr.tyUSWidthChkSenAntiGapDly.diSigOffTm);
	
	p_McParamDBAOnWOAlign			:= ADR(tyMcParamCurr.bDBAOnWOAlign);
	
	//MagConv top and bottom
	p_McParamInMagConvEntSenOnTm	:= ADR(tyMcParamCurr.tyInMagConvEntAntiGapDly.diSigOnTm);
	p_McParamInMagConvEntSenOffTm	:= ADR(tyMcParamCurr.tyInMagConvEntAntiGapDly.diSigOffTm);
	p_McParamInMagConvExtSenOnTm	:= ADR(tyMcParamCurr.tyInMagConvExtAntiGapDly.diSigOnTm);
	p_McParamInMagConvExtSenOffTm	:= ADR(tyMcParamCurr.tyInMagConvExtAntiGapDly.diSigOffTm);
	p_McParamInMagConvMidSenOnTm	:= ADR(tyMcParamCurr.tyInMagConvMidAntiGapDly.diSigOnTm);
	p_McParamInMagConvMidSenOffTm	:= ADR(tyMcParamCurr.tyInMagConvMidAntiGapDly.diSigOffTm);
	
	p_McParamOutMagConvEntSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConvEntAntiGapDly.diSigOnTm);
	p_McParamOutMagConvEntSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConvEntAntiGapDly.diSigOffTm);
	p_McParamOutMagConvExtSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConvExtAntiGapDly.diSigOnTm);
	p_McParamOutMagConvExtSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConvExtAntiGapDly.diSigOffTm);
	p_McParamOutMagConvMidSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConvMidAntiGapDly.diSigOnTm);
	p_McParamOutMagConvMidSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConvMidAntiGapDly.diSigOffTm);

	p_McParamInMagConv2EntSenOnTm	:= ADR(tyMcParamCurr.tyInMagConv2EntAntiGapDly.diSigOnTm);
	p_McParamInMagConv2EntSenOffTm	:= ADR(tyMcParamCurr.tyInMagConv2EntAntiGapDly.diSigOffTm);
	p_McParamInMagConv2ExtSenOnTm	:= ADR(tyMcParamCurr.tyInMagConv2ExtAntiGapDly.diSigOnTm);
	p_McParamInMagConv2ExtSenOffTm	:= ADR(tyMcParamCurr.tyInMagConv2ExtAntiGapDly.diSigOffTm);
	p_McParamInMagConv2MidSenOnTm	:= ADR(tyMcParamCurr.tyInMagConv2MidAntiGapDly.diSigOnTm);
	p_McParamInMagConv2MidSenOffTm	:= ADR(tyMcParamCurr.tyInMagConv2MidAntiGapDly.diSigOffTm);
	
	p_McParamOutMagConv2EntSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConv2EntAntiGapDly.diSigOnTm);
	p_McParamOutMagConv2EntSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConv2EntAntiGapDly.diSigOffTm);
	p_McParamOutMagConv2ExtSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConv2ExtAntiGapDly.diSigOnTm);
	p_McParamOutMagConv2ExtSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConv2ExtAntiGapDly.diSigOffTm);
	p_McParamOutMagConv2MidSenOnTm	:= ADR(tyMcParamCurr.tyOutMagConv2MidAntiGapDly.diSigOnTm);
	p_McParamOutMagConv2MidSenOffTm	:= ADR(tyMcParamCurr.tyOutMagConv2MidAntiGapDly.diSigOffTm);

	p_McParamInMagConvRunTmOut		:= ADR(tyMcParamCurr.diInMagConvRunTmOutInMS);
	p_McParamOutMagConvRunTmOut		:= ADR(tyMcParamCurr.diOutMagConvRunTmOutInMS);
	p_McParamLifterMagConvRunTmOut	:= ADR(tyMcParamCurr.diLifterMagConvRunTmOutInMS);
	p_McParamInMagConv2RunTmOut		:= ADR(tyMcParamCurr.diInMagConv2RunTmOutInMS);
	p_McParamOutMagConv2RunTmOut	:= ADR(tyMcParamCurr.diOutMagConv2RunTmOutInMS);
	p_McParamLifterMagConv2RunTmOut	:= ADR(tyMcParamCurr.diLifterMagConv2RunTmOutInMS);
	p_McParamLifterTopPos			:= ADR(tyMcParamCurr.diLifterTopPos);
	p_McParamLifterBtmPos			:= ADR(tyMcParamCurr.diLifterBtmPos);
	p_McParamLifterTopPos2			:= ADR(tyMcParamCurr.diLifterTopPos2);
	p_McParamLifterBtmPos2			:= ADR(tyMcParamCurr.diLifterBtmPos2);
	p_McParamTCPSvrPort				:= ADR(tyMcParamCurr.diTCPSvrPort);
	p_McParamMagWidthChkDis			:= ADR(tyMcParamCurr.bMagWidthChkDis);
	p_McParamMag1WidthChkDetDist	:= ADR(tyMcParamCurr.diMag1WidthChkDetDist);
	p_McParamMag2WidthChkDetDist	:= ADR(tyMcParamCurr.diMag2WidthChkDetDist);
	p_McParamMag3WidthChkDetDist	:= ADR(tyMcParamCurr.diMag3WidthChkDetDist);
	p_McParamTopScannerEn			:= ADR(tyMcParamCurr.bTopScannerEn);
	p_McParamBtmScannerEn			:= ADR(tyMcParamCurr.bBtmScannerEn);
	p_McParamTopScanIP				:= ADR(tyMcParamCurr.sTopScanIPAddr);
	p_McParamTopScanPort			:= ADR(tyMcParamCurr.uiTopScanSvrPort);
	p_McParamBtmScanIP				:= ADR(tyMcParamCurr.sBtmScanIPAddr);
	p_McParamBtmScanPort			:= ADR(tyMcParamCurr.uiBtmScanSvrPort);
	p_McParamOpConEn				:= ADR(tyMcParamCurr.bOpConEn);
	p_McParamOpConIP				:= ADR(tyMcParamCurr.sOpConIPAddr);
	p_McParamOpConPort				:= ADR(tyMcParamCurr.uiOpConSvrPort);
	p_McParamOpConParam				:= ADR(tyMcParamCurr.tyOpConParam);
	
	
	p_McParamSiemensPrep            := ADR(tyMcParamCurr.bSiemensPrep);  //ADD
	p_McParamHermesSvyEn			:= ADR(tyMcParamCurr.bHermesSvyEn);//new for Hermes 1.3
	p_McParamHermesScannerEn		:= ADR(tyMcParamCurr.bHermesScannerEn);//new for Hermes 1.3	
	//Siemen 
	p_McParamInStopperDis			:= ADR(tyMcParamCurr.bInStopperDis);
	p_McParamInStopperExtDelayTm	:= ADR(tyMcParamCurr.diInletStopperExtDelayTmInMS);
	p_McParamMESEn					:= ADR(tyMcParamCurr.bMESEn); //bMESRFIDDis
	p_McParamMESResponseTO			:= ADR(tyMcParamCurr.diMESResponseTOTmInMS);
	p_McParamSwitchingProdType		:= ADR(tyMcParamCurr.bSwitchingProdType);
	p_McParamAutoRcpDisable 		:= ADR(tyMcParamCurr.bAutoRcpDisable); //Self Selected
	p_McParamAutoRcpBatchIDChgCmp	:= ADR(tyMcParamCurr.bBatchIDChgOverCmp);
	p_McParamAutoRcpIgnoreBtmClr	:= ADR(tyMcParamCurr.bIgnoreBtmClearance);
	p_McParamAutoRcpIgnoreTopClr	:= ADR(tyMcParamCurr.bIgnoreTopClearance);
	p_McParamAutoRcpIgnoreThickns	:= ADR(tyMcParamCurr.bIgnoreThickness);
	//DMC Scanner
	p_McParamDMCScannerEn			:= ADR(tyMcParamCurr.bDMCScannerEn);
	p_McParamDMCScanWriteTO			:= ADR(tyMcParamCurr.diDMCScanTOErrInMs);
	
	p_McParamDefaultGateway			:= ADR(tyMcParamCurr.sDefaultGateWay);//

	(* Always Change If Project Change *)
	
END_PROGRAM