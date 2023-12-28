(** 2020-03-16 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		bInitialDone	:= TRUE;
		
		Act_Initial;
		
	ELSE

		Act_InputConfig;
		Act_Main;
		
		CASE p_eTLBuzMode OF
			TLBuzModNutek:
				Act_Background;
			TLBuzModAptiv:	
				Act_Background1;
			TLBuzModMEK:	
				Act_Background2;
			TLBuzModBHTC:	
				Act_Background3;
			TLBuzModSiemens_2Colour:
				Act_Background4;
			
		END_CASE
		Act_OutputConfig;
	END_IF
	
END_PROGRAM
