(** 2019-04-16 **)
ACTION Act_OpsRun:
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF

			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				MagConvStprStepInit:
					
					eStprBtmMidAct  := PneuActRet;
					eStprBtmExitAct	:= PneuActExt;
					
					
					IF (p_eStprBtmMidStat = PneuActRet AND p_eStprBtmMidStatus = Done) AND 
						(p_eStprBtmExitStat = PneuActExt AND p_eStprBtmExitStatus = Done)
						THEN
						
						eStprBtmMidAct	:= PneuActIdle;
						eStprBtmExitAct	:= PneuActIdle;
						
						bPaused			:= p_bStop OR p_bStep;
						
						eGotoOpsStep	:= MagConvStprStepChkCond;
						
					END_IF
					
				MagConvStprStepChkCond:
					
					IF p_bBtmEntToLift THEN //opt
						eGotoOpsStep	:= MagConvStprStepBtmLiftMagEnt; //Bottom
					ELSIF p_bBtmExitFromLift THEN
						eGotoOpsStep	:= MagConvStprStepBtmLiftMagExit; //Bottom
					ELSIF p_bBtmExitFromMagConv THEN
						eGotoOpsStep    := MagConvStprStepBtmMagConvExit; //Bottom
					ELSIF p_bBtmExitMnl THEN
						eGotoOpsStep	:= MagConvStprStepBtmMagExitMnl; //Bottom
					ELSIF p_eLiftMagConvStatus = Done THEN
						eGotoOpsStep	:= MagConvStprStepDone;
					END_IF
					
					fbMidChkDlyTm (IN:=p_eOutMagConvStatus <> Busy);
					IF p_bBtmExitFromLift = FALSE AND p_bBtmEntToLift = FALSE AND p_bBtmExitFromMagConv = FALSE AND 
						p_bBtmMagConvEndSen AND p_bBtmMagConvMidSen AND fbMidChkDlyTm.Q AND p_eInMagConvStatus <> Busy THEN
						eStprBtmMidAct  := PneuActExt;
					ELSIF fbMidChkDlyTm.Q THEN
						eStprBtmMidAct  := PneuActRet;
					END_IF
				
					IF ((p_eStprBtmMidStat = PneuActExt OR p_eStprBtmMidStat = PneuActRet) AND p_eStprBtmMidStatus = Done) THEN
						eStprBtmMidAct  := PneuActIdle;
						fbMidChkDlyTm (IN:=FALSE);
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvStprStepBtmLiftMagEnt:
					
						eStprBtmMidAct  := PneuActExt;
						eStprBtmExitAct	:= PneuActRet;
						
					IF (p_eStprBtmMidStat = PneuActExt AND p_eStprBtmMidStatus = Done) AND 
						(p_eStprBtmExitStat = PneuActRet AND p_eStprBtmExitStatus = Done) THEN	
						
						eStprBtmMidAct  := PneuActIdle;
						eStprBtmExitAct	:= PneuActIdle;
						
						bPaused			:= p_bStop OR p_bStep;
						
						IF p_eLiftMagConvStatus = Done OR p_eLiftMagConvStatus = Idle THEN
						
							eGotoOpsStep	:= MagConvStprStepDone;
						
						END_IF
							
					END_IF
					
				MagConvStprStepBtmLiftMagExit:
					
					eStprBtmMidAct	:= PneuActRet;
					eStprBtmExitAct	:= PneuActExt;
					
					IF (p_eStprBtmMidStat = PneuActRet AND p_eStprBtmMidStatus = Done) AND 
						(p_eStprBtmExitStat = PneuActExt AND p_eStprBtmExitStatus = Done) THEN
						
						eStprBtmMidAct   := PneuActIdle;
						eStprBtmExitAct	 := PneuActIdle;
						
						bPaused			:= p_bStop OR p_bStep;
						
						IF p_eLiftMagConvStatus = Done OR p_eLiftMagConvStatus = Idle THEN
						
							eGotoOpsStep	:= MagConvStprStepDone;
						
						END_IF
					END_IF
					
					
				MagConvStprStepBtmMagConvExit:
					eStprBtmMidAct	:= PneuActExt;
					eStprBtmExitAct	:= PneuActRet;
					IF (p_eStprBtmMidStat = PneuActExt AND p_eStprBtmMidStatus = Done) AND
						(p_eStprBtmExitStat = PneuActRet AND p_eStprBtmExitStatus = Done) THEN
						eStprBtmMidAct	:= PneuActIdle;
						eStprBtmExitAct	:= PneuActIdle;
						bPaused			:= p_bStop OR p_bStep;
						
						IF p_eOutMagConvStatus = Done OR p_eOutMagConvStatus = Idle THEN
							eGotoOpsStep	:= MagConvStprStepDone;
						END_IF
					END_IF
					
						
					
				MagConvStprStepDone:
					
					eStprBtmMidAct  := PneuActRet;
					eStprBtmExitAct	:= PneuActExt;
					
					
					IF (p_eStprBtmMidStat = PneuActRet AND p_eStprBtmMidStatus = Done) AND 
						(p_eStprBtmExitStat = PneuActExt AND p_eStprBtmExitStatus = Done) 
						THEN
						
						eStprBtmMidAct	:= PneuActIdle;
						eStprBtmExitAct	:= PneuActIdle;
						
						bPaused			:= p_bStop OR p_bStep;
						
						eGotoOpsStep	:= MagConvStprStepChkCond;
						
					END_IF
				MagConvStprStepInitDone:
					IF p_eInMagConvStatus = Done OR p_eInMagConvStatus = Idle THEN
						eStprTopEntAct  := PneuActExt;
					END_IF
					
					IF (p_eStprTopEntStat = PneuActExt AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct  := PneuActIdle;
						eGotoOpsStep 	:= MagConvStprStepChkCond;
						bPaused			:= p_bStop OR p_bStep;
					END_IF
					
				MagConvStprStepBtmMagExitMnl:
					
					eStprBtmExitAct	:= PneuActRet;
					 
					IF (p_eStprBtmExitStat = PneuActRet AND p_eStprBtmExitStatus = Done) THEN
						eStprBtmExitAct	 := PneuActIdle;
						
						IF p_bBtmExitMnl = FALSE THEN
							eGotoOpsStep	:= MagConvStprStepDone;
						END_IF
					
						bPaused			:= p_bStop OR p_bStep;
					END_IF	
				
			END_CASE
		END_IF
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF						
	
	//==================== sequence 2 - Top entry stopper =============================================================
	IF eGotoOpsStep1 <> eOpsStep1 THEN
		CASE eGotoOpsStep1 OF
			ELSE
				eOpsStep1	:= eGotoOpsStep1;
		END_CASE
	END_IF
	
	IF eGotoOpsStep1 = eOpsStep1 THEN
		
		IF bPaused = FALSE THEN
			CASE eOpsStep1 OF
				MagConvStprStepInitDone:
					IF eOpsStep1 > MagConvStprStepInit THEN
						eStprTopEntAct  := PneuActExt;
					END_IF
					
					IF (p_eStprTopEntStat = PneuActExt AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct  := PneuActIdle;
						eGotoOpsStep1 	:= MagConvStprStepChkCond;
						bPaused			:= p_bStop OR p_bStep;
					END_IF
					
				MagConvStprStepChkCond:
					IF p_bTopEntFromMagConv THEN
						eGotoOpsStep1    := MagConvStprStepTopMagConvEnter;
					END_IF
					bPaused	:= p_bStop OR p_bStep;

				MagConvStprStepTopMagConvEnter:
					eStprTopEntAct	:= PneuActRet;
					
					IF (p_eStprTopEntStat = PneuActRet AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct   := PneuActIdle;
						eGotoOpsStep1	:= MagConvStprStepTopMagConvEnterD;
						bPaused			:= p_bStop OR p_bStep;
						
					END_IF
				MagConvStprStepTopMagConvEnterD:
					IF p_bTopMagConvMidSen OR (p_eInMagConvStatus <> Busy AND p_bTopMagConvEndSen =FALSE)THEN
						eStprTopEntAct	:= PneuActExt;
					END_IF
					
					IF (p_eStprTopEntStat = PneuActExt AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct   := PneuActIdle;
						bPaused			:= p_bStop OR p_bStep;						
						eGotoOpsStep1	:= MagConvStprStepChkCond;
					END_IF
			END_CASE
		END_IF
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF
	
//################ sequence 3 - Top mid and ext stopper #####################################################################
	IF eGotoOpsStep2 <> eOpsStep2 THEN
		CASE eGotoOpsStep2 OF
			ELSE
				eOpsStep2	:= eGotoOpsStep2;
		END_CASE
	END_IF
	
	IF eGotoOpsStep2 = eOpsStep2 THEN
		IF bPaused = FALSE THEN
			CASE eOpsStep2 OF
				
				MagConvStprStepInit:
												
					eStprTopMidAct	:= PneuActRet;
					eStprTopExitAct := PneuActExt;
							
					IF 	(p_eStprTopMidStat = PneuActRet AND p_eStprTopMidStatus = Done) AND
						(p_eStprTopExitStat = PneuActExt AND p_eStprTopExitStatus = Done) THEN
								
						eStprTopMidAct	:= PneuActIdle;
						eStprTopExitAct := PneuActIdle;
								
						bPaused			:= p_bStop OR p_bStep;
								
						eGotoOpsStep2	:= MagConvStprStepChkCond;
								
					END_IF
							
				MagConvStprStepChkCond:
							
				
					IF p_bTopEntToLift THEN
						eGotoOpsStep2	:= MagConvStprStepTopLiftMagEnt;
					ELSIF p_bTopExitFromLift THEN //opt
						eGotoOpsStep2    := MagConvStprStepTopLiftMagExit;
					ELSIF p_eLiftMagConvStatus = Done THEN
						eGotoOpsStep2	:= MagConvStprStepDone;
					END_IF
							
					fbTopMidChkDlyTm (IN:=p_eInMagConvStatus <> Busy);
					IF p_bTopEntToLift = FALSE AND p_bTopExitFromLift = FALSE AND p_bTopEntFromMagConv = FALSE AND 
						p_bTopMagConvZ1Sen AND p_bTopMagConvMidSen AND fbTopMidChkDlyTm.Q AND p_eOutMagConvStatus <> Busy THEN
						eStprTopMidAct  := PneuActExt;
					ELSIF fbTopMidChkDlyTm.Q THEN
						eStprTopMidAct  := PneuActRet;
					END_IF
						
					IF ((p_eStprTopMidStat = PneuActExt OR p_eStprTopMidStat = PneuActRet) AND p_eStprTopMidStatus = Done) THEN
						eStprTopMidAct  := PneuActIdle;
						fbTopMidChkDlyTm (IN:=FALSE);
					END_IF
							
					bPaused	:= p_bStop OR p_bStep;
							
							
				MagConvStprStepTopLiftMagEnt:
					IF p_bTopMagConvMidSen THEN
						eStprTopMidAct  := PneuActExt;
					ELSE
						eStprTopMidAct  := PneuActRet;
					END_IF
					eStprTopExitAct	:= PneuActRet;
								
					IF ((p_eStprTopMidStat = PneuActExt OR p_eStprTopMidStat = PneuActRet) AND p_eStprTopMidStatus = Done) AND 
						(p_eStprTopExitStat = PneuActRet AND p_eStprTopExitStatus = Done) THEN	
								
						eStprTopMidAct  := PneuActIdle;
						eStprTopExitAct	:= PneuActIdle;
		
						bPaused			:= p_bStop OR p_bStep;
								
						IF p_eLiftMagConvStatus = Done OR p_eLiftMagConvStatus = Idle THEN
								
							eGotoOpsStep2	:= MagConvStprStepDone;
						END_IF
									
					END_IF
							
				MagConvStprStepTopLiftMagExit:
							
					eStprTopMidAct	:= PneuActRet;
					eStprTopExitAct	:= PneuActRet;
							
					IF (p_eStprTopMidStat = PneuActRet AND p_eStprTopMidStatus = Done) AND 
						(p_eStprTopExitStat = PneuActRet AND p_eStprTopExitStatus = Done) THEN
								
						eStprTopMidAct   := PneuActIdle;
						eStprTopExitAct	 := PneuActIdle;
								
						bPaused			:= p_bStop OR p_bStep;
								
						IF p_eLiftMagConvStatus = Done OR p_eLiftMagConvStatus = Idle THEN
								
							eGotoOpsStep2	:= MagConvStprStepDone;
								
						END_IF
					END_IF
							
				MagConvStprStepTopMagConvEnter:
					eStprTopEntAct	:= PneuActRet;
							
					IF (p_eStprTopEntStat = PneuActRet AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct   := PneuActIdle;
						eGotoOpsStep2	:= MagConvStprStepTopMagConvEnterD;
		
						bPaused			:= p_bStop OR p_bStep;
					
					END_IF
					
				MagConvStprStepTopMagConvEnterD:
					IF p_bTopMagConvMidSen THEN
						eStprTopEntAct	:= PneuActExt;
					END_IF
							
					IF (p_eStprTopEntStat = PneuActExt AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct   := PneuActIdle;
						bPaused			:= p_bStop OR p_bStep;						
						eGotoOpsStep2	:= MagConvStprStepChkCond;
					END_IF
							
							
				MagConvStprStepDone:
							
					eStprTopMidAct	:= PneuActRet;
					eStprTopExitAct := PneuActExt;
							
					IF 	(p_eStprTopMidStat = PneuActRet AND p_eStprTopMidStatus = Done) AND 
						(p_eStprTopExitStat = PneuActExt AND p_eStprTopExitStatus = Done) THEN
								
						eStprTopMidAct	:= PneuActIdle;
						eStprTopExitAct := PneuActIdle;
								
						bPaused			:= p_bStop OR p_bStep;
								
						eGotoOpsStep2	:= MagConvStprStepChkCond;
								
					END_IF
					
				MagConvStprStepInitDone:
					IF p_eInMagConvStatus = Done OR p_eInMagConvStatus = Idle THEN
						eStprTopEntAct  := PneuActExt;
					END_IF
							
					IF (p_eStprTopEntStat = PneuActExt AND p_eStprTopEntStatus = Done) THEN 
						eStprTopEntAct  := PneuActIdle;
						eGotoOpsStep2 	:= MagConvStprStepChkCond;
						bPaused			:= p_bStop OR p_bStep;
					END_IF
			END_CASE
		END_IF
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF			
	
	
		
END_ACTION
