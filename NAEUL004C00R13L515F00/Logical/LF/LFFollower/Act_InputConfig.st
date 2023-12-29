(** 2020-09-21 **)
ACTION Act_InputConfig:
	
	//Pass Data To Internal Use
	p_bUIProdAccData ACCESS p_UIProdAccData;
	p_bUIProdUpdtData ACCESS p_UIProdAccData;
	pa_tyProdRcpList ACCESS p_ProdRcpCurrList;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp0;
	p_tyDispProdRcp ACCESS p_ProdRcpCurrRcp1;
	p_tyFollower ACCESS p_Follower2;
	
	
	
	//Link bPrep, bEn & bDis
	IF g_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		tylocalLFFollower.In.bDis	:= g_tyStartUp.bRun OR g_tyMcParamCurr.eUSCommA = McSetCommModHermes;
	ELSE
		tylocalLFFollower.In.bDis	:= g_tyStartUp.bRun OR g_tyMcParamCurr.eUSCommA = McSetCommModHermes OR g_tyMcParamCurr.eUSCommB = McSetCommModHermes;
	END_IF
	
	
	//Accept Condition with the relevant Information
	bFollowerInfo	:= tyFollowerToLeaderTag.bProdWidthErr OR bProdRcpErrNotExist OR bProdRcpErrWidthMismatch;
	
	bLeaderInfo		:= (tyLeaderToFollowerTag.bProdWidthUSWarn OR tyLeaderToFollowerTag.bProdWidthDSWarn
	OR ((tyLeaderToFollowerTag.bProdNameUSWarn OR tyLeaderToFollowerTag.bProdNameDSWarn) 
	AND (g_tyNtParamCurr.bAWPrep = TRUE) AND (g_tyMcParamCurr.bAWDis = FALSE) AND (g_tyAW.eStat <>AWActGoWidthOff)));

	
	//Info Message
	IF bFollowerInfo THEN
		IF tyFollowerToLeaderTag.bProdWidthErr = TRUE OR bProdRcpErrWidthMismatch THEN
			
			p_sInfoMsg		:= 'Product Recipe Width Does Not Match';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Check Product Width And');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Leader Request Width');
			
		ELSIF bProdRcpErrNotExist THEN
			
			p_sInfoMsg		:= 'New Product Not Found';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'In Product Recipe List');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Create New Product');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'In Product Setting');
		END_IF
	ELSE
		
		IF (tyLeaderToFollowerTag.sReqProdRcpNm<>p_tyCurrProdRcp.sRcpNm) AND (tyLeaderToFollowerTag.sReqProdRcpNm<>'') 
			AND bLeaderInfo=FALSE THEN
			
			p_sInfoMsg		:= 'Leader Request New Recipe';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Name : ');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyDispProdRcp.sRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(p_tyDispProdRcp.diWidthInUM / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Name : ');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , tyLeaderToFollowerTag.sReqProdRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(tyLeaderToFollowerTag.diReqProdRcpWidth / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
			
		ELSIF tyLeaderToFollowerTag.bProdNameUSWarn THEN
			p_sInfoMsg		:= 'US Machine Request New Recipe';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Name : ');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyDispProdRcp.sRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(p_tyDispProdRcp.diWidthInUM / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Name : ');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , tyLeaderToFollowerTag.sReqProdRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(tyLeaderToFollowerTag.diReqProdRcpWidth / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
			
		ELSIF tyLeaderToFollowerTag.bProdNameDSWarn THEN
			p_sInfoMsg		:= 'Different Recipe';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'From DS Machine');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Current Recipe Name : ');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyCurrProdRcp.sRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Current Recipe Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(p_tyCurrProdRcp.diWidthInUM2 / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
			
		ELSIF tyLeaderToFollowerTag.bProdWidthUSWarn THEN
			p_sInfoMsg		:= 'Product Recipe Width Does Not Match';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Check Product Width And');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Leader Request Width');
	
		ELSIF tyLeaderToFollowerTag.bProdWidthDSWarn THEN
			p_sInfoMsg		:= 'Same Recipe : ';
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_tyDispProdRcp.sRcpNm);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'But Different Width');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'With DS Machine');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Machine Outgoing Width : ');
			sWidthInUMTemp	:= DINT_TO_STRING(p_tyDispProdRcp.diWidthInUM2 / 1000);
			p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
		
		END_IF
	END_IF	
		
	//Accept New Recipe Condition (Before Loaded New Recipe)
	IF p_eLinkNtParamProjMag = ULMagDual OR p_eLinkNtParamProjMag = ULMagTriple  THEN
		p_bAccNewRcpCond	:= g_tyOps.bRun;  AND (g_tyPshrConv.bHvBrd = FALSE);
	END_IF
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;
	
	IF g_tyAlm.bErr THEN
		eCurrMachineStat := InError;
	ELSE
		IF g_tyAlm.bWarning THEN
			eCurrMachineStat := Warning;
		ELSE
			IF g_tyOps.bRun THEN
				eCurrMachineStat := Run;
			ELSE
				IF g_tyUIOut.bUIManualMod THEN
					eCurrMachineStat := Manual;
				ELSE
					eCurrMachineStat := Stop;
				END_IF
			END_IF
		END_IF
	END_IF
	
END_ACTION
