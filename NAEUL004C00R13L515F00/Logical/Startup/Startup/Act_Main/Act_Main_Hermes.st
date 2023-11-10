(** 2019-05-04 **)
ACTION Act_Main_Hermes:

	CASE usiStep OF
		0:
			eHermesAct	:= HermesActCreateDir;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActCreateDir) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 1;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		1:
			eHermesAct	:= HermesActReadRetainLane1;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActReadRetainLane1) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 2;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		2:
			eHermesAct	:= HermesActReadConfig;
	
			IF (p_eHermesStatus = Done) AND (p_eHermesStat = HermesActReadConfig) THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			ELSIF p_eHermesStatus = Error THEN
				
				eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		10:
			eUSHermesAAct	:= HermesActDeleteOldLog;
	
			IF (p_eUSHermesAStatus = Done) AND (p_eUSHermesAStat = HermesActDeleteOldLog) THEN
				
				eUSHermesAAct	:= HermesActIdle;
				usiStep			:= 11;
				
			ELSIF p_eUSHermesAStatus = Error THEN
				
				eUSHermesAAct	:= HermesActIdle;
				usiStep			:= 11;
				
			END_IF
		11:
			eUSHermesBAct	:= HermesActDeleteOldLog;
	
			IF (p_eUSHermesBStatus = Done) AND (p_eUSHermesBStat = HermesActDeleteOldLog) THEN
				
				eUSHermesBAct	:= HermesActIdle;
				usiStep			:= 30;
				
			ELSIF p_eUSHermesBStatus = Error THEN
				
				eUSHermesBAct	:= HermesActIdle;
				usiStep			:= 30;
				
			END_IF

		
		30:
			eRmtHermesAct	:= HermesActDeleteOldLog;
	
			IF (p_eRmtHermesStatus = Done) AND (p_eRmtHermesStat = HermesActDeleteOldLog) THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 40;
				
//				usiStep			:= 0;  //Changed
//				eStartupStep1	:= StartupStepSetupUI; //Changed
			ELSIF p_eRmtHermesStatus = Error THEN
				
				eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 40;
				
//				usiStep			:= 0;  //Changed
//				eStartupStep1	:= StartupStepSetupUI; //Changed
			END_IF
			
				
		40:
			eSvyHermesAct	:= HermesActDeleteOldLog;
	
			IF (p_eSvyHermesStatus = Done) AND (p_eSvyHermesStat = HermesActDeleteOldLog) THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 42;
				
			ELSIF p_eSvyHermesStatus = Error THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 42;
				
			END_IF
			
		42:
			eSvyHermesAct	:= HermesActReadRetainSendWO1;
	
			IF (p_eSvyHermesStatus = Done) AND (p_eSvyHermesStat = HermesActReadRetainSendWO1) THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 43;
				
			ELSIF p_eSvyHermesStatus = Error THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 43;
			END_IF
		43:
			eSvyHermesAct	:= HermesActReadRetainSendWO2;
	
			IF (p_eSvyHermesStatus = Done) AND (p_eSvyHermesStat = HermesActReadRetainSendWO2) THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 44;
		
			ELSIF p_eSvyHermesStatus = Error THEN
		
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 44;
			END_IF
		
		44:
			eSvyHermesAct	:= HermesActReadRetainSendWO3;
	
			IF (p_eSvyHermesStatus = Done) AND (p_eSvyHermesStat = HermesActReadRetainSendWO3) THEN
				
				eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;	
			ELSIF p_eSvyHermesStatus = Error THEN
		
				eSvyHermesAct	:= HermesActIdle;

				usiStep			:= 0;
				eStartupStep1	:= StartupStepSetupUI;	
			END_IF	
	END_CASE
	
END_ACTION
