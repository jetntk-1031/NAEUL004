
ACTION Act_OptP0950RstMnl:
	
	IF eCurrPage <> UIP0950Simu THEN
		bSimuMod := FALSE;
		tyP0950Simu.tySimu.tyBtnInShutterSim.bValue := FALSE;
		
		bAGVSimulationOn := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVSimulateOn.bValue := FALSE;
		
		bAGVSimulateOnline := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVOnline.bValue := FALSE;
		
		tyAGVSimulateSig.bVEHAuto := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVAuto.bValue := FALSE;
		
		tyAGVSimulateSig.bVEH1Occupied := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGV1Occupied.bValue := FALSE;
		
		tyAGVSimulateSig.bVEH2Occupied := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGV2Occupied.bValue := FALSE;
		
		tyAGVSimulateSig.bVEH3Occupied := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.bValue := FALSE;
		
		tyAGVSimulateSig.bVEHInPos1 := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVInPos1.bValue := FALSE;
			
		tyAGVSimulateSig.bVEHInPos2 := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVInPos2.bValue := FALSE;
					
		tyAGVSimulateSig.bVEHInPos3 := FALSE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.bValue := FALSE;
		
		tyP0950Simu.tySimu.tyBtnNtParaWr.bValue := FALSE;
		tyP0950Simu.tySimu.tyBtnNtParaWr2.bValue := FALSE;
		tyP0950Simu.tySimu.tyBtnTestTrav.bValue := FALSE;
	END_IF
	
END_ACTION
