(*2019-03-25*)
(**)

TYPE
	eUIAction : 
		(
		UIActIdle,
		UIActInitial
		);
END_TYPE

(**)
(*Data*)

TYPE
	eUIInitial : 
		(
		UIInitialC0005,
		UIInitialC0007,
		UIInitialP0000,
		UIInitialP0002,
		UIInitialP0003,
		UIInitialP0200,
		UIInitialP0201,
		UIInitialP0202,
		UIInitialP0203,
		UIInitialP0204,
		UIInitialP0205,
		UIInitialP0206,
		UIInitialP0207,
		UIInitialP0300,
		UIInitialP0400,
		UIInitialP0410,
		UIInitialP0800,
		UIInitialP0850,
		UIInitialP0900,
		UIInitialP0910,
		UIInitialP0920,
		UIInitialP0921,
		UIInitialP0922,
		UIInitialP0923,
		UIInitialP0928,
		UIInitialP0929,
		UIInitialP0930,
		UIInitialP0931,
		UIInitialP0932,
		UIInitialP0933,
		UIInitialP0934,
		UIInitialP0935,
		UIInitialP0936,
		UIInitialP0937,
		UIInitialP0938,
		UIInitialP0939,
		UIInitialP0940,
		UIInitialP0950,
		UIInitialP1000,
		UIInitialP1020,
		UIInitialP1021,
		UIInitialP1022,
		UIInitialP1023,
		UIInitialP1024,
		UIInitialP1026,
		UIInitialP1027,
		UIInitialP1030,
		UIInitialP1031,
		UIInitialP1040,
		UIInitialP1050,
		UIInitialP1080,
		UIInitialP1081,
		UIInitialDone
		);
END_TYPE

(*Global Alarm*)

TYPE
	tyUIAllAlm : 	STRUCT 
		bAlm : ARRAY[0..9999]OF BOOL;
		bWarning : ARRAY[0..9999]OF BOOL;
	END_STRUCT;
END_TYPE

(*Global Ip Address*)

TYPE
	tyIPAddress : 	STRUCT 
		sSetIPAddress : STRING[15];
		sSetSubnetMask : STRING[15];
		sSelectedNetworkMode : STRING[30];
		sTempIpAddress : STRING[15];
		sTempSubnetMask : STRING[15];
		sTempNetworkMode : STRING[30];
	END_STRUCT;
END_TYPE

(*UIOut*)

