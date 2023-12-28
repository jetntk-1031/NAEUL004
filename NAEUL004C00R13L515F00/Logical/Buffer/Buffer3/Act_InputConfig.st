(** 2019-04-26 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalBuffer.In.bLinkPresentSen1 := g_tyDInput.bMagPresentSen3;
	tylocalBuffer.In.bLinkPresentSen2 := g_tyDInput.bMagConvEntSen3;
	tylocalBuffer.In.diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	tylocalBuffer.In.bLinkMcParamProdSelTopToBtm ACCESS p_ProdRcpCurrRcp2TopToBtm;
	tylocalBuffer.In.bLinkOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;
	
	//Pass Data To Internal Use
	tylocalBuffer.In.udiRstErr := g_tyRstErr.bReset;
	tylocalBuffer.In.sFileName := g_tyNtParamCurr.sBffr3FileNm;
	tylocalBuffer.In.bManual := g_tyUIOut.bManualMod;
	tylocalBuffer.In.dtCurrDT := g_tyTime.dtCurrDT;

	tylocalBuffer.In.diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	tylocalBuffer.In.diLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag3Slt1Pos;
	tylocalBuffer.In.diLifterCurrPosInUM := g_tyLifterBtm.diActualPos;
	tylocalBuffer.In.bGdBrdIn  := g_tyPshrConv.bGdBrd;
	tylocalBuffer.In.bNxtLoadSeq := g_tyNtParamCurr.bBffr3NxtLoadSeq;
	tylocalBuffer.In.sCurrRcpNm ACCESS p_ProdRcpCurrRcp2Nm;
	tylocalBuffer.In.sProgNm := g_tyNtParamCurr.sBffr3ProgNm;
	tylocalBuffer.In.bNtParamAutoRcpPrep := g_tyNtParamCurr.bAutoRcpPrep ;
	tylocalBuffer.In.bMcParamAutoRcpDis  := g_tyMcParamCurr.bAutoRcpDisable;
	
	
	//Siemens Req
	tylocalBuffer.In.bOpsMagConvULRlsMagAllw := g_tyOpsMagConvUL3.bRlsMagAllw;
	tylocalBuffer.In.eNtParamCustomerReq := g_tyNtParamCurr.eCustomerReq;
	tylocalBuffer.In.tyResponseFromMES :=  g_tyAGV.tyTagFromMesMagCov3; 

	
	IF g_tyStartUp.bRun = TRUE THEN
		tylocalBuffer.In.eAct := g_tyStartUp.eBuffer3Act;
	ELSE
		IF tylocalBuffer.Out.eStatus = Idle THEN
			IF g_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
				IF g_tyOpsMagConvUL3.eBufferAct <> BufferActIdle THEN
					tylocalBuffer.In.eAct := g_tyOpsMagConvUL3.eBufferAct;
				ELSIF g_tyUIOut.eBuffer3Act <> BufferActIdle THEN
					tylocalBuffer.In.eAct := g_tyUIOut.eBuffer3Act;
				ELSE
					tylocalBuffer.In.eAct := eAct;
				END_IF
			ELSE
				IF g_tyOpsLifMagULBufferAct3.eBufferAct <> BufferActIdle THEN
					tylocalBuffer.In.eAct := g_tyOpsLifMagULBufferAct3.eBufferAct;
				ELSE
					tylocalBuffer.In.eAct := g_tyUIOut.eBuffer3Act;
				END_IF
			END_IF
		END_IF
	END_IF
	(* Always Change If Project Change *)
	
END_ACTION
