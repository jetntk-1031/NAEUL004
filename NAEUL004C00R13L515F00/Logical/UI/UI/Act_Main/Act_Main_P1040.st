
ACTION Act_Main_P1040:
	
	//Display
	tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumFirstSlt.diValueMin		:= p_tyNtParamCurr.diProjMagMinSlt;
	
	tyP1040ProdSet.tyProdSet.tyNumPitch.diValueMin			:= p_tyNtParamCurr.tyProdRcpPitch.diMin;
	
	tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValueMin		:= p_tyNtParamCurr.tyProdRcpBrdPerSlt.diMin;
	tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.diValueMax		:= p_tyNtParamCurr.tyProdRcpBrdPerSlt.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValueMin	:= p_tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMin;
	tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.diValueMax	:= p_tyNtParamCurr.tyProdRcpOvenMinReqFreeBffr.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumBrdPerSlt.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjBrdPerSltPrep);
	tyP1040ProdSet.tyProdSet.tyTxtBrdPerSlt.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjBrdPerSltPrep);
	
	tyP1040ProdSet.tyProdSet.tyNumPshrOffset.uiRtStat.0		:= NOT (p_tyNtParamCurr.bAWPusherPrep);
	tyP1040ProdSet.tyProdSet.tyTxtPshrOffset.uiRtStat.0		:= NOT (p_tyNtParamCurr.bAWPusherPrep);
	
	//Oven
	tyP1040ProdSet.tyProdSet.tyNumMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	tyP1040ProdSet.tyProdSet.tyTxtMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	
	//Machine Mode
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueMaxIdx	:= 8;
	ELSE
		tyP1040ProdSet.tyProdSet.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	END_IF;
	
	//P1040 Product Settings
	FOR i := 1 TO c_uiP1040TableSize DO
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(i);
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyProdRcpCurrList[i].sRcpNm;
		tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyProdRcpCurrList[i].sDisplayInfo;
	END_FOR
		
	//Motorized Pusher
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;

	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP1040ProdSet.tyProdSet.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
END_ACTION
