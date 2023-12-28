
ACTION Act_InputConfig:
	
	tylocalAlm.In.udiRstErr					 := g_tyRstErrOut.udiRstErr;
	tylocalAlm.In.eAct					 	 := g_tyStartUp.eAlarmAct;
	tylocalAlm.In.dtCurrDT  			  	 := g_tyTime.dtCurrDT;
	tylocalAlm.In.udiFileKeepDay		 	 := g_tyNtParamCurr.udiAlmFileKeepDay;
	tylocalAlm.In.sProgNm					 := g_tyNtParamCurr.sAlmProgNm;
	tylocalAlm.In.bStartupUISettingsLoadDone := g_tyStartUp.bUISettingsLoadDone;
	
	//Index 1 For Internal Use
	a_tyAlmData[2]		:= g_tyUsrFolder.tyAlmData;
	a_tyAlmData[3]		:= g_tyLibVer.tyAlmData;
	a_tyAlmData[4]		:= g_tyTime.tyAlmData;
	a_tyAlmData[5]		:= g_tyTime.tyAlmData1;
	a_tyAlmData[6]		:= g_tyHWInfo.tyAlmData;
	a_tyAlmData[7]		:= g_tyProdRcp.tyAlmData;
	a_tyAlmData[8]		:= g_tyMpProdRcp.tyAlmData;
	a_tyAlmData[9]		:= g_tyMagRcp.tyAlmData;
	a_tyAlmData[10]		:= g_tyMcParam.tyAlmData;
	a_tyAlmData[11]		:= g_tyNtParam.tyAlmData;
	a_tyAlmData[12]		:= g_tyUsrMgmt.tyAlmData;
	a_tyAlmData[13]		:= g_tyBuffer1.tyAlmData;
	a_tyAlmData[14]		:= g_tyBuffer2.tyAlmData;
	a_tyAlmData[15]		:= g_tyBuffer3.tyAlmData;
	a_tyAlmData[16]		:= g_tyUSSMEMAA.tyAlmData;
	a_tyAlmData[17]		:= g_tyUSSMEMAB.tyAlmData;
	a_tyAlmData[18]		:= g_tyUSSMEMA1.tyAlmData;
	a_tyAlmData[19]		:= g_tyUSSMEMA2.tyAlmData;
	a_tyAlmData[20]		:= g_tyUSSMEMA3.tyAlmData;
	a_tyAlmData[21]		:= g_tyDSSMEMA1.tyAlmData;
	a_tyAlmData[22]		:= g_tyDSSMEMA2.tyAlmData;
	a_tyAlmData[23]		:= g_tyDSSMEMA3.tyAlmData;
	a_tyAlmData[24]		:= g_tyInShutter.tyAlmData;
	a_tyAlmData[25]		:= g_tyOutShutter.tyAlmData;
	a_tyAlmData[26]		:= g_tyStopperA.tyAlmData;
	a_tyAlmData[27]		:= g_tyStopperB.tyAlmData;
	a_tyAlmData[28]		:= g_tyPshrConv.tyAlmData;
	a_tyAlmData[29]		:= g_tyMagConv1.tyAlmData;
	a_tyAlmData[30]		:= g_tyMagConv2.tyAlmData;
	a_tyAlmData[31]		:= g_tyMagConv3.tyAlmData;
	a_tyAlmData[32]	:= g_tyAWOpen.tyAlmData;
	a_tyAlmData[33]	:= g_tyAWOpen.tyAlmData1;
	a_tyAlmData[34]	:= g_tyAWOpen.tyAlmData2;
	a_tyAlmData[35]	:= g_tyAWOpen.tyAlmData3;
	a_tyAlmData[36]	:= g_tyTrav.tyAlmData;
	a_tyAlmData[37]	:= g_tyTrav.tyAlmData1;
	a_tyAlmData[38]	:= g_tyTrav.tyAlmData2;
	a_tyAlmData[39]	:= g_tyTrav.tyAlmData3;
	a_tyAlmData[40]	:= g_tyLifterBtm.tyAlmData;
	a_tyAlmData[41]	:= g_tyLifterBtm.tyAlmData1;
	a_tyAlmData[42]	:= g_tyLifterBtm.tyAlmData2;
	a_tyAlmData[43]	:= g_tyLifterBtm.tyAlmData3;
	a_tyAlmData[44]	:= g_tyDI.tyAlmData1;
	a_tyAlmData[45]	:= g_tyDI.tyAlmData2;
	a_tyAlmData[46]	:= g_tyDI.tyAlmData3;
	a_tyAlmData[47]	:= g_tyDI.tyAlmData4;
	a_tyAlmData[48]	:= g_tyAGVMag1.tyAlmData;
	a_tyAlmData[49]	:= g_tyAGVMag2.tyAlmData;
	a_tyAlmData[50]	:= g_tyAGVMag3.tyAlmData;
	a_tyAlmData[51]	:= g_tyHermes.tyAlmData;
	a_tyAlmData[52]	:= g_tyUSHermesA.tyAlmData;
	a_tyAlmData[53]	:= g_tyUSHermesA.tyAlmData1;
	a_tyAlmData[54]	:= g_tyUSHermesA.tyAlmData2;
	a_tyAlmData[55]	:= g_tyUSHermesA.tyAlmData3;
	a_tyAlmData[56]	:= g_tyUSHermesA.tyAlmData4;
	a_tyAlmData[57]	:= g_tyUSHermesAInfoData;
	a_tyAlmData[58]	:= g_tyUSHermesB.tyAlmData;
	a_tyAlmData[59]	:= g_tyUSHermesB.tyAlmData1;
	a_tyAlmData[60]	:= g_tyUSHermesB.tyAlmData2;
	a_tyAlmData[61]	:= g_tyUSHermesB.tyAlmData3;
	a_tyAlmData[62]	:= g_tyUSHermesB.tyAlmData4;
	a_tyAlmData[63]	:= g_tyUSHermesBInfoData;
	a_tyAlmData[64]	:= g_tyRmtHermes.tyAlmData;
	a_tyAlmData[65]	:= g_tyRmtHermes.tyAlmData1;
	a_tyAlmData[66]	:= g_tyRmtHermes.tyAlmData2;
	a_tyAlmData[67]	:= g_tyRmtHermes.tyAlmData3;
	a_tyAlmData[68]	:= g_tyLFLeader.tyAlmData;
	a_tyAlmData[69]	:= g_tyLFFollower.tyAlmData;
	a_tyAlmData[70]	:= g_tyLFFollowerInfoData;
	a_tyAlmData[71]	:= g_tyLFFollowerInfoData1;
	a_tyAlmData[72]	:= g_tyFollower1.tyAlmData;
	a_tyAlmData[73]	:= g_tyFollower1InfoData;
	a_tyAlmData[74]	:= g_tyFollower1InfoData1;
	a_tyAlmData[75]	:= g_tyFollower2.tyAlmData;
	a_tyAlmData[76]	:= g_tyFollower2InfoData;
	a_tyAlmData[77]	:= g_tyFollower2InfoData1;
	a_tyAlmData[78]	:= g_tyLCSMngRcp.tyAlmData;
	a_tyAlmData[79]	:= g_tyLCSLF.tyAlmData;
	a_tyAlmData[80]	:= g_tyLCSLFInfoData;
	a_tyAlmData[81]	:= g_tyOpsTravLifUL.tyAlmData;
	//	a_tyAlmData[82]	:= g_tyOpsMagUL1.tyAlmData;
	//	a_tyAlmData[83]	:= g_tyOpsMagUL1.tyAlmData1;
	//	a_tyAlmData[84]	:= g_tyOpsMagUL2.tyAlmData;
	//	a_tyAlmData[85]	:= g_tyOpsMagUL2.tyAlmData1;
	//	a_tyAlmData[86]	:= g_tyOpsMagUL3.tyAlmData;
	//	a_tyAlmData[87]	:= g_tyOpsMagUL3.tyAlmData1;
	a_tyAlmData[82]	:= g_tyOpsLifMagUL.tyAlmData;
	a_tyAlmData[83]	:= g_tyOpsLifMagUL.tyAlmData1;
	a_tyAlmData[84]	:= g_tyOpsLifMagUL.tyAlmData2;
	
	a_tyAlmData[88]	:= g_tyOpsMagConvUL1.tyAlmData;
	a_tyAlmData[89]	:= g_tyOpsMagConvUL1.tyAlmData1;
	a_tyAlmData[90]	:= g_tyOpsMagConvUL2.tyAlmData;
	a_tyAlmData[91]	:= g_tyOpsMagConvUL2.tyAlmData1;
	a_tyAlmData[92]	:= g_tyOpsMagConvUL3.tyAlmData;
	a_tyAlmData[93]	:= g_tyOpsMagConvUL3.tyAlmData1;
	a_tyAlmData[94]	:= g_tyUSHermesA.tyAlmData5;
	a_tyAlmData[95]	:= g_tyUSHermesB.tyAlmData5;
	a_tyAlmData[96]	:= g_tyMcAlarmData;
	a_tyAlmData[97]	:= g_tyMag1SafetyBar.tyAlmData;
	a_tyAlmData[98]	:= g_tyMag2SafetyBar.tyAlmData;
	a_tyAlmData[99]	:= g_tyMag3SafetyBar.tyAlmData;
	a_tyAlmData[100]	:= g_tyMag1AWEngage.tyAlmData;
	a_tyAlmData[101]	:= g_tyMag2AWEngage.tyAlmData;
	a_tyAlmData[102]	:= g_tyMag3AWEngage.tyAlmData;
	a_tyAlmData[103]	:= g_tyMag1SafetyBar.tyAlmData;
	a_tyAlmData[104]	:= g_tyMag2SafetyBar.tyAlmData;
	a_tyAlmData[105]	:= g_tyMag3SafetyBar.tyAlmData;
	a_tyAlmData[106]	:= g_tyMag1AWEngage.tyAlmData;
	a_tyAlmData[107]	:= g_tyMag2AWEngage.tyAlmData;
	a_tyAlmData[108]	:= g_tyMag3AWEngage.tyAlmData;
	a_tyAlmData[109]	:= g_tyMagAWOpen1.tyAlmData;
	a_tyAlmData[110]	:= g_tyMagAWOpen1.tyAlmData1;
	a_tyAlmData[111]	:= g_tyMagAWOpen1.tyAlmData2;
	a_tyAlmData[112]	:= g_tyMagAWOpen1.tyAlmData3;
	a_tyAlmData[113]	:= g_tyMagAWOpen2.tyAlmData;
	a_tyAlmData[114]	:= g_tyMagAWOpen2.tyAlmData1;
	a_tyAlmData[115]	:= g_tyMagAWOpen2.tyAlmData2;
	a_tyAlmData[116]	:= g_tyMagAWOpen2.tyAlmData3;
	a_tyAlmData[117]	:= g_tyMagAWOpen3.tyAlmData;
	a_tyAlmData[118]	:= g_tyMagAWOpen3.tyAlmData1;
	a_tyAlmData[119]	:= g_tyMagAWOpen3.tyAlmData2;
	a_tyAlmData[120]	:= g_tyMagAWOpen3.tyAlmData3;
	a_tyAlmData[121]	:= g_tyMcAlarmData;
	a_tyAlmData[122]	:= g_tyUSSOT1.tyAlmData;
	a_tyAlmData[123]	:= g_tyUSSOT2.tyAlmData;
	a_tyAlmData[124]	:= g_tyUSSOT3.tyAlmData;
	a_tyAlmData[125]	:= g_tyDSSOT1.tyAlmData;
	a_tyAlmData[126]	:= g_tyDSSOT2.tyAlmData;
	a_tyAlmData[127]	:= g_tyDSSOT3.tyAlmData;
	a_tyAlmData[128]	:= g_tyMag1SelClamp.tyAlmData;
	a_tyAlmData[129]	:= g_tyMag2SelClamp.tyAlmData;
	a_tyAlmData[130]	:= g_tyMag3SelClamp.tyAlmData;
	a_tyAlmData[131]	:= g_tyAWPushOrPuller.tyAlmData;
	a_tyAlmData[132]	:= g_tyAWPushOrPuller.tyAlmData1;
	a_tyAlmData[133]	:= g_tyAWPushOrPuller.tyAlmData2;
	a_tyAlmData[134]	:= g_tyAWPushOrPuller.tyAlmData3;
	a_tyAlmData[135]	:= g_tyMtrPshr.tyAlmData;
	a_tyAlmData[136]	:= g_tyAGV.tyAlmData1;
	a_tyAlmData[150]	:= g_tyDI.tyAlmData5;



	IF g_tyNtParamCurr.bProjMagConvLane1Prep AND g_tyNtParamCurr.bProjMagConvLane2Prep THEN
		a_tyAlmData[167]	:= g_tyOpsInMagConv.tyAlmData;
		a_tyAlmData[168]	:= g_tyOpsOutMagConv.tyAlmData;
	END_IF 
	IF g_tyNtParamCurr.bProjMagConvLane1Prep THEN //customized 
		a_tyAlmData[151]	:= g_tyTopEntStpr.tyAlmData; //MagConv Lane1
		a_tyAlmData[152]	:= g_tyTopMidStpr.tyAlmData;
		a_tyAlmData[153]	:= g_tyTopExtStpr.tyAlmData;
		a_tyAlmData[154]	:= g_tyBtmMidStpr.tyAlmData;
		a_tyAlmData[155]	:= g_tyBtmExtStpr.tyAlmData;
		a_tyAlmData[161]	:= g_tyInMagConv.tyAlmData;
		a_tyAlmData[162]	:= g_tyOutMagConv.tyAlmData;
		a_tyAlmData[165]	:= g_tyLifterMagConv.tyAlmData;
	END_IF
	IF  g_tyNtParamCurr.bProjMagConvLane2Prep  THEN  
		a_tyAlmData[156]	:= g_tyTopEntStpr2.tyAlmData; //MagConv Lane2
		a_tyAlmData[157]	:= g_tyTopMidStpr2.tyAlmData;
		a_tyAlmData[158]	:= g_tyTopExtStpr2.tyAlmData;
		a_tyAlmData[159]	:= g_tyBtmMidStpr2.tyAlmData;
		a_tyAlmData[160]	:= g_tyBtmExtStpr2.tyAlmData;
		a_tyAlmData[163]	:= g_tyInMagConv2.tyAlmData;
		a_tyAlmData[164]	:= g_tyOutMagConv2.tyAlmData;
		a_tyAlmData[166]	:= g_tyLifterMagConv2.tyAlmData;
	END_IF
	IF g_tyNtParamCurr.bProjLifter2Prep THEN
		a_tyAlmData[169]	:= g_tyLifter2.tyAlmData;
		a_tyAlmData[170]	:= g_tyLifter2.tyAlmData1;
		a_tyAlmData[171]	:= g_tyLifter2.tyAlmData2;
		a_tyAlmData[172]	:= g_tyLifter2.tyAlmData3;	
	END_IF
	a_tyAlmData[173]	:= g_tyPP.tyAlmData;
	a_tyAlmData[174]	:= g_tyPP.tyAlmData1;
	a_tyAlmData[175]	:= g_tyPP.tyAlmData2;
	a_tyAlmData[176]	:= g_tyPP.tyAlmData3;
	a_tyAlmData[177]	:= g_tyDI.tyAlmData6;
	a_tyAlmData[178]	:= g_tyOutShutter.tyAlmData2;
	a_tyAlmData[179]	:= g_tyOutShutter.tyAlmData3;
	IF g_tyNtParamCurr.bProjTCPAGVSigPrep THEN
		a_tyAlmData[180]	:= g_tyTCP.tyAlmData;
		a_tyAlmData[181]	:= g_tyTCP.tyAlmData1;
		a_tyAlmData[182]	:= g_tyTCP.tyAlmData2;
		a_tyAlmData[183]	:= g_tyTCP.tyAlmData3;
	END_IF
	IF g_tyNtParamCurr.bProjScanPrep THEN
		a_tyAlmData[184]	:= g_tyTCPTop.tyAlmData;
		a_tyAlmData[185]	:= g_tyTCPBtm.tyAlmData;
	END_IF
	
	a_tyAlmData[186] := g_tySvyHermes.tyAlmData;
	a_tyAlmData[187] := g_tySvyHermes.tyAlmData1;
	a_tyAlmData[188] := g_tySvyHermes.tyAlmData2;
	a_tyAlmData[189] := g_tySvyHermes.tyAlmData3;
	a_tyAlmData[190] := g_tySvyHermes.tyAlmData4;
	a_tyAlmData[191] := g_tySvyHermesInfoData;
	a_tyAlmData[192] := g_tySvyHermesInfoData1;
	a_tyAlmData[193] := g_tySvyHermesInfoData2;
	a_tyAlmData[194] := g_tySvyHermesInfoData3;
	a_tyAlmData[195] := g_tySvyHermesInfoDat;
	
	IF g_tyNtParamCurr.bAutoRcpPrep THEN
		a_tyAlmData[195] :=  g_tyAutoRcp.tyAlmData;
	END_IF
		
END_ACTION
