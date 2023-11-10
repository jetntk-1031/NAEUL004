(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)

	//Physical Configuration
//	tMtrOffDlyTm	:= T#0s;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_LifterMagConvStat			:= ADR(eStat);
	p_LifterMagConvStatus		:= ADR(eStatus);
	p_LifterMagConvStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_LifterMagConvAlmData		:= ADR(tyAlmData);
	
	//Output
	p_LifterMagConvHvMag				:= ADR(bHvMag);
	p_LifterMagConvMtrSigOnOrLToR		:= ADR(bMtrSigOnOrLToR);
	p_LifterMagConvMtrDirOrRToL			:= ADR(bMtrDirOrRToL);
	
	p_LifterMagConvClprClampCtrl		:= ADR(bClprClampCtrl);
	p_LifterMagConvClprTwoOutputCtrl	:= ADR(bClprTwoOutputControl);
	
	(* Always Change If Project Change *)
	
END_PROGRAM