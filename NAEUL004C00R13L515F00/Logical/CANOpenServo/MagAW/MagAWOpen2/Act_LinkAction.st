(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF eStatus = Idle THEN
		IF bModuleNotOK THEN
			p_eAct ACCESS ADR(eAct);
		ELSE
			IF p_bLinkStartupRun = TRUE THEN
				p_eAct ACCESS p_StartupMagAW2Act;
			ELSIF p_bLinkOpsRun = TRUE THEN
				p_eAct ACCESS p_OpsMagConvUL2MagAWAct;
			ELSIF p_bManual = TRUE THEN
				p_eAct ACCESS p_UIMagAWOpen2Act;
			ELSE
				p_eAct ACCESS ADR(eAct);
			END_IF
		END_IF
	END_IF
	
	IF EDGENEG(p_bManual) OR EDGENEG(p_bLinkOpsRun) OR EDGENEG(p_bLinkStartupRun) THEN
		tyParamOutDriver.uiCtrlword_6040	:= 0;
	END_IF
	
END_ACTION
