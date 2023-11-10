(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_InMagConv2Stat		:= ADR(eStat);
	p_InMagConv2Status	:= ADR(eStatus);
	p_InMagConv2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_InMagConv2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_InMagConv2HvMag				:= ADR(bHvMag);
	p_InMagConv2MtrSigOnOrLToR		:= ADR(bMtrSigOnOrLToR);
	p_InMagConv2MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_InMagConv2ClprClampCtrl		:= ADR(bClprClampCtrl);
	p_InMagConv2ClprTwoOutputControl:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM