(** 2020-06-08 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	p_eLinkLCSMngRcpProdRcpAct ACCESS p_LCSMngRcpProdRcpAct;
	p_eLinkUIProdRcpAct ACCESS p_UIProdRcpAct;
	p_tyInfoIn ACCESS p_UIProdRcpInfoIn;
	p_tyCurrRcpWr ACCESS p_UIProdRcpCurrRcpWr;
	
	//Input to Process
	tylocalProdRcp.In.udiRstErr 		:= g_tyRstErrOut.udiRstErr;
	tylocalProdRcp.In.sSearch			:= g_tyUIOut.sProdRcpSearch;
	tylocalProdRcp.In.sScan				:= g_tyUIOut.sProdRcpScan;
	tylocalProdRcp.In.sProgNm			:= g_tyNtParamCurr.sProdRcpProgNm;
	tylocalProdRcp.In.bWidth2Prep		:= g_tyNtParamCurr.bLFProdWidth2Prep;
	



	(* Always Change If Project Change *)
	
	IF g_tyStartUp.bRun THEN
		p_eAct ACCESS p_StartupProdRcpAct;
	ELSE
		IF tylocalProdRcp.Out.eStatus = Idle THEN
			IF g_tyNtParamCurr.bLCSManageRcpPrep AND g_tyMcParamCurr.bLCSManageRcpEn THEN
				IF p_eLinkLCSMngRcpProdRcpAct <> ProdRcpActIdle THEN
					p_eAct ACCESS p_LCSMngRcpProdRcpAct;
					p_tyInfoIn ACCESS p_LCSMngRcpProdRcpInfoIn;
				ELSIF p_eLinkUIProdRcpAct <> ProdRcpActIdle THEN
					p_eAct ACCESS p_UIProdRcpAct;
					p_tyInfoIn ACCESS p_UIProdRcpInfoIn;
					
					p_tyInfoIn.dtLastModified	:= g_tyTime.dtCurrDT;
				END_IF
			ELSE
				p_eAct ACCESS p_UIProdRcpAct;
				p_tyInfoIn ACCESS p_UIProdRcpInfoIn;	
				p_tyInfoIn.dtLastModified	:= g_tyTime.dtCurrDT;	
			END_IF
		END_IF
	END_IF
	
	IF (p_eAct = ProdRcpActAddEdit) OR (p_eAct = ProdRcpActAdd) OR (p_eAct = ProdRcpActEdit) THEN

		rWidthInMM				:= DINT_TO_REAL(p_tyInfoIn.diWidthInUM);
		rWidthInMM2				:= DINT_TO_REAL(p_tyInfoIn.diWidthInUM2);
		rWidthInMM				:= rWidthInMM / 1000;		
		rWidthInMM2				:= rWidthInMM2 / 1000;
		sWidthInMM				:= REAL_TO_STRING(rWidthInMM);
		sWidthInMM2				:= REAL_TO_STRING(rWidthInMM2);
		
		IF tylocalProdRcp.In.bWidth2Prep THEN
			p_tyInfoIn.sDisplayInfo	:= sWidthInMM;
			p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , ' | ');
			p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , sWidthInMM2);
			p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , ' mm');
		ELSE
			p_tyInfoIn.sDisplayInfo	:= sWidthInMM;
			p_tyInfoIn.sDisplayInfo	:= CONCAT(p_tyInfoIn.sDisplayInfo , ' mm');
		END_IF
	END_IF
	
	
	
END_ACTION