TYPE
	tyUIOut1 : 	STRUCT 
		eMnlAct : eUIMnlAction;
		sProdRcpSearch : STRING[30];
		sProdRcpScan : STRING[30];
		sMagRcpSearch : STRING[30];
		tyUsrMgmtInfoIn : tyUsrMgmtParam;
		tyUsrMgmtAccessRightLvl1Wr : tyUsrMgmtAccessRight;
		tyUsrMgmtAccessRightLvl2Wr : tyUsrMgmtAccessRight;
		tyUsrMgmtAccessRightLvl3Wr : tyUsrMgmtAccessRight;
		tyMcParamWr : tyMcParam;
		sSetIPAddr : STRING[30];
		sSetSubnetMask : STRING[30];
		bManualMod : BOOL := FALSE;
		bUIManualMod : BOOL;
		bMuteBuz : BOOL := FALSE;
		bSimuMod : BOOL := FALSE;
		diConstant1 : DINT := 8;
		diConstant2 : DINT := 267;
		diMnlMtrPshrExtSpd : DINT;
		diMnlMtrPshrExtTorq : DINT;
		diMnlAWPushOrPullerGoWidth : DINT;
		diMnlAWPushOrPullerNomSpd : DINT;
		diMnlAWPushOrPullerTargetPos : DINT;
		diMnlAWPushOrPullerStepSize : DINT;
		diMnlAWPushOrPullerJogSpd : DINT;
		diMnlAWGoWidth : DINT;
		diMnlAWNomSpd : DINT;
		diMnlAWTargetPos : DINT;
		diMnlAWStepSize : DINT;
		diMnlAWJogSpd : DINT;
		diMnlLifterGoSlt1Pos : DINT;
		diMnlLifterMag1GoSlt : DINT;
		diMnlLifterMag2GoSlt : DINT;
		diMnlLifterMag3GoSlt : DINT;
		diMnlLifterNomSpd : DINT;
		diMnlLifterTargetPos : DINT;
		diMnlLifterStepSize : DINT;
		diMnlLifterJogSpd : DINT;
		diMnlLifterGoSlt1Pos2 : DINT;
		diMnlLifterMag1GoSlt2 : DINT;
		diMnlLifterMag2GoSlt2 : DINT;
		diMnlLifterMag3GoSlt2 : DINT;
		diMnlLifterNomSpd2 : DINT;
		diMnlLifterTargetPos2 : DINT;
		diMnlLifterStepSize2 : DINT;
		diMnlLifterJogSpd2 : DINT;
		diMnlTravNomSpd : DINT;
		diMnlTravTargetPos : DINT;
		diMnlTravStepSize : DINT;
		diMnlTravJogSpd : DINT;
		diMnlMagAW1GoWidth : DINT;
		diMnlMagAW1NomSpd : DINT;
		diMnlMagAW1TargetPos : DINT;
		diMnlMagAW1StepSize : DINT;
		diMnlMagAW1JogSpd : DINT;
		diMnlMagAW2GoWidth : DINT;
		diMnlMagAW2NomSpd : DINT;
		diMnlMagAW2TargetPos : DINT;
		diMnlMagAW2StepSize : DINT;
		diMnlMagAW2JogSpd : DINT;
		diMnlMagAW3GoWidth : DINT;
		diMnlMagAW3NomSpd : DINT;
		diMnlMagAW3TargetPos : DINT;
		diMnlMagAW3StepSize : DINT;
		diMnlMagAW3JogSpd : DINT;
		bVSMEMAUSAEn : BOOL;
		bVSMEMAUSBEn : BOOL;
		bVSMEMAUBAA : BOOL;
		bVSMEMAUBAAStat : BOOL;
		bVSMEMAUBAB : BOOL;
		bVSMEMAUBABStat : BOOL;
		diSetBrdInOvenA : DINT;
		diSetBrdInOvenB : DINT;
		bLeaderRun : BOOL;
		bProdAccData : BOOL;
		bOpsBypsInitConv : BOOL;
		bEjectMag1 : BOOL;
		bEjectMag2 : BOOL;
		bEjectMag3 : BOOL;
		bNewMag1 : BOOL;
		bNewMag2 : BOOL;
		bNewMag3 : BOOL;
		bRlsMag1 : BOOL;
		bRlsMag2 : BOOL;
		bRlsMag3 : BOOL;
		tyAGVSimulateSig : tyTagAGVToDTMag;
		bAGVSimulateOnline : BOOL;
		bAGVSimulationOn : BOOL;
		tySOTSimulateSig1 : tySOTstatus;
		tySOTSimulateSig2 : tySOTstatus;
		tySOTSimulateSig3 : tySOTstatus;
		diMnlPPGoWidth : DINT;
		diMnlPPTargetPos : DINT;
		diMnlPPStepSize : DINT;
		diMnlPPNomSpd : DINT;
		diMnlPPJogSpd : DINT;
		diMnlServoMtrMaxPulRatio : DINT := 3000;
		usiHComModChaged : USINT;
		bStartScanSig : BOOL;
		bPCBExitMag1 : BOOL;
		bPCBExitMag2 : BOOL;
		bPCBExitMag3 : BOOL;
		sSetHMIIPAddr : STRING[15];
		bUpdtHMIIPAddr : BOOL;
		bSafetyCurtainReset : BOOL;
		bBypCurtainSen : BOOL;
		bBypCurtainPBLED : BOOL;
		bSOTMagErr1 : BOOL := FALSE;
		bSOTMagErr2 : BOOL := FALSE;
		bSOTMagErr3 : BOOL := FALSE;
		bSOTMagErr4 : BOOL := FALSE;
		bSOTMagRdy1 : BOOL := FALSE;
		bSOTMagRdy2 : BOOL := FALSE;
		bSOTMagRdy3 : BOOL := FALSE;
		bSOTMagRdy4 : BOOL := FALSE;
		bSOTMagAvail1 : BOOL := FALSE;
		bSOTMagAvail2 : BOOL := FALSE;
		bSOTMagAvail3 : BOOL := FALSE;
		bSOTMagAvail4 : BOOL := FALSE;
		bSOTMagSLarge1 : BOOL := FALSE;
		bSOTMagSLarge2 : BOOL := FALSE;
		bSOTMagSLarge3 : BOOL := FALSE;
		bSOTMagSLarge4 : BOOL := FALSE;
		bAIVReqBring1 : BOOL := FALSE;
		bAIVReqBring2 : BOOL := FALSE;
		bAIVReqBring3 : BOOL := FALSE;
		bAIVReqBring4 : BOOL := FALSE;
		bAIVReqGet1 : BOOL := FALSE;
		bAIVReqGet2 : BOOL := FALSE;
		bAIVReqGet3 : BOOL := FALSE;
		bAIVReqGet4 : BOOL := FALSE;
		iSlotId : INT := 0;
		bSkipWorkOrder : BOOL;
		bReadWorkOrder : BOOL;
		bDeleteWorkOrder : BOOL := FALSE;
		bMismatchOverWriteConfig : BOOL;
		usiNetworkModeSelected : USINT := 0;
		bTempAddrFillDone : BOOL;
		bIPConfigChgDone : BOOL;
		bOverwriteIP : BOOL;
		bOverwriteSubnet : BOOL;
		bOverwriteEthMode : BOOL;
		bMagAWOpenLimByp1 : BOOL := FALSE;
		bMagAWOpenLimByp2 : BOOL := FALSE;
		bMagAWOpenLimByp3 : BOOL := FALSE;
		bMagAWOpenLimByp4 : BOOL := FALSE;
		bSmallMagLimSen1 : BOOL := FALSE;
		bSmallMagLimSen2 : BOOL := FALSE;
		bSmallMagLimSen3 : BOOL := FALSE;
		bSmallMagLimSen4 : BOOL := FALSE;
		usiSelProdRcpStep : USINT := 0;
		bUnloadMag : BOOL; (*Magazine platform*)
		bOpsMnlUnloadMag : BOOL; (*Lane1 Magazine unload*)
		bOpsMnlUnloadMag2 : BOOL; (*Lane2 Magazine unload*)
		bQueryBoardInfo : BOOL := FALSE;
		bQueryWorkOrderInfo : BOOL := FALSE;
		bSaveHMISvyConfig : BOOL;
		bSaveHMIConfigure : BOOL;
	END_STRUCT;
	eUIMnlAction : 	STRUCT 
		eStartupAct : eStartupAction;
		eSimuAct : eSimulationsAction;
		eHWInfoAct : eHWInfoAction;
		eTLBuzAct : eTLBuzAction;
		eRstErrAct : eRstErrAction;
		eProdRcpAct : eProdRcpAction;
		eMpProdRcpAct : eMpProdRcpAction;
		eMagRcpAct : eMagRcpAction;
		eMcParamAct : eMcParamAction;
		eUsrMgmtAct : eUsrMgmtAction;
		eOvenInfoAAct : eOvenInfoAction;
		eOvenInfoBAct : eOvenInfoAction;
		eBuffer1Act : eBufferAction;
		eBuffer2Act : eBufferAction;
		eBuffer3Act : eBufferAction;
		eUSSMEMAAAct : eSMEMAAction;
		eUSSMEMABAct : eSMEMAAction;
		eInShutterAct : ePneuAction;
		eOutShutterAct : ePneuAction;
		eOutShutterAct2 : ePneuAction;
		eOutShutterAct3 : ePneuAction;
		eStopperAAct : ePneuAction;
		eStopperBAct : ePneuAction;
		eInStopperAct : ePneuAction;
		eMag1SafetyBarAct : ePneuAction;
		eMag2SafetyBarAct : ePneuAction;
		eMag3SafetyBarAct : ePneuAction;
		eMag1AWEngageAct : ePneuAction;
		eMag2AWEngageAct : ePneuAction;
		eMag3AWEngageAct : ePneuAction;
		ePshrConvAct : eConvAction;
		eMtrPshrAct : eMtrPshrAction;
		eMagConvSelClp1Act : ePneuAction;
		eMagConvSelClp2Act : ePneuAction;
		eMagConvSelClp3Act : ePneuAction;
		eMagConv2Clp1Act : eMagConv2ClpAction;
		eMagConv2Clp2Act : eMagConv2ClpAction;
		eMagConv2Clp3Act : eMagConv2ClpAction;
		eAWPushOrPullerAct : eAWAction;
		eAWOpenAct : eAWAction;
		eLifterBtmAct : eLifterAction;
		eLifter2Act : eLifterAction;
		eTravAct : eTravAction;
		eMagAWOpen1Act : eMagAWAction;
		eMagAWOpen2Act : eMagAWAction;
		eMagAWOpen3Act : eMagAWAction;
		eDOAct : eDOAction;
		eHermesAct : eHermesAction;
		eLFLeaderAct : eLFAction;
		eOpsAct : eOperationsAction;
		eStopper1Act : ePneuAction;
		eStopper2Act : ePneuAction;
		eStopper3Act : ePneuAction;
		eStopper4Act : ePneuAction;
		eStopper5Act : ePneuAction;
		eStopper1Act2 : ePneuAction;
		eStopper2Act2 : ePneuAction;
		eStopper3Act2 : ePneuAction;
		eStopper4Act2 : ePneuAction;
		eStopper5Act2 : ePneuAction;
	END_STRUCT;
END_TYPE
