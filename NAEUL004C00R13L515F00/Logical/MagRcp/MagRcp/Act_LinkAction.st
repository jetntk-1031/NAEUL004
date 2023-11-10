(** 2019-03-29 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupMagRcpAct;
	ELSE
		
		IF p_bLinkNtParamLCSManageRcpPrep AND p_bLinkMcParamLCSManageRcpEn THEN
			IF p_eLinkLCSMngRcpMagRcpAct <> MagRcpActIdle THEN
				p_eAct ACCESS p_LCSMngRcpMagRcpAct;
				p_tyInfoIn ACCESS p_LCSMngRcpMagRcpInfoIn;
			ELSIF p_eLinkUIMagRcpAct <> MagRcpActIdle THEN
				p_eAct ACCESS p_UIMagRcpAct;
				p_tyInfoIn ACCESS p_UIMagRcpInfoIn;
					
				p_tyInfoIn.dtLastModified	:= p_dtCurrDT;
			END_IF
		ELSE
			p_eAct ACCESS p_UIMagRcpAct;
			p_tyInfoIn ACCESS p_UIMagRcpInfoIn;
					
			p_tyInfoIn.dtLastModified	:= p_dtCurrDT;
		END_IF
	END_IF
	
END_ACTION
