
ACTION Act_Main_P0400:
	
	//Board Per Slot
	tyP0400ProdSel.tyProdSel.tyNumBrdPerSlt.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjBrdPerSltPrep;
	tyP0400ProdSel.tyProdSel.tyTxtBrdPerSlt.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjBrdPerSltPrep;
	tyP0400ProdSel.tyRcpDet.tyNumBrdPerSlt.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjBrdPerSltPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtBrdPerSlt.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjBrdPerSltPrep;
	
	//Min Req To Free Buffer
	tyP0400ProdSel.tyProdSel.tyNumMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	tyP0400ProdSel.tyProdSel.tyTxtMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	tyP0400ProdSel.tyRcpDet.tyNumMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtMinReqFreeBffr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	
	//Product Selection
	tyP0400ProdSel.tyProdSel.tyStringRecipeNm.sValue		:= p_tyProdRcpCurrRcp0.sRcpNm;
	tyP0400ProdSel.tyProdSel.tyNumProdWidth.diValue			:= p_tyProdRcpCurrRcp0.diWidthInUM;
	tyP0400ProdSel.tyProdSel.tyNumMaxSlt.diValue			:= p_tyProdRcpCurrRcp0.diMaxSltValue;
	tyP0400ProdSel.tyProdSel.tyNumMinSlt.diValue			:= p_tyProdRcpCurrRcp0.diMinSltValue;
	tyP0400ProdSel.tyProdSel.tyNumPitch.diValue				:= p_tyProdRcpCurrRcp0.diPitch;
	tyP0400ProdSel.tyProdSel.tyNumBrdPerSlt.diValue			:= p_tyProdRcpCurrRcp0.diBrdPerSlt;
	tyP0400ProdSel.tyProdSel.tyBtnToptoBtm.bValue			:= p_tyProdRcpCurrRcp0.bTopToBtm;
	tyP0400ProdSel.tyProdSel.tyBtnGapBetBrds.bValue			:= p_tyProdRcpCurrRcp0.bGapBwtnBrd;
	tyP0400ProdSel.tyProdSel.tyBtnLongBrd.bValue			:= p_tyProdRcpCurrRcp0.bLongBrd;
	tyP0400ProdSel.tyProdSel.tyTxtMcMode.usiValueIdx		:= p_tyProdRcpCurrRcp0.usiMcMod;
	tyP0400ProdSel.tyProdSel.tyNumMinReqFreeBffr.diValue	:= p_tyProdRcpCurrRcp0.diMinReqFreeBffr;
	tyP0400ProdSel.tyProdSel.tyNumPshrOffset.diValue		:= p_tyProdRcpCurrRcp0.diPshrOffset;
	
	//Motorized Pusher
	tyP0400ProdSel.tyProdSel.tyTxtMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyProdSel.tyTxtMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtSpd.diValue		:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
	tyP0400ProdSel.tyProdSel.tyNumMtrPshrExtTorq.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
	
	//Puller Offset
	tyP0400ProdSel.tyProdSel.tyNumPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyProdSel.tyTxtPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyNumPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	tyP0400ProdSel.tyRcpDet.tyTxtPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bAWPusherPrep;
	
END_ACTION
