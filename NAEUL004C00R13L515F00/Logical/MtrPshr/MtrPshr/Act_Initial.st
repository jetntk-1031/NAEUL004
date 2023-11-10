(** 2019-03-22 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbAlmRstTm.PT	:= p_tAlmRstTm;
	fbAlmRstTm(IN := FALSE);
	
	fbAlmTrigTm.PT	:= p_tAlmTrigTm;
	fbAlmTrigTm(IN := FALSE);
	
	fbMtrBrkOffDlyTm.PT	:= p_tMtrBrkOffDlyTm;
	fbMtrBrkOffDlyTm(IN :=FALSE);
	
	fbMtrPshrExtChk.tTimeOut	:= p_tExtTO;
	fbMtrPshrExtChk(bEn	:=FALSE);
	
	fbMtrPshrRetChk.tTimeOut	:= p_tRetTO;
	fbMtrPshrRetChk(bEn	:=FALSE);
	
END_ACTION
