
ACTION Act_OptP0950Ctrl: 

	// Error
	IF EDGEPOS(p_bAlarmErr = TRUE AND p_bSimuStatusStop = FALSE) THEN
		
		tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
		tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		
		tyP0950Simu.tySimu.tyBtnStart.bValue	:= FALSE;
		tyP0950Simu.tySimu.tyBtnStop.bValue		:= FALSE;
		
		eSimuAct	:= SimulationsActError;
		bAGVSimulationOn	:= FALSE;
	ELSE
		
		IF p_eSimuStat = SimulationsActError AND p_eSimuStatus = Done THEN
			eSimuAct	:= SimulationsActIdle;
			bAGVSimulationOn	:= FALSE;
		END_IF
		
	END_IF

	//Control
	IF tyP0950Simu.tySimu.tyBtnStart.bRtCompl = TRUE THEN
		tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		bAGVSimulationOn	:= TRUE;
		eSimuAct		:= SimulationsActStart;
		
		IF p_eSimuStat = SimulationsActStart AND p_eSimuStatus = Done THEN
			eSimuAct	:= SimulationsActIdle;
			
			tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
			
		END_IF
			
	ELSIF tyP0950Simu.tySimu.tyBtnStop.bRtCompl = TRUE THEN
		tyP0950Simu.tySimu.tyBtnStart.bRtCompl	:= FALSE;
		bAGVSimulationOn	:= FALSE;
		eSimuAct			:= SimulationsActStop;
			
		IF p_eSimuStat = SimulationsActStop AND p_eSimuStatus = Done THEN
			eSimuAct		:= SimulationsActIdle;
			
			tyP0950Simu.tySimu.tyBtnStart.bValue	:= FALSE;
			tyP0950Simu.tySimu.tyBtnStop.bRtCompl	:= FALSE;
		END_IF
		
	END_IF
	
	// Mask
	IF p_bAlarmErr = TRUE OR (p_tyDI.bSafetyRlySig = FALSE) THEN
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		tyP0950Simu.tySimu.tyBtnStart.bValue	:= FALSE;
		bAGVSimulationOn	:= FALSE;
	ELSIF p_bSimuStatusCycleStop = TRUE THEN
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		tyP0950Simu.tySimu.tyBtnStart.bValue	:= FALSE;
		bAGVSimulationOn	:= FALSE;
		fbStopBlinkTm(IN := TRUE);
		IF fbStopBlinkTm.Q = TRUE THEN
			fbStopBlinkTm(IN := FALSE);
			
			tyP0950Simu.tySimu.tyBtnStart.bValue		:= NOT tyP0950Simu.tySimu.tyBtnStart.bValue;
		END_IF
		
	ELSIF p_bSimuStatusRun = TRUE THEN
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
	ELSE
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyBtnStop.uiMaskRtStat));
		
	END_IF	
	
	
	//AGV Simulatiom
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bValue THEN
			bAGVSimulationOn	:= TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl:= FALSE;
		ELSE
			bAGVSimulationOn := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bValue THEN
			bAGVSimulateOnline := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl := FALSE;
		ELSE
			bAGVSimulateOnline := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bValue THEN
			tyAGVSimulateSig.bVEHAuto := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHAuto := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bValue THEN
			tyAGVSimulateSig.bVEHInPos1 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos1 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bValue THEN
			tyAGVSimulateSig.bVEHInPos2 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos2 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bValue THEN
			tyAGVSimulateSig.bVEHInPos3 := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl:= FALSE;
		ELSE
			tyAGVSimulateSig.bVEHInPos3 := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bRtCompl:= FALSE;
		END_IF	
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bValue THEN
			tyAGVSimulateSig.bVEH1Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH1Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bValue THEN
			tyAGVSimulateSig.bVEH2Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH2Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl THEN
		IF tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bValue THEN
			tyAGVSimulateSig.bVEH3Occupied := TRUE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl := FALSE;
		ELSE
			tyAGVSimulateSig.bVEH3Occupied := FALSE;
			tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bRtCompl := FALSE;
		END_IF
	END_IF
	
	
	//Machine to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMachineOnline.bValue := p_bMachineOnline;
	tyP0950Simu.tyMcToAGV.tyBtnMachineEstop.bValue	:= p_tyDTMagToAGV.bEStopErr;
	
	//Magazine #1 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag1Auto.bValue				:= p_tyDTMagToAGV.bCI1Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Empty.bValue				:= p_tyDTMagToAGV.bCI1MagazineFull;	
	tyP0950Simu.tyMcToAGV.tyBtnMag1IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI1IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Occupied.bValue			:= p_tyDTMagToAGV.bCI1Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag1Rdy.bValue				:= p_tyDTMagToAGV.bCI1Rdy;
	
	//Magazine #2 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag2Auto.bValue				:= p_tyDTMagToAGV.bCI2Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Empty.bValue				:= p_tyDTMagToAGV.bCI2MagazineFull;	
	tyP0950Simu.tyMcToAGV.tyBtnMag2IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI2IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Occupied.bValue			:= p_tyDTMagToAGV.bCI2Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag2Rdy.bValue				:= p_tyDTMagToAGV.bCI2Rdy;
	
	//Magazine #3 to AGV Communication
	tyP0950Simu.tyMcToAGV.tyBtnMag3Auto.bValue				:= p_tyDTMagToAGV.bCI3Auto;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Empty.bValue				:= p_tyDTMagToAGV.bCI3MagazineFull;	
	tyP0950Simu.tyMcToAGV.tyBtnMag3IncorrectModel.bValue	:= p_tyDTMagToAGV.bCI3IncorrectMagazineModel;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Occupied.bValue			:= p_tyDTMagToAGV.bCI3Occupied;
	tyP0950Simu.tyMcToAGV.tyBtnMag3Rdy.bValue				:= p_tyDTMagToAGV.bCI3Rdy;
	
	
	//SOT 
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnError.bValue	:= p_tyDO.bSOT1MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnRdy.bValue		:= p_tyDO.bSOT1MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnAvail.bValue	:= p_tyDO.bSOT1MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT1.tyBtnSize.bValue	:= p_tyDO.bSOT1MagSizeLarge;

	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnError.bValue	:= p_tyDO.bSOT2MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnRdy.bValue		:= p_tyDO.bSOT2MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnAvail.bValue	:= p_tyDO.bSOT2MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT2.tyBtnSize.bValue	:= p_tyDO.bSOT2MagSizeLarge;
	
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnError.bValue	:= p_tyDO.bSOT3MagError;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnRdy.bValue		:= p_tyDO.bSOT3MagReady;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnAvail.bValue	:= p_tyDO.bSOT3MagAvailable;
	tyP0950Simu.tySimu.tyBtnMagSOT3.tyBtnSize.bValue	:= p_tyDO.bSOT3MagSizeLarge;
	
	//SOT1
	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bValue THEN
			tySOTSimulateSig1.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bValue THEN
			tySOTSimulateSig1.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bValue THEN
			tySOTSimulateSig1.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bValue THEN
			tySOTSimulateSig1.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig1.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT1.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF	
	
	
	//SOT2
	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bValue THEN
			tySOTSimulateSig2.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bValue THEN
			tySOTSimulateSig2.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bValue THEN
			tySOTSimulateSig2.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bValue THEN
			tySOTSimulateSig2.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig2.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT2.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	//SOT3
	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bValue THEN
			tySOTSimulateSig3.tyBtnInPos := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnInPos:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnInPos.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bValue THEN
			tySOTSimulateSig3.tyBtnRdy := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnRdy := FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnRdy.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bValue THEN
			tySOTSimulateSig3.tyBtnAvail := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnAvail:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnAvail.bRtCompl:= FALSE;
		END_IF
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl THEN
		IF tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bValue THEN
			tySOTSimulateSig3.tyBtnError := TRUE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl := FALSE;
		ELSE
			tySOTSimulateSig3.tyBtnError:= FALSE;
			tyP0950Simu.tySimu.tyBtnSOT3.tyBtnError.bRtCompl:= FALSE;
		END_IF
	END_IF
	
	
	//OutShutter Sim
	bSimuMod := TRUE;// shutter sim
	IF tyP0950Simu.tySimu.tyBtnInShutterSim.bValue THEN
		IF fbShutterSimChgOver.Q OR tyP0950Simu.tySimu.tyBtnInShutterSim.bRtCompl THEN
			tyP0950Simu.tySimu.tyBtnInShutterSim.bRtCompl := FALSE;
			fbShutterSimChgOver (IN:= FALSE);
			IF p_tyDI.bOutShutterCloseRS AND(p_tyDI.bOutShutterCloseRS2 OR p_tyNtParamCurr.bProjOutletShut2Prep = FALSE) AND  
				(p_tyDI.bOutShutterCloseRS3 OR p_tyNtParamCurr.bProjOutletShut3Prep = FALSE) AND p_tyDI.bInShutterCloseRS THEN
				eInShutterAct  := PneuActRet;
				eOutShutterAct := PneuActRet;
				eOutShutterAct2 := PneuActRet;
				eOutShutterAct3 := PneuActRet;
			ELSIF p_tyDI.bOutShutterOpenRS AND (p_tyDI.bOutShutterOpenRS2 OR p_tyNtParamCurr.bProjOutletShut2Prep = FALSE) AND 
				(p_tyDI.bOutShutterOpenRS3 OR p_tyNtParamCurr.bProjOutletShut3Prep = FALSE)AND p_tyDI.bInShutterOpenRS THEN
				eInShutterAct  := PneuActExt;
				eOutShutterAct := PneuActExt;
				eOutShutterAct2 := PneuActExt;
				eOutShutterAct3 := PneuActExt;
			END_IF
		ELSIF fbShutterSimChgOver.ET = T#5s THEN
			
		END_IF
		
		IF p_eOutShutterStatus = Done AND (p_eOutShutterStatus2 = Done OR p_tyNtParamCurr.bProjOutletShut2Prep = FALSE) AND 
			(p_eOutShutterStatus3 = Done OR p_tyNtParamCurr.bProjOutletShut3Prep = FALSE) AND p_eInShutterStatus = Done THEN
			eInShutterAct  := PneuActIdle;
			eOutShutterAct := PneuActIdle;
			eOutShutterAct2 := PneuActIdle;
			eOutShutterAct3 := PneuActIdle;
			fbShutterSimChgOver (IN:= TRUE);
		END_IF
		fbShutterSimChgOver;
	ELSE
		eInShutterAct  := PneuActIdle;
		eOutShutterAct := PneuActIdle;
		eOutShutterAct2 := PneuActIdle;
		eOutShutterAct3 := PneuActIdle;

	END_IF
	
	//Test trav
	IF tyP0950Simu.tySimu.tyBtnTestTrav.bValue THEN
		CASE usiTestTravStep OF
			0:
				eTravAct		:= TravActGoDPos;
			
				IF p_eTravStat = TravActGoDPos AND p_eTravStatus = Done THEN
					eTravAct	:= TravActIdle;
					usiTestTravStep := 1;
				END_IF
			1:
				
				eTravAct		:= TravActGoFPos;
			
				IF p_eTravStat = TravActGoFPos AND p_eTravStatus = Done THEN
					eTravAct	:= TravActIdle;
					usiTestTravStep := 0;
				END_IF
		END_CASE
		diMnlTravNomSpd		:= 1500000;
	ELSE
		eTravAct		:= TravActIdle;
		diMnlTravNomSpd		:= 0;
	END_IF
	
	//NT- speed
	IF tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue AND usiSimuNtStep = 0 THEN
		eTravAct		:= TravActIdle;
		p_diNtParamTravAutoSpd 		:= tyP0950Simu.tySimu.tyNumTravSpd.diValue;
		p_diNtParamLifterAutoSpd	:= tyP0950Simu.tySimu.tyNumLifterSpd.diValue;
		eNtWr := 3;
		IF p_eNtParamStat = 3 AND p_eNtParamStatus = Done THEN
			tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue := FALSE;
			eNtWr := 0;
		END_IF
	END_IF
	
		
	//NT -addr and jobno
	IF tyP0950Simu.tySimu.tyBtnNtParaWr.bValue THEN
		p_sNtParamJobNo 		:= tyP0950Simu.tySimu.tyStringJobNo.sValue;
		p_usiNtParamNtAddr 		:= DINT_TO_USINT( tyP0950Simu.tySimu.tyNumAddr.diValue);
		CASE usiSimuNtStep OF
			0:
				eNtWr := 3;
				IF p_eNtParamStat = 3 AND p_eNtParamStatus = Done THEN
					eNtWr := 0;
					usiSimuNtStep := 1;
				END_IF
			1:
				IF  p_eNtParamStatus = Idle THEN
					eNtWr := 5;
				END_IF
				IF p_eNtParamStat = 5 AND p_eNtParamStatus = Done THEN
					eNtWr := 0;
					usiSimuNtStep := 2;
				END_IF
			2:
				p_eAct := 1; //refresh page
				IF eUIInit = UIInitialDone THEN
					p_eAct := 0;
					usiSimuNtStep := 0;
					tyP0950Simu.tySimu.tyBtnNtParaWr.bValue := FALSE;
				END_IF
		END_CASE
		
	END_IF
	//Bypassfor calibration
	bBypassShutForCalib := tyP0950Simu.tySimu.tyBtnBypassShutforCalib.bValue;


END_ACTION
