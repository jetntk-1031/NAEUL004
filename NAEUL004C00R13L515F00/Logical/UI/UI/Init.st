(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_UIStat	:= ADR(eStat);
	p_UIStatus	:= ADR(eStatus);
	p_UIStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	
	//Output

	
	p_UIMcParamWr					:= ADR(tyMcParamWr);	
	
	p_UIProdRcpInfoIn				:= ADR(tyProdRcpInfoIn);
	

	p_UIProdRcpCurrRcpWr			:= ADR(tyProdRcpCurrRcpWr);
	
	p_UIMagRcpInfoIn				:= ADR(tyMagRcpInfoIn);
	

	p_UIMagRcpCurrRcpWr				:= ADR(tyMagRcpCurrRcpWr);
	

	
	p_UIHermesUSParamWr				:= ADR(a_tyHermesUSParamWr);
	
	p_UISectionLdr					:= ADR(tyP1022McSetVComm.tyLF.tyBtnSectionLdr.bValue);
	

	


	p_UINtWr						:= ADR(eNtWr);	
	



	p_UIAGVSimulateSig		:= ADR(tyAGVSimulateSig);
	p_UIAGVSimulateOnline 	:= ADR(bAGVSimulateOnline);
	p_UIAGVSimulationOn 	:= ADR(bAGVSimulationOn);
	

	

	//Hermes 1.3
	p_UIHermesSvyParamWr			:= ADR(tyHermesSvyParamWr); 

	//Trav Lif
	p_UITravLifTopBarcode             := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringTopBarcode.sValue);
	p_UITravLifBottomBarcode          := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringBottomBarcode.sValue);
	p_UITravLifPCBBarcode             := ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	//Mag Conv
	p_UIMagazine1Id                  := ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine1PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	p_UIMagazine2Id                  := ADR(tyP0203OpsMag2.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine2PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	p_UIMagazine3Id                 := 	ADR(tyP0204OpsMag3.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine3PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);

	//Mag Autowidth open limit sensor control

	
	p_UISOTSimulationSig1 := ADR(tySOTSimulateSig1);
	p_UISOTSimulationSig2 := ADR(tySOTSimulateSig2);
	p_UISOTSimulationSig3 := ADR(tySOTSimulateSig3);
	
	



	
	

	
	
  


	

END_PROGRAM