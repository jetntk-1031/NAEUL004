(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
	//	p_eAct ACCESS p_StartupUSOpConAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
		
		IF p_bLinkOpConEn THEN 
			bOpConRun	:= TRUE;
			bOpConStop	:= FALSE;
		ELSE
			bOpConRun	:= FALSE;
			bOpConStop	:= TRUE;
		END_IF
		
//		IF EDGEPOS(p_eLinkMcParamUSCommMod = McSetCommModOpCon) THEN
//			bOpConRun	:= TRUE;
//			bOpConStop	:= FALSE;
//		END_IF
//		
//		IF EDGENEG(p_eLinkMcParamUSCommMod = McSetCommModOpCon) THEN
//			bOpConRun	:= FALSE;
//			bOpConStop	:= TRUE;
//		END_IF
		
		IF bOpConRun = TRUE THEN
			p_eAct	:= OpConActBGStartRun;
			
			IF (eStat = OpConActBGStartRun) AND (eStatus = Done) THEN
				p_eAct		:= OpConActIdle;
				bOpConRun	:= FALSE;
			END_IF
		END_IF
		
		IF bOpConStop = TRUE THEN
			p_eAct	:= OpConActBGStopRun;
			
			IF (eStat = OpConActBGStopRun) AND (eStatus = Done) THEN
				p_eAct		:= OpConActIdle;
				bOpConStop	:= FALSE;
			END_IF
		END_IF
		
	END_IF
	
END_ACTION
