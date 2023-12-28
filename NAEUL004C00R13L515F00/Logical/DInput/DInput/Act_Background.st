(** 2019-01-21 **)
ACTION Act_Background:
	
	//Digital Input Mapping With Physical Input
	IF g_tyNtParamCurr.tyDISettings.diSafetyRlySig > 0 AND g_tyNtParamCurr.tyDISettings.diSafetyRlySig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bSafetyRlySig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSafetyRlySig];
	ELSE
		g_tyDInput.bSafetyRlySig	:= TRUE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diEStopSig > 0 AND g_tyNtParamCurr.tyDISettings.diEStopSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bEStopSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diEStopSig];
	ELSE
		g_tyDInput.bEStopSig	:= TRUE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diCoverSWSig > 0 AND g_tyNtParamCurr.tyDISettings.diCoverSWSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bCoverSWSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diCoverSWSig];
	ELSE
		g_tyDInput.bCoverSWSig	:= TRUE;
	END_IF
	
	IF g_tyOpsTravLifUL.bSelfTest = FALSE THEN
		IF g_tyNtParamCurr.tyDISettings.diUBAA > 0 AND g_tyNtParamCurr.tyDISettings.diUBAA <= UDINT_TO_DINT(c_udiDInputMax) THEN
			g_tyDInput.bUBAA	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diUBAA];
		ELSE
			g_tyDInput.bUBAA	:= FALSE;
		END_IF
	ELSE
		g_tyDInput.bUBAA	:= g_tyPshrConv.bHvBrd = FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diUBAB > 0 AND g_tyNtParamCurr.tyDISettings.diUBAB <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bUBAB	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diUBAB];
	ELSE
		g_tyDInput.bUBAB	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diUBAAStat > 0 AND g_tyNtParamCurr.tyDISettings.diUBAAStat <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bUBAAStat	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diUBAAStat];
	ELSE
		g_tyDInput.bUBAAStat	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diUBABStat > 0 AND g_tyNtParamCurr.tyDISettings.diUBABStat <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bUBABStat	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diUBABStat];
	ELSE
		g_tyDInput.bUBABStat	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diPusherExtRS > 0 AND g_tyNtParamCurr.tyDISettings.diPusherExtRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bPusherExtRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diPusherExtRS];
	ELSE
		g_tyDInput.bPusherExtRS	:= FALSE;
	END_IF	
	
	IF g_tyNtParamCurr.tyDISettings.diPusherRetRS > 0 AND g_tyNtParamCurr.tyDISettings.diPusherRetRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bPusherRetRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diPusherRetRS];
	ELSE
		g_tyDInput.bPusherRetRS	:= TRUE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diPshrAntiJam > 0 AND g_tyNtParamCurr.tyDISettings.diPshrAntiJam <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bPshrAntiJam	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diPshrAntiJam];
	ELSE
		g_tyDInput.bPshrAntiJam	:= TRUE;
	END_IF
	
	IF g_tyOpsTravLifUL.bSelfTest = FALSE THEN
		IF g_tyNtParamCurr.tyDISettings.diConvLftSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvLftSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
			//Digital Input Filter
			fbConvLftSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLftSenAntiGapDly.diSigOnTm);
			fbConvLftSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLftSenAntiGapDly.diSigOffTm);
			fbConvLftSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvLftSen]);
		
			g_tyDInput.bConvLftSen	:= fbConvLftSigFltr.bSigOut;
		ELSE
			g_tyDInput.bConvLftSen	:= FALSE;
		END_IF
	ELSE
		fbConvLftSenTm(IN:= g_tyPshrConv.bHvBrd);
		IF EDGEPOS(g_tyPshrConv.bHvBrd) THEN
			g_tyDInput.bConvLftSen	:= TRUE;
		ELSIF fbConvLftSenTm.Q THEN
			g_tyDInput.bConvLftSen	:= FALSE;
		END_IF
	END_IF

	IF g_tyNtParamCurr.tyDISettings.diConvMidSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvMidSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		//Digital Input Filter
		fbConvMidSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMidSenAntiGapDly.diSigOnTm);
		fbConvMidSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMidSenAntiGapDly.diSigOffTm);
		fbConvMidSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvMidSen]);
		IF g_tyNtParamCurr.bCurtainSenPrep AND g_tyNtParamCurr.eMidSenNcNoType = NcBoschChina THEN// AND bNtParamBoschChina THEN
			g_tyDInput.bConvMidSen	:= NOT (fbConvMidSigFltr.bSigOut);
		ELSE
			g_tyDInput.bConvMidSen	:= fbConvMidSigFltr.bSigOut;
		END_IF
		
	ELSE
		g_tyDInput.bConvMidSen	:= FALSE;
	END_IF
	
	IF g_tyOpsTravLifUL.bSelfTest = FALSE THEN
		IF g_tyNtParamCurr.tyDISettings.diConvRgtSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvRgtSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
			//Digital Input Filter
			fbConvRgtSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyRgtSenAntiGapDly.diSigOnTm);
			fbConvRgtSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyRgtSenAntiGapDly.diSigOffTm);
			fbConvRgtSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvRgtSen]);
			g_tyDInput.bConvRgtSen	:= fbConvRgtSigFltr.bSigOut;
		ELSE
			g_tyDInput.bConvRgtSen	:= FALSE;
		END_IF
	ELSE
		g_tyDInput.bConvRgtSen	:= g_tyPshrConv.bHvBrd;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diConvClrSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvClrSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		//Digital Input Filter
		fbConvClrSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyClrSenAntiGapDly.diSigOnTm);
		fbConvClrSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyClrSenAntiGapDly.diSigOffTm);
		fbConvClrSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvClrSen]);
		g_tyDInput.bConvClrSen	:= fbConvClrSigFltr.bSigOut;
	ELSE
		g_tyDInput.bConvClrSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOvenInfeedSigA > 0 AND g_tyNtParamCurr.tyDISettings.diOvenInfeedSigA <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOvenInfeedSigA	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOvenInfeedSigA];
	ELSE
		g_tyDInput.bOvenInfeedSigA	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOvenInfeedSigB > 0 AND g_tyNtParamCurr.tyDISettings.diOvenInfeedSigB <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOvenInfeedSigB	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOvenInfeedSigB];
	ELSE
		g_tyDInput.bOvenInfeedSigB	:= FALSE;
	END_IF

	IF g_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen > 0 AND g_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bLifterTimingBeltSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen];
	ELSE
		g_tyDInput.bLifterTimingBeltSen	:= TRUE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1 > 0 AND g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bLifterSafetyLmtSW1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1];
	ELSE
		g_tyDInput.bLifterSafetyLmtSW1	:= TRUE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2 > 0 AND g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bLifterSafetyLmtSW2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2];
	ELSE
		g_tyDInput.bLifterSafetyLmtSW2	:= TRUE;
	END_IF
	
	//Magazine 1 Fixed Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag1FixedClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1FixedClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1FixedClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1FixedClampRS];
	ELSE
		g_tyDInput.bMag1FixedClampRS	:= FALSE;
	END_IF	

	IF g_tyNtParamCurr.tyDISettings.diMag1FixedUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1FixedUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1FixedUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1FixedUnclampRS];
	ELSE
		g_tyDInput.bMag1FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Remote Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1RemoteClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS];
	ELSE
		g_tyDInput.bMag1RemoteClampRS	:= FALSE;
	END_IF	

	IF g_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1RemoteUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS];
	ELSE
		g_tyDInput.bMag1RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Sel Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag1SelUnClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1SelUnClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1SelUnClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1SelUnClampRS];
	ELSE
		g_tyDInput.bMag1SelUnClampRS	:= FALSE;
	END_IF	
	
	//Magazine 2 Fixed Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag2FixedClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2FixedClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2FixedClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2FixedClampRS];
	ELSE
		g_tyDInput.bMag2FixedClampRS	:= FALSE;
	END_IF	
	
	IF g_tyNtParamCurr.tyDISettings.diMag2FixedUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2FixedUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2FixedUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2FixedUnclampRS];
	ELSE
		g_tyDInput.bMag2FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 2 Remote Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2RemoteClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS];
	ELSE
		g_tyDInput.bMag2RemoteClampRS	:= FALSE;
	END_IF	
	
	IF g_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2RemoteUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS];
	ELSE
		g_tyDInput.bMag2RemoteUnclampRS	:= TRUE;
	END_IF

	//Magazine 2 Sel Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag2SelUnClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2SelUnClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2SelUnClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2SelUnClampRS];
	ELSE
		g_tyDInput.bMag2SelUnClampRS	:= FALSE;
	END_IF
	
	//Magazine 3 Fixed Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag3FixedClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3FixedClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3FixedClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3FixedClampRS];
	ELSE
		g_tyDInput.bMag3FixedClampRS	:= FALSE;
	END_IF	
	
	IF g_tyNtParamCurr.tyDISettings.diMag3FixedUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3FixedUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3FixedUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3FixedUnclampRS];
	ELSE
		g_tyDInput.bMag3FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Remote Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag3RemoteClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3RemoteClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3RemoteClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3RemoteClampRS];
	ELSE
		g_tyDInput.bMag3RemoteClampRS	:= FALSE;
	END_IF	
	
	IF g_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3RemoteUnclampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS];
	ELSE
		g_tyDInput.bMag3RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Sel Clamper RSs
	IF g_tyNtParamCurr.tyDISettings.diMag3SelUnClampRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3SelUnClampRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3SelUnClampRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3SelUnClampRS];
	ELSE
		g_tyDInput.bMag3SelUnClampRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diInShutterOpenRS > 0 AND g_tyNtParamCurr.tyDISettings.diInShutterOpenRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bInShutterOpenRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diInShutterOpenRS];
	ELSE
		g_tyDInput.bInShutterOpenRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diInShutterCloseRS > 0 AND g_tyNtParamCurr.tyDISettings.diInShutterCloseRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bInShutterCloseRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diInShutterCloseRS];
	ELSE
		g_tyDInput.bInShutterCloseRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterOpenRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS];
	ELSE
		g_tyDInput.bOutShutterOpenRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterCloseRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS];
	ELSE
		g_tyDInput.bOutShutterCloseRS	:= FALSE;
	END_IF
	
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS2 > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterOpenRS2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS2];
	ELSE
		g_tyDInput.bOutShutterOpenRS2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS2 > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterCloseRS2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS2];
	ELSE
		g_tyDInput.bOutShutterCloseRS2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS3 > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterOpenRS3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterOpenRS3];
	ELSE
		g_tyDInput.bOutShutterOpenRS3	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS3 > 0 AND g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bOutShutterCloseRS3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diOutShutterCloseRS3];
	ELSE
		g_tyDInput.bOutShutterCloseRS3	:= FALSE;
	END_IF
	
	IF g_tyOpsTravLifUL.bSelfTest = FALSE THEN
		
		IF g_tyNtParamCurr.tyDISettings.diMagPresentSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagPresentSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			fbMagConv1PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
			fbMagConv1PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);
			fbMagConv1PresentSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagPresentSen1]);
			g_tyDInput.bMagPresentSen1	:= fbMagConv1PresentSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagPresentSen1	:= FALSE;
		END_IF
		
		IF g_tyNtParamCurr.tyDISettings.diMagPresentSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagPresentSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			fbMagConv2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
			fbMagConv2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);
			fbMagConv2PresentSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagPresentSen2]);
			g_tyDInput.bMagPresentSen2	:= fbMagConv2PresentSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagPresentSen2	:= FALSE;
		END_IF
		
		IF g_tyNtParamCurr.tyDISettings.diMagPresentSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagPresentSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			fbMagConv3PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
			fbMagConv3PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);
			fbMagConv3PresentSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagPresentSen3]);
			g_tyDInput.bMagPresentSen3	:= fbMagConv3PresentSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagPresentSen3	:= FALSE;
		END_IF

		IF g_tyNtParamCurr.tyDISettings.diMagConvEntSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvEntSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			//Digital Input Filter
			fbMagConv1EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm);
			fbMagConv1EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm);
			fbMagConv1EntSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvEntSen1]);
			g_tyDInput.bMagConvEntSen1	:= fbMagConv1EntSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagConvEntSen1	:= FALSE;
		END_IF
		
		IF g_tyNtParamCurr.tyDISettings.diMagConvEntSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvEntSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			//Digital Input Filter
			fbMagConv2EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm);
			fbMagConv2EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm);
			fbMagConv2EntSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvEntSen2]);
			g_tyDInput.bMagConvEntSen2	:= fbMagConv2EntSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagConvEntSen2	:= FALSE;
		END_IF
		
		IF g_tyNtParamCurr.tyDISettings.diMagConvEntSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvEntSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
			//Digital Input Filter
			fbMagConv3EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm);
			fbMagConv3EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm);
			fbMagConv3EntSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvEntSen3]);
			g_tyDInput.bMagConvEntSen3	:= fbMagConv3EntSigFltr.bSigOut;
		ELSE
			g_tyDInput.bMagConvEntSen3	:= FALSE;
		END_IF
	ELSE
		CASE g_tyNtParamCurr.eProjMag OF
			ULMagDual: 
			
				fbSelfTestTm1(IN:= g_tyDOutput.bMag1ConvMtrIn = FALSE  AND g_tyDOutput.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					g_tyDInput.bMagPresentSen1 := TRUE;
				ELSIF g_tyDOutput.bMag1ConvMtrOut THEN
					g_tyDInput.bMagPresentSen1 := FALSE;
					g_tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF g_tyDInput.bMagConvEntSen1 THEN
					g_tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= g_tyDOutput.bMag2ConvMtrIn = FALSE  AND g_tyDOutput.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					g_tyDInput.bMagPresentSen2 := TRUE;
				ELSIF g_tyDOutput.bMag2ConvMtrOut THEN
					g_tyDInput.bMagPresentSen2 := FALSE;
					g_tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF g_tyDInput.bMagConvEntSen2 THEN
					g_tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
			ULMagTriple:
				
				fbSelfTestTm1(IN:= g_tyDOutput.bMag1ConvMtrIn = FALSE  AND g_tyDOutput.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					g_tyDInput.bMagPresentSen1 := TRUE;
				ELSIF g_tyDOutput.bMag1ConvMtrOut THEN
					g_tyDInput.bMagPresentSen1 := FALSE;
					g_tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF g_tyDInput.bMagConvEntSen1 THEN
					g_tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= g_tyDOutput.bMag2ConvMtrIn = FALSE  AND g_tyDOutput.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					g_tyDInput.bMagPresentSen2 := TRUE;
				ELSIF g_tyDOutput.bMag2ConvMtrOut THEN
					g_tyDInput.bMagPresentSen2 := FALSE;
					g_tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF g_tyDInput.bMagConvEntSen2 THEN
					g_tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
				fbSelfTestTm3(IN:= g_tyDOutput.bMag3ConvMtrIn = FALSE  AND g_tyDOutput.bMag3ConvMtrOut = FALSE);
				IF fbSelfTestTm3.Q THEN
					g_tyDInput.bMagPresentSen3 := TRUE;
				ELSIF g_tyDOutput.bMag3ConvMtrOut THEN
					g_tyDInput.bMagPresentSen3 := FALSE;
					g_tyDInput.bMagConvEntSen3 := TRUE;
				ELSIF g_tyDInput.bMagConvEntSen3 THEN
					g_tyDInput.bMagConvEntSen3 := FALSE;
				END_IF
		END_CASE
		
	END_IF	
		
	IF g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1AIVInPosSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen1];
	ELSE
		g_tyDInput.bMag1AIVInPosSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1AIVInPosSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen2];
	ELSE
		g_tyDInput.bMag1AIVInPosSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2AIVInPosSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen1];
	ELSE
		g_tyDInput.bMag2AIVInPosSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2AIVInPosSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen2];
	ELSE
		g_tyDInput.bMag2AIVInPosSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3AIVInPosSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen1];
	ELSE
		g_tyDInput.bMag3AIVInPosSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3AIVInPosSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen2];
	ELSE
		g_tyDInput.bMag3AIVInPosSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1OrientChkSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1];
	ELSE
		g_tyDInput.bMag1OrientChkSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1OrientChkSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2];
	ELSE
		g_tyDInput.bMag1OrientChkSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2OrientChkSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1];
	ELSE
		g_tyDInput.bMag2OrientChkSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2OrientChkSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2];
	ELSE
		g_tyDInput.bMag2OrientChkSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3OrientChkSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1];
	ELSE
		g_tyDInput.bMag3OrientChkSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3OrientChkSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2];
	ELSE
		g_tyDInput.bMag3OrientChkSen2	:= FALSE;
	END_IF
	
	//Magazine 1 Height Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvHeightSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvHeightSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvHeightSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvHeightSen1];
	ELSE
		g_tyDInput.bMagConvHeightSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Height Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvHeightSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvHeightSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvHeightSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvHeightSen2];
	ELSE
		g_tyDInput.bMagConvHeightSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Height Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvHeightSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvHeightSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvHeightSen3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvHeightSen3];
	ELSE
		g_tyDInput.bMagConvHeightSen3	:= FALSE;
	END_IF
	
	//Magazine 1 Small Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvSmallMagSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen1];
	ELSE
		g_tyDInput.bMagConvSmallMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Small Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvSmallMagSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen2];
	ELSE
		g_tyDInput.bMagConvSmallMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Small Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvSmallMagSen3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvSmallMagSen3];
	ELSE
		g_tyDInput.bMagConvSmallMagSen3	:= FALSE;
	END_IF
	
	//Magazine 1 Large Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvLargeMagSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen1];
	ELSE
		g_tyDInput.bMagConvLargeMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Large Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvLargeMagSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen2];
	ELSE
		g_tyDInput.bMagConvLargeMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Large Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvLargeMagSen3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvLargeMagSen3];
	ELSE
		g_tyDInput.bMagConvLargeMagSen3	:= FALSE;
	END_IF
	
	//Magazine 1 CAB717.2 Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvCAB717MagSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen1];
	ELSE
		g_tyDInput.bMagConvCAB717MagSen1	:= FALSE;
	END_IF

	//Magazine 2 CAB717.2 Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvCAB717MagSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen2];
	ELSE
		g_tyDInput.bMagConvCAB717MagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 CAB717.2 Sensor  
	IF g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagConvCAB717MagSen3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagConvCAB717MagSen3];
	ELSE
		g_tyDInput.bMagConvCAB717MagSen3	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1SafetyBarExtRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1SafetyBarExtRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1SafetyBarExtRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1SafetyBarExtRS];
	ELSE
		g_tyDInput.bMag1SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1SafetyBarRetRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1SafetyBarRetRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1SafetyBarRetRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1SafetyBarRetRS];
	ELSE
		g_tyDInput.bMag1SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2SafetyBarExtRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2SafetyBarExtRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2SafetyBarExtRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2SafetyBarExtRS];
	ELSE
		g_tyDInput.bMag2SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2SafetyBarRetRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2SafetyBarRetRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2SafetyBarRetRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2SafetyBarRetRS];
	ELSE
		g_tyDInput.bMag2SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3SafetyBarExtRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3SafetyBarExtRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3SafetyBarExtRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3SafetyBarExtRS];
	ELSE
		g_tyDInput.bMag3SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3SafetyBarRetRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3SafetyBarRetRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3SafetyBarRetRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3SafetyBarRetRS];
	ELSE
		g_tyDInput.bMag3SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1WallEngageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1WallEngageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1WallEngageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1WallEngageRS];
	ELSE
		g_tyDInput.bMag1WallEngageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1WallDisengageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag1WallDisengageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1WallDisengageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1WallDisengageRS];
	ELSE
		g_tyDInput.bMag1WallDisengageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2WallEngageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2WallEngageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2WallEngageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2WallEngageRS];
	ELSE
		g_tyDInput.bMag2WallEngageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2WallDisengageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag2WallDisengageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2WallDisengageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2WallDisengageRS];
	ELSE
		g_tyDInput.bMag2WallDisengageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3WallEngageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3WallEngageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3WallEngageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3WallEngageRS];
	ELSE
		g_tyDInput.bMag3WallEngageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3WallDisengageRS > 0 AND g_tyNtParamCurr.tyDISettings.diMag3WallDisengageRS <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3WallDisengageRS	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3WallDisengageRS];
	ELSE
		g_tyDInput.bMag3WallDisengageRS	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diHighMagDetSen1 > 0 AND g_tyNtParamCurr.tyDISettings.diHighMagDetSen1 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bHighMagDetSen1	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diHighMagDetSen1];
	ELSE
		g_tyDInput.bHighMagDetSen1	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diHighMagDetSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diHighMagDetSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bHighMagDetSen2	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diHighMagDetSen2];
	ELSE
		g_tyDInput.bHighMagDetSen2	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diHighMagDetSen3 > 0 AND g_tyNtParamCurr.tyDISettings.diHighMagDetSen3 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bHighMagDetSen3	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diHighMagDetSen3];
	ELSE
		g_tyDInput.bHighMagDetSen3	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diScanComplSig > 0 AND g_tyNtParamCurr.tyDISettings.diScanComplSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.diScanComplSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diScanComplSig];
	ELSE
		g_tyDInput.diScanComplSig	:= FALSE;
	END_IF
	
	CASE g_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			g_tyDInput.bFleetManagerReady	:= g_tyAGV.tyTagFromMes.bActive;
		McSetAGVCommHardIO:
			//Fleet Manager Active Status
			IF g_tyNtParamCurr.tyDISettings.diFleetManagerReady > 0 AND g_tyNtParamCurr.tyDISettings.diFleetManagerReady <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bFleetManagerReady	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diFleetManagerReady];
			ELSE
				g_tyDInput.bFleetManagerReady	:= FALSE;
			END_IF
			
		McSetAGVCommDisabled:
			g_tyDInput.bFleetManagerReady	:= FALSE;
	END_CASE
	
				
	IF g_tyNtParamCurr.bProjSOTSensorPrep OR g_tyMcParamCurr.eAGVComProtocol = McSetAGVCommHardIO 
		THEN	
		IF g_tyUIOut.bAGVSimulationOn = FALSE THEN
			//SOT Configuration
			IF g_tyNtParamCurr.tyDISettings.diSOT1Receive > 0 AND g_tyNtParamCurr.tyDISettings.diSOT1Receive <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT1Receive	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT1Receive];
			ELSE
				g_tyDInput.bSOT1Receive	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT1AIVError > 0 AND g_tyNtParamCurr.tyDISettings.diSOT1AIVError <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT1AIVError	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT1AIVError];
			ELSE
				g_tyDInput.bSOT1AIVError	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT1AIVSizeLarge > 0 AND g_tyNtParamCurr.tyDISettings.diSOT1AIVSizeLarge <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT1AIVSizeLarge	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT1AIVSizeLarge];
			ELSE
				g_tyDInput.bSOT1AIVSizeLarge	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT1AIVReady > 0 AND g_tyNtParamCurr.tyDISettings.diSOT1AIVReady <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT1AIVReady	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT1AIVReady];
			ELSE
				g_tyDInput.bSOT1AIVReady	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT1AIVAvailable > 0 AND g_tyNtParamCurr.tyDISettings.diSOT1AIVAvailable <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT1AIVAvailable	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT1AIVAvailable];
			ELSE
				g_tyDInput.bSOT1AIVAvailable	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT2Receive > 0 AND g_tyNtParamCurr.tyDISettings.diSOT2Receive <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT2Receive	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT2Receive];
			ELSE
				g_tyDInput.bSOT2Receive	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT2AIVError > 0 AND g_tyNtParamCurr.tyDISettings.diSOT2AIVError <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT2AIVError	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT2AIVError];
			ELSE
				g_tyDInput.bSOT2AIVError	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT2AIVSizeLarge > 0 AND g_tyNtParamCurr.tyDISettings.diSOT2AIVSizeLarge <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT2AIVSizeLarge	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT2AIVSizeLarge];
			ELSE
				g_tyDInput.bSOT2AIVSizeLarge	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT2AIVReady > 0 AND g_tyNtParamCurr.tyDISettings.diSOT2AIVReady <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT2AIVReady	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT2AIVReady];
			ELSE
				g_tyDInput.bSOT2AIVReady	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT2AIVAvailable > 0 AND g_tyNtParamCurr.tyDISettings.diSOT2AIVAvailable <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT2AIVAvailable	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT2AIVAvailable];
			ELSE
				g_tyDInput.bSOT2AIVAvailable	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT3Receive > 0 AND g_tyNtParamCurr.tyDISettings.diSOT3Receive <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT3Receive	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT3Receive];
			ELSE
				g_tyDInput.bSOT3Receive	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT3AIVError > 0 AND g_tyNtParamCurr.tyDISettings.diSOT3AIVError <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT3AIVError	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT3AIVError];
			ELSE
				g_tyDInput.bSOT3AIVError	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT3AIVSizeLarge > 0 AND g_tyNtParamCurr.tyDISettings.diSOT3AIVSizeLarge <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT3AIVSizeLarge	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT3AIVSizeLarge];
			ELSE
				g_tyDInput.bSOT3AIVSizeLarge	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT3AIVReady > 0 AND g_tyNtParamCurr.tyDISettings.diSOT3AIVReady <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT3AIVReady	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT3AIVReady];
			ELSE
				g_tyDInput.bSOT3AIVReady	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT3AIVAvailable > 0 AND g_tyNtParamCurr.tyDISettings.diSOT3AIVAvailable <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT3AIVAvailable	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT3AIVAvailable];
			ELSE
				g_tyDInput.bSOT3AIVAvailable	:= FALSE;
			END_IF
					
					
			IF g_tyNtParamCurr.tyDISettings.diSOT4Receive > 0 AND g_tyNtParamCurr.tyDISettings.diSOT4Receive <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT4Receive	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT4Receive];
			ELSE
				g_tyDInput.bSOT4Receive	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT4AIVError > 0 AND g_tyNtParamCurr.tyDISettings.diSOT4AIVError <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT4AIVError	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT4AIVError];
			ELSE
				g_tyDInput.bSOT4AIVError	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT4AIVSizeLarge > 0 AND g_tyNtParamCurr.tyDISettings.diSOT4AIVSizeLarge <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT4AIVSizeLarge	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT4AIVSizeLarge];
			ELSE
				g_tyDInput.bSOT4AIVSizeLarge	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT4AIVReady > 0 AND g_tyNtParamCurr.tyDISettings.diSOT4AIVReady <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT4AIVReady	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT4AIVReady];
			ELSE
				g_tyDInput.bSOT4AIVReady	:= FALSE;
			END_IF
					
			IF g_tyNtParamCurr.tyDISettings.diSOT4AIVAvailable > 0 AND g_tyNtParamCurr.tyDISettings.diSOT4AIVAvailable <= UDINT_TO_DINT(c_udiDInputMax) THEN
				g_tyDInput.bSOT4AIVAvailable	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diSOT4AIVAvailable];
			ELSE
				g_tyDInput.bSOT4AIVAvailable	:= FALSE;
			END_IF
		ELSE
			g_tyDInput.bSOT1Receive	:= g_tyUIOut.tySOTSimulateSig1.tyBtnInPos;
			g_tyDInput.bSOT1AIVError	:= g_tyUIOut.tySOTSimulateSig1.tyBtnError;
			g_tyDInput.bSOT1AIVReady		:= g_tyUIOut.tySOTSimulateSig1.tyBtnRdy;
			g_tyDInput.bSOT1AIVAvailable	:= g_tyUIOut.tySOTSimulateSig1.tyBtnAvail;
					
			g_tyDInput.bSOT2Receive	:= g_tyUIOut.tySOTSimulateSig2.tyBtnInPos;
			g_tyDInput.bSOT2AIVError	:= g_tyUIOut.tySOTSimulateSig2.tyBtnError;
			g_tyDInput.bSOT2AIVReady		:= g_tyUIOut.tySOTSimulateSig2.tyBtnRdy;
			g_tyDInput.bSOT2AIVAvailable	:= g_tyUIOut.tySOTSimulateSig2.tyBtnAvail;
					
			g_tyDInput.bSOT3Receive	:= g_tyUIOut.tySOTSimulateSig3.tyBtnInPos;
			g_tyDInput.bSOT3AIVError	:= g_tyUIOut.tySOTSimulateSig3.tyBtnError;
			g_tyDInput.bSOT3AIVReady		:= g_tyUIOut.tySOTSimulateSig3.tyBtnRdy;
			g_tyDInput.bSOT3AIVAvailable	:= g_tyUIOut.tySOTSimulateSig3.tyBtnAvail;
					
		END_IF
		
	ELSIF g_tyNtParamCurr.bProjSOTSensorPrep = FALSE THEN
		
		CASE g_tyMcParamCurr.eAGVComProtocol OF
			McSetAGVCommOPCUA:
				IF g_tyUIOut.bAGVSimulationOn = FALSE THEN
					g_tyDInput.bFleetManagerReady	:= g_tyAGV.tyTagFromMes.bActive;
					
					g_tyDInput.bSOT1Receive := TRUE;
					g_tyDInput.bSOT1AIVError := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[1].bError;
					g_tyDInput.bSOT1AIVSizeLarge := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[1].bSizeLarge;
					g_tyDInput.bSOT1AIVReady := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[1].bReady;
					g_tyDInput.bSOT1AIVAvailable := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[1].bAvailable;
					
					g_tyDInput.bSOT2Receive := TRUE;
					g_tyDInput.bSOT2AIVError := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[2].bError;
					g_tyDInput.bSOT2AIVSizeLarge := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[2].bSizeLarge;
					g_tyDInput.bSOT2AIVReady := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[2].bReady;
					g_tyDInput.bSOT2AIVAvailable := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[2].bAvailable;
					
					g_tyDInput.bSOT3Receive := TRUE;
					g_tyDInput.bSOT3AIVError := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[3].bError;
					g_tyDInput.bSOT3AIVSizeLarge := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[3].bSizeLarge;
					g_tyDInput.bSOT3AIVReady := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[3].bReady;
					g_tyDInput.bSOT3AIVAvailable := g_tyAGV.tyTagFromMes.tyTagStatOfPlatforms[3].bAvailable;
			
				ELSE
					g_tyDInput.bSOT1Receive	:= g_tyUIOut.tySOTSimulateSig1.tyBtnInPos;
					g_tyDInput.bSOT1AIVError	:= g_tyUIOut.tySOTSimulateSig1.tyBtnError;
					g_tyDInput.bSOT1AIVReady		:= g_tyUIOut.tySOTSimulateSig1.tyBtnRdy;
					g_tyDInput.bSOT1AIVAvailable	:= g_tyUIOut.tySOTSimulateSig1.tyBtnAvail;
				
					g_tyDInput.bSOT2Receive	:= g_tyUIOut.tySOTSimulateSig2.tyBtnInPos;
					g_tyDInput.bSOT2AIVError	:= g_tyUIOut.tySOTSimulateSig2.tyBtnError;
					g_tyDInput.bSOT2AIVReady		:= g_tyUIOut.tySOTSimulateSig2.tyBtnRdy;
					g_tyDInput.bSOT2AIVAvailable	:= g_tyUIOut.tySOTSimulateSig2.tyBtnAvail;
				
					g_tyDInput.bSOT3Receive	:= g_tyUIOut.tySOTSimulateSig3.tyBtnInPos;
					g_tyDInput.bSOT3AIVError	:= g_tyUIOut.tySOTSimulateSig3.tyBtnError;
					g_tyDInput.bSOT3AIVReady		:= g_tyUIOut.tySOTSimulateSig3.tyBtnRdy;
					g_tyDInput.bSOT3AIVAvailable	:= g_tyUIOut.tySOTSimulateSig3.tyBtnAvail;
				
				END_IF
			
			
			McSetAGVCommDisabled:
				g_tyDInput.bSOT1Receive := FALSE;
				g_tyDInput.bSOT1AIVError := FALSE;
				g_tyDInput.bSOT1AIVSizeLarge := FALSE;
				g_tyDInput.bSOT1AIVReady := FALSE;
				g_tyDInput.bSOT1AIVAvailable := FALSE;
					
				g_tyDInput.bSOT2Receive := FALSE;
				g_tyDInput.bSOT2AIVError := FALSE;
				g_tyDInput.bSOT2AIVSizeLarge := FALSE;
				g_tyDInput.bSOT2AIVReady := FALSE;
				g_tyDInput.bSOT2AIVAvailable := FALSE;
					
				g_tyDInput.bSOT3Receive := FALSE;
				g_tyDInput.bSOT3AIVError := FALSE;
				g_tyDInput.bSOT3AIVSizeLarge := FALSE;
				g_tyDInput.bSOT3AIVReady := FALSE;
				g_tyDInput.bSOT3AIVAvailable	:= FALSE;
		END_CASE
	END_IF		
	
	IF g_tyNtParamCurr.tyDISettings.diPusherExtSlwSen > 0 AND g_tyNtParamCurr.tyDISettings.diPusherExtSlwSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bPusherExtSlwSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diPusherExtSlwSen];
	ELSE
		g_tyDInput.bPusherExtSlwSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diPusherRetSlwSen > 0 AND g_tyNtParamCurr.tyDISettings.diPusherRetSlwSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bPusherRetSlwSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diPusherRetSlwSen];
	ELSE
		g_tyDInput.bPusherRetSlwSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMtrPshrTorqueSig > 0 AND g_tyNtParamCurr.tyDISettings.diMtrPshrTorqueSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMtrPshrTorqueSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMtrPshrTorqueSig];
	ELSE
		g_tyDInput.bMtrPshrTorqueSig	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMtrPshrAlmSig > 0 AND g_tyNtParamCurr.tyDISettings.diMtrPshrAlmSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMtrPshrAlmSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMtrPshrAlmSig];
	ELSE
		g_tyDInput.bMtrPshrAlmSig	:= TRUE;
	END_IF
				
	IF g_tyNtParamCurr.tyDISettings.diMagWidthChkSen > 0 AND g_tyNtParamCurr.tyDISettings.diMagWidthChkSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMagWidthChkSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMagWidthChkSen];
	ELSE
		g_tyDInput.bMagWidthChkSen	:= TRUE;
	END_IF
	
	//InletStopper Lane A
	IF g_tyNtParamCurr.tyDISettings.diInletStopperASen > 0 AND g_tyNtParamCurr.tyDISettings.diInletStopperASen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bInletStopperASen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diInletStopperASen];
	ELSE
		g_tyDInput.bInletStopperASen	:= FALSE;
	END_IF

	
	IF g_tyNtParamCurr.tyDISettings.diUSWidthChkSen > 0 AND g_tyNtParamCurr.tyDISettings.diUSWidthChkSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		fbConvUSWidthSenSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyUSWidthChkSenAntiGapDly.diSigOnTm);
		fbConvUSWidthSenSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyUSWidthChkSenAntiGapDly.diSigOffTm);
		fbConvUSWidthSenSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diUSWidthChkSen]);
		IF g_tyNtParamCurr.bUSWidthChkPrep AND g_tyMcParamCurr.bUSWidthChkEn = TRUE THEN		
			g_tyDInput.bUSWidthChkSen	:= fbConvUSWidthSenSigFltr.bSigOut;
		ELSE
			g_tyDInput.bUSWidthChkSen	:= FALSE;
		END_IF
	ELSE
		g_tyDInput.bUSWidthChkSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diConvLineAInletSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvLineAInletSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		//Digital Input Filter
		fbConvLineAInletSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLineAInletSenAntiGapDly.diSigOnTm);
		fbConvLineAInletSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLineAInletSenAntiGapDly.diSigOffTm);
		fbConvLineAInletSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvLineAInletSen]);
		g_tyDInput.bConvLineAInletSen	:= fbConvLineAInletSigFltr.bSigOut;
	ELSE
		g_tyDInput.bConvLineAInletSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diConvLineBInletSen > 0 AND g_tyNtParamCurr.tyDISettings.diConvLineBInletSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		//Digital Input Filter
		fbConvLineBInletSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLineBInletSenAntiGapDly.diSigOnTm);
		fbConvLineBInletSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyLineBInletSenAntiGapDly.diSigOffTm);
		fbConvLineBInletSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diConvLineBInletSen]);
		g_tyDInput.bConvLineBInletSen	:= fbConvLineBInletSigFltr.bSigOut;
	ELSE
		g_tyDInput.bConvLineBInletSen	:= FALSE;
	END_IF

	IF g_tyNtParamCurr.tyDISettings.diLifter2LmtSW > 0 AND g_tyNtParamCurr.tyDISettings.diLifter2LmtSW <= UDINT_TO_DINT(c_udiDInputMax) THEN
		fbMagConv2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm);
		fbMagConv2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(g_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm);
		fbMagConv2PresentSigFltr(bSigIn := a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diLifter2LmtSW]);
		g_tyDInput.bLifter2LmtSW			:= fbMagConv2PresentSigFltr.bSigOut;
		g_tyDInput.bMagPresentSen2		:= fbMagConv2PresentSigFltr.bSigOut;
	ELSIF g_tyNtParamCurr.tyDISettings.diMagPresentSen2 > 0 AND g_tyNtParamCurr.tyDISettings.diMagPresentSen2 <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bLifter2LmtSW			:= FALSE;
	ELSE
		g_tyDInput.bLifter2LmtSW			:= FALSE;
		g_tyDInput.bMagPresentSen2		:= FALSE;
	END_IF
	
	//motor overload
	IF g_tyNtParamCurr.tyDISettings.diMtrOverloadSig > 0 AND g_tyNtParamCurr.tyDISettings.diMtrOverloadSig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMtrOverloadSig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMtrOverloadSig];
	ELSE
		g_tyDInput.bMtrOverloadSig	:= TRUE;
	END_IF
	
	//For Simulation Only
	IF DiagCpuIsSimulated() = TRUE THEN
		g_tyDInput.bSafetyRlySig			:= TRUE;
		g_tyDInput.bEStopSig				:= TRUE;
		g_tyDInput.bCoverSWSig			:= TRUE;
		g_tyDInput.bLifterTimingBeltSen	:= TRUE;
		g_tyDInput.bLifterSafetyLmtSW1	:= TRUE;
		g_tyDInput.bLifterSafetyLmtSW2	:= TRUE;
		g_tyDInput.bCurtainSafetySig		:= TRUE;
		g_tyDInput.bCurtainSen			:= TRUE;
	END_IF
	
	//Estop
	IF (g_tyDInput.bEStopSig = FALSE) AND (eStatus1 <> Error) THEN
		eStatus1	:= Error;
		udiStatus1	:= 10000;	//Emergency Stop Button Pressed
	END_IF
	
	//Cover Switch
	IF (g_tyDInput.bCoverSWSig = FALSE) AND (eStatus2 <> Error) THEN
		eStatus2	:= Error;
		udiStatus2	:= 10001;	//Door / Conver Opened
	END_IF
	
	//Lifter Timing Belt
	fbInitializedTm(IN:= TRUE);
	IF fbInitializedTm.Q THEN
		IF (g_tyDInput.bLifterTimingBeltSen = FALSE) AND (eStatus3 <> Error) THEN
			eStatus3	:= Error;
			udiStatus3	:= 10002;	//Lifter Timing Belt Broken
		END_IF
	END_IF
	
	//Lifter Safety Limit Switch
	IF (g_tyDInput.bLifterSafetyLmtSW1 = FALSE OR g_tyDInput.bLifterSafetyLmtSW2 = FALSE) AND (eStatus4 <> Error) THEN
		eStatus4	:= Error;
		udiStatus4	:= 10003;	//Lifter Reached Safety Limit Switch
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag1FixedClampSen > 0 AND g_tyNtParamCurr.tyDISettings.diMag1FixedClampSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag1FixedClampSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag1FixedClampSen];
	ELSE
		g_tyDInput.bMag1FixedClampSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag2FixedClampSen > 0 AND g_tyNtParamCurr.tyDISettings.diMag2FixedClampSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag2FixedClampSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag2FixedClampSen];
	ELSE
		g_tyDInput.bMag2FixedClampSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diMag3FixedClampSen > 0 AND g_tyNtParamCurr.tyDISettings.diMag3FixedClampSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bMag3FixedClampSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diMag3FixedClampSen];
	ELSE
		g_tyDInput.bMag3FixedClampSen	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diCurtainSen > 0 AND g_tyNtParamCurr.tyDISettings.diCurtainSen <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bCurtainSen	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diCurtainSen];
	ELSE
		g_tyDInput.bCurtainSen	:= TRUE;//Changed FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diCurtainSenPB > 0 AND g_tyNtParamCurr.tyDISettings.diCurtainSenPB <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bCurtainSenPB	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diCurtainSenPB];
	ELSE
		g_tyDInput.bCurtainSenPB	:= FALSE;
	END_IF
	
	IF g_tyNtParamCurr.tyDISettings.diCurtainSafetySig > 0 AND g_tyNtParamCurr.tyDISettings.diCurtainSafetySig <= UDINT_TO_DINT(c_udiDInputMax) THEN
		g_tyDInput.bCurtainSafetySig	:= a_bPhysicalDI[g_tyNtParamCurr.tyDISettings.diCurtainSafetySig];
	ELSE
		g_tyDInput.bCurtainSafetySig	:= TRUE;
	END_IF
	
	//Only For Curtain Sensor Preparation
	IF g_tyNtParamCurr.bCurtainSenPrep THEN
		fbCurtainSafetyRstTm(IN := NOT(g_tyUIOut.bSafetyCurtainReset));
		IF (NOT g_tyDInput.bCurtainSafetySig) AND (eStatus6 <> Error) AND fbCurtainSafetyRstTm.Q
			AND (g_tyDOutput.bBypCurtainSen = FALSE) AND g_tyUIOut.bSafetyCurtainReset = FALSE THEN
			
			IF NOT g_tyDInput.bSafetyRlySig THEN
			ELSE	
				eStatus6	:= Error;
				udiStatus6	:= 10006;
			END_IF	
		END_IF
	END_IF
	
	//	IF g_tyNtParamCurr.bCurtainSenPrep AND g_tyDInput.bCurtainSafetySig = FALSE AND (eStatus6 <> Error) AND g_tyDOutput.bBypCurtainSen = FALSE 
	//		AND (p_bOpsRun OR p_bManual) THEN 
	//		eStatus6	:= Error;
	//		udiStatus6	:= 10006;	//Curtain Sensor Activated
	//	END_IF
	
	//Motor signal
	//	IF (g_tyDInput.bMtrOverloadSig = FALSE ) AND (eStatus5 <> Error) THEN
	//		eStatus5	:= Error;
	//		udiStatus5	:= 10005;	//Motor overload signal activated.
	//	END_IF
	
	//Safety Relay
	IF g_tyStartUp.bRun THEN
		fbSafetyRlyRstTm(IN := NOT(g_tyRstErrOut.bSafetyRlyRst));
		IF (g_tyDInput.bSafetyRlySig = FALSE) AND (eStatus5 <> Error AND (eStatus1 <> Error AND eStatus2 <> Error)) AND fbSafetyRlyRstTm.Q  THEN
			bSafetySigErrNoBuz := TRUE;
		END_IF
	ELSIF bSafetySigErrNoBuz = FALSE THEN
		fbSafetyRlyRstTm(IN := NOT(g_tyRstErrOut.bSafetyRlyRst));
		IF (g_tyDInput.bSafetyRlySig = FALSE) AND (eStatus5 <> Error AND (eStatus1 <> Error AND eStatus2 <> Error)) AND fbSafetyRlyRstTm.Q AND g_tyDInput.bEStopSig AND g_tyDInput.bCoverSWSig THEN
			eStatus5	:= Error;
			udiStatus5	:= 10004; //Safety Relay Signal is Off
		END_IF	
	END_IF 
	//Reset Error
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
	END_IF
	
	IF (eStatus2 = Error) AND bRstErr THEN
		eStatus2	:= Idle;
		udiStatus2	:= 0;
	END_IF
	
	IF (eStatus3 = Error) AND bRstErr THEN
		eStatus3	:= Idle;
		udiStatus3	:= 0;
	END_IF
	
	IF (eStatus4 = Error) AND bRstErr THEN
		eStatus4	:= Idle;
		udiStatus4	:= 0;
	END_IF
	
	IF (eStatus5 = Error) AND bRstErr THEN
		eStatus5	:= Idle;
		udiStatus5	:= 0;
	END_IF
	
	IF (eStatus6 = Error) AND bRstErr THEN
		eStatus6	:= Idle;
		udiStatus6	:= 0;
	END_IF
	
	IF bRstErr AND bSafetySigErrNoBuz THEN
		bSafetySigErrNoBuz := FALSE;
	END_IF
	
END_ACTION
