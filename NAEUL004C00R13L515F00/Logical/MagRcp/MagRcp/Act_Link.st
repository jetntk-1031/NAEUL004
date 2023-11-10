(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_eAct = MagRcpActAddEdit THEN
		
		rSltToSlt	:= DINT_TO_REAL(p_tyInfoIn.diSltToSltInUM);
		rSltToSlt	:= rSltToSlt / 1000;
		sSltToSlt	:= REAL_TO_STRING(rSltToSlt);
		sTtlSlt		:= DINT_TO_STRING(p_tyInfoIn.diTtlSlt);
		
		p_tyInfoIn.sDisplayInfo	:= sSltToSlt;
		p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , ' | ');
		p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , sTtlSlt);
		
	END_IF
	
END_ACTION
