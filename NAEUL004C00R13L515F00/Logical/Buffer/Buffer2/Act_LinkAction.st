(** 2019-05-10 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupBuffer2Act;
	ELSE
		IF eStatus = Idle THEN
			IF p_bLinkProjLifterMagPlatform = FALSE THEN
				IF p_eLinkOpsMagConvULBufferAct <> BufferActIdle THEN
					p_eAct ACCESS p_OpsMagConvUL2BufferAct;
				ELSIF p_eLinkUIBufferAct <> BufferActIdle THEN
					p_eAct ACCESS p_UIBuffer2Act;
				ELSE
					p_eAct ACCESS ADR(eAct);
				END_IF
			ELSE
				IF p_eLinkOpsLifMagULBufferAct <> BufferActIdle THEN
					p_eAct ACCESS p_OpsLifMagULBufferAct2;
				ELSE
					p_eAct ACCESS p_UIBuffer2Act;
				END_IF
			END_IF
		END_IF
	END_IF
	
END_ACTION
