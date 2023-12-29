
ACTION Act_Background_UpdtData:
	
	//Update To Leader Recipe
	CASE usiProdUpdtDatStep OF
		0:
			//Update New Recipe Condition
			IF tylocalFollower.Out.tyUpdtProdRcp.sRcpNm <> '' THEN
				IF (p_tyCurrProdRcp.sRcpNm <> tylocalFollower.Out.tyUpdtProdRcp.sRcpNm) OR (p_bUpdtProdRcpDiff = TRUE) THEN
					IF p_bUpdtNewRcpCond = TRUE THEN
						usiProdUpdtDatStep	:= 1;
					END_IF
				END_IF
			ELSE
				tylocalFollower.Out.tyUpdtProdRcp	:= p_tyCurrProdRcp;
			END_IF
			
		1:
			//Manual Update Data Check
			IF p_bAutoUpdtData = FALSE THEN
				
				tylocalFollower.Out.bProdUpdtDataMnl		:= TRUE;
				
				IF p_bUIProdUpdtData = TRUE THEN
					tylocalFollower.Out.bProdUpdtDataMnl	:= FALSE;
					usiProdUpdtDatStep	:= 2;
				END_IF
			ELSE
				tylocalFollower.Out.bProdUpdtDataMnl	:= FALSE;
				usiProdUpdtDatStep	:= 2;
			END_IF
			
		2:
			//Update New Recipe
			tylocalFollower.Out.tyUpdtProdRcp	:= p_tyCurrProdRcp;
			
			usiProdUpdtDatStep	:= 0;
			
	END_CASE
	
END_ACTION
