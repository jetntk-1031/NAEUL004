(** 2019-01-20 **)
ACTION Act_Main:

	tylocalAGV.Out.tyTagToMes.sMachineName := tylocalAGV.In.sJobNo;
	tylocalAGV.Out.tyTagToMes.bError := tylocalAGV.In.bLinkError;
	tylocalAGV.Out.tyTagToMes.bWarning := tylocalAGV.In.bLinkAlarmWarning OR tylocalAGV.In.bLinkAlarmInfo;
	 
	tylocalAGV.Out.bFleetManagerActive := tylocalAGV.In.bDIFleetManagerActive;
	
	CASE tylocalAGV.In.eAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommHardIO:
			fbFMOnTimeout(IN:= tylocalAGV.Out.bFleetManagerActive);
			fbFMOffTimeout(IN:= tylocalAGV.Out.bFleetManagerActive = FALSE);
			IF fbFMOnTimeout.Q OR fbFMOffTimeout.Q THEN
				IF tylocalAGV.In.bDisableFMWarning = FALSE THEN
					udiStatus1 := 10006;
				ELSE
					udiStatus1 := 0;
				END_IF
			ELSE
				udiStatus1 := 0;
			END_IF
		McSetAGVCommDisabled:
			udiStatus1 := 0;
	END_CASE	
				
	CASE tylocalAGV.In.eLinkULMag OF
		ULMagDual:
			tylocalAGV.Out.tyTagToMes.nNumberOfPlatforms:= 2;
			
		ULMagTriple:
			tylocalAGV.Out.tyTagToMes.nNumberOfPlatforms:= 3;
			
		ULMagQuadruple:
			tylocalAGV.Out.tyTagToMes.nNumberOfPlatforms:= 4;
	END_CASE
	

	//Online Pulse Status- 500ms Pulse
	fbConnectionAGVTm(IN:= tylocalAGV.Out.tyTagToMes.bActive = FALSE);
	IF fbConnectionAGVTm.Q THEN
		tylocalAGV.Out.tyTagToMes.bActive := TRUE;
	END_IF
	
	fbConnectionAGVTm1(IN:= tylocalAGV.Out.tyTagToMes.bActive);
	IF fbConnectionAGVTm1.Q THEN
		tylocalAGV.Out.tyTagToMes.bActive := FALSE;
	END_IF

	
	
	//Simulation from HMI
	IF tylocalAGV.In.bUIAGVSimulationOn THEN
		bAGVOnline := tylocalAGV.In.bUIAGVOnline;
		
		tylocalAGV.Out.tyAGVToDTMag.bVEHAuto := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEHAuto;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos1 := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEHInPos1;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos2 := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEHInPos2;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos3 := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEHInPos3;
		tylocalAGV.Out.tyAGVToDTMag.bVEH1Occupied := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEH1Occupied;
		tylocalAGV.Out.tyAGVToDTMag.bVEH2Occupied := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEH2Occupied;
		tylocalAGV.Out.tyAGVToDTMag.bVEH3Occupied := tylocalAGV.In.tyUIAGVToDTMagSimulateData.bVEH3Occupied;
		tylocalAGV.Out.bInternalAGVSimulateOn := TRUE;
		
	END_IF
	
	IF EDGEPOS( tylocalAGV.In.bUIAGVSimulationOn = FALSE) THEN
		bAGVOnline := FALSE;
		
		tylocalAGV.Out.tyAGVToDTMag.bVEHAuto := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos1 := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos2 := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEHInPos3 := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEH1Occupied := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEH2Occupied := FALSE;
		tylocalAGV.Out.tyAGVToDTMag.bVEH3Occupied := FALSE;
		tylocalAGV.Out.bInternalAGVSimulateOn := FALSE;
		
	END_IF
	
	
	
	IF tylocalAGV.In.bOpsRun AND tylocalAGV.In.eLinkAGVComProtocol = McSetAGVCommOPCUA THEN
		tylocalAGV.Out.bInternalAGVOnline := TRUE;
		tylocalAGV.Out.tyTagToMes.bAuto_Run := TRUE;
		//Magazine Conveyor 1
		tylocalAGV.Out.tyDTMagToAGV.bCI1Auto					:= tylocalAGV.In.tyDTMagToAGV1.bCI1Auto;
		tylocalAGV.Out.tyDTMagToAGV.bCI1Rdy  					:= tylocalAGV.In.tyDTMagToAGV1.bCI1Rdy;
		tylocalAGV.Out.tyDTMagToAGV.bCI1MagazineFull			:= tylocalAGV.In.tyDTMagToAGV1.bCI1MagazineFull;
		tylocalAGV.Out.tyDTMagToAGV.bCI1Occupied				:= tylocalAGV.In.tyDTMagToAGV1.bCI1Occupied;
		tylocalAGV.Out.tyDTMagToAGV.bCI1Running				:= tylocalAGV.In.tyDTMagToAGV1.bCI1Running;
		tylocalAGV.Out.tyDTMagToAGV.bCI1IncorrectMagazineModel	:= tylocalAGV.In.bIncorrectMagazine1;
		
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= tylocalAGV.In.bRequestToBring1;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= tylocalAGV.In.bRequestToGet1;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bError			:= tylocalAGV.In.bSOTMagError1;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= tylocalAGV.In.bSOTMagSizeLarge1;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= tylocalAGV.In.bSOTMagReady1;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= tylocalAGV.In.bSOTMagAvailable1;
		
		//Magazine Conveyor 2
		tylocalAGV.Out.tyDTMagToAGV.bCI2Auto					:= tylocalAGV.In.tyDTMagToAGV2.bCI2Auto;
		tylocalAGV.Out.tyDTMagToAGV.bCI2Rdy  					:= tylocalAGV.In.tyDTMagToAGV2.bCI2Rdy;
		tylocalAGV.Out.tyDTMagToAGV.bCI2MagazineFull			:= tylocalAGV.In.tyDTMagToAGV2.bCI2MagazineFull;
		tylocalAGV.Out.tyDTMagToAGV.bCI2Occupied				:= tylocalAGV.In.tyDTMagToAGV2.bCI2Occupied;
		tylocalAGV.Out.tyDTMagToAGV.bCI2Running				:= tylocalAGV.In.tyDTMagToAGV2.bCI2Running;
		tylocalAGV.Out.tyDTMagToAGV.bCI2IncorrectMagazineModel	:= tylocalAGV.In.bIncorrectMagazine2;
		
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= tylocalAGV.In.bRequestToBring2;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= tylocalAGV.In.bRequestToGet2;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bError			:= tylocalAGV.In.bSOTMagError2;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= tylocalAGV.In.bSOTMagSizeLarge2;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= tylocalAGV.In.bSOTMagReady2;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= tylocalAGV.In.bSOTMagAvailable2;
		
		//Magazine Conveyor 3
		tylocalAGV.Out.tyDTMagToAGV.bCI3Auto					:= tylocalAGV.In.tyDTMagToAGV3.bCI3Auto;
		tylocalAGV.Out.tyDTMagToAGV.bCI3Rdy  					:= tylocalAGV.In.tyDTMagToAGV3.bCI3Rdy;
		tylocalAGV.Out.tyDTMagToAGV.bCI3MagazineFull			:= tylocalAGV.In.tyDTMagToAGV3.bCI3MagazineFull;
		tylocalAGV.Out.tyDTMagToAGV.bCI3Occupied				:= tylocalAGV.In.tyDTMagToAGV3.bCI3Occupied;
		tylocalAGV.Out.tyDTMagToAGV.bCI3Running				:= tylocalAGV.In.tyDTMagToAGV3.bCI3Running;
		tylocalAGV.Out.tyDTMagToAGV.bCI3IncorrectMagazineModel	:= tylocalAGV.In.bIncorrectMagazine3;
	
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= tylocalAGV.In.bRequestToBring3;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= tylocalAGV.In.bRequestToGet3;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bError			:= tylocalAGV.In.bSOTMagError3;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= tylocalAGV.In.bSOTMagSizeLarge3;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= tylocalAGV.In.bSOTMagReady3;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= tylocalAGV.In.bSOTMagAvailable3;
		
		//To AGV Side to Check Machine On
		tylocalAGV.Out.bMachineOnline := TRUE;
		
		
		//Siemens + Wefabricate
		CASE tylocalAGV.In.eCustomerReq OF 
			 Siemens: 
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= tylocalAGV.In.bOpsMagConvUL1ReadRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= tylocalAGV.In.bOpsMagConvUL2ReadRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= tylocalAGV.In.bOpsMagConvUL3ReadRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= tylocalAGV.In.bOpsMagConvUL1WriteRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= tylocalAGV.In.bOpsMagConvUL2WriteRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= tylocalAGV.In.bOpsMagConvUL3WriteRFID;
			We_Fabricate:
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bMagLoaded 	:= tylocalAGV.In.bOpsMagConvUL1ReadRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bMagLoaded 	:= tylocalAGV.In.bOpsMagConvUL2ReadRFID;
				tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bMagLoaded 	:= tylocalAGV.In.bOpsMagConvUL3ReadRFID;
		END_CASE
		
	ELSE
		tylocalAGV.Out.bInternalAGVOnline := FALSE;
		tylocalAGV.Out.tyTagToMes.bAuto_Run := FALSE;
		//Magazine Conveyor 1
		tylocalAGV.Out.tyDTMagToAGV.bCI1Auto					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI1Rdy  					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI1Running				:= FALSE;
		
		//Magazine Conveyor 2
		tylocalAGV.Out.tyDTMagToAGV.bCI2Auto					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI2Rdy  					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI2Running				:= FALSE;
		
		//Magazine Conveyor 3
		tylocalAGV.Out.tyDTMagToAGV.bCI3Auto					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI3Rdy  					:= FALSE;
		tylocalAGV.Out.tyDTMagToAGV.bCI3Running				:= FALSE;
		
		tylocalAGV.Out.bMachineOnline := FALSE;
		
		//Siemens
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= FALSE;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= FALSE;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= FALSE;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= FALSE;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= FALSE;
		tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= FALSE;
		
		IF tylocalAGV.In.bManual THEN
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= tylocalAGV.In.bUIRequestToBring1;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= tylocalAGV.In.bUIRequestToGet1;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bError			:= tylocalAGV.In.bUISOTMagError1;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= tylocalAGV.In.bUISOTMagSizeLarge1;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= tylocalAGV.In.bUISOTMagReady1;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= tylocalAGV.In.bUISOTMagAvailable1;
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= tylocalAGV.In.bUIRequestToBring2;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= tylocalAGV.In.bUIRequestToGet2;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bError			:= tylocalAGV.In.bUISOTMagError2;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= tylocalAGV.In.bUISOTMagSizeLarge2;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= tylocalAGV.In.bUISOTMagReady2;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= tylocalAGV.In.bUISOTMagAvailable2;
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= tylocalAGV.In.bUIRequestToBring3;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= tylocalAGV.In.bUIRequestToGet3;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bError			:= tylocalAGV.In.bUISOTMagError3;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= tylocalAGV.In.bUISOTMagSizeLarge3;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= tylocalAGV.In.bUISOTMagReady3;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= tylocalAGV.In.bUISOTMagAvailable3;
			
		ELSE
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bError			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= FALSE;
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bError			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= FALSE;	
			
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bError			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= FALSE;
			tylocalAGV.Out.tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= FALSE;
			
		END_IF
		
	END_IF
		
	
	//first machine 
	//connect to ip when feature enable
	//condition: once a mag finished , send data
	//reset counting when unloading new magazine
	//data : send mag Traverser total unload board pulse
	
	
	//last machine
	//condition: counting board 
	//release non empty magazine with at least more than one board
	//mag  release
	



END_ACTION
