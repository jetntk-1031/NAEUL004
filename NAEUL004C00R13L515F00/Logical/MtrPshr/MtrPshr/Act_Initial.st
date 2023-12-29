(** 2019-03-22 **)
ACTION Act_Initial:
	
	//Initial
	tylocalMtrPshr.Out.sStatTxt	:=  a_sStatText[eStat];
	
	fbAlmRstTm(IN := FALSE);
	fbAlmTrigTm(IN := FALSE);
	fbMtrBrkOffDlyTm(IN :=FALSE);
	fbMtrPshrExtChk(bEn	:=FALSE);
	fbMtrPshrRetChk(bEn	:=FALSE);
	
END_ACTION
