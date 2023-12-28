
ACTION Act_InputConfig:
	
	tylocalHWInfo.In.udiRstErr 		:= g_tyRstErrOut.udiRstErr;
	tylocalHWInfo.In.sSetIPAddr		:= g_tyUIOut.sSetIPAddr;
	tylocalHWInfo.In.sSetSubnetMask	:= g_tyUIOut.sSetSubnetMask;
	tylocalHWInfo.In.sDevice		:= g_tyNtParamCurr.sHWInfoDevice;
	tylocalHWInfo.In.sProgNm		:= g_tyNtParamCurr.sHWInfoProgNm;
	tylocalHWInfo.In.usiNetworkMode	:= g_tyUIOut.usiNetworkModeSelected;
	tylocalHWInfo.In.sHMIMacAdd		:= g_tyNtParamCurr.sHWInfoHMIMacAddress;
	tylocalHWInfo.In.sSetDefaultGW	:= g_tyMcParamCurr.sDefaultGateWay;

	IF g_tyStartUp.bRun THEN
		tylocalHWInfo.In.eAct := g_tyStartUp.eHWInfoAct;
	ELSE
		tylocalHWInfo.In.eAct := g_tyUIOut.eMnlAct.eHWInfoAct;
	END_IF
	
		


END_ACTION
