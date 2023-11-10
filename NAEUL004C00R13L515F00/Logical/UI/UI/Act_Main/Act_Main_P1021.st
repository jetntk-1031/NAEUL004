
ACTION Act_Main_P1021:

	 //Machine Setting - General
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValueMin	:= p_tyNtParamCurr.tyUIConvInitTm.diMin;
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValueMax	:= p_tyNtParamCurr.tyUIConvInitTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.diValueMin	:= p_tyNtParamCurr.tyUITranInErrDlyTm.diMin;
	tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.diValueMax	:= p_tyNtParamCurr.tyUITranInErrDlyTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValueMin := -7000;
	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValueMax := 7000;
	
	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValueMin := -7000;
	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValueMax := 7000;
	
	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValueMin := -7000;
	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValueMax := 7000;
	//MagConv LifterConv
	tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.diValueMin		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin; //Lane1
	tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.diValueMax		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.diValueMin		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.diValueMax		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumLifterTopPos.diValueMin			:= p_tyNtParamCurr.tyUILifterTopPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterTopPos.diValueMax			:= p_tyNtParamCurr.tyUILifterTopPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValueMin			:= p_tyNtParamCurr.tyUILifterBtmPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValueMax			:= p_tyNtParamCurr.tyUILifterBtmPos.diMax;
	
	tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.diValueMin		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin; //Lane2
	tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.diValueMax		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.diValueMin		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.diValueMax		:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.diValueMin	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.diValueMax	:= p_tyNtParamCurr.tyUIMagConvRunTm.diMax;
	
	tyP1021McSetGen.tyGen.tyNumLifterTopPos2.diValueMin			:= p_tyNtParamCurr.tyUILifterTopPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterTopPos2.diValueMax			:= p_tyNtParamCurr.tyUILifterTopPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.diValueMin			:= p_tyNtParamCurr.tyUILifterBtmPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.diValueMax			:= p_tyNtParamCurr.tyUILifterBtmPos.diMax;
	//Siemen 
	tyP1021McSetGen.tyGen.tyNumMESResponseTO.diValueMax		:= 30000; //30s
	tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.diValueMax		:= 30000; //30s
	
	//Screen Saver
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValueMin	:= p_tyNtParamCurr.tyUISSaverTm.diMin;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValueMax	:= p_tyNtParamCurr.tyUISSaverTm.diMax;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	tyP1021McSetGen.tyGen.tyBtnSSaverEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	tyP1021McSetGen.tyGen.tyTxtLblSSaver.uiRtStat.0	:= NOT p_tyNtParamCurr.bSSaverPrep;
	
	
	//Width
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyTxtWidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyBtnAWDis.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPrep;
	
		
	//	tyP1021McSetGen.tyGen.tyNumWidthOffset.uiRtStat.0 :=  NOT p_tyNtParamCurr.bAWPrep;
	//	tyP1021McSetGen.tyGen.tyTxtWidthOffset.uiRtStat.0 :=  NOT p_tyNtParamCurr.bAWPrep;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.uiRtStat.0 :=  TRUE;
	tyP1021McSetGen.tyGen.tyTxtWidthOffset.uiRtStat.0 :=  TRUE;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValueMin :=  p_tyNtParamCurr.tyUIAWOffset.diMin;
	tyP1021McSetGen.tyGen.tyNumWidthOffset.diValueMax :=  p_tyNtParamCurr.tyUIAWOffset.diMax;
	//Hermes Remote Configuration
	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesRmtPrep;
	
	//Hermes Supervisory Configuration
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.uiRtStat.0		:= NOT p_tyNtParamCurr.bHermesSvyPrep; //new for Hermes 1.3
	tyP1021McSetGen.tyGen.tyBtnHermesSvyEn.bValue			:= p_tyMcParamCurr.bHermesSvyEn;//new for Hermes 1.3
	
	//Machine Mode
	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.uiRtStat.0 := TRUE;
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueMaxIdx	:= 8;
	ELSE
		tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueMaxIdx	:= 2;
	END_IF
	
	//Fix To Fix Rail Machine
	IF p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjUSFixToFixRail THEN
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.uiRtStat.0 := FALSE;
	ELSE
		tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.uiRtStat.0 := TRUE;
	END_IF
	
	//OvenInfo
	tyP1021McSetGen.tyGen.tyNumMaxBffr.diValueMin		:= p_tyNtParamCurr.tyUIOvenMaxBffrBtwnMc.diMin;
	tyP1021McSetGen.tyGen.tyNumMaxBffr.diValueMax		:= p_tyNtParamCurr.tyUIOvenMaxBffrBtwnMc.diMax;
	tyP1021McSetGen.tyGen.tyBtnOvenEn.uiRtStat.0		:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	tyP1021McSetGen.tyGen.tyBtnExtdOvenEn.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyNtParamCurr.bOvenInfoExtdPrep);
	tyP1021McSetGen.tyGen.tyNumMaxBffr.uiRtStat.0		:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyNtParamCurr.bOvenInfoExtdPrep);
	tyP1021McSetGen.tyGen.tyTxtMaxBffr.uiRtStat.0		:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyNtParamCurr.bOvenInfoExtdPrep);
	
	//Trav & Lifter For Lane B
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValueMin		:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValueMax		:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValueMin		:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValueMax		:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValueMin		:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValueMax		:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValueMin		:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValueMax		:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1021McSetGen.tyGen.tyTxtTravPosLaneB.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjUSFixToFixRail = FALSE);
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjUSFixToFixRail = FALSE);
	tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.uiRtStat.0		:= NOT (p_tyNtParamCurr.bProjLaneBPrep AND p_tyNtParamCurr.bProjUSFixToFixRail = FALSE);
	tyP1021McSetGen.tyGen.tyTxtLiftPosLaneB.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	
	//Vitrual SMEMA
	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bVSMEMAPrep;
	
	//Machine Setting - Magazine Inlet Sensor Auto Detect Timer
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValueMin	:= p_tyNtParamCurr.tyUIMcParamMagAutoEntSenTm.diMin;
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValueMax	:= p_tyNtParamCurr.tyUIMcParamMagAutoEntSenTm.diMax;
	
	
	//Gap Between Board
	tyP1021McSetGen.tyGen.tyBtnGapBetBrdEn.uiRtStat.0	:= TRUE;
	
	//Long Board
	tyP1021McSetGen.tyGen.tyBtnLongBrdEn.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLongBrdPrep;
	
	//Shutter
	tyP1021McSetGen.tyGen.tyBtnInShutterDis.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjInletShutPrep;
	
	//Stopper
	tyP1021McSetGen.tyGen.tyBtnStopperADis.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperAPrep;
	tyP1021McSetGen.tyGen.tyBtnStopperBDis.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperBPrep;

	
	//Magazine Conveyor
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.uiRtStat.0		:= NOT ((p_tyNtParamCurr.bProjMag1ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag1ConvRunTm.uiRtStat.0		:= NOT ((p_tyNtParamCurr.bProjMag1ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.uiRtStat.0		:= NOT ((p_tyNtParamCurr.bProjMag2ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag2ConvRunTm.uiRtStat.0		:= NOT ((p_tyNtParamCurr.bProjMag2ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.uiRtStat.0		:= NOT((p_tyNtParamCurr.bProjMag3ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND (p_tyNtParamCurr.eProjMag = ULMagTriple) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyTxtMag3ConvRunTm.uiRtStat.0		:= NOT((p_tyNtParamCurr.bProjMag3ConvPrep AND NOT(p_tyNtParamCurr.bProjLifTravMnlLoad)) AND (p_tyNtParamCurr.eProjMag = ULMagTriple) AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	
	//Parameter
	tyP1021McSetGen.tyGen.tyStringMcNm.sValue				:= p_tyMcParamCurr.sMcNm;
	tyP1021McSetGen.tyGen.tyDrpDnDefaultMcMod.usiValueIdx	:= p_tyMcParamCurr.usiDefaultMcMod;
	tyP1021McSetGen.tyGen.tyNumSSaverTm.diValue				:= UINT_TO_DINT(p_tyMcParamCurr.uiSSaverTmInSec);
	tyP1021McSetGen.tyGen.tyBtnSSaverEn.bValue				:= p_tyMcParamCurr.bSSaverEn;
	tyP1021McSetGen.tyGen.tyStringIPAddr.sValue				:= p_sHWInfoIPAddr;
	tyP1021McSetGen.tyGen.tyStringSubnetMask.sValue			:= p_sHWInfoSubnetMask;
	tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue			:= p_tyMcParamCurr.sHMIIPAddr;
	tyP1021McSetGen.tyGen.tyNumWidthAtHm.diValue			:= p_tyMcParamCurr.diWidthAtHmPosInUM;
	tyP1021McSetGen.tyGen.tyNumConvInitTm.diValue			:= p_tyMcParamCurr.diConvInitTmInMS;
	tyP1021McSetGen.tyGen.tyNumTranInErrDlyTm.diValue		:= p_tyMcParamCurr.diTranInErrDlyTmInMS;
	tyP1021McSetGen.tyGen.tyNumMag1ConvRunTm.diValue		:= p_tyMcParamCurr.diMag1ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMag2ConvRunTm.diValue		:= p_tyMcParamCurr.diMag2ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMag3ConvRunTm.diValue		:= p_tyMcParamCurr.diMag3ConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumMaxBffr.diValue				:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.diValue		:= p_tyMcParamCurr.diMagAutoDetectSenTmInMS;
	tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.diValue		:= p_tyMcParamCurr.diMag1WidthAtHmPosInUM;
	tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.diValue		:= p_tyMcParamCurr.diMag2WidthAtHmPosInUM;
	tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.diValue		:= p_tyMcParamCurr.diMag3WidthAtHmPosInUM;
	
	tyP1021McSetGen.tyGen.tyNumTravPosLaneA.diValue			:= p_tyMcParamCurr.diTravPosA;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.diValue			:= p_tyMcParamCurr.diLifterPosA;
	tyP1021McSetGen.tyGen.tyNumTravPosLaneB.diValue			:= p_tyMcParamCurr.diTravPosB;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneB.diValue			:= p_tyMcParamCurr.diLifterPosB;
	tyP1021McSetGen.tyGen.tyBtnAWDis.bValue					:= p_tyMcParamCurr.bAWDis;
	tyP1021McSetGen.tyGen.tyBtnMnlAccDat.bValue				:= p_tyMcParamCurr.bMnlAccDat;
	tyP1021McSetGen.tyGen.tyBtnAutoStepEn.bValue			:= p_tyMcParamCurr.bAutoStepEn;
	tyP1021McSetGen.tyGen.tyBtnVSMEMAEn.bValue				:= p_tyMcParamCurr.bVSMEMAEn;
	tyP1021McSetGen.tyGen.tyBtnHermesRmtEn.bValue			:= p_tyMcParamCurr.bHermesRmtEn;
	tyP1021McSetGen.tyGen.tyBtnGapBetBrdEn.bValue			:= p_tyMcParamCurr.bGapBwtnBrdEn;
	tyP1021McSetGen.tyGen.tyBtnLongBrdEn.bValue				:= p_tyMcParamCurr.bLongBrdEn;
	tyP1021McSetGen.tyGen.tyBtnOvenEn.bValue				:= p_tyMcParamCurr.bOvenEn;
	tyP1021McSetGen.tyGen.tyBtnExtdOvenEn.bValue			:= p_tyMcParamCurr.bExtdOvenEn;
	tyP1021McSetGen.tyGen.tyBtnInShutterDis.bValue			:= p_tyMcParamCurr.bInShutterDis;
	tyP1021McSetGen.tyGen.tyBtnChgParamEn.bValue			:= p_tyMcParamCurr.bChgParamEn;
	tyP1021McSetGen.tyGen.tyBtnStopperADis.bValue			:= p_tyMcParamCurr.bStopperADis;
	tyP1021McSetGen.tyGen.tyBtnStopperBDis.bValue			:= p_tyMcParamCurr.bStopperBDis;
	tyP1021McSetGen.tyGen.tyBtnAGVComEn.bValue				:= p_tyMcParamCurr.bAGVComEn;
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValue			:= p_tyMcParamCurr.diAWPusherAtHmPosInUM;
	
	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.bValue			:= p_tyMcParamCurr.bAWPusherDis;
	tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.bValue		:= p_tyMcParamCurr.bMagWidthChkDis;

	
	//Parameter Page3 : MagConv
	tyP1021McSetGen.tyGen.tyNumInMagConvInitTm.diValue			:= p_tyMcParamCurr.diInMagConvRunTmOutInMS; //Lane1
	tyP1021McSetGen.tyGen.tyNumLifterMagConvInitTm.diValue		:= p_tyMcParamCurr.diLifterMagConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumOutMagConvInitTm.diValue			:= p_tyMcParamCurr.diOutMagConvRunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumLifterTopPos.diValue				:= p_tyMcParamCurr.diLifterTopPos;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos.diValue				:= p_tyMcParamCurr.diLifterBtmPos;
	tyP1021McSetGen.tyGen.tyNumInMagConv2InitTm.diValue			:= p_tyMcParamCurr.diInMagConv2RunTmOutInMS; //Lane2
	tyP1021McSetGen.tyGen.tyNumLifterMagConv2InitTm.diValue		:= p_tyMcParamCurr.diLifterMagConv2RunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumOutMagConv2InitTm.diValue		:= p_tyMcParamCurr.diOutMagConv2RunTmOutInMS;
	tyP1021McSetGen.tyGen.tyNumLifterTopPos2.diValue			:= p_tyMcParamCurr.diLifterTopPos2;
	tyP1021McSetGen.tyGen.tyNumLifterBtmPos2.diValue			:= p_tyMcParamCurr.diLifterBtmPos2;
	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.diValue		:= p_tyMcParamCurr.diMag1WidthChkDetDist;
	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.diValue		:= p_tyMcParamCurr.diMag2WidthChkDetDist;
	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.diValue		:= p_tyMcParamCurr.diMag3WidthChkDetDist;

	//Page 4 :
	//Siemen
	tyP1021McSetGen.tyGen.tyNumMESResponseTO.diValue			:= p_tyMcParamCurr.diMESResponseTOTmInMS; //RFID Write
	tyP1021McSetGen.tyGen.tyBtnInletStopperDis.bValue			:= p_tyMcParamCurr.bInStopperDis;  //Stopper Inlet
	tyP1021McSetGen.tyGen.tyBtnMESEn.bValue					:= p_tyMcParamCurr.bMESEn;	//RFID
	tyP1021McSetGen.tyGen.tyBtnSwitchingProductType.bValue				:= p_tyMcParamCurr.bSwitchingProdType; //AutoRcp
	tyP1021McSetGen.tyGen.tyBtnBatchIDChgOverCmp.bValue				:= p_tyMcParamCurr.bBatchIDChgOverCmp; //AutoRcp
	tyP1021McSetGen.tyGen.tyBtnIgnoreTopClearance.bValue				:= p_tyMcParamCurr.bIgnoreTopClearance; //AutoRcp
	tyP1021McSetGen.tyGen.tyBtnIgnoreBottomClearance.bValue				:= p_tyMcParamCurr.bIgnoreBtmClearance; //AutoRcp
	tyP1021McSetGen.tyGen.tyBtnIgnoreThickness.bValue				:= p_tyMcParamCurr.bIgnoreThickness; //AutoRcp
	
	
	//Parameter P1025 : scanner
	tyP1025McSetScan.tyScan.tyBtnTopScanEn.bValue	:= p_tyMcParamCurr.bTopScannerEn;
	tyP1025McSetScan.tyScan.tyBtnBtmScanEn.bValue	:= p_tyMcParamCurr.bBtmScannerEn;
	tyP1025McSetScan.tyScan.tyStringTopScanSvrIP.sValue	:= p_tyMcParamCurr.sTopScanIPAddr;
	tyP1025McSetScan.tyScan.tyNumTopScanSvrPort.diValue	:= p_tyMcParamCurr.uiTopScanSvrPort;
	tyP1025McSetScan.tyScan.tyStringBtmScanSvrIP.sValue	:= p_tyMcParamCurr.sBtmScanIPAddr;
	tyP1025McSetScan.tyScan.tyNumBtmScanSvrPort.diValue	:= p_tyMcParamCurr.uiBtmScanSvrPort;

	//Logout
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValueMin			:= p_tyNtParamCurr.tyUIAutoLogoutTm.diMin;
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValueMax			:= p_tyNtParamCurr.tyUIAutoLogoutTm.diMax;
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.uiRtStat.0			:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.uiRtStat.0			:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	tyP1021McSetGen.tyGen.tyTxtLblAutoLogoutTm.uiRtStat.0		:= NOT p_tyNtParamCurr.bAutoLogoutPrep;
	
	tyP1021McSetGen.tyGen.tyNumAutoLogoutTm.diValue				:= p_tyMcParamCurr.diAutoLogoutTmInSec;
	tyP1021McSetGen.tyGen.tyBtnAutoLogoutEn.bValue				:= p_tyMcParamCurr.bAutoLogoutEn;
	
	//Network Mode
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueMinIdx		:= DINT_TO_USINT(p_tyNtParamCurr.tyNetworkMode.diMin);
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueMaxIdx		:= DINT_TO_USINT(p_tyNtParamCurr.tyNetworkMode.diMax);
	tyP1021McSetGen.tyGen.tyDrpDnNetworkMod.usiValueIdx			:= DINT_TO_USINT(p_tyMcParamCurr.eNetworkMod);

	//Pusher Auto Width AT Home
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin-p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.diValueMax	:= (p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000) / 2;
	tyP1021McSetGen.tyGen.tyNumAWPusherAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP1021McSetGen.tyGen.tyTxtAWPusherAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP1021McSetGen.tyGen.tyBtnAWPusherDis.uiRtStat.0	:= NOT p_tyNtParamCurr.bAWPusherPrep;
	
	//Magazine Width
	tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin - 10000;
	tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000;
	tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin - 10000;
	tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000;
	tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMin - 10000;
	tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax + 10000;
	tyP1021McSetGen.tyGen.tyNumMag1WidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	tyP1021McSetGen.tyGen.tyTxtMag1WidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	tyP1021McSetGen.tyGen.tyNumMag2WidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	tyP1021McSetGen.tyGen.tyTxtMag2WidthAtHm.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	tyP1021McSetGen.tyGen.tyNumMag3WidthAtHm.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP1021McSetGen.tyGen.tyTxtMag3WidthAtHm.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP1021McSetGen.tyGen.tyBtnAutoStepEn.uiRtStat.0			:= TRUE;
	//Magazine Wall Auto Width
	tyP1021McSetGen.tyGen.tyBtnMagAWDis.uiRtStat	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	tyP1021McSetGen.tyGen.tyBtnMagAWDis.bValue				:= p_tyMcParamCurr.bMagAWDis;	
	//Magazine Safety Bar
	tyP1021McSetGen.tyGen.tyBtnMagSafetyBarDis.uiRtStat	:= NOT p_tyNtParamCurr.bProjMagSafetyBarPrep;
	tyP1021McSetGen.tyGen.tyBtnMagSafetyBarDis.bValue		:= p_tyMcParamCurr.bMagSafetyBarDis;
	
	tyP1021McSetGen.tyGen.tyBtnLFBuzMute.bValue				:= p_tyMcParamCurr.bLFBuzMute;
	
	tyP1021McSetGen.tyGen.tyNumTCPSvrPort.uiRtStat		:= NOT p_tyNtParamCurr.bProjTCPAGVSigPrep;
	tyP1021McSetGen.tyGen.tyNumTCPSvrPort.diValue		:= p_tyMcParamCurr.diTCPSvrPort;

	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMaxIdx		:= 4;
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMinIdx		:= 3;
	ELSE
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMaxIdx		:= 2;
		tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueMinIdx		:= 0;
	END_IF
	
	CASE  p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  0;
			
		McSetAGVCommHardIO:		
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  1;
			
		McSetAGVCommDisabled:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  2;
			
		McSetAGVTCPEnableTCP:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  3;
		McSetAGVTCPDisableTCP:
			tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.usiValueIdx :=  4;
	END_CASE
	
	IF p_tyNtParamCurr.bProjAIVInPosSenPrep THEN
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMaxIdx		:= 3;
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMinIdx		:= 4;
	ELSE
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMaxIdx		:= 2;
		tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueMinIdx		:= 0;
	END_IF
	
	
	CASE  p_tyMcParamCurr.eMagExMode OF
		McSetMagXcAutoManMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 0;
		
		McSetMagXcAutoMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 1;
			
		McSetMagXcManMode:
			tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.usiValueIdx := 2;
	END_CASE
	
	tyP1021McSetGen.tyGen.tyDrpDnAGVComProtocol.uiRtStat.0 := NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP1021McSetGen.tyGen.tyDrpDnMagExchangeMode.uiRtStat.0 := NOT p_tyNtParamCurr.bProjAGVPrep;
	
	tyP1021McSetGen.tyGen.tyBtnAGVComEn.uiRtStat.0 := TRUE;
	tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.bValue := p_tyMcParamCurr.bAIVSizeDisabled;
	
	tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.diValue		:= p_tyMcParamCurr.diTravInletFixtoFixPos;
	tyP1021McSetGen.tyGen.tyNumTravFixtoFixPosInlet.diValueMax	:= 1000000; 	
	
	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.uiRtStat.0 := NOT((p_tyNtParamCurr.bProjAGVPrep)AND NOT(p_tyNtParamCurr.bProjTCPAGVSigPrep));
	tyP1021McSetGen.tyGen.tyBtnDisableFMWarning.bValue	:= p_tyMcParamCurr.bDisableFMWarning;
	
	IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP1021McSetGen.tyGen.tyTxtLiftPosLaneA.usiValueIdx := 23;
	END_IF
	
	tyP1021McSetGen.tyGen.tyNumMagAutoDetSenTm.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep AND p_tyNtParamCurr.bProjLifterMagPlatform = FALSE);
	tyP1021McSetGen.tyGen.tyBtnAGVSizeDisabled.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep AND NOT(p_tyNtParamCurr.bProjTCPAGVSigPrep));
	tyP1021McSetGen.tyGen.tyTxtLiftPosLaneA.uiRtStat.0	:= p_tyNtParamCurr.bProjMagConvLane1Prep;
	tyP1021McSetGen.tyGen.tyNumLiftPosLaneA.uiRtStat.0	:= p_tyNtParamCurr.bProjMagConvLane1Prep;
	tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.uiRtStat	:= p_tyNtParamCurr.bProjMagConvLane1Prep;

	//DataSource.UI.UI.p_tyP1021McSetGen.tyBtnMagWidthChkDis.uiRtStat
	//Magazine Width Check
	tyP1021McSetGen.tyGen.tyBtnMagWidthChkDis.uiRtStat.0 :=  NOT(p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0);
	tyP1021McSetGen.tyGen.tyNumMag1WidthChkDetDist.uiRtStat.0 :=  NOT(p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0);
	tyP1021McSetGen.tyGen.tyNumMag2WidthChkDetDist.uiRtStat.0 :=  NOT(p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0);
	tyP1021McSetGen.tyGen.tyNumMag3WidthChkDetDist.uiRtStat.0 :=  NOT(p_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0);
	
	tyP1021McSetGen.tyGen.tyBtnInletStopperDis.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjInletStopperPrep);
	tyP1021McSetGen.tyGen.tyNumInStprDelayTm.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjInletStopperPrep);
	tyP1021McSetGen.tyGen.tyNumMESResponseTO.uiRtStat.0		:= NOT(p_tyNtParamCurr.eCustomerReq = Siemens );
	tyP1021McSetGen.tyGen.tyBtnMESEn.uiRtStat.0				:= NOT(p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate);
	tyP1021McSetGen.tyGen.tyBtnSwitchingProductType.uiRtStat.0		:= TRUE; // NOT(p_tyNtParamCurr.bAutoRcpPrep);
	tyP1021McSetGen.tyGen.tyBtnBatchIDChgOverCmp.uiRtStat.0		:= NOT(p_tyNtParamCurr.bAutoRcpPrep AND p_tyNtParamCurr.eAutoRcpPrecededBy = PrecededBySelf);

	tyP1021McSetGen.tyGen.tyBtnIgnoreTopClearance.uiRtStat.0	 := NOT(p_tyNtParamCurr.bAutoRcpPrep AND p_tyNtParamCurr.eAutoRcpPrecededBy = PrecededBySelf);
	tyP1021McSetGen.tyGen.tyBtnIgnoreBottomClearance.uiRtStat.0	 := NOT(p_tyNtParamCurr.bAutoRcpPrep AND p_tyNtParamCurr.eAutoRcpPrecededBy = PrecededBySelf);
	tyP1021McSetGen.tyGen.tyBtnIgnoreThickness.uiRtStat.0	 := NOT(p_tyNtParamCurr.bAutoRcpPrep AND p_tyNtParamCurr.eAutoRcpPrecededBy = PrecededBySelf);
	tyP1021McSetGen.tyGen.tyBtnDMCScannerEn.uiRtStat.0  := NOT(p_tyNtParamCurr.tyDISettings.diScanComplSig >0 );
	tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.uiRtStat.0  := NOT(p_tyNtParamCurr.tyDISettings.diScanComplSig >0 );
	tyP1021McSetGen.tyGen.tyBtnDMCScannerEn.bValue := p_tyMcParamCurr.bDMCScannerEn;
	tyP1021McSetGen.tyGen.tyNumDMCScanWriteTO.diValue := p_tyMcParamCurr.diDMCScanTOErrInMs;
	
	
	//Button Position Limit
	tyP1021McSetGen.tyGen.tyDrpDnPos1.usiValueMinIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMin);
	tyP1021McSetGen.tyGen.tyDrpDnPos1.usiValueMaxIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMax);
	
	tyP1021McSetGen.tyGen.tyDrpDnPos2.usiValueMinIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMin);
	tyP1021McSetGen.tyGen.tyDrpDnPos2.usiValueMaxIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMax);
	
	tyP1021McSetGen.tyGen.tyDrpDnPos3.usiValueMinIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMin);
	tyP1021McSetGen.tyGen.tyDrpDnPos3.usiValueMaxIdx			:= DINT_TO_USINT (p_tyNtParamCurr.tyUIBtnPosLmt.diMax);
	
	
	tyP1021McSetGen.tyGen.tyDrpDnPos1.uiRtStat.0			:= TRUE; //hide for only option
	tyP1021McSetGen.tyGen.tyDrpDnPos2.uiRtStat.0			:= TRUE;
	tyP1021McSetGen.tyGen.tyDrpDnPos3.uiRtStat.0			:= TRUE;
	
	
	tyP1021McSetGen.tyGen.tyDrpDnPos1.usiValueIdx			:= DINT_TO_USINT (p_tyMcParamCurr.tyOptBtnPos.ePos1);
	tyP1021McSetGen.tyGen.tyDrpDnPos2.usiValueIdx			:= DINT_TO_USINT (p_tyMcParamCurr.tyOptBtnPos.ePos2);
	tyP1021McSetGen.tyGen.tyDrpDnPos3.usiValueIdx			:= DINT_TO_USINT (p_tyMcParamCurr.tyOptBtnPos.ePos3);
END_ACTION
