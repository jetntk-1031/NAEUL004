(** 2019-10-30 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagConv2Clp2Stat		:= ADR(eStat);
	p_MagConv2Clp2Status	:= ADR(eStatus);
	p_MagConv2Clp2StatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MagConv2Clp2AlmData	:= ADR(tyAlmData);
	
	//Output
	p_MagConv2Clp2HvMag				:= ADR(bHvMag);
	p_MagConv2Clp2MtrSigOnOrLToR	:= ADR(bMtrSigOnOrLToR);
	p_MagConv2Clp2MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_MagConv2Clp2FixClprClampCtrl	:= ADR(bFixClprClampCtrl);
	p_MagConv2Clp2RmtClprClampCtrl	:= ADR(bRmtClprClampCtrl);
	p_MagConv2Clp2ClprTwoOutputCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM