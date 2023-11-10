(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_OutMagConvStat		:= ADR(eStat);
	p_OutMagConvStatus		:= ADR(eStatus);
	p_OutMagConvStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_OutMagConvAlmData		:= ADR(tyAlmData);
	
	//Output
	p_OutMagConvHvMag					:= ADR(bHvMag);
	p_OutMagConvMtrSigOnOrLToR			:= ADR(bMtrSigOnOrLToR);
	p_OutMagConvMtrDirOrRToL			:= ADR(bMtrDirOrRToL);
	
	p_OutMagConvClprClampCtrl			:= ADR(bClprClampCtrl);
	p_OutMagConvClprTwoOutControl		:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM