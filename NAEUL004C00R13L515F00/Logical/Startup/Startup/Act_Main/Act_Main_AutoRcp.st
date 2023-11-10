(** 2019-05-04 **)
ACTION Act_Main_AutoRcp:
	
	CASE usiStep OF
		0:
			eAutoRcpAct	:= AutoRcpActCreateDir;
	
			IF (p_eAutoRcpStatus = Done) AND (p_eAutoRcpStat = AutoRcpActCreateDir) THEN
				
				eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 1;
				
			ELSIF p_eAutoRcpStatus = Error THEN
				
				eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 1;
				
			END_IF
			
		1:
			eAutoRcpAct	:= AutoRcpActReadRetain;
	
			IF (p_eAutoRcpStatus = Done) AND (p_eAutoRcpStat = AutoRcpActReadRetain) THEN
				eAutoRcpAct		:= AutoRcpActIdle;
				IF  p_eNtParamAutoRcpPrecededBy  = PrecededBySelf THEN
					usiStep			:= 2;
				ELSIF p_eNtParamAutoRcpPrecededBy  = PrecededByF1 THEN 
					usiStep			:= 0;
					eStartupStep1	:= StartupStepUsrMgmt;
				END_IF
			ELSIF p_eAutoRcpStatus = Error THEN
					eAutoRcpAct		:= AutoRcpActIdle;
				IF  p_eNtParamAutoRcpPrecededBy  = PrecededBySelf THEN
					usiStep			:= 2;
				ELSIF p_eNtParamAutoRcpPrecededBy  = PrecededByF1 THEN
					usiStep			:= 0;
					eStartupStep1	:= StartupStepUsrMgmt;
				END_IF
			END_IF
	
		2:
			eAutoRcpAct	:= AutoRcpActReadRetain2;
	
			IF (p_eAutoRcpStatus = Done) AND (p_eAutoRcpStat = AutoRcpActReadRetain2) THEN
				
				eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepUsrMgmt;
				
			ELSIF p_eAutoRcpStatus = Error THEN
				
				eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 0;
				eStartupStep1	:= StartupStepUsrMgmt;
				
			END_IF			
			
	END_CASE
		
END_ACTION
