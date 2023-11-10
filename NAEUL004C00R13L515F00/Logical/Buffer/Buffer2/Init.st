(** 2019-06-07 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Buffer2Stat		:= ADR(eStat);
	p_Buffer2Status		:= ADR(eStatus);
	p_Buffer2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Buffer2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_Buffer2NxtLoadSlt				:= ADR(diNxtLoadSlt);
	p_Buffer2NxtUnloadSlt			:= ADR(diNxtUnloadSlt);
	p_Buffer2CoolBrdAny				:= ADR(diCoolBrdAny);
	p_Buffer2CoolBrdGd				:= ADR(diCoolBrdGd);
	p_Buffer2CoolBrdBad				:= ADR(diCoolBrdBad);
	p_Buffer2CoolNotRdy				:= ADR(bCoolNotRdy);
	p_Buffer2Bffr					:= ADR(tyBuffer);
	p_Buffer2DispBffr				:= ADR(tyDispBuffer);
	p_Buffer2BffrStat				:= ADR(tyBufferStat);
	p_Buffer2BrdUnloadStat			:= ADR(tyBoardUnloadStat);
	p_Buffer2FileNotFound			:= ADR(bFileNotFound);
	p_Buffer2CoolFanCtrl			:= ADR(bCoolFanCtrl);
	p_Buffer2MagPresent				:= ADR(bMagPresent);
	p_Buffer2MagPresentTm			:= ADR(dtMagPresentTm);
	p_Buffer2NewProduct				:= ADR(bNewProduct);
	p_Buffer2LastProductUnload		:= ADR(bLastProductUnload);
	p_Buffer2LastProductLeftInBffr	:= ADR(bLastProductLeftInBffr);
	p_Buffer2ParamDiff				:= ADR(bParamDiff);
	p_Buffer2MagRemoved				:= ADR(bMagRemoved);
	p_Buffer2FIFOOld				:= ADR(bFIFOOld);
	
	//Svy Hermes
	p_Buffer2SlotNo					:= ADR(diCurrSlt);
	(* Always Change If Project Change *)
	
END_PROGRAM