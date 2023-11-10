(** 2019-10-30 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagConv2Clp1Stat				:= ADR(eStat);
	p_MagConv2Clp1Status			:= ADR(eStatus);
	p_MagConv2Clp1StatTxt			:= ADR(sStatTxt);
	
	//Alarm
	p_MagConv2Clp1AlmData			:= ADR(tyAlmData);
	
	//Output
	p_MagConv2Clp1HvMag				:= ADR(bHvMag);
	p_MagConv2Clp1MtrSigOnOrLToR	:= ADR(bMtrSigOnOrLToR);
	p_MagConv2Clp1MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_MagConv2Clp1FixClprClampCtrl	:= ADR(bFixClprClampCtrl);
	p_MagConv2Clp1RmtClprClampCtrl	:= ADR(bRmtClprClampCtrl);
	p_MagConv2Clp1ClprTwoOutputCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM