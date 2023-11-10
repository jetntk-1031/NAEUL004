(** 2019-01-07 **)
ACTION Act_Link:
	
	(*IF EDGEPOS(p_tyLinkUSSMEMA1AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA1AlmData.sProgNm	:= 'Mag1_1';
		p_tyLinkUSSMEMA1AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkUSSMEMA2AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA2AlmData.sProgNm	:= 'Mag2_1';
		p_tyLinkUSSMEMA2AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkUSSMEMA3AlmData.udiCode <> 0) THEN
		p_tyLinkUSSMEMA3AlmData.sProgNm	:= 'Mag3_1';
		p_tyLinkUSSMEMA3AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA1AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA1AlmData.sProgNm	:= 'Mag1_2';
		p_tyLinkDSSMEMA1AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA2AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA2AlmData.sProgNm	:= 'Mag2_2';
		p_tyLinkDSSMEMA2AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF
	
	IF EDGEPOS(p_tyLinkDSSMEMA3AlmData.udiCode <> 0) THEN
		p_tyLinkDSSMEMA3AlmData.sProgNm	:= 'Mag3_2';
		p_tyLinkDSSMEMA3AlmData.sAlmMsg	:= 'Pushing Board Failed';
	END_IF*)
	
	//Index 1 For Internal Use
	
	pa_tyAlmData[2]		:= p_tyLinkUsrFolderAlmData;
	pa_tyAlmData[3]		:= p_tyLinkLibVerAlmData;
	pa_tyAlmData[4]		:= p_tyLinkTimeAlmData;
	pa_tyAlmData[5]		:= p_tyLinkTimeAlmData1;
	pa_tyAlmData[6]		:= p_tyLinkHWInfoAlmData;
	pa_tyAlmData[7]		:= p_tyLinkProdRcpAlmData;
	pa_tyAlmData[8]		:= p_tyLinkMpProdRcpAlmData;
	pa_tyAlmData[9]		:= p_tyLinkMagRcpAlmData;
	pa_tyAlmData[10]	:= p_tyLinkMcParamAlmData;
	pa_tyAlmData[11]	:= p_tyLinkNtParamAlmData;
	pa_tyAlmData[12]	:= p_tyLinkUsrMgmtAlmData;
	pa_tyAlmData[13]	:= p_tyLinkBuffer1AlmData;
	pa_tyAlmData[14]	:= p_tyLinkBuffer2AlmData;
	pa_tyAlmData[15]	:= p_tyLinkBuffer3AlmData;
	pa_tyAlmData[16]	:= p_tyLinkUSSMEMAAAlmData;
	pa_tyAlmData[17]	:= p_tyLinkUSSMEMABAlmData;
	pa_tyAlmData[18]	:= p_tyLinkUSSMEMA1AlmData;
	pa_tyAlmData[19]	:= p_tyLinkUSSMEMA2AlmData;
	pa_tyAlmData[20]	:= p_tyLinkUSSMEMA3AlmData;
	pa_tyAlmData[21]	:= p_tyLinkDSSMEMA1AlmData;
	pa_tyAlmData[22]	:= p_tyLinkDSSMEMA2AlmData;
	pa_tyAlmData[23]	:= p_tyLinkDSSMEMA3AlmData;
	pa_tyAlmData[24]	:= p_tyLinkInShutterAlmData;
	pa_tyAlmData[25]	:= p_tyLinkOutShutterAlmData;
	pa_tyAlmData[26]	:= p_tyLinkStopperAAlmData;
	pa_tyAlmData[27]	:= p_tyLinkStopperBAlmData;
	pa_tyAlmData[28]	:= p_tyLinkPshrConvAlmData;
	pa_tyAlmData[29]	:= p_tyLinkMagConv1AlmData;
	pa_tyAlmData[30]	:= p_tyLinkMagConv2AlmData;
	pa_tyAlmData[31]	:= p_tyLinkMagConv3AlmData;
	pa_tyAlmData[32]	:= p_tyLinkAWOpenAlmData;
	pa_tyAlmData[33]	:= p_tyLinkAWOpenAlmData1;
	pa_tyAlmData[34]	:= p_tyLinkAWOpenAlmData2;
	pa_tyAlmData[35]	:= p_tyLinkAWOpenAlmData3;
	pa_tyAlmData[36]	:= p_tyLinkTravAlmData;
	pa_tyAlmData[37]	:= p_tyLinkTravAlmData1;
	pa_tyAlmData[38]	:= p_tyLinkTravAlmData2;
	pa_tyAlmData[39]	:= p_tyLinkTravAlmData3;
	pa_tyAlmData[40]	:= p_tyLinkLifterBtmAlmData;
	pa_tyAlmData[41]	:= p_tyLinkLifterBtmAlmData1;
	pa_tyAlmData[42]	:= p_tyLinkLifterBtmAlmData2;
	pa_tyAlmData[43]	:= p_tyLinkLifterBtmAlmData3;
	pa_tyAlmData[44]	:= p_tyLinkDIAlmData1;
	pa_tyAlmData[45]	:= p_tyLinkDIAlmData2;
	pa_tyAlmData[46]	:= p_tyLinkDIAlmData3;
	pa_tyAlmData[47]	:= p_tyLinkDIAlmData4;
	pa_tyAlmData[48]	:= p_tyLinkAGVMag1AlmData;
	pa_tyAlmData[49]	:= p_tyLinkAGVMag2AlmData;
	pa_tyAlmData[50]	:= p_tyLinkAGVMag3AlmData;
	pa_tyAlmData[51]	:= p_tyLinkHermesAlmData;
	pa_tyAlmData[52]	:= p_tyLinkUSHermesAAlmData;
	pa_tyAlmData[53]	:= p_tyLinkUSHermesAAlmData1;
	pa_tyAlmData[54]	:= p_tyLinkUSHermesAAlmData2;
	pa_tyAlmData[55]	:= p_tyLinkUSHermesAAlmData3;
	pa_tyAlmData[56]	:= p_tyLinkUSHermesAAlmData4;
	pa_tyAlmData[57]	:= p_tyLinkUSHermesAInfoData;
	pa_tyAlmData[58]	:= p_tyLinkUSHermesBAlmData;
	pa_tyAlmData[59]	:= p_tyLinkUSHermesBAlmData1;
	pa_tyAlmData[60]	:= p_tyLinkUSHermesBAlmData2;
	pa_tyAlmData[61]	:= p_tyLinkUSHermesBAlmData3;
	pa_tyAlmData[62]	:= p_tyLinkUSHermesBAlmData4;
	pa_tyAlmData[63]	:= p_tyLinkUSHermesBInfoData;
	pa_tyAlmData[64]	:= p_tyLinkRmtHermesAlmData;
	pa_tyAlmData[65]	:= p_tyLinkRmtHermesAlmData1;
	pa_tyAlmData[66]	:= p_tyLinkRmtHermesAlmData2;
	pa_tyAlmData[67]	:= p_tyLinkRmtHermesAlmData3;
	pa_tyAlmData[68]	:= p_tyLinkLFLeaderAlmData;
	pa_tyAlmData[69]	:= p_tyLinkLFFollowerAlmData;
	pa_tyAlmData[70]	:= p_tyLinkLFFollowerInfoData;
	pa_tyAlmData[71]	:= p_tyLinkLFFollowerInfoData1;
	pa_tyAlmData[72]	:= p_tyLinkFollower1AlmData;
	pa_tyAlmData[73]	:= p_tyLinkFollower1InfoData;
	pa_tyAlmData[74]	:= p_tyLinkFollower1InfoData1;
	pa_tyAlmData[75]	:= p_tyLinkFollower2AlmData;
	pa_tyAlmData[76]	:= p_tyLinkFollower2InfoData;
	pa_tyAlmData[77]	:= p_tyLinkFollower2InfoData1;
	pa_tyAlmData[78]	:= p_tyLinkLCSMngRcpAlmData;
	pa_tyAlmData[79]	:= p_tyLinkLCSLFAlmData;
	pa_tyAlmData[80]	:= p_tyLinkLCSLFInfoData;
	pa_tyAlmData[81]	:= p_tyLinkOpsTravLifULAlmData;
