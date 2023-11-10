(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_OutMagConv2Stat		:= ADR(eStat);
	p_OutMagConv2Status		:= ADR(eStatus);
	p_OutMagConv2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_OutMagConv2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_OutMagConv2HvMag					:= ADR(bHvMag);
	p_OutMagConv2MtrSigOnOrLToR			:= ADR(bMtrSigOnOrLToR);
	p_OutMagConv2MtrDirOrRToL			:= ADR(bMtrDirOrRToL);
	
	p_OutMagConv2ClprClampCtrl			:= ADR(bClprClampCtrl);
	p_OutMagConv2ClprTwoOutControl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM