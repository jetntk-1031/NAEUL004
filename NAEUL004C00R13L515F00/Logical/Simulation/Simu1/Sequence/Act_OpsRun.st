(** 2022-10-17 **)
ACTION Act_OpsRun:
	
	IF eSimuGotoStep <> eSimuStep THEN
		
		CASE eSimuGotoStep OF
			
			ELSE
				eSimuStep	:= eSimuGotoStep;
			
		END_CASE
		
	END_IF

	IF eSimuGotoStep = eSimuStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eSimuStep OF 
				
			SimuStepOutShutterExt:

						eOutShutterAct	:= PneuActExt;
						eOutShutterAct2 := PneuActExt;
						eOutShutterAct3	:= PneuActExt;
					
					
					IF 	p_eOutShuttStat = PneuActExt AND p_eOutShuttStatus = Done AND
						p_eOutShutt2Stat = PneuActExt AND p_eOutShutt2Status = Done AND
						p_eOutShutt3Stat = PneuActExt AND p_eOutShutt3Status = Done THEN
						
						eOutShutterAct	:= PneuActIdle;
						eOutShutterAct2 := PneuActIdle;
						eOutShutterAct3 := PneuActIdle;
						
						fbShutterExtDlyTm(IN:=TRUE);
						IF fbShutterExtDlyTm.Q THEN
							fbShutterExtDlyTm(IN:=FALSE);
						eSimuGotoStep	:= SimuStepOutShutterRet;
						END_IF
						bPaused				:= p_bStop OR p_bStep;
					END_IF
					
					
					
				SimuStepOutShutterRet:
					
					eOutShutterAct	:= PneuActRet;
					eOutShutterAct2 := PneuActRet;
					eOutShutterAct3 := PneuActRet;
					IF 	p_eOutShuttStat = PneuActRet AND p_eOutShuttStatus = Done AND
						p_eOutShutt2Stat = PneuActRet AND p_eOutShutt2Status = Done AND
						p_eOutShutt3Stat = PneuActRet AND p_eOutShutt3Status = Done	 THEN
						
						eOutShutterAct	:= PneuActIdle;
						eOutShutterAct2 := PneuActIdle;
						eOutShutterAct3 := PneuActIdle;
						
						fbShutterExtDlyTm(IN:=TRUE);
						IF fbShutterExtDlyTm.Q THEN
							fbShutterExtDlyTm(IN:=FALSE);
						eSimuGotoStep	:= SimuStepOutShutterExt;
						END_IF
						bPaused			:= p_bStop OR p_bStep;
					END_IF
							
				
			END_CASE
					
		END_IF
	END_IF
		
END_ACTION
