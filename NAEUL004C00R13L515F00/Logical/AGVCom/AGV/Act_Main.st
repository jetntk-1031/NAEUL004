(** 2019-01-20 **)
ACTION Act_Main:
	
	tyTagToMes.sMachineName := p_sJobNo;
	tyTagToMes.bError := p_bLinkError;
	tyTagToMes.bWarning := p_bLinkAlarmWarning OR p_bLinkAlarmInfo;
	 
	bFleetManagerActive := p_bDIFleetManagerActive;
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA, McSetAGVCommHardIO:
			fbFMOnTimeout(IN:= bFleetManagerActive);
			fbFMOffTimeout(IN:= bFleetManagerActive = FALSE);
			IF fbFMOnTimeout.Q OR fbFMOffTimeout.Q THEN
				IF p_bDisableFMWarning = FALSE THEN
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
				
	CASE p_eLinkULMag OF
		ULMagDual:
			tyTagToMes.nNumberOfPlatforms:= 2;
			
		ULMagTriple:
			tyTagToMes.nNumberOfPlatforms:= 3;
			
		ULMagQuadruple:
			tyTagToMes.nNumberOfPlatforms:= 4;
	END_CASE
	

	//Online Pulse Status- 500ms Pulse
	fbConnectionAGVTm(IN:= tyTagToMes.bActive = FALSE);
	IF fbConnectionAGVTm.Q THEN
		tyTagToMes.bActive := TRUE;
	//	bInternalAGVOnline := TRUE;
	END_IF
	
	fbConnectionAGVTm1(IN:= tyTagToMes.bActive);
	IF fbConnectionAGVTm1.Q THEN
		tyTagToMes.bActive := FALSE;
	//	bInternalAGVOnline := FALSE;
	END_IF

	
	
	//Simulation from HMI
	IF p_bUIAGVSimulationOn THEN
		bAGVOnline := p_bUIAGVOnline;
		
		tyAGVToDTMag.bVEHAuto := p_tyUIAGVToDTMagSimulateData.bVEHAuto;
		tyAGVToDTMag.bVEHInPos1 := p_tyUIAGVToDTMagSimulateData.bVEHInPos1;
		tyAGVToDTMag.bVEHInPos2 := p_tyUIAGVToDTMagSimulateData.bVEHInPos2;
		tyAGVToDTMag.bVEHInPos3 := p_tyUIAGVToDTMagSimulateData.bVEHInPos3;
		tyAGVToDTMag.bVEH1Occupied := p_tyUIAGVToDTMagSimulateData.bVEH1Occupied;
		tyAGVToDTMag.bVEH2Occupied := p_tyUIAGVToDTMagSimulateData.bVEH2Occupied;
		tyAGVToDTMag.bVEH3Occupied := p_tyUIAGVToDTMagSimulateData.bVEH3Occupied;
		bInternalAGVSimulateOn := TRUE;
		
	END_IF
	
	IF EDGEPOS( p_bUIAGVSimulationOn = FALSE) THEN
		bAGVOnline := FALSE;
		
		tyAGVToDTMag.bVEHAuto := FALSE;
		tyAGVToDTMag.bVEHInPos1 := FALSE;
		tyAGVToDTMag.bVEHInPos2 := FALSE;
		tyAGVToDTMag.bVEHInPos3 := FALSE;
		tyAGVToDTMag.bVEH1Occupied := FALSE;
		tyAGVToDTMag.bVEH2Occupied := FALSE;
		tyAGVToDTMag.bVEH3Occupied := FALSE;
		bInternalAGVSimulateOn := FALSE;
		
	END_IF
	
	
	
	IF p_bOpsRun AND p_eLinkAGVComProtocol = McSetAGVCommOPCUA THEN
		bInternalAGVOnline := TRUE;
		tyTagToMes.bAuto_Run := TRUE;
		//Magazine Conveyor 1
		tyDTMagToAGV.bCI1Auto					:= p_tyDTMagToAGV1.bCI1Auto;
		tyDTMagToAGV.bCI1Rdy  					:= p_tyDTMagToAGV1.bCI1Rdy;
		tyDTMagToAGV.bCI1MagazineFull			:= p_tyDTMagToAGV1.bCI1MagazineFull;
		tyDTMagToAGV.bCI1Occupied				:= p_tyDTMagToAGV1.bCI1Occupied;
		tyDTMagToAGV.bCI1Running				:= p_tyDTMagToAGV1.bCI1Running;
		tyDTMagToAGV.bCI1IncorrectMagazineModel	:= p_bIncorrectMagazine1;
		
		tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= p_bRequestToBring1;
		tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= p_bRequestToGet1;
		tyTagToMes.tyTagStatOfPlatforms[1].bError			:= p_bSOTMagError1;
		tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= p_bSOTMagSizeLarge1;
		tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= p_bSOTMagReady1;
		tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= p_bSOTMagAvailable1;
		
		//Magazine Conveyor 2
		tyDTMagToAGV.bCI2Auto					:= p_tyDTMagToAGV2.bCI2Auto;
		tyDTMagToAGV.bCI2Rdy  					:= p_tyDTMagToAGV2.bCI2Rdy;
		tyDTMagToAGV.bCI2MagazineFull			:= p_tyDTMagToAGV2.bCI2MagazineFull;
		tyDTMagToAGV.bCI2Occupied				:= p_tyDTMagToAGV2.bCI2Occupied;
		tyDTMagToAGV.bCI2Running				:= p_tyDTMagToAGV2.bCI2Running;
		tyDTMagToAGV.bCI2IncorrectMagazineModel	:= p_bIncorrectMagazine2;
		
		tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= p_bRequestToBring2;
		tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= p_bRequestToGet2;
		tyTagToMes.tyTagStatOfPlatforms[2].bError			:= p_bSOTMagError2;
		tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= p_bSOTMagSizeLarge2;
		tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= p_bSOTMagReady2;
		tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= p_bSOTMagAvailable2;
		
		//Magazine Conveyor 3
		tyDTMagToAGV.bCI3Auto					:= p_tyDTMagToAGV3.bCI3Auto;
		tyDTMagToAGV.bCI3Rdy  					:= p_tyDTMagToAGV3.bCI3Rdy;
		tyDTMagToAGV.bCI3MagazineFull			:= p_tyDTMagToAGV3.bCI3MagazineFull;
		tyDTMagToAGV.bCI3Occupied				:= p_tyDTMagToAGV3.bCI3Occupied;
		tyDTMagToAGV.bCI3Running				:= p_tyDTMagToAGV3.bCI3Running;
		tyDTMagToAGV.bCI3IncorrectMagazineModel	:= p_bIncorrectMagazine3;
	
		tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= p_bRequestToBring3;
		tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= p_bRequestToGet3;
		tyTagToMes.tyTagStatOfPlatforms[3].bError			:= p_bSOTMagError3;
		tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= p_bSOTMagSizeLarge3;
		tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= p_bSOTMagReady3;
		tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= p_bSOTMagAvailable3;
		
		//To AGV Side to Check Machine On
		bMachineOnline := TRUE;
		
		
		//Siemens + Wefabricate
		CASE p_eCustomerReq OF 
			 Siemens: 
				tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= p_bOpsMagConvUL1ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= p_bOpsMagConvUL2ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= p_bOpsMagConvUL3ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= p_bOpsMagConvUL1WriteRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= p_bOpsMagConvUL2WriteRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= p_bOpsMagConvUL3WriteRFID;
			We_Fabricate:
				tyTagToMes.tyTagStatOfPlatforms[1].bMagLoaded 	:= p_bOpsMagConvUL1ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[2].bMagLoaded 	:= p_bOpsMagConvUL2ReadRFID;
				tyTagToMes.tyTagStatOfPlatforms[3].bMagLoaded 	:= p_bOpsMagConvUL3ReadRFID;
		END_CASE
		
	ELSE
		bInternalAGVOnline := FALSE;
		tyTagToMes.bAuto_Run := FALSE;
		//Magazine Conveyor 1
		tyDTMagToAGV.bCI1Auto					:= FALSE;
		tyDTMagToAGV.bCI1Rdy  					:= FALSE;
		tyDTMagToAGV.bCI1Running				:= FALSE;
		
		//Magazine Conveyor 2
		tyDTMagToAGV.bCI2Auto					:= FALSE;
		tyDTMagToAGV.bCI2Rdy  					:= FALSE;
		tyDTMagToAGV.bCI2Running				:= FALSE;
		
		//Magazine Conveyor 3
		tyDTMagToAGV.bCI3Auto					:= FALSE;
		tyDTMagToAGV.bCI3Rdy  					:= FALSE;
		tyDTMagToAGV.bCI3Running				:= FALSE;
		
		bMachineOnline := FALSE;
		
		//Siemens
		tyTagToMes.tyTagStatOfPlatforms[1].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[1].bWriteRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[2].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[2].bWriteRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[3].bReadRFID 	:= FALSE;
		tyTagToMes.tyTagStatOfPlatforms[3].bWriteRFID 	:= FALSE;
		
		IF p_bManual THEN
			
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= p_bUIRequestToBring1;
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= p_bUIRequestToGet1;
			tyTagToMes.tyTagStatOfPlatforms[1].bError			:= p_bUISOTMagError1;
			tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= p_bUISOTMagSizeLarge1;
			tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= p_bUISOTMagReady1;
			tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= p_bUISOTMagAvailable1;
			
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= p_bUIRequestToBring2;
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= p_bUIRequestToGet2;
			tyTagToMes.tyTagStatOfPlatforms[2].bError			:= p_bUISOTMagError2;
			tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= p_bUISOTMagSizeLarge2;
			tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= p_bUISOTMagReady2;
			tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= p_bUISOTMagAvailable2;
			
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= p_bUIRequestToBring3;
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= p_bUIRequestToGet3;
			tyTagToMes.tyTagStatOfPlatforms[3].bError			:= p_bUISOTMagError3;
			tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= p_bUISOTMagSizeLarge3;
			tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= p_bUISOTMagReady3;
			tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= p_bUISOTMagAvailable3;
			
		ELSE
			
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[1].bAvailable		:= FALSE;
			
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[2].bAvailable		:= FALSE;	
			
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring	:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bError			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bSizeLarge		:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bReady			:= FALSE;
			tyTagToMes.tyTagStatOfPlatforms[3].bAvailable		:= FALSE;
			
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