//	pa_tyAlmData[82]	:= p_tyLinkOpsMagUL1AlmData;
//	pa_tyAlmData[83]	:= p_tyLinkOpsMagUL1AlmData1;
//	pa_tyAlmData[84]	:= p_tyLinkOpsMagUL2AlmData;
//	pa_tyAlmData[85]	:= p_tyLinkOpsMagUL2AlmData1;
//	pa_tyAlmData[86]	:= p_tyLinkOpsMagUL3AlmData;
//	pa_tyAlmData[87]	:= p_tyLinkOpsMagUL3AlmData1;
	pa_tyAlmData[82]	:= p_tyLinkOpsLifMagULAlmData;
	pa_tyAlmData[83]	:= p_tyLinkOpsLifMagULAlmData1;
	pa_tyAlmData[84]	:= p_tyLinkOpsLifMagULAlmData2;
	
	pa_tyAlmData[88]	:= p_tyLinkOpsMagConvUL1AlmData;
	pa_tyAlmData[89]	:= p_tyLinkOpsMagConvUL1AlmData1;
	pa_tyAlmData[90]	:= p_tyLinkOpsMagConvUL2AlmData;
	pa_tyAlmData[91]	:= p_tyLinkOpsMagConvUL2AlmData1;
	pa_tyAlmData[92]	:= p_tyLinkOpsMagConvUL3AlmData;
	pa_tyAlmData[93]	:= p_tyLinkOpsMagConvUL3AlmData1;
	pa_tyAlmData[94]	:= p_tyLinkUSHermesAAlmData5;
	pa_tyAlmData[95]	:= p_tyLinkUSHermesBAlmData5;
	pa_tyAlmData[96]	:= p_tyLinkMcAlarmData;
	pa_tyAlmData[97]	:= p_tyLinkMag1SafetyBarAlmData;
	pa_tyAlmData[98]	:= p_tyLinkMag2SafetyBarAlmData;
	pa_tyAlmData[99]	:= p_tyLinkMag3SafetyBarAlmData;
	pa_tyAlmData[100]	:= p_tyLinkMag1AWEngageAlmData;
	pa_tyAlmData[101]	:= p_tyLinkMag2AWEngageAlmData;
	pa_tyAlmData[102]	:= p_tyLinkMag3AWEngageAlmData;
	pa_tyAlmData[103]	:= p_tyLinkMag1SafetyBarAlmData;
	pa_tyAlmData[104]	:= p_tyLinkMag2SafetyBarAlmData;
	pa_tyAlmData[105]	:= p_tyLinkMag3SafetyBarAlmData;
	pa_tyAlmData[106]	:= p_tyLinkMag1AWEngageAlmData;
	pa_tyAlmData[107]	:= p_tyLinkMag2AWEngageAlmData;
	pa_tyAlmData[108]	:= p_tyLinkMag3AWEngageAlmData;
	pa_tyAlmData[109]	:= p_tyLinkMagAWOpen1AlmData;
	pa_tyAlmData[110]	:= p_tyLinkMagAWOpen1AlmData1;
	pa_tyAlmData[111]	:= p_tyLinkMagAWOpen1AlmData2;
	pa_tyAlmData[112]	:= p_tyLinkMagAWOpen1AlmData3;
	pa_tyAlmData[113]	:= p_tyLinkMagAWOpen2AlmData;
	pa_tyAlmData[114]	:= p_tyLinkMagAWOpen2AlmData1;
	pa_tyAlmData[115]	:= p_tyLinkMagAWOpen2AlmData2;
	pa_tyAlmData[116]	:= p_tyLinkMagAWOpen2AlmData3;
	pa_tyAlmData[117]	:= p_tyLinkMagAWOpen3AlmData;
	pa_tyAlmData[118]	:= p_tyLinkMagAWOpen3AlmData1;
	pa_tyAlmData[119]	:= p_tyLinkMagAWOpen3AlmData2;
	pa_tyAlmData[120]	:= p_tyLinkMagAWOpen3AlmData3;
	pa_tyAlmData[121]	:= p_tyLinkMcAlarmData;
	pa_tyAlmData[122]	:= p_tyLinkUSSOT1AlmData;
	pa_tyAlmData[123]	:= p_tyLinkUSSOT2AlmData;
	pa_tyAlmData[124]	:= p_tyLinkUSSOT3AlmData;
	pa_tyAlmData[125]	:= p_tyLinkDSSOT1AlmData;
	pa_tyAlmData[126]	:= p_tyLinkDSSOT2AlmData;
	pa_tyAlmData[127]	:= p_tyLinkDSSOT3AlmData;
	pa_tyAlmData[128]	:= p_tyLinkMag1SelClampAlmData;
	pa_tyAlmData[129]	:= p_tyLinkMag2SelClampAlmData;
	pa_tyAlmData[130]	:= p_tyLinkMag3SelClampAlmData;
	pa_tyAlmData[131]	:= p_tyLinkAWPushOrPullerAlmData;
	pa_tyAlmData[132]	:= p_tyLinkAWPushOrPullerAlmData1;
	pa_tyAlmData[133]	:= p_tyLinkAWPushOrPullerAlmData2;
	pa_tyAlmData[134]	:= p_tyLinkAWPushOrPullerAlmData3;
	pa_tyAlmData[135]	:= p_tyLinkMtrPshrAlmData;
	pa_tyAlmData[136]	:= p_tyLinkAGVAlmData1;
	pa_tyAlmData[150]	:= p_tyLinkDIAlmData5;



	IF p_bNtParamProjMagConvLane1Prep AND p_bNtParamProjMagConvLane2Prep THEN
		pa_tyAlmData[167]	:= p_tyLinkOpsInMagConvAlmData;
		pa_tyAlmData[168]	:= p_tyLinkOpsOutMagConvAlmData;
	END_IF 
	IF p_bNtParamProjMagConvLane1Prep THEN //customized 
		pa_tyAlmData[151]	:= p_tyLinkTopEntStprAlmData; //MagConv Lane1
		pa_tyAlmData[152]	:= p_tyLinkTopMidStprAlmData;
		pa_tyAlmData[153]	:= p_tyLinkTopExtStprAlmData;
		pa_tyAlmData[154]	:= p_tyLinkBtmMidStprAlmData;
		pa_tyAlmData[155]	:= p_tyLinkBtmExtStprAlmData;
		pa_tyAlmData[161]	:= p_tyLinkInMagConvAlmData;
		pa_tyAlmData[162]	:= p_tyLinkOutMagConvAlmData;
		pa_tyAlmData[165]	:= p_tyLinkLifterMagConvAlmData;
	END_IF
	IF  p_bNtParamProjMagConvLane2Prep  THEN  
		pa_tyAlmData[156]	:= p_tyLinkTopEntStpr2AlmData; //MagConv Lane2
		pa_tyAlmData[157]	:= p_tyLinkTopMidStpr2AlmData;
		pa_tyAlmData[158]	:= p_tyLinkTopExtStpr2AlmData;
		pa_tyAlmData[159]	:= p_tyLinkBtmMidStpr2AlmData;
		pa_tyAlmData[160]	:= p_tyLinkBtmExtStpr2AlmData;
		pa_tyAlmData[163]	:= p_tyLinkInMagConv2AlmData;
		pa_tyAlmData[164]	:= p_tyLinkOutMagConv2AlmData;
		pa_tyAlmData[166]	:= p_tyLinkLifterMagConv2AlmData;
	END_IF
	IF p_bNtParamProjLifter2Prep THEN
		pa_tyAlmData[169]	:= p_tyLinkLifter2AlmData;
		pa_tyAlmData[170]	:= p_tyLinkLifter2AlmData1;
		pa_tyAlmData[171]	:= p_tyLinkLifter2AlmData2;
		pa_tyAlmData[172]	:= p_tyLinkLifter2AlmData3;	
	END_IF
	pa_tyAlmData[173]	:= p_tyLinkPPAlmData;
	pa_tyAlmData[174]	:= p_tyLinkPPAlmData1;
	pa_tyAlmData[175]	:= p_tyLinkPPAlmData2;
	pa_tyAlmData[176]	:= p_tyLinkPPAlmData3;
	pa_tyAlmData[177]	:= p_tyLinkDIAlmData6;
	pa_tyAlmData[178]	:= p_tyLinkOutShutterAlmData2;
	pa_tyAlmData[179]	:= p_tyLinkOutShutterAlmData3;
	IF p_bNTParamTCPAGVSigPrep THEN
		pa_tyAlmData[180]	:= p_tyLinkTCPAlmData;
		pa_tyAlmData[181]	:= p_tyLinkTCPAlmData1;
		pa_tyAlmData[182]	:= p_tyLinkTCPAlmData2;
		pa_tyAlmData[183]	:= p_tyLinkTCPAlmData3;
	END_IF
	IF p_bNtParamTCPScannerPrep THEN
		pa_tyAlmData[184]	:= p_tyLinkTCPTopAlmData;
		pa_tyAlmData[185]	:= p_tyLinkTCPBtmAlmData;
	END_IF
	
	pa_tyAlmData[186] := p_tyLinkSvyHermesAlmData;
	pa_tyAlmData[187] := p_tyLinkSvyHermesAlmData1;
	pa_tyAlmData[188] := p_tyLinkSvyHermesAlmData2;
	pa_tyAlmData[189] := p_tyLinkSvyHermesAlmData3;
	pa_tyAlmData[190] := p_tyLinkSvyHermesAlmData4;
	pa_tyAlmData[191] := p_tyLinkSvyHermesInfoData;
	pa_tyAlmData[192] := p_tyLinkSvyHermesInfoData1;
	pa_tyAlmData[193] := p_tyLinkSvyHermesInfoData2;
	pa_tyAlmData[194] := p_tyLinkSvyHermesInfoData3;
	pa_tyAlmData[195] := p_tyLinkSvyHermesInfoData4;
	
	IF p_bNtParamAutoRcpPrep THEN
		pa_tyAlmData[195] :=  p_tyLinkAutoRcpAlmData;
	END_IF
END_ACTION
