(** 2019-01-21 **)
ACTION Act_Background:
	
	//Digital Input Mapping With Physical Input
	IF p_tyDISettings.diSafetyRlySig > 0 AND p_tyDISettings.diSafetyRlySig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bSafetyRlySig	:= a_bPhysicalDI[p_tyDISettings.diSafetyRlySig];
	ELSE
		tyDInput.bSafetyRlySig	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diEStopSig > 0 AND p_tyDISettings.diEStopSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bEStopSig	:= a_bPhysicalDI[p_tyDISettings.diEStopSig];
	ELSE
		tyDInput.bEStopSig	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diCoverSWSig > 0 AND p_tyDISettings.diCoverSWSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCoverSWSig	:= a_bPhysicalDI[p_tyDISettings.diCoverSWSig];
	ELSE
		tyDInput.bCoverSWSig	:= TRUE;
	END_IF
	
	IF p_bSelfTest = FALSE THEN
		IF p_tyDISettings.diUBAA > 0 AND p_tyDISettings.diUBAA <= UDINT_TO_DINT(p_udiMax) THEN
			tyDInput.bUBAA	:= a_bPhysicalDI[p_tyDISettings.diUBAA];
		ELSE
		tyDInput.bUBAA	:= FALSE;
		END_IF
	ELSE
		tyDInput.bUBAA	:= p_bPshrConvHvBrd = FALSE;
	END_IF
	
	IF p_tyDISettings.diUBAB > 0 AND p_tyDISettings.diUBAB <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bUBAB	:= a_bPhysicalDI[p_tyDISettings.diUBAB];
	ELSE
		tyDInput.bUBAB	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diUBAAStat > 0 AND p_tyDISettings.diUBAAStat <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bUBAAStat	:= a_bPhysicalDI[p_tyDISettings.diUBAAStat];
	ELSE
		tyDInput.bUBAAStat	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diUBABStat > 0 AND p_tyDISettings.diUBABStat <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bUBABStat	:= a_bPhysicalDI[p_tyDISettings.diUBABStat];
	ELSE
		tyDInput.bUBABStat	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diPusherExtRS > 0 AND p_tyDISettings.diPusherExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPusherExtRS	:= a_bPhysicalDI[p_tyDISettings.diPusherExtRS];
	ELSE
		tyDInput.bPusherExtRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diPusherRetRS > 0 AND p_tyDISettings.diPusherRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPusherRetRS	:= a_bPhysicalDI[p_tyDISettings.diPusherRetRS];
	ELSE
		tyDInput.bPusherRetRS	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diPshrAntiJam > 0 AND p_tyDISettings.diPshrAntiJam <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPshrAntiJam	:= a_bPhysicalDI[p_tyDISettings.diPshrAntiJam];
	ELSE
		tyDInput.bPshrAntiJam	:= TRUE;
	END_IF
	
	IF p_bSelfTest = FALSE THEN
		IF p_tyDISettings.diConvLftSen > 0 AND p_tyDISettings.diConvLftSen <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbConvLftSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvLftSenOnTm);
			fbConvLftSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvLftSenOffTm);
			fbConvLftSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvLftSen]);
		
			tyDInput.bConvLftSen	:= fbConvLftSigFltr.bSigOut;
		ELSE
			tyDInput.bConvLftSen	:= FALSE;
		END_IF
	ELSE
		fbConvLftSenTm(IN:= p_bPshrConvHvBrd);
		IF EDGEPOS(p_bPshrConvHvBrd) THEN
			tyDInput.bConvLftSen	:= TRUE;
		ELSIF fbConvLftSenTm.Q THEN
			tyDInput.bConvLftSen	:= FALSE;
		END_IF
	END_IF

	IF p_tyDISettings.diConvMidSen > 0 AND p_tyDISettings.diConvMidSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbConvMidSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvMidSenOnTm);
		fbConvMidSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvMidSenOffTm);
		fbConvMidSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvMidSen]);
		IF p_bCurtainSenPrep AND p_eMidSenNcNoType = NcBoschChina THEN// AND bNtParamBoschChina THEN
			tyDInput.bConvMidSen	:= NOT (fbConvMidSigFltr.bSigOut);
		ELSE
			tyDInput.bConvMidSen	:= fbConvMidSigFltr.bSigOut;
		END_IF
		
	ELSE
		tyDInput.bConvMidSen	:= FALSE;
	END_IF
	
	IF p_bSelfTest = FALSE THEN
		IF p_tyDISettings.diConvRgtSen > 0 AND p_tyDISettings.diConvRgtSen <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbConvRgtSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvRgtSenOnTm);
			fbConvRgtSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvRgtSenOffTm);
			fbConvRgtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvRgtSen]);
			tyDInput.bConvRgtSen	:= fbConvRgtSigFltr.bSigOut;
		ELSE
			tyDInput.bConvRgtSen	:= FALSE;
		END_IF
	ELSE
		tyDInput.bConvRgtSen	:= p_bPshrConvHvBrd;
	END_IF
	
	IF p_tyDISettings.diConvClrSen > 0 AND p_tyDISettings.diConvClrSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbConvClrSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvClrSenOnTm);
		fbConvClrSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvClrSenOffTm);
		fbConvClrSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvClrSen]);
		tyDInput.bConvClrSen	:= fbConvClrSigFltr.bSigOut;
	ELSE
		tyDInput.bConvClrSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOvenInfeedSigA > 0 AND p_tyDISettings.diOvenInfeedSigA <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOvenInfeedSigA	:= a_bPhysicalDI[p_tyDISettings.diOvenInfeedSigA];
	ELSE
		tyDInput.bOvenInfeedSigA	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOvenInfeedSigB > 0 AND p_tyDISettings.diOvenInfeedSigB <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOvenInfeedSigB	:= a_bPhysicalDI[p_tyDISettings.diOvenInfeedSigB];
	ELSE
		tyDInput.bOvenInfeedSigB	:= FALSE;
	END_IF

	IF p_tyDISettings.diLifterTimingBeltSen > 0 AND p_tyDISettings.diLifterTimingBeltSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterTimingBeltSen	:= a_bPhysicalDI[p_tyDISettings.diLifterTimingBeltSen];
	ELSE
		tyDInput.bLifterTimingBeltSen	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diLifterSafetyLmtSW1 > 0 AND p_tyDISettings.diLifterSafetyLmtSW1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterSafetyLmtSW1	:= a_bPhysicalDI[p_tyDISettings.diLifterSafetyLmtSW1];
	ELSE
		tyDInput.bLifterSafetyLmtSW1	:= TRUE;
	END_IF
	
	IF p_tyDISettings.diLifterSafetyLmtSW2 > 0 AND p_tyDISettings.diLifterSafetyLmtSW2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterSafetyLmtSW2	:= a_bPhysicalDI[p_tyDISettings.diLifterSafetyLmtSW2];
	ELSE
		tyDInput.bLifterSafetyLmtSW2	:= TRUE;
	END_IF
	
	//Magazine 1 Fixed Clamper RSs
	IF p_tyDISettings.diMag1FixedClampRS > 0 AND p_tyDISettings.diMag1FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedClampRS];
	ELSE
		tyDInput.bMag1FixedClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag1FixedUnclampRS > 0 AND p_tyDISettings.diMag1FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedUnclampRS];
	ELSE
		tyDInput.bMag1FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Remote Clamper RSs
	IF p_tyDISettings.diMag1RemoteClampRS > 0 AND p_tyDISettings.diMag1RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1RemoteClampRS];
	ELSE
		tyDInput.bMag1RemoteClampRS	:= FALSE;
	END_IF	

	IF p_tyDISettings.diMag1RemoteUnclampRS > 0 AND p_tyDISettings.diMag1RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1RemoteUnclampRS];
	ELSE
		tyDInput.bMag1RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 1 Sel Clamper RSs
	IF p_tyDISettings.diMag1SelUnClampRS > 0 AND p_tyDISettings.diMag1SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SelUnClampRS];
	ELSE
		tyDInput.bMag1SelUnClampRS	:= FALSE;
	END_IF	
	
	//Magazine 2 Fixed Clamper RSs
	IF p_tyDISettings.diMag2FixedClampRS > 0 AND p_tyDISettings.diMag2FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedClampRS];
	ELSE
		tyDInput.bMag2FixedClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag2FixedUnclampRS > 0 AND p_tyDISettings.diMag2FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedUnclampRS];
	ELSE
		tyDInput.bMag2FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 2 Remote Clamper RSs
	IF p_tyDISettings.diMag2RemoteClampRS > 0 AND p_tyDISettings.diMag2RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2RemoteClampRS];
	ELSE
		tyDInput.bMag2RemoteClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag2RemoteUnclampRS > 0 AND p_tyDISettings.diMag2RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2RemoteUnclampRS];
	ELSE
		tyDInput.bMag2RemoteUnclampRS	:= TRUE;
	END_IF

	//Magazine 2 Sel Clamper RSs
	IF p_tyDISettings.diMag2SelUnClampRS > 0 AND p_tyDISettings.diMag2SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SelUnClampRS];
	ELSE
		tyDInput.bMag2SelUnClampRS	:= FALSE;
	END_IF
	
	//Magazine 3 Fixed Clamper RSs
	IF p_tyDISettings.diMag3FixedClampRS > 0 AND p_tyDISettings.diMag3FixedClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedClampRS];
	ELSE
		tyDInput.bMag3FixedClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag3FixedUnclampRS > 0 AND p_tyDISettings.diMag3FixedUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedUnclampRS];
	ELSE
		tyDInput.bMag3FixedUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Remote Clamper RSs
	IF p_tyDISettings.diMag3RemoteClampRS > 0 AND p_tyDISettings.diMag3RemoteClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3RemoteClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3RemoteClampRS];
	ELSE
		tyDInput.bMag3RemoteClampRS	:= FALSE;
	END_IF	
	
	IF p_tyDISettings.diMag3RemoteUnclampRS > 0 AND p_tyDISettings.diMag3RemoteUnclampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3RemoteUnclampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3RemoteUnclampRS];
	ELSE
		tyDInput.bMag3RemoteUnclampRS	:= TRUE;
	END_IF
	
	//Magazine 3 Sel Clamper RSs
	IF p_tyDISettings.diMag3SelUnClampRS > 0 AND p_tyDISettings.diMag3SelUnClampRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SelUnClampRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SelUnClampRS];
	ELSE
		tyDInput.bMag3SelUnClampRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterOpenRS > 0 AND p_tyDISettings.diInShutterOpenRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterOpenRS	:= a_bPhysicalDI[p_tyDISettings.diInShutterOpenRS];
	ELSE
		tyDInput.bInShutterOpenRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInShutterCloseRS > 0 AND p_tyDISettings.diInShutterCloseRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInShutterCloseRS	:= a_bPhysicalDI[p_tyDISettings.diInShutterCloseRS];
	ELSE
		tyDInput.bInShutterCloseRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterOpenRS > 0 AND p_tyDISettings.diOutShutterOpenRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterOpenRS	:= a_bPhysicalDI[p_tyDISettings.diOutShutterOpenRS];
	ELSE
		tyDInput.bOutShutterOpenRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterCloseRS > 0 AND p_tyDISettings.diOutShutterCloseRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterCloseRS	:= a_bPhysicalDI[p_tyDISettings.diOutShutterCloseRS];
	ELSE
		tyDInput.bOutShutterCloseRS	:= FALSE;
	END_IF
	
	
	IF p_tyDISettings.diOutShutterOpenRS2 > 0 AND p_tyDISettings.diOutShutterOpenRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterOpenRS2	:= a_bPhysicalDI[p_tyDISettings.diOutShutterOpenRS2];
	ELSE
		tyDInput.bOutShutterOpenRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterCloseRS2 > 0 AND p_tyDISettings.diOutShutterCloseRS2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterCloseRS2	:= a_bPhysicalDI[p_tyDISettings.diOutShutterCloseRS2];
	ELSE
		tyDInput.bOutShutterCloseRS2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterOpenRS3 > 0 AND p_tyDISettings.diOutShutterOpenRS3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterOpenRS3	:= a_bPhysicalDI[p_tyDISettings.diOutShutterOpenRS3];
	ELSE
		tyDInput.bOutShutterOpenRS3	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutShutterCloseRS3 > 0 AND p_tyDISettings.diOutShutterCloseRS3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bOutShutterCloseRS3	:= a_bPhysicalDI[p_tyDISettings.diOutShutterCloseRS3];
	ELSE
		tyDInput.bOutShutterCloseRS3	:= FALSE;
	END_IF
	
	IF p_bSelfTest = FALSE THEN
		
		IF p_tyDISettings.diMagPresentSen1 > 0 AND p_tyDISettings.diMagPresentSen1 <= UDINT_TO_DINT(p_udiMax) THEN
			fbMagConv1PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv1PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv1PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen1]);
			tyDInput.bMagPresentSen1	:= fbMagConv1PresentSigFltr.bSigOut;
		ELSE
			tyDInput.bMagPresentSen1	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagPresentSen2 > 0 AND p_tyDISettings.diMagPresentSen2 <= UDINT_TO_DINT(p_udiMax) THEN
			fbMagConv2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv2PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen2]);
			tyDInput.bMagPresentSen2	:= fbMagConv2PresentSigFltr.bSigOut;
		ELSE
			tyDInput.bMagPresentSen2	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagPresentSen3 > 0 AND p_tyDISettings.diMagPresentSen3 <= UDINT_TO_DINT(p_udiMax) THEN
			fbMagConv3PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
			fbMagConv3PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
			fbMagConv3PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagPresentSen3]);
			tyDInput.bMagPresentSen3	:= fbMagConv3PresentSigFltr.bSigOut;
		ELSE
			tyDInput.bMagPresentSen3	:= FALSE;
		END_IF

		IF p_tyDISettings.diMagConvEntSen1 > 0 AND p_tyDISettings.diMagConvEntSen1 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv1EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv1EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv1EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen1]);
			tyDInput.bMagConvEntSen1	:= fbMagConv1EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen1	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagConvEntSen2 > 0 AND p_tyDISettings.diMagConvEntSen2 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv2EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv2EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv2EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen2]);
			tyDInput.bMagConvEntSen2	:= fbMagConv2EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen2	:= FALSE;
		END_IF
		
		IF p_tyDISettings.diMagConvEntSen3 > 0 AND p_tyDISettings.diMagConvEntSen3 <= UDINT_TO_DINT(p_udiMax) THEN
			//Digital Input Filter
			fbMagConv3EntSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOnTm);
			fbMagConv3EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvEntSenOffTm);
			fbMagConv3EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diMagConvEntSen3]);
			tyDInput.bMagConvEntSen3	:= fbMagConv3EntSigFltr.bSigOut;
		ELSE
			tyDInput.bMagConvEntSen3	:= FALSE;
		END_IF
	ELSE
		CASE p_eULMag OF
			ULMagDual: 
			
				fbSelfTestTm1(IN:= p_tyDO.bMag1ConvMtrIn = FALSE  AND p_tyDO.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					tyDInput.bMagPresentSen1 := TRUE;
				ELSIF p_tyDO.bMag1ConvMtrOut THEN
					tyDInput.bMagPresentSen1 := FALSE;
					tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF tyDInput.bMagConvEntSen1 THEN
					tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= p_tyDO.bMag2ConvMtrIn = FALSE  AND p_tyDO.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					tyDInput.bMagPresentSen2 := TRUE;
				ELSIF p_tyDO.bMag2ConvMtrOut THEN
					tyDInput.bMagPresentSen2 := FALSE;
					tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF tyDInput.bMagConvEntSen2 THEN
					tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
			ULMagTriple:
				
				fbSelfTestTm1(IN:= p_tyDO.bMag1ConvMtrIn = FALSE  AND p_tyDO.bMag1ConvMtrOut = FALSE);
				IF fbSelfTestTm1.Q THEN
					tyDInput.bMagPresentSen1 := TRUE;
				ELSIF p_tyDO.bMag1ConvMtrOut THEN
					tyDInput.bMagPresentSen1 := FALSE;
					tyDInput.bMagConvEntSen1 := TRUE;
				ELSIF tyDInput.bMagConvEntSen1 THEN
					tyDInput.bMagConvEntSen1 := FALSE;
				END_IF
				
				fbSelfTestTm2(IN:= p_tyDO.bMag2ConvMtrIn = FALSE  AND p_tyDO.bMag2ConvMtrOut = FALSE);
				IF fbSelfTestTm2.Q THEN
					tyDInput.bMagPresentSen2 := TRUE;
				ELSIF p_tyDO.bMag2ConvMtrOut THEN
					tyDInput.bMagPresentSen2 := FALSE;
					tyDInput.bMagConvEntSen2 := TRUE;
				ELSIF tyDInput.bMagConvEntSen2 THEN
					tyDInput.bMagConvEntSen2 := FALSE;
				END_IF
				
				fbSelfTestTm3(IN:= p_tyDO.bMag3ConvMtrIn = FALSE  AND p_tyDO.bMag3ConvMtrOut = FALSE);
				IF fbSelfTestTm3.Q THEN
					tyDInput.bMagPresentSen3 := TRUE;
				ELSIF p_tyDO.bMag3ConvMtrOut THEN
					tyDInput.bMagPresentSen3 := FALSE;
					tyDInput.bMagConvEntSen3 := TRUE;
				ELSIF tyDInput.bMagConvEntSen3 THEN
					tyDInput.bMagConvEntSen3 := FALSE;
				END_IF
			END_CASE
		
	END_IF	
		
	IF p_tyDISettings.diMag1AIVInPosSen1 > 0 AND p_tyDISettings.diMag1AIVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1AIVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag1AIVInPosSen1];
	ELSE
		tyDInput.bMag1AIVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1AIVInPosSen2 > 0 AND p_tyDISettings.diMag1AIVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1AIVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag1AIVInPosSen2];
	ELSE
		tyDInput.bMag1AIVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2AIVInPosSen1 > 0 AND p_tyDISettings.diMag2AIVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2AIVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag2AIVInPosSen1];
	ELSE
		tyDInput.bMag2AIVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2AIVInPosSen2 > 0 AND p_tyDISettings.diMag2AIVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2AIVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag2AIVInPosSen2];
	ELSE
		tyDInput.bMag2AIVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3AIVInPosSen1 > 0 AND p_tyDISettings.diMag3AIVInPosSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3AIVInPosSen1	:= a_bPhysicalDI[p_tyDISettings.diMag3AIVInPosSen1];
	ELSE
		tyDInput.bMag3AIVInPosSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3AIVInPosSen2 > 0 AND p_tyDISettings.diMag3AIVInPosSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3AIVInPosSen2	:= a_bPhysicalDI[p_tyDISettings.diMag3AIVInPosSen2];
	ELSE
		tyDInput.bMag3AIVInPosSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1OrientChkSen1 > 0 AND p_tyDISettings.diMag1OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag1OrientChkSen1];
	ELSE
		tyDInput.bMag1OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1OrientChkSen2 > 0 AND p_tyDISettings.diMag1OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag1OrientChkSen2];
	ELSE
		tyDInput.bMag1OrientChkSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2OrientChkSen1 > 0 AND p_tyDISettings.diMag2OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag2OrientChkSen1];
	ELSE
		tyDInput.bMag2OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2OrientChkSen2 > 0 AND p_tyDISettings.diMag2OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag2OrientChkSen2];
	ELSE
		tyDInput.bMag2OrientChkSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3OrientChkSen1 > 0 AND p_tyDISettings.diMag3OrientChkSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3OrientChkSen1	:= a_bPhysicalDI[p_tyDISettings.diMag3OrientChkSen1];
	ELSE
		tyDInput.bMag3OrientChkSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3OrientChkSen2 > 0 AND p_tyDISettings.diMag3OrientChkSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3OrientChkSen2	:= a_bPhysicalDI[p_tyDISettings.diMag3OrientChkSen2];
	ELSE
		tyDInput.bMag3OrientChkSen2	:= FALSE;
	END_IF
	
	//Magazine 1 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen1 > 0 AND p_tyDISettings.diMagConvHeightSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen1];
	ELSE
		tyDInput.bMagConvHeightSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen2 > 0 AND p_tyDISettings.diMagConvHeightSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen2];
	ELSE
		tyDInput.bMagConvHeightSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Height Sensor  
	IF p_tyDISettings.diMagConvHeightSen3 > 0 AND p_tyDISettings.diMagConvHeightSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvHeightSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvHeightSen3];
	ELSE
		tyDInput.bMagConvHeightSen3	:= FALSE;
	END_IF
	
	//Magazine 1 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen1 > 0 AND p_tyDISettings.diMagConvSmallMagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen1];
	ELSE
		tyDInput.bMagConvSmallMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen2 > 0 AND p_tyDISettings.diMagConvSmallMagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen2];
	ELSE
		tyDInput.bMagConvSmallMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Small Sensor  
	IF p_tyDISettings.diMagConvSmallMagSen3 > 0 AND p_tyDISettings.diMagConvSmallMagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvSmallMagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvSmallMagSen3];
	ELSE
		tyDInput.bMagConvSmallMagSen3	:= FALSE;
	END_IF
	
	//Magazine 1 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen1 > 0 AND p_tyDISettings.diMagConvLargeMagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen1];
	ELSE
		tyDInput.bMagConvLargeMagSen1	:= FALSE;
	END_IF
	
	//Magazine 2 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen2 > 0 AND p_tyDISettings.diMagConvLargeMagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen2];
	ELSE
		tyDInput.bMagConvLargeMagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 Large Sensor  
	IF p_tyDISettings.diMagConvLargeMagSen3 > 0 AND p_tyDISettings.diMagConvLargeMagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvLargeMagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvLargeMagSen3];
	ELSE
		tyDInput.bMagConvLargeMagSen3	:= FALSE;
	END_IF
	
	//Magazine 1 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen1 > 0 AND p_tyDISettings.diMagConvCAB717MagSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen1	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen1];
	ELSE
		tyDInput.bMagConvCAB717MagSen1	:= FALSE;
	END_IF

	//Magazine 2 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen2 > 0 AND p_tyDISettings.diMagConvCAB717MagSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen2	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen2];
	ELSE
		tyDInput.bMagConvCAB717MagSen2	:= FALSE;
	END_IF
	
	//Magazine 3 CAB717.2 Sensor  
	IF p_tyDISettings.diMagConvCAB717MagSen3 > 0 AND p_tyDISettings.diMagConvCAB717MagSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagConvCAB717MagSen3	:= a_bPhysicalDI[p_tyDISettings.diMagConvCAB717MagSen3];
	ELSE
		tyDInput.bMagConvCAB717MagSen3	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1SafetyBarExtRS > 0 AND p_tyDISettings.diMag1SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SafetyBarExtRS];
	ELSE
		tyDInput.bMag1SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1SafetyBarRetRS > 0 AND p_tyDISettings.diMag1SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag1SafetyBarRetRS];
	ELSE
		tyDInput.bMag1SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2SafetyBarExtRS > 0 AND p_tyDISettings.diMag2SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SafetyBarExtRS];
	ELSE
		tyDInput.bMag2SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2SafetyBarRetRS > 0 AND p_tyDISettings.diMag2SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag2SafetyBarRetRS];
	ELSE
		tyDInput.bMag2SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3SafetyBarExtRS > 0 AND p_tyDISettings.diMag3SafetyBarExtRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SafetyBarExtRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SafetyBarExtRS];
	ELSE
		tyDInput.bMag3SafetyBarExtRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3SafetyBarRetRS > 0 AND p_tyDISettings.diMag3SafetyBarRetRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3SafetyBarRetRS	:= a_bPhysicalDI[p_tyDISettings.diMag3SafetyBarRetRS];
	ELSE
		tyDInput.bMag3SafetyBarRetRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1WallEngageRS > 0 AND p_tyDISettings.diMag1WallEngageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1WallEngageRS	:= a_bPhysicalDI[p_tyDISettings.diMag1WallEngageRS];
	ELSE
		tyDInput.bMag1WallEngageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag1WallDisengageRS > 0 AND p_tyDISettings.diMag1WallDisengageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1WallDisengageRS	:= a_bPhysicalDI[p_tyDISettings.diMag1WallDisengageRS];
	ELSE
		tyDInput.bMag1WallDisengageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2WallEngageRS > 0 AND p_tyDISettings.diMag2WallEngageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2WallEngageRS	:= a_bPhysicalDI[p_tyDISettings.diMag2WallEngageRS];
	ELSE
		tyDInput.bMag2WallEngageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2WallDisengageRS > 0 AND p_tyDISettings.diMag2WallDisengageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2WallDisengageRS	:= a_bPhysicalDI[p_tyDISettings.diMag2WallDisengageRS];
	ELSE
		tyDInput.bMag2WallDisengageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3WallEngageRS > 0 AND p_tyDISettings.diMag3WallEngageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3WallEngageRS	:= a_bPhysicalDI[p_tyDISettings.diMag3WallEngageRS];
	ELSE
		tyDInput.bMag3WallEngageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3WallDisengageRS > 0 AND p_tyDISettings.diMag3WallDisengageRS <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3WallDisengageRS	:= a_bPhysicalDI[p_tyDISettings.diMag3WallDisengageRS];
	ELSE
		tyDInput.bMag3WallDisengageRS	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diHighMagDetSen1 > 0 AND p_tyDISettings.diHighMagDetSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen1	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen1];
	ELSE
		tyDInput.bHighMagDetSen1	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diHighMagDetSen2 > 0 AND p_tyDISettings.diHighMagDetSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen2	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen2];
	ELSE
		tyDInput.bHighMagDetSen2	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diHighMagDetSen3 > 0 AND p_tyDISettings.diHighMagDetSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bHighMagDetSen3	:= a_bPhysicalDI[p_tyDISettings.diHighMagDetSen3];
	ELSE
		tyDInput.bHighMagDetSen3	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diScanComplSig > 0 AND p_tyDISettings.diScanComplSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.diScanComplSig	:= a_bPhysicalDI[p_tyDISettings.diScanComplSig];
	ELSE
		tyDInput.diScanComplSig	:= FALSE;
	END_IF
	
	CASE p_eLinkAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyDInput.bFleetManagerReady	:= p_tyTagFromMes.bActive;
		McSetAGVCommHardIO:
			//Fleet Manager Active Status
			IF p_tyDISettings.diFleetManagerReady > 0 AND p_tyDISettings.diFleetManagerReady <= UDINT_TO_DINT(p_udiMax) THEN
				tyDInput.bFleetManagerReady	:= a_bPhysicalDI[p_tyDISettings.diFleetManagerReady];
			ELSE
				tyDInput.bFleetManagerReady	:= FALSE;
			END_IF
			
		McSetAGVCommDisabled:
			tyDInput.bFleetManagerReady	:= FALSE;
	END_CASE
	
				
	IF p_bLinkNtParamProjSOTSenPrep OR p_eLinkAGVComProtocol = McSetAGVCommHardIO 
		THEN	
			IF p_bUIAGVSimulationOn = FALSE THEN
					//SOT Configuration
					IF p_tyDISettings.diSOT1Receive > 0 AND p_tyDISettings.diSOT1Receive <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT1Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT1Receive];
					ELSE
						tyDInput.bSOT1Receive	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT1AIVError > 0 AND p_tyDISettings.diSOT1AIVError <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT1AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVError];
					ELSE
						tyDInput.bSOT1AIVError	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT1AIVSizeLarge > 0 AND p_tyDISettings.diSOT1AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT1AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVSizeLarge];
					ELSE
						tyDInput.bSOT1AIVSizeLarge	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT1AIVReady > 0 AND p_tyDISettings.diSOT1AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT1AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVReady];
					ELSE
						tyDInput.bSOT1AIVReady	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT1AIVAvailable > 0 AND p_tyDISettings.diSOT1AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT1AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT1AIVAvailable];
					ELSE
						tyDInput.bSOT1AIVAvailable	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT2Receive > 0 AND p_tyDISettings.diSOT2Receive <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT2Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT2Receive];
					ELSE
						tyDInput.bSOT2Receive	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT2AIVError > 0 AND p_tyDISettings.diSOT2AIVError <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT2AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVError];
					ELSE
						tyDInput.bSOT2AIVError	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT2AIVSizeLarge > 0 AND p_tyDISettings.diSOT2AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT2AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVSizeLarge];
					ELSE
						tyDInput.bSOT2AIVSizeLarge	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT2AIVReady > 0 AND p_tyDISettings.diSOT2AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT2AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVReady];
					ELSE
						tyDInput.bSOT2AIVReady	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT2AIVAvailable > 0 AND p_tyDISettings.diSOT2AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT2AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT2AIVAvailable];
					ELSE
						tyDInput.bSOT2AIVAvailable	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT3Receive > 0 AND p_tyDISettings.diSOT3Receive <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT3Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT3Receive];
					ELSE
						tyDInput.bSOT3Receive	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT3AIVError > 0 AND p_tyDISettings.diSOT3AIVError <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT3AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVError];
					ELSE
						tyDInput.bSOT3AIVError	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT3AIVSizeLarge > 0 AND p_tyDISettings.diSOT3AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT3AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVSizeLarge];
					ELSE
						tyDInput.bSOT3AIVSizeLarge	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT3AIVReady > 0 AND p_tyDISettings.diSOT3AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT3AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVReady];
					ELSE
						tyDInput.bSOT3AIVReady	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT3AIVAvailable > 0 AND p_tyDISettings.diSOT3AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT3AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT3AIVAvailable];
					ELSE
						tyDInput.bSOT3AIVAvailable	:= FALSE;
					END_IF
					
					
					IF p_tyDISettings.diSOT4Receive > 0 AND p_tyDISettings.diSOT4Receive <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT4Receive	:= a_bPhysicalDI[p_tyDISettings.diSOT4Receive];
					ELSE
						tyDInput.bSOT4Receive	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT4AIVError > 0 AND p_tyDISettings.diSOT4AIVError <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT4AIVError	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVError];
					ELSE
						tyDInput.bSOT4AIVError	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT4AIVSizeLarge > 0 AND p_tyDISettings.diSOT4AIVSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT4AIVSizeLarge	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVSizeLarge];
					ELSE
						tyDInput.bSOT4AIVSizeLarge	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT4AIVReady > 0 AND p_tyDISettings.diSOT4AIVReady <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT4AIVReady	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVReady];
					ELSE
						tyDInput.bSOT4AIVReady	:= FALSE;
					END_IF
					
					IF p_tyDISettings.diSOT4AIVAvailable > 0 AND p_tyDISettings.diSOT4AIVAvailable <= UDINT_TO_DINT(p_udiMax) THEN
						tyDInput.bSOT4AIVAvailable	:= a_bPhysicalDI[p_tyDISettings.diSOT4AIVAvailable];
					ELSE
						tyDInput.bSOT4AIVAvailable	:= FALSE;
					END_IF
				ELSE
					tyDInput.bSOT1Receive	:= p_tySOTSimulate1.tyBtnInPos;
					tyDInput.bSOT1AIVError	:= p_tySOTSimulate1.tyBtnError;
					tyDInput.bSOT1AIVReady		:= p_tySOTSimulate1.tyBtnRdy;
					tyDInput.bSOT1AIVAvailable	:= p_tySOTSimulate1.tyBtnAvail;
					
					tyDInput.bSOT2Receive	:= p_tySOTSimulate2.tyBtnInPos;
					tyDInput.bSOT2AIVError	:= p_tySOTSimulate2.tyBtnError;
					tyDInput.bSOT2AIVReady		:= p_tySOTSimulate2.tyBtnRdy;
					tyDInput.bSOT2AIVAvailable	:= p_tySOTSimulate2.tyBtnAvail;
					
					tyDInput.bSOT3Receive	:= p_tySOTSimulate3.tyBtnInPos;
					tyDInput.bSOT3AIVError	:= p_tySOTSimulate3.tyBtnError;
					tyDInput.bSOT3AIVReady		:= p_tySOTSimulate3.tyBtnRdy;
					tyDInput.bSOT3AIVAvailable	:= p_tySOTSimulate3.tyBtnAvail;
					
				END_IF
		
	ELSIF p_bLinkNtParamProjSOTSenPrep = FALSE THEN
		
		CASE p_eLinkAGVComProtocol OF
			McSetAGVCommOPCUA:
				IF p_bUIAGVSimulationOn = FALSE THEN
					tyDInput.bFleetManagerReady	:= p_tyTagFromMes.bActive;
					
					tyDInput.bSOT1Receive := TRUE;
					tyDInput.bSOT1AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[1].bError;
					tyDInput.bSOT1AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[1].bSizeLarge;
					tyDInput.bSOT1AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[1].bReady;
					tyDInput.bSOT1AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[1].bAvailable;
					
					tyDInput.bSOT2Receive := TRUE;
					tyDInput.bSOT2AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[2].bError;
					tyDInput.bSOT2AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[2].bSizeLarge;
					tyDInput.bSOT2AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[2].bReady;
					tyDInput.bSOT2AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[2].bAvailable;
					
					tyDInput.bSOT3Receive := TRUE;
					tyDInput.bSOT3AIVError := p_tyTagFromMes.tyTagStatOfPlatforms[3].bError;
					tyDInput.bSOT3AIVSizeLarge := p_tyTagFromMes.tyTagStatOfPlatforms[3].bSizeLarge;
					tyDInput.bSOT3AIVReady := p_tyTagFromMes.tyTagStatOfPlatforms[3].bReady;
					tyDInput.bSOT3AIVAvailable := p_tyTagFromMes.tyTagStatOfPlatforms[3].bAvailable;
			
				ELSE
					tyDInput.bSOT1Receive	:= p_tySOTSimulate1.tyBtnInPos;
					tyDInput.bSOT1AIVError	:= p_tySOTSimulate1.tyBtnError;
					tyDInput.bSOT1AIVReady		:= p_tySOTSimulate1.tyBtnRdy;
					tyDInput.bSOT1AIVAvailable	:= p_tySOTSimulate1.tyBtnAvail;
				
					tyDInput.bSOT2Receive	:= p_tySOTSimulate2.tyBtnInPos;
					tyDInput.bSOT2AIVError	:= p_tySOTSimulate2.tyBtnError;
					tyDInput.bSOT2AIVReady		:= p_tySOTSimulate2.tyBtnRdy;
					tyDInput.bSOT2AIVAvailable	:= p_tySOTSimulate2.tyBtnAvail;
				
					tyDInput.bSOT3Receive	:= p_tySOTSimulate3.tyBtnInPos;
					tyDInput.bSOT3AIVError	:= p_tySOTSimulate3.tyBtnError;
					tyDInput.bSOT3AIVReady		:= p_tySOTSimulate3.tyBtnRdy;
					tyDInput.bSOT3AIVAvailable	:= p_tySOTSimulate3.tyBtnAvail;
				
				END_IF
			
			
			McSetAGVCommDisabled:
				tyDInput.bSOT1Receive := FALSE;
				tyDInput.bSOT1AIVError := FALSE;
				tyDInput.bSOT1AIVSizeLarge := FALSE;
				tyDInput.bSOT1AIVReady := FALSE;
				tyDInput.bSOT1AIVAvailable := FALSE;
					
				tyDInput.bSOT2Receive := FALSE;
				tyDInput.bSOT2AIVError := FALSE;
				tyDInput.bSOT2AIVSizeLarge := FALSE;
				tyDInput.bSOT2AIVReady := FALSE;
				tyDInput.bSOT2AIVAvailable := FALSE;
					
				tyDInput.bSOT3Receive := FALSE;
				tyDInput.bSOT3AIVError := FALSE;
				tyDInput.bSOT3AIVSizeLarge := FALSE;
				tyDInput.bSOT3AIVReady := FALSE;
				tyDInput.bSOT3AIVAvailable	:= FALSE;
			END_CASE
		END_IF		
	
	IF p_tyDISettings.diPusherExtSlwSen > 0 AND p_tyDISettings.diPusherExtSlwSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPusherExtSlwSen	:= a_bPhysicalDI[p_tyDISettings.diPusherExtSlwSen];
	ELSE
		tyDInput.bPusherExtSlwSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diPusherRetSlwSen > 0 AND p_tyDISettings.diPusherRetSlwSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bPusherRetSlwSen	:= a_bPhysicalDI[p_tyDISettings.diPusherRetSlwSen];
	ELSE
		tyDInput.bPusherRetSlwSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMtrPshrTorqueSig > 0 AND p_tyDISettings.diMtrPshrTorqueSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMtrPshrTorqueSig	:= a_bPhysicalDI[p_tyDISettings.diMtrPshrTorqueSig];
	ELSE
		tyDInput.bMtrPshrTorqueSig	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMtrPshrAlmSig > 0 AND p_tyDISettings.diMtrPshrAlmSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMtrPshrAlmSig	:= a_bPhysicalDI[p_tyDISettings.diMtrPshrAlmSig];
	ELSE
		tyDInput.bMtrPshrAlmSig	:= TRUE;
	END_IF
				
	IF p_tyDISettings.diMagWidthChkSen > 0 AND p_tyDISettings.diMagWidthChkSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMagWidthChkSen	:= a_bPhysicalDI[p_tyDISettings.diMagWidthChkSen];
	ELSE
		tyDInput.bMagWidthChkSen	:= TRUE;
	END_IF
	
	//InletStopper Lane A
	IF p_tyDISettings.diInletStopperASen > 0 AND p_tyDISettings.diInletStopperASen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bInletStopperASen	:= a_bPhysicalDI[p_tyDISettings.diInletStopperASen];
	ELSE
		tyDInput.bInletStopperASen	:= FALSE;
	END_IF

	
	IF p_tyDISettings.diUSWidthChkSen > 0 AND p_tyDISettings.diUSWidthChkSen <= UDINT_TO_DINT(p_udiMax) THEN
		fbConvUSWidthSenSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvUSWidthChkSenOnTm);
		fbConvUSWidthSenSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvUSWidthChkSenOffTm);
		fbConvUSWidthSenSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diUSWidthChkSen]);
		IF p_tyNtParamCurr.bUSWidthChkPrep AND p_bMcParamUSWidthChkEn = TRUE THEN		
			tyDInput.bUSWidthChkSen	:= fbConvUSWidthSenSigFltr.bSigOut;
		ELSE
			tyDInput.bUSWidthChkSen	:= FALSE;
		END_IF
	ELSE
		tyDInput.bUSWidthChkSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diConvLineAInletSen > 0 AND p_tyDISettings.diConvLineAInletSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbConvLineAInletSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvLineAInletSenOnTm);
		fbConvLineAInletSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvLineAInletSenOffTm);
		fbConvLineAInletSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvLineAInletSen]);
		tyDInput.bConvLineAInletSen	:= fbConvLineAInletSigFltr.bSigOut;
	ELSE
		tyDInput.bConvLineAInletSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diConvLineBInletSen > 0 AND p_tyDISettings.diConvLineBInletSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbConvLineBInletSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diConvLineBInletSenOnTm);
		fbConvLineBInletSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diConvLineBInletSenOffTm);
		fbConvLineBInletSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diConvLineBInletSen]);
		tyDInput.bConvLineBInletSen	:= fbConvLineBInletSigFltr.bSigOut;
	ELSE
		tyDInput.bConvLineBInletSen	:= FALSE;
	END_IF
	
	//MagConv Top and Bottom 
	//Lane1------------
	IF p_tyDISettings.diInMagConvEntSen > 0 AND p_tyDISettings.diInMagConvEntSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConvEntSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConvEntSenOnTm);
		fbInMagConvEntSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConvEntSenOffTm);
		fbInMagConvEntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConvEntSen]);
		tyDInput.bInMagConvEntSen		:= fbInMagConvEntSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConvEntSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInMagConvExtSen > 0 AND p_tyDISettings.diInMagConvExtSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConvExtSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConvExtSenOnTm);
		fbInMagConvExtSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConvExtSenOffTm);
		fbInMagConvExtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConvExtSen]);
		tyDInput.bInMagConvExtSen		:= fbInMagConvExtSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConvExtSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInMagConvMidSen > 0 AND p_tyDISettings.diInMagConvMidSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConvMidSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConvMidSenOnTm);
		fbInMagConvMidSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConvMidSenOffTm);
		fbInMagConvMidSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConvMidSen]);
		tyDInput.bInMagConvMidSen		:= fbInMagConvMidSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConvMidSen		:= FALSE;
	END_IF

	IF p_tyDISettings.diOutMagConvEntSen > 0 AND p_tyDISettings.diOutMagConvEntSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConvEntSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConvEntSenOnTm);
		fbOutMagConvEntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConvEntSenOffTm);
		fbOutMagConvEntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConvEntSen]);
		tyDInput.bOutMagConvEntSen		:= fbOutMagConvEntSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConvEntSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutMagConvExtSen > 0 AND p_tyDISettings.diOutMagConvExtSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConvExtSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConvExtSenOnTm);
		fbOutMagConvExtSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConvExtSenOffTm);
		fbOutMagConvExtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConvExtSen]);
		tyDInput.bOutMagConvExtSen		:= fbOutMagConvExtSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConvExtSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutMagConvMidSen > 0 AND p_tyDISettings.diOutMagConvMidSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConvMidSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConvMidSenOnTm);
		fbOutMagConvMidSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConvMidSenOffTm);
		fbOutMagConvMidSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConvMidSen]);
		tyDInput.bOutMagConvMidSen		:= fbOutMagConvMidSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConvMidSen		:= FALSE;
	END_IF
		
	IF p_tyDISettings.diLifterLmtSW > 0 AND p_tyDISettings.diLifterLmtSW <= UDINT_TO_DINT(p_udiMax) THEN
		fbMagConv1PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
		fbMagConv1PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
		fbMagConv1PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diLifterLmtSW]);
		tyDInput.bLifterLmtSW			:= fbMagConv1PresentSigFltr.bSigOut;
		tyDInput.bMagPresentSen1		:= fbMagConv1PresentSigFltr.bSigOut;
	ELSIF p_tyDISettings.diMagPresentSen1 > 0 AND p_tyDISettings.diMagPresentSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifterLmtSW			:= FALSE;
	ELSE
		tyDInput.bLifterLmtSW			:= FALSE;
		tyDInput.bMagPresentSen1		:= FALSE;
	END_IF

	//Lane 2 --------------	
	IF p_tyDISettings.diInMagConv2EntSen > 0 AND p_tyDISettings.diInMagConv2EntSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConv2EntSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConv2EntSenOnTm);
		fbInMagConv2EntSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConv2EntSenOffTm);
		fbInMagConv2EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConv2EntSen]);
		tyDInput.bInMagConv2EntSen		:= fbInMagConv2EntSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConv2EntSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInMagConv2ExtSen > 0 AND p_tyDISettings.diInMagConv2ExtSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConv2ExtSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConv2ExtSenOnTm);
		fbInMagConv2ExtSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConv2ExtSenOffTm);
		fbInMagConv2ExtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConv2ExtSen]);
		tyDInput.bInMagConv2ExtSen		:= fbInMagConv2ExtSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConv2ExtSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diInMagConv2MidSen > 0 AND p_tyDISettings.diInMagConv2MidSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbInMagConv2MidSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diInMagConv2MidSenOnTm);
		fbInMagConv2MidSigFltr.tSigOffFltrTm		:= DINT_TO_TIME(p_diInMagConv2MidSenOffTm);
		fbInMagConv2MidSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diInMagConv2MidSen]);
		tyDInput.bInMagConv2MidSen		:= fbInMagConv2MidSigFltr.bSigOut;
	ELSE
		tyDInput.bInMagConv2MidSen		:= FALSE;
	END_IF

	IF p_tyDISettings.diOutMagConv2EntSen > 0 AND p_tyDISettings.diOutMagConv2EntSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConv2EntSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConv2EntSenOnTm);
		fbOutMagConv2EntSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConv2EntSenOffTm);
		fbOutMagConv2EntSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConv2EntSen]);
		tyDInput.bOutMagConv2EntSen		:= fbOutMagConv2EntSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConv2EntSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutMagConv2ExtSen > 0 AND p_tyDISettings.diOutMagConv2ExtSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConv2ExtSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConv2ExtSenOnTm);
		fbOutMagConv2ExtSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConv2ExtSenOffTm);
		fbOutMagConv2ExtSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConv2ExtSen]);
		tyDInput.bOutMagConv2ExtSen		:= fbOutMagConv2ExtSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConv2ExtSen		:= FALSE;
	END_IF
	
	IF p_tyDISettings.diOutMagConv2MidSen > 0 AND p_tyDISettings.diOutMagConv2MidSen <= UDINT_TO_DINT(p_udiMax) THEN
		//Digital Input Filter
		fbOutMagConv2MidSigFltr.tSigOnFltrTm		:= DINT_TO_TIME(p_diOutMagConv2MidSenOnTm);
		fbOutMagConv2MidSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diOutMagConv2MidSenOffTm);
		fbOutMagConv2MidSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diOutMagConv2MidSen]);
		tyDInput.bOutMagConv2MidSen		:= fbOutMagConv2MidSigFltr.bSigOut;
	ELSE
		tyDInput.bOutMagConv2MidSen		:= FALSE;
	END_IF
	//## -MagConv Top and Bottom 

	IF p_tyDISettings.diLifter2LmtSW > 0 AND p_tyDISettings.diLifter2LmtSW <= UDINT_TO_DINT(p_udiMax) THEN
		fbMagConv2PresentSigFltr.tSigOnFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOnTm);
		fbMagConv2PresentSigFltr.tSigOffFltrTm	:= DINT_TO_TIME(p_diMagConvPresentSenOffTm);
		fbMagConv2PresentSigFltr(bSigIn := a_bPhysicalDI[p_tyDISettings.diLifter2LmtSW]);
		tyDInput.bLifter2LmtSW			:= fbMagConv2PresentSigFltr.bSigOut;
		tyDInput.bMagPresentSen2		:= fbMagConv2PresentSigFltr.bSigOut;
	ELSIF p_tyDISettings.diMagPresentSen2 > 0 AND p_tyDISettings.diMagPresentSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bLifter2LmtSW			:= FALSE;
	ELSE
		tyDInput.bLifter2LmtSW			:= FALSE;
		tyDInput.bMagPresentSen2		:= FALSE;
	END_IF
	
	//motor overload
	IF p_tyDISettings.diMtrOverloadSig > 0 AND p_tyDISettings.diMtrOverloadSig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMtrOverloadSig	:= a_bPhysicalDI[p_tyDISettings.diMtrOverloadSig];
	ELSE
		tyDInput.bMtrOverloadSig	:= TRUE;
	END_IF
	
	//For Simulation Only
	IF DiagCpuIsSimulated() = TRUE THEN
		tyDInput.bSafetyRlySig			:= TRUE;
		tyDInput.bEStopSig				:= TRUE;
		tyDInput.bCoverSWSig			:= TRUE;
		tyDInput.bLifterTimingBeltSen	:= TRUE;
		tyDInput.bLifterSafetyLmtSW1	:= TRUE;
		tyDInput.bLifterSafetyLmtSW2	:= TRUE;
		tyDInput.bCurtainSafetySig		:= TRUE;
		tyDInput.bCurtainSen			:= TRUE;
	END_IF
	
	//Estop
	IF (tyDInput.bEStopSig = FALSE) AND (eStatus1 <> Error) THEN
		eStatus1	:= Error;
		udiStatus1	:= 10000;	//Emergency Stop Button Pressed
	END_IF
	
	//Cover Switch
	IF (tyDInput.bCoverSWSig = FALSE) AND (eStatus2 <> Error) THEN
		eStatus2	:= Error;
		udiStatus2	:= 10001;	//Door / Conver Opened
	END_IF
	
	//Lifter Timing Belt
	fbInitializedTm(IN:= TRUE);
	IF fbInitializedTm.Q THEN
		IF (tyDInput.bLifterTimingBeltSen = FALSE) AND (eStatus3 <> Error) THEN
			eStatus3	:= Error;
			udiStatus3	:= 10002;	//Lifter Timing Belt Broken
		END_IF
	END_IF
	
	//Lifter Safety Limit Switch
	IF (tyDInput.bLifterSafetyLmtSW1 = FALSE OR tyDInput.bLifterSafetyLmtSW2 = FALSE) AND (eStatus4 <> Error) THEN
		eStatus4	:= Error;
		udiStatus4	:= 10003;	//Lifter Reached Safety Limit Switch
	END_IF
	
	IF p_tyDISettings.diMag1FixedClampSen > 0 AND p_tyDISettings.diMag1FixedClampSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag1FixedClampSen	:= a_bPhysicalDI[p_tyDISettings.diMag1FixedClampSen];
	ELSE
		tyDInput.bMag1FixedClampSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag2FixedClampSen > 0 AND p_tyDISettings.diMag2FixedClampSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag2FixedClampSen	:= a_bPhysicalDI[p_tyDISettings.diMag2FixedClampSen];
	ELSE
		tyDInput.bMag2FixedClampSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diMag3FixedClampSen > 0 AND p_tyDISettings.diMag3FixedClampSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bMag3FixedClampSen	:= a_bPhysicalDI[p_tyDISettings.diMag3FixedClampSen];
	ELSE
		tyDInput.bMag3FixedClampSen	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diCurtainSen > 0 AND p_tyDISettings.diCurtainSen <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCurtainSen	:= a_bPhysicalDI[p_tyDISettings.diCurtainSen];
	ELSE
		tyDInput.bCurtainSen	:= TRUE;//Changed FALSE;
	END_IF
	
	IF p_tyDISettings.diCurtainSenPB > 0 AND p_tyDISettings.diCurtainSenPB <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCurtainSenPB	:= a_bPhysicalDI[p_tyDISettings.diCurtainSenPB];
	ELSE
		tyDInput.bCurtainSenPB	:= FALSE;
	END_IF
	
	IF p_tyDISettings.diCurtainSafetySig > 0 AND p_tyDISettings.diCurtainSafetySig <= UDINT_TO_DINT(p_udiMax) THEN
		tyDInput.bCurtainSafetySig	:= a_bPhysicalDI[p_tyDISettings.diCurtainSafetySig];
	ELSE
		tyDInput.bCurtainSafetySig	:= TRUE;
	END_IF
	
	//Only For Curtain Sensor Preparation
	IF p_bCurtainSenPrep THEN
		fbCurtainSafetyRstTm(IN := NOT(p_bRstCurtainSen));
		IF (NOT tyDInput.bCurtainSafetySig) AND (eStatus6 <> Error) AND fbCurtainSafetyRstTm.Q
			AND (p_tyDO.bBypCurtainSen = FALSE) AND p_bRstCurtainSen = FALSE THEN
			
			IF NOT tyDInput.bSafetyRlySig THEN
			ELSE	
			eStatus6	:= Error;
			udiStatus6	:= 10006;
			END_IF	
		END_IF
	END_IF
	
