(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		//	p_eAct ACCESS p_OpsTravULMtrPshrAct;
		IF p_bLinkPshrExtCtrl AND p_bLinkPshrRetCtrl = FALSE 
			AND p_bExtSen = FALSE
			THEN
				p_eAct := MtrPshrActExt;
			
		ELSIF p_bLinkPshrExtCtrl = FALSE AND p_bLinkPshrRetCtrl
			AND p_bRetSen = FALSE
			THEN
				p_eAct := MtrPshrActRet;
		
		ELSE
				p_eAct := MtrPshrActIdle;
		END_IF
		
	ELSIF p_bManual = TRUE THEN
//		IF p_UIMtrPshrAct = MtrPshrActStop THEN
//			p_eAct := MtrPshrActStop;
//		ELSE
			IF p_bLinkPshrExtCtrl AND p_bLinkPshrRetCtrl = FALSE 
			AND p_bExtSen = FALSE
				THEN
				p_eAct := MtrPshrActExt;
			
			ELSIF p_bLinkPshrExtCtrl = FALSE AND p_bLinkPshrRetCtrl
				AND p_bRetSen = FALSE
				THEN
				p_eAct := MtrPshrActRet;
		
			ELSE
				p_eAct := MtrPshrActIdle;
			END_IF
//		END_IF
		
	ELSE
			p_eAct := MtrPshrActIdle;
	END_IF
	
END_ACTION
