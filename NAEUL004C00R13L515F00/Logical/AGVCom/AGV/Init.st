(** 2019-01-20 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	sProgNm	:= 'AGV';
	
	//Physical Configuration
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AGVStat		     := ADR(eStat);
	p_AGVStatus		     := ADR(eStatus);
	p_AGVStatTxt	     := ADR(sStatTxt);
	
	//Alarm
	p_AGVAlmData		 := ADR(tyAlmData);
	p_AGVAlmData1		 := ADR(tyAlmData1);
	//Output
	p_AGVTagAGVToDTMag 	 := ADR(tyAGVToDTMag);
	p_AGVOnline		 	 := ADR(bInternalAGVOnline);
	p_MachineOnline		 := ADR(bMachineOnline);
	p_DTMagToAGV 		 := ADR(tyDTMagToAGV);
	p_AGVSimulationOn 	 := ADR(bInternalAGVSimulateOn);
	p_TagToMes			 := ADR(tyTagToMes);
	p_TagFromMes		 := ADR(tyTagFromMes);
	p_FleetManagerActive := ADR(bFleetManagerActive);
	
	
	//For Siemen 
	p_TagToMesMagConv1		:= ADR(tyTagToMes.tyTagStatOfPlatforms[1]);
	p_TagToMesMagConv2		:= ADR(tyTagToMes.tyTagStatOfPlatforms[2]);
	p_TagToMesMagConv3		:= ADR(tyTagToMes.tyTagStatOfPlatforms[3]);
	p_TagFromMesMagConv1	:= ADR(tyTagFromMes.tyTagStatOfPlatforms[1]);
	p_TagFromMesMagConv2	:= ADR(tyTagFromMes.tyTagStatOfPlatforms[2]);
	p_TagFromMesMagConv3	:= ADR(tyTagFromMes.tyTagStatOfPlatforms[3]);

	(* Always Change If Project Change *)
	
END_PROGRAM
