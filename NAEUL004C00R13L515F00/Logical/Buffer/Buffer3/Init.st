(** 2019-06-07 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Buffer3Stat		:= ADR(eStat);
	p_Buffer3Status		:= ADR(eStatus);
	p_Buffer3StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Buffer3AlmData	:= ADR(tyAlmData);
	
	//Output
	p_Buffer3NxtLoadSlt				:= ADR(diNxtLoadSlt);
	p_Buffer3NxtUnloadSlt			:= ADR(diNxtUnloadSlt);
	p_Buffer3CoolBrdAny				:= ADR(diCoolBrdAny);
	p_Buffer3CoolBrdGd				:= ADR(diCoolBrdGd);
	p_Buffer3CoolBrdBad				:= ADR(diCoolBrdBad);
	p_Buffer3CoolNotRdy				:= ADR(bCoolNotRdy);
	p_Buffer3Bffr					:= ADR(tyBuffer);
	p_Buffer3DispBffr				:= ADR(tyDispBuffer);
	p_Buffer3BffrStat				:= ADR(tyBufferStat);
	p_Buffer3BrdUnloadStat			:= ADR(tyBoardUnloadStat);
	p_Buffer3FileNotFound			:= ADR(bFileNotFound);
	p_Buffer3CoolFanCtrl			:= ADR(bCoolFanCtrl);
	p_Buffer3MagPresent				:= ADR(bMagPresent);
	p_Buffer3MagPresentTm			:= ADR(dtMagPresentTm);
	p_Buffer3NewProduct				:= ADR(bNewProduct);
	p_Buffer3LastProductUnload		:= ADR(bLastProductUnload);
	p_Buffer3LastProductLeftInBffr	:= ADR(bLastProductLeftInBffr);
	p_Buffer3ParamDiff				:= ADR(bParamDiff);
	p_Buffer3MagRemoved				:= ADR(bMagRemoved);
	p_Buffer3FIFOOld				:= ADR(bFIFOOld);
	
	//Svy Hermes
	p_Buffer3SlotNo					:= ADR(diCurrSlt);
	(* Always Change If Project Change *)
	
END_PROGRAM