(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)

	//Physical Configuration
//	tMtrOffDlyTm	:= T#0s;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_LifterMagConv2Stat		:= ADR(eStat);
	p_LifterMagConv2Status		:= ADR(eStatus);
	p_LifterMagConv2StatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_LifterMagConv2AlmData		:= ADR(tyAlmData);
	
	//Output
	p_LifterMagConv2HvMag				:= ADR(bHvMag);
	p_LifterMagConv2MtrSigOnOrLToR		:= ADR(bMtrSigOnOrLToR);
	p_LifterMagConv2MtrDirOrRToL		:= ADR(bMtrDirOrRToL);
	
	p_LifterMagConv2ClprClampCtrl	:= ADR(bClprClampCtrl);
	p_LifterMagConv2ClprTwoOutCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM