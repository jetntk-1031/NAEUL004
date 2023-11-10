(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MtrPshrStat		:= ADR(eStat);
	p_MtrPshrStatus		:= ADR(eStatus);
	p_MtrPshrStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MtrPshrAlmData	:= ADR(tyAlmData);
	
	//Output
	p_MtrPshrExtended	:= ADR(bExtended);
	p_MtrPshrRetracted	:= ADR(bRetracted);
	p_MtrPshrCW			:= ADR(bCW);
	p_MtrPshrCCW		:= ADR(bCCW);
	p_MtrPshrSpdBinBit0	:= ADR(bSpdBinBit0);
	p_MtrPshrSpdBinBit1	:= ADR(bSpdBinBit1);
	p_MtrPshrSpdBinBit2	:= ADR(bSpdBinBit2);
	p_MtrPshrSigOn		:= ADR(bSigOn);
	p_MtrPshrBrake		:= ADR(bBrake);
	p_MtrPshrAlmRst		:= ADR(bAlmRst);
	
	(* Always Change If Project Change *)
	
END_PROGRAM