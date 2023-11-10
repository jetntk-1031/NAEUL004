(** 2021-05-18 **)
ACTION Act_Background:
	
	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfBackground1;
		PrecededByF1:
			PrecededByF1Background1;
	END_CASE

	
	//if Trav different, write one time 
	IF usiPrevChg2 <> usiChg2
		AND (eStatus = Idle AND eStat = AutoRcpActIdle)  THEN		
		tyZ1RcpWr := tyCurrZ1Rcp; 
		p_eAct := AutoRcpActWriteRetain2;
	END_IF
	IF eStatus = Done AND eStat = AutoRcpActWriteRetain2 THEN
		usiPrevChg2 :=  usiChg2;
		p_eAct := AutoRcpActIdle;
	END_IF 
	
	
	
	//if Mag different, write one time
	IF usiPrevChg <> usiChg
		AND (eStatus = Idle AND eStat = AutoRcpActIdle)  THEN		
		CASE p_eNtParamAutoRcpPrecededBy OF  
			PrecededBySelf: 
				a_tyZ2RcpWr := a_tyCurrZ2Rcp;
			PrecededByF1:
				a_tyMagPropsWr := a_tyMagProps;
		END_CASE
		p_eAct := AutoRcpActWriteRetain;
	END_IF
	IF eStatus = Done AND eStat = AutoRcpActWriteRetain THEN
		usiPrevChg :=  usiChg;
		p_eAct := AutoRcpActIdle;
	END_IF 

	
END_ACTION
