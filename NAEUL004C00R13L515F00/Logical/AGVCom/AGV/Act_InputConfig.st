(** 2018-12-08 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Linkg_tyMcParamCurr
	tylocalAGV.In.bLinkSafetyRlySig := g_tyDInput.bSafetyRlySig;
	tylocalAGV.In.bLinkCoverSWSig := g_tyDInput.bCoverSWSig;
	tylocalAGV.In.bLinkAlarmWarning := g_tyAlm.bWarning;
	tylocalAGV.In.bLinkAlarmInfo := g_tyAlm.bInfo;
	tylocalAGV.In.bLinkError := g_tyAlm.bErr;
	tylocalAGV.In.eLinkULMag := g_tyNtParamCurr.eProjMag;
	tylocalAGV.In.eLinkAGVComProtocol := g_tyMcParamCurr.eAGVComProtocol;
	
	//Pass Data To Internal Use

	tylocalAGV.In.bManual := g_tyUIOut.bManualMod;
	tylocalAGV.In.bPrep := g_tyNtParamCurr.bProjAGVPrep;
	tylocalAGV.In.tyDTMagToAGV1 := g_tyAGVMag1.b.tyDTMagToAGV;
	tylocalAGV.In.tyDTMagToAGV2 := g_tyAGVMag2.b.tyDTMagToAGV;
	tylocalAGV.In.tyDTMagToAGV3 := g_tyAGVMag3.b.tyDTMagToAGV;
	tylocalAGV.In.udiRstErr	:= g_tyRstErr.udiReset;
	tylocalAGV.In.sProgNm := g_tyNtParamCurr.sAGVProgNm;
	tylocalAGV.In.bIncorrectMagazine1 := g_tyOpsMagConvUL1.bIncorrectMagModel;
	tylocalAGV.In.bIncorrectMagazine2 := g_tyOpsMagConvUL2.bIncorrectMagModel;
	tylocalAGV.In.bIncorrectMagazine3 := g_tyOpsMagConvUL3.bIncorrectMagModel;

	
	tylocalAGV.In.tyUIAGVToDTMagSimulateData := g_tyUIOut.tyAGVSimulateSig;
	tylocalAGV.In.bUIAGVOnline := g_tyUIOut.bAGVSimulateOnline;
	tylocalAGV.In.bUIAGVSimulationOn := g_tyUIOut.bAGVSimulationOn;
	
	tylocalAGV.In.sJobNo := g_tyNtParamCurr.sJobNo;
	
	tylocalAGV.In.bAGVRdyEnter1 := g_tyAGVMag1.bRdyEnter;
	tylocalAGV.In.bAGVRdyExit1 := g_tyAGVMag1.bRdyExit;
	tylocalAGV.In.bAGVRdyEnter2 := g_tyAGVMag2.bRdyEnter;
	tylocalAGV.In.bAGVRdyExit2 := g_tyAGVMag2.bRdyExit;
	tylocalAGV.In.bAGVRdyEnter3 := g_tyAGVMag3.bRdyEnter;
	tylocalAGV.In.bAGVRdyExit3 := g_tyAGVMag3.bRdyExit;
	
	tylocalAGV.In.bDIFleetManagerActive := g_tyDInput.bFleetManagerReady;
	
	tylocalAGV.In.bUISOTMagError1	:= g_tyUIOut.bSOTMagErr1;		
	tylocalAGV.In.bUISOTMagError2	:= g_tyUIOut.bSOTMagErr2;		
	tylocalAGV.In.bUISOTMagError3	:= g_tyUIOut.bSOTMagErr3;	
	//		tylocalAGV.In.bSOTMagError4	:= g_tyUIOut.bSOTMagErr4;		
	tylocalAGV.In.bUISOTMagReady1	:= g_tyUIOut.bSOTMagRdy1;	
	tylocalAGV.In.bUISOTMagReady2	:= g_tyUIOut.bSOTMagRdy2;	
	tylocalAGV.In.bUISOTMagReady3	:= g_tyUIOut.bSOTMagRdy3;		
	//		tylocalAGV.In.bSOTMagReady4	:= g_tyUIOut.bSOTMagRdy4;		
	tylocalAGV.In.bUISOTMagAvailable1	:= g_tyUIOut.bSOTMagAvail1;	
	tylocalAGV.In.bUISOTMagAvailable2	:= g_tyUIOut.bSOTMagAvail2;	
	tylocalAGV.In.bUISOTMagAvailable3	:= g_tyUIOut.bSOTMagAvail3;	
	//		tylocalAGV.In.bSOTMagAvailable4	:= g_tyUIOut.bSOTMagAvail4;	
	tylocalAGV.In.bUISOTMagSizeLarge1	:= g_tyUIOut.bSOTMagSLarge1;	
	tylocalAGV.In.bUISOTMagSizeLarge2	:= g_tyUIOut.bSOTMagSLarge2;	
	tylocalAGV.In.bUISOTMagSizeLarge3 := g_tyUIOut.bSOTMagSLarge3;	
	//		tylocalAGV.In.bSOTMagSizeLarge4	:= g_tyUIOut.bSOTMagSLarge4;
		
	tylocalAGV.In.bUIRequestToBring1 := g_tyUIOut.bAIVReqBring1;
	tylocalAGV.In.bUIRequestToBring2 := g_tyUIOut.bAIVReqBring2;
	tylocalAGV.In.bUIRequestToBring3 := g_tyUIOut.bAIVReqBring3;
		
	tylocalAGV.In.bUIRequestToGet1 := g_tyUIOut.bAIVReqGet1;
	tylocalAGV.In.bUIRequestToGet2 := g_tyUIOut.bAIVReqGet2;
	tylocalAGV.In.bUIRequestToGet3 := g_tyUIOut.bAIVReqGet3;
	
	tylocalAGV.In.eAGVComProtocol := g_tyMcParamCurr.eAGVComProtocol;
	
	tylocalAGV.In.bSOTMagReady1 := g_tyUSSOT1.bUSB;
	tylocalAGV.In.bSOTMagReady2 := g_tyUSSOT2.bUSB;
	tylocalAGV.In.bSOTMagReady3 := g_tyUSSOT3.bUSB;
		
	tylocalAGV.In.bSOTMagError1 := g_tyAlm.bErr;
	tylocalAGV.In.bSOTMagError2 := g_tyAlm.bErr;
	tylocalAGV.In.bSOTMagError3 := g_tyAlm.bErr;
		
	tylocalAGV.In.bSOTMagAvailable1 := g_tyDSSOT1.bDBA;
	tylocalAGV.In.bSOTMagAvailable2 := g_tyDSSOT2.bDBA;
	tylocalAGV.In.bSOTMagAvailable3 := g_tyDSSOT3.bDBA;
		
	tylocalAGV.In.bSOTMagSizeLarge1 := g_tyDSSOT1.bDSMagSizeLarge;
	tylocalAGV.In.bSOTMagSizeLarge2 := g_tyDSSOT2.bDSMagSizeLarge;
	tylocalAGV.In.bSOTMagSizeLarge3 := g_tyDSSOT3.bDSMagSizeLarge;
	
	tylocalAGV.In.bRequestToGet1 := g_tyDSSOT1.bDBA;
	tylocalAGV.In.bRequestToGet2 := g_tyDSSOT2.bDBA;
	tylocalAGV.In.bRequestToGet3 := g_tyDSSOT3.bDBA;
	tylocalAGV.In.bRequestToBring1 := g_tyBuffer1.bMagRemoved;
	tylocalAGV.In.bRequestToBring2 := g_tyBuffer2.bMagRemoved;
	tylocalAGV.In.bRequestToBring3 := g_tyBuffer3.bMagRemoved;
	
	
	tylocalAGV.In.bDisableFMWarning := g_tyMcParamCurr.bDisableFMWarning;
	
	//For Siemen + We fab
	tylocalAGV.In.eCustomerReq := g_tyNtParamCurr.eCustomerReq;
	
	tylocalAGV.In.bOpsMagConvUL1ReadRFID := g_tyOpsMagConvUL1.bReadRFID;
	tylocalAGV.In.bOpsMagConvUL1WriteRFID := g_tyOpsMagConvUL1.bWriteRFID;
	
	tylocalAGV.In.bOpsMagConvUL2ReadRFID := g_tyOpsMagConvUL2.bReadRFID;
	tylocalAGV.In.bOpsMagConvUL2WriteRFID := g_tyOpsMagConvUL2.bWriteRFID;
	
	tylocalAGV.In.bOpsMagConvUL3ReadRFID := g_tyOpsMagConvUL3.bReadRFID;
	tylocalAGV.In.bOpsMagConvUL3WriteRFID := g_tyOpsMagConvUL3.bWriteRFID;
	
	
	tylocalAGV.Out.tyDTMagToAGV.bEStopErr  := (tylocalAGV.In.bLinkCoverSWSig = FALSE) OR (tylocalAGV.In.bLinkSafetyRlySig = FALSE);
	(* Always Change If Project Change *)
END_ACTION
