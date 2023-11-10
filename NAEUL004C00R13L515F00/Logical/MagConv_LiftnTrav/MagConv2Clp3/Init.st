(** 2019-10-30 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagConv2Clp3Stat				:= ADR(eStat);
	p_MagConv2Clp3Status			:= ADR(eStatus);
	p_MagConv2Clp3StatTxt			:= ADR(sStatTxt);
	
	//Alarm
	p_MagConv2Clp3AlmData			:= ADR(tyAlmData);
	
	//Output
	p_MagConv2Clp3HvMag				:= ADR(bHvMag);
	p_MagConv2Clp3MtrSigOnOrLToR	:= ADR(bMtrSigOnOrLToR);
	p_MagConv2Clp3MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_MagConv2Clp3FixClprClampCtrl	:= ADR(bFixClprClampCtrl);
	p_MagConv2Clp3RmtClprClampCtrl	:= ADR(bRmtClprClampCtrl);
	p_MagConv2Clp3ClprTwoOutputCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM