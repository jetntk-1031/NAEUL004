(** 2019-06-02 **)
ACTION Act_Link:
	
	
	IF EDGEPOS(bTest ) THEN
		iStartCodeLen	:= 2;
		siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
		siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
		memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
		memmove(ADR(sStartCode) + 1 , ADR(siStartCode2) , 1);
		
		iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
	END_IF
	
END_ACTION