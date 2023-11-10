(** 2019-06-07 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Buffer1Stat		:= ADR(eStat);
	p_Buffer1Status		:= ADR(eStatus);
	p_Buffer1StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_Buffer1AlmData	:= ADR(tyAlmData);
	
	//Output
	p_Buffer1NxtLoadSlt				:= ADR(diNxtLoadSlt);
	p_Buffer1NxtUnloadSlt			:= ADR(diNxtUnloadSlt);
	p_Buffer1CoolBrdAny				:= ADR(diCoolBrdAny);
	p_Buffer1CoolBrdGd				:= ADR(diCoolBrdGd);
	p_Buffer1CoolBrdBad				:= ADR(diCoolBrdBad);
	p_Buffer1CoolNotRdy				:= ADR(bCoolNotRdy);
	p_Buffer1Bffr					:= ADR(tyBuffer);
	p_Buffer1DispBffr				:= ADR(tyDispBuffer);
	p_Buffer1BffrStat				:= ADR(tyBufferStat);
	p_Buffer1BrdUnloadStat			:= ADR(tyBoardUnloadStat);
	p_Buffer1FileNotFound			:= ADR(bFileNotFound);
	p_Buffer1CoolFanCtrl			:= ADR(bCoolFanCtrl);
	p_Buffer1MagPresent				:= ADR(bMagPresent);
	p_Buffer1MagPresentTm			:= ADR(dtMagPresentTm);
	p_Buffer1NewProduct				:= ADR(bNewProduct);
	p_Buffer1LastProductUnload		:= ADR(bLastProductUnload);
	p_Buffer1LastProductLeftInBffr	:= ADR(bLastProductLeftInBffr);
	p_Buffer1ParamDiff				:= ADR(bParamDiff);
	p_Buffer1MagRemoved				:= ADR(bMagRemoved);
	p_Buffer1FIFOOld				:= ADR(bFIFOOld);
	
	//Svy Hermes
	p_Buffer1SlotNo					:= ADR(diCurrSlt);
	(* Always Change If Project Change *)
	
END_PROGRAM