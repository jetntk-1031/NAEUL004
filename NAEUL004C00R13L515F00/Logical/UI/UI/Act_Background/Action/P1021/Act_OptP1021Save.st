
ACTION Act_OptP1021Save:
		//Only Applicable when next page appears.
	
	IF p_tyP1021McSetGen.tyDrpDnPos1.uiRtStat.0 = FALSE 
		AND p_tyP1021McSetGen.tyDrpDnPos2.uiRtStat.0 = FALSE
		AND p_tyP1021McSetGen.tyDrpDnPos3.uiRtStat.0 = FALSE THEN
		
		usiDuplicate := 6;
		
	ELSIF p_tyP1021McSetGen.tyDrpDnPos1.uiRtStat.0 = FALSE 
		AND p_tyP1021McSetGen.tyDrpDnPos2.uiRtStat.0 = FALSE
		AND p_tyP1021McSetGen.tyDrpDnPos3.uiRtStat.0 = TRUE THEN
		
		usiDuplicate := 3;
	END_IF
	
	IF tyP1021McSetGen.tyGen.tyStringMcNm.bRtCompl 				
		OR tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.bRtCompl	OR tyP1021McSetGen.tyGen.tyNumSSaverTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnSSaverEn.bRtCompl			OR tyP1021McSetGen.tyGen.tyNumWidthAtHm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumConvInitTm.bRtCompl		OR tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.bRtCompl	OR tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.bRtCompl 	OR tyP1021McSetGen.tyGen.tyNumMaxBffr.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumTravPosLaneA.bRtCompl		OR tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumTravPosLaneB.bRtCompl		OR tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnAWDis.bRtCompl			OR tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnGapBetBrdEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnOvenEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnExtdOvenEn.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnInShutterDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnChgParamEn.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnStopperADis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnStopperBDis.bRtCompl 		OR tyP1021McSetGen.tyGen.tyNumWidthOffset.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnAGVComEn.bRtCompl  		OR tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.bRtCompl 
		OR tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.bRtCompl	OR tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.bRtCompl	OR tyP1021McSetGen.tyGen.tyBtnMagAWDis.bRtCompl			
		OR tyP1021McSetGen.tyGen.tyBtnMagSafetyBarDis.bRtCompl 	OR tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bRtCompl 
		OR tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bRtCompl
		OR tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.bRtCompl OR tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.bRtCompl		OR tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.bRtCompl OR tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLifterTopPos.bRtCompl OR tyP1021McSetGen.tyGen.tyNumLifterBtmPos.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.bRtCompl OR tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLifterTopPos2.bRtCompl OR tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.bRtCompl OR tyP1021McSetGen.tyGen.tyNumTCPSvrPort.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bRtCompl OR tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.bRtCompl OR tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bRtCompl OR tyP1021McSetGen.tyGen.tyBtnInletStopperDis.bRtCompl
		OR tyP1021McSetGen.tyGen.tyNumMESResponseTO.bRtCompl OR tyP1021McSetGen.tyGen.tyBtnMESEn.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnSwitchingProductType.bRtCompl OR tyP1021McSetGen.tyGen.tyNumInStprDelayTm.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnBatchIDChgOverCmp.bRtCompl OR tyP1021McSetGen.tyGen.tyBtnIgnoreTopClearance.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnIgnoreBottomClearance.bRtCompl OR tyP1021McSetGen.tyGen.tyBtnIgnoreThickness.bRtCompl
		OR tyP1021McSetGen.tyGen.tyBtnDMCScannerEn.bRtCompl OR tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.bRtCompl
		OR tyP1021McSetGen.tyGen.tyDrpDnPos1.bRtCompl OR tyP1021McSetGen.tyGen.tyDrpDnPos2.bRtCompl		
		OR tyP1021McSetGen.tyGen.tyDrpDnPos3.bRtCompl OR tyP1021McSetGen.tyGen.tyStringDefaultGWIP.bRtCompl			
		THEN
		
		
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1021McSetGen.tyGen.tyStringMcNm.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumSSaverTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnSSaverEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumWidthAtHm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumConvInitTm.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.bRtCompl 	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMaxBffr.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAGVComEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.bRtCompl	:= FALSE;
		
		tyP1021McSetGen.tyGen.tyNumTravPosLaneA.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTravPosLaneB.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAWDis.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnGapBetBrdEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnOvenEn.bRtCompl			:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnExtdOvenEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnInShutterDis.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnChgParamEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnStopperADis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnStopperBDis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumWidthOffset.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.bRtCompl	 := FALSE;
		tyP1021McSetGen.tyGen.tyBtnMagAWDis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnMagSafetyBarDis.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.bRtCompl:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnDMCScannerEn.bRtCompl 		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.bRtCompl	:= FALSE;
		
		tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.bRtCompl:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bRtCompl:= FALSE;
		tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterTopPos.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterBtmPos.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterTopPos2.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyNumTCPSvrPort.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.bRtCompl	:= FALSE;

		tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnInletStopperDis.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyNumMESResponseTO.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnMESEn.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnSwitchingProductType.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnBatchIDChgOverCmp.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnIgnoreTopClearance.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnIgnoreBottomClearance.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyBtnIgnoreThickness.bRtCompl := FALSE;
		tyP1021McSetGen.tyGen.tyStringDefaultGWIP.bRtCompl := FALSE;
		//Added Main Menu
		tyP1021McSetGen.tyGen.tyDrpDnPos1.bRtCompl				:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnPos2.bRtCompl				:= FALSE;
		tyP1021McSetGen.tyGen.tyDrpDnPos3.bRtCompl				:= FALSE;
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE AND bSaveNetworkPriority=FALSE THEN 
		IF usiGenSaveStep = 0 THEN
//			IF (p_tyP1021McSetGen.tyDrpDnPos1.usiValueIdx + p_tyP1021McSetGen.tyDrpDnPos2.usiValueIdx + p_tyP1021McSetGen.tyDrpDnPos3.usiValueIdx <> usiDuplicate) 
//				AND p_tyNtParamCurr.tyUIBtnPosLmt.diMax <> 1 THEN
//				usiGenSaveStep := 99;
//			ELSE
				usiGenSaveStep := 1;
//			END_IF
		ELSIF usiGenSaveStep = 1 THEN
					
			tyMcParamWr.sMcNm					:=	tyP1021McSetGen.tyGen.tyStringMcNm.sValue;
			tyMcParamWr.usiDefaultMcMod			:=	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueIdx;
			tyMcParamWr.uiSSaverTmInSec			:= 	DINT_TO_UINT(tyP1021McSetGen.tyGen.tyNumSSaverTm.diValue);
			tyMcParamWr.bSSaverEn				:=	tyP1021McSetGen.tyGen.tyBtnSSaverEn.bValue;
			tyMcParamWr.diWidthAtHmPosInUM		:=	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValue;
			tyMcParamWr.diConvInitTmInMS		:=	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValue;
			tyMcParamWr.diTranInErrDlyTmInMS	:=	tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.diValue;
			tyMcParamWr.diMag1ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValue;
			tyMcParamWr.diMag2ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValue;
			tyMcParamWr.diMag3ConvRunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValue;
			tyMcParamWr.diOvenMaxBffr			:=  tyP1021McSetGen.tyGen.tyNumMaxBffr.diValue;
			tyMcParamWr.diMagAutoDetectSenTmInMS:=  tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValue;
			tyMcParamWr.diMag1WidthAtHmPosInUM	:=	tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.diValue;
			tyMcParamWr.diMag2WidthAtHmPosInUM	:=	tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.diValue;
			tyMcParamWr.diMag3WidthAtHmPosInUM	:=	tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.diValue;
		
			tyMcParamWr.diTravPosA				:=	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValue;
			tyMcParamWr.diLifterPosA			:=	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue;
			tyMcParamWr.diTravPosB				:=	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValue;
			tyMcParamWr.diLifterPosB			:=	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue;
			tyMcParamWr.bAWDis					:=	tyP1021McSetGen.tyGen.tyBtnAWDis.bValue;
			tyMcParamWr.bMnlAccDat				:=	tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bValue;
			tyMcParamWr.bAutoStepEn				:=	tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bValue;
			tyMcParamWr.bVSMEMAEn				:=	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bValue;
			tyMcParamWr.bHermesRmtEn			:=	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bValue;			
			tyMcParamWr.bHermesSvyEn			:= tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue;//new for Hermes 1.3
			tyMcParamWr.bGapBwtnBrdEn			:=  tyP1021McSetGen.tyGen.tyBtnGapBetBrdEn.bValue;
			tyMcParamWr.bLongBrdEn				:=  tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bValue;
			tyMcParamWr.bOvenEn					:=  tyP1021McSetGen.tyGen.tyBtnOvenEn.bValue;
			tyMcParamWr.bExtdOvenEn				:=  tyP1021McSetGen.tyGen.tyBtnExtdOvenEn.bValue;
			tyMcParamWr.bInShutterDis			:=  tyP1021McSetGen.tyGen.tyBtnInShutterDis.bValue;
			tyMcParamWr.bChgParamEn				:=  tyP1021McSetGen.tyGen.tyBtnChgParamEn.bValue;
			tyMcParamWr.bStopperADis			:=  tyP1021McSetGen.tyGen.tyBtnStopperADis.bValue;
			tyMcParamWr.bStopperBDis			:=  tyP1021McSetGen.tyGen.tyBtnStopperBDis.bValue;
			tyMcParamWr.diWidthOffsetInUM		:= 	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValue;
			tyMcParamWr.bAGVComEn				:=  tyP1021McSetGen.tyGen.tyBtnAGVComEn.bValue;
			tyMcParamWr.eNetworkMod				:= 	USINT_TO_DINT(tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx);
			tyMcParamWr.bMagAWDis				:=  tyP1021McSetGen.tyGen.tyBtnMagAWDis.bValue;
			tyMcParamWr.bMagSafetyBarDis		:=  tyP1021McSetGen.tyGen.tyBtnMagSafetyBarDis.bValue;
			tyMcParamWr.bAutoLogoutEn			:=	tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bValue;
			tyMcParamWr.diAutoLogoutTmInSec		:=	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValue;
			tyMcParamWr.bLFBuzMute				:=  tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bValue;
			tyMcParamWr.eAGVComProtocol			:=  tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx;
			tyMcParamWr.eMagExMode				:=  tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx;
			tyMcParamWr.bAIVSizeDisabled		:=  tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bValue;
			tyMcParamWr.bMagWidthChkDis			:=  tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bValue;
			tyMcParamWr.bDMCScannerEn			:=  tyP1021McSetGen.tyGen.tyBtnDMCScannerEn.bValue;
			tyMcParamWr.diDMCScanTOErrInMs		:=  tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.diValue;
		
			tyMcParamWr.diAWPusherAtHmPosInUM	:=	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValue;
			tyMcParamWr.bAWPusherDis			:=	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bValue;
		
			tyMcParamWr.diTravInletFixtoFixPos	:=  tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.diValue;
			tyMcParamWr.bDisableFMWarning		:= 	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bValue;
		
			tyMcParamWr.diInMagConvRunTmOutInMS			:= 	tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.diValue;
			tyMcParamWr.diOutMagConvRunTmOutInMS		:= 	tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.diValue;
			tyMcParamWr.diLifterMagConvRunTmOutInMS		:=	tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.diValue;
			tyMcParamWr.diLifterTopPos					:=	tyP1021McSetGen.tyGen.tyNumLifterTopPos.diValue;
			tyMcParamWr.diLifterBtmPos					:=	tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValue;
	
			tyMcParamWr.diInMagConv2RunTmOutInMS		:= 	tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.diValue;
			tyMcParamWr.diOutMagConv2RunTmOutInMS		:= 	tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.diValue;
			tyMcParamWr.diLifterMagConv2RunTmOutInMS	:=	tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.diValue;
			tyMcParamWr.diLifterTopPos2					:=	tyP1021McSetGen.tyGen.tyNumLifterTopPos2.diValue;
			tyMcParamWr.diLifterBtmPos2					:=	tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.diValue;
			tyMcParamWr.diTCPSvrPort					:=	tyP1021McSetGen.tyGen.tyNumTCPSvrPort.diValue;
		
			tyMcParamWr.diMag1WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValue;
			tyMcParamWr.diMag2WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValue;
			tyMcParamWr.diMag3WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValue;

			tyMcParamWr.diMag1WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValue;
			tyMcParamWr.diMag2WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValue;
			tyMcParamWr.diMag3WidthChkDetDist			:=	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValue;
		
			tyMcParamWr.bInStopperDis					:=	tyP1021McSetGen.tyGen.tyBtnInletStopperDis.bValue;
			tyMcParamWr.diInletStopperExtDelayTmInMS	:= 	tyP1021McSetGen.tyGen.tyNumInStprDelayTm.diValue;
			tyMcParamWr.diMESResponseTOTmInMS			:= 	tyP1021McSetGen.tyGen.tyNumMESResponseTO.diValue; 
			tyMcParamWr.bMESEn							:=	tyP1021McSetGen.tyGen.tyBtnMESEn.bValue;
			tyMcParamWr.bSwitchingProdType				:=	tyP1021McSetGen.tyGen.tyBtnSwitchingProductType.bValue; //for AutoRcp and Traverser 
			tyMcParamWr.bBatchIDChgOverCmp				:= 	tyP1021McSetGen.tyGen.tyBtnBatchIDChgOverCmp.bRtCompl;
			tyMcParamWr.bIgnoreTopClearance				:= 	tyP1021McSetGen.tyGen.tyBtnIgnoreTopClearance.bRtCompl;
			tyMcParamWr.bIgnoreBtmClearance				:= 	tyP1021McSetGen.tyGen.tyBtnIgnoreBottomClearance.bRtCompl;
			tyMcParamWr.bIgnoreThickness				:= 	tyP1021McSetGen.tyGen.tyBtnIgnoreThickness.bRtCompl;
		
			IF fIPValid(tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sValue,ADR(a_iIPPart1)) THEN
				tyMcParamWr.sDefaultGateWay := tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sValue;
			ELSE
				tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sValue := '0.0.0.0';
				tyMcParamWr.sDefaultGateWay := '0.0.0.0';
			END_IF
		
		
		
			IF tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx =DINT_TO_USINT(SetIPManually) THEN
				tyMcParamWr.sIPAddr				:= tyP1021McSetGen.tyGen.tyStringIPAddr.sValue;
				tyMcParamWr.sSubnetMask			:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue;
				//ADD
				tyMcParamWr.sHMIIPAddr			:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue;
			END_IF
	
			eMcParamAct	:= McParamActWrite;
		
			IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
				eMcParamAct	:= McParamActIdle;
				eHWInfoAct := HWInfoActSetDefaultGateway;
				
				usiNetworkModeOld := tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx;
				//Screen Saver Time
				tyProperty.tyVisu.uiSSaverTm	:= p_tyMcParamCurr.uiSSaverTmInSec;
			
				//Backup Param
				tyP1021McSetGen.tyGenBkUp	:= tyP1021McSetGen.tyGen;
			
				tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				usiGenSaveStep := 0;
			ELSIF p_eMcParamStatus = Error THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxSaveErr);
			
				IF tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bValue		:= FALSE;
				
					p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
				
					//Restore Param
					tyP1021McSetGen.tyGen	:= tyP1021McSetGen.tyGenBkUp;
					tyMcParamWr				:= p_tyMcParamCurr;
				
					tyCommon.tySet.tyBtnSave.bRtCompl 	:= FALSE;
					fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
					usiGenSaveStep := 0;
				END_IF
			END_IF
		ELSIF usiGenSaveStep = 99 THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxBtnPosDuplicate);
			
			IF tyP1021McSetGen.tyMsgBoxBtnPosDuplicate.tyBtnNo.bRtCompl = TRUE THEN
				tyP1021McSetGen.tyMsgBoxBtnPosDuplicate.tyBtnNo.bRtCompl := FALSE;
				tyP1021McSetGen.tyMsgBoxBtnPosDuplicate.tyBtnNo.bValue   := FALSE;
			    
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
			    
				tyCommon.tySet.tyBtnSave.bRtCompl := FALSE;
				usiGenSaveStep := 0;
			END_IF	
			
	
		END_IF

	
	ELSIF bUpdateP1021Network THEN
		tyMcParamWr.sIPAddr					:= tyP1021McSetGen.tyGen.tyStringIPAddr.sValue;
		tyMcParamWr.sSubnetMask				:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue;
		//ADD
		tyMcParamWr.sHMIIPAddr				:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue;
		
		eMcParamAct	:= McParamActWrite;
		
		IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
			eMcParamAct		:= McParamActIdle;
			//ADD
			IF bUpdtHMIIPAddr = FALSE THEN
				eMcParamAct		:= McParamActIdle;
			END_IF
			
			IF bUpdateP1021Network THEN
				bUpdateP1021Network :=FALSE;
			END_IF
			
			//Update Restore Param
			tyP1021McSetGen.tyGenBkUp.tyStringIPAddr.sValue	 	:= tyP1021McSetGen.tyGen.tyStringIPAddr.sValue;
			tyP1021McSetGen.tyGenBkUp.tyStringSubnetMask.sValue	:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue;
			sDefaultGWBlkUp := '0.0.0.0';
			//ADD
			tyP1021McSetGen.tyGenBkUp.tyStringHMIIPAddr.sValue	:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue;
			
		ELSIF p_eMcParamStatus = Error THEN
			p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxSaveErr);
			
			IF tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
				tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bRtCompl 			:= FALSE;
				tyP1021McSetGen.tyMsgBoxSaveErr.tyBtnNo.bValue				:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
				
				// Restore Param
				tyP1021McSetGen.tyGenBkUp.tyStringIPAddr.sValue	 	:= tyP1021McSetGen.tyGen.tyStringIPAddr.sValue;
				tyP1021McSetGen.tyGenBkUp.tyStringSubnetMask.sValue	:= tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue;
				//ADD
				tyP1021McSetGen.tyGenBkUp.tyStringHMIIPAddr.sValue	:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue;
				tyMcParamWr				:= p_tyMcParamCurr;
				
				bUpdateP1021Network :=FALSE;

			END_IF
		END_IF
	END_IF
	
	IF p_eHWInfoStat = HWInfoActSetDefaultGateway AND p_eHWInfoStatus = Done THEN
		eHWInfoAct	:= HWInfoActIdle;
		sDefaultGWBlkUp := tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sValue;
	ELSIF p_eHWInfoStat = HWInfoActSetDefaultGateway AND p_eHWInfoStatus = Error AND NOT(tyP1021McSetGen.tyMsgBoxSetDefaultGWErr.tyBtnNo.bValue) THEN
		p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxSetDefaultGWErr);
		tyP1021McSetGen.tyGen.tyStringDefaultGWIP.sValue := sDefaultGWBlkUp;
	ELSIF p_eHWInfoStatus = Idle THEN
		tyP1021McSetGen.tyMsgBoxSetDefaultGWErr.tyBtnNo.bValue := FALSE;
	END_IF
	
	IF tyP1021McSetGen.tyMsgBoxSetDefaultGWErr.tyBtnNo.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyMsgBoxSetDefaultGWErr.tyBtnNo.bRtCompl	:= FALSE;
		tyCommon.tyMain.tyBtnReset.bRtCompl := TRUE;
		p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
		tyCommon.tySet.tyBtnSave.bRtCompl := TRUE;
	END_IF
		
END_ACTION
