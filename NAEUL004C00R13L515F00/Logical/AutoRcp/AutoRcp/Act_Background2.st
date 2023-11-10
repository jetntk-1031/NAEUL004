(** 2021-05-18 **)
ACTION Act_Background2:

	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfBackground2;
		PrecededByF1:
			PrecededByF1Background2;
	END_CASE

	
END_ACTION