//	IF p_bCurtainSenPrep AND tyDInput.bCurtainSafetySig = FALSE AND (eStatus6 <> Error) AND p_tyDO.bBypCurtainSen = FALSE 
//		AND (p_bOpsRun OR p_bManual) THEN 
//		eStatus6	:= Error;
//		udiStatus6	:= 10006;	//Curtain Sensor Activated
//	END_IF
	
	//Motor signal
//	IF (tyDInput.bMtrOverloadSig = FALSE ) AND (eStatus5 <> Error) THEN
//		eStatus5	:= Error;
//		udiStatus5	:= 10005;	//Motor overload signal activated.
//	END_IF
	
	//Safety Relay
	IF p_bLinkStartupRun THEN
		fbSafetyRlyRstTm(IN := NOT(p_bRstErrSafetyRlyRst));
		IF (tyDInput.bSafetyRlySig = FALSE) AND (eStatus5 <> Error AND (eStatus1 <> Error AND eStatus2 <> Error)) AND fbSafetyRlyRstTm.Q  THEN
			bSafetySigErrNoBuz := TRUE;
		END_IF
	ELSIF bSafetySigErrNoBuz = FALSE THEN
		fbSafetyRlyRstTm(IN := NOT(p_bRstErrSafetyRlyRst));
		IF (tyDInput.bSafetyRlySig = FALSE) AND (eStatus5 <> Error AND (eStatus1 <> Error AND eStatus2 <> Error)) AND fbSafetyRlyRstTm.Q AND tyDInput.bEStopSig AND tyDInput.bCoverSWSig THEN
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
