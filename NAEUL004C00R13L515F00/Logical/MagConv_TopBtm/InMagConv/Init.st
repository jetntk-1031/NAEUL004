(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_InMagConvStat		:= ADR(eStat);
	p_InMagConvStatus	:= ADR(eStatus);
	p_InMagConvStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_InMagConvAlmData	:= ADR(tyAlmData);
	
	//Output
	p_InMagConvHvMag				:= ADR(bHvMag);
	p_InMagConvMtrSigOnOrLToR		:= ADR(bMtrSigOnOrLToR);
	p_InMagConvMtrDirOrRToL			:= ADR(bMtrDirOrRToL);
	
	p_InMagConvClprClampCtrl		:= ADR(bClprClampCtrl);
	p_InMagConvClprTwoOutputControl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM