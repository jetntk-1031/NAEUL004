
ACTION Act_OptP0205IOMonitor:
	

	//Digital Input
	//AIV Err
	IF p_tyDI.bSOT1AIVError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr1.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT2AIVError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr2.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT3AIVError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr3.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT4AIVError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr4.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVErr4.usiValueIdx		:= 0;
	END_IF

	//AIV Ready
	
	IF p_tyDI.bSOT1AIVReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy1.usiValueIdx		:= 1;
	ELSIF ADR(p_bTCPSvrUBA) = 0 THEN //Prevent Service mode
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy1.usiValueIdx		:= 0;
	ELSIF p_bTCPSvrUBA THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy1.usiValueIdx		:= 0;
	END_IF

	IF p_tyDI.bSOT2AIVReady  THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy2.usiValueIdx		:= 1;
	ELSIF ADR(p_bTCPSvrUBA2) = 0 THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy2.usiValueIdx		:= 0;
	ELSIF p_bTCPSvrUBA2 THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT3AIVReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT4AIVReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVRdy4.usiValueIdx		:= 0;
	END_IF
	
	//AIV Available
	IF p_tyDI.bSOT1AIVAvailable  THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail1.usiValueIdx		:= 1;
	ELSIF ADR(p_bTCPSvrDSB) = 0 THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail1.usiValueIdx		:= 0;
	ELSIF p_bTCPSvrDSB THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail1.usiValueIdx		:= 0;
	END_IF
		
	IF p_tyDI.bSOT2AIVAvailable  THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail2.usiValueIdx		:= 1;
	ELSIF ADR(p_bTCPSvrDSB2) = 0 THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail2.usiValueIdx		:= 0;
	ELSIF p_bTCPSvrDSB2 THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT3AIVAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT4AIVAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVAvail4.usiValueIdx		:= 0;
	END_IF
	
	//AIV Size
	IF p_tyDI.bSOT1AIVSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT2AIVSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT3AIVSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDI.bSOT4AIVSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge4.usiValueIdx		:= 0;
	END_IF
	
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk1.bValue			:= p_tyDI.bSOT1Receive;
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk2.bValue			:= p_tyDI.bSOT2Receive;
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk3.bValue			:= p_tyDI.bSOT3Receive;
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk4.bValue			:= p_tyDI.bSOT4Receive;


	//Digital Output
	//Mag Error
	IF p_tyDO.bSOT1MagError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr1.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT2MagError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr2.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT3MagError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr3.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT4MagError THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr4.usiValueIdx		:= 2;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagErr4.usiValueIdx		:= 0;
	END_IF

	//Mag Ready
	IF p_tyDO.bSOT1MagReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT2MagReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT3MagReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT4MagReady THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagRdy4.usiValueIdx		:= 0;
	END_IF
	
	//Mag Available
	IF p_tyDO.bSOT1MagAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT2MagAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail2.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT3MagAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT4MagAvailable THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagAvail4.usiValueIdx		:= 0;
	END_IF
	
	//Mag Size
	IF p_tyDO.bSOT1MagSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge1.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge1.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT2MagSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge2.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge2.usiValueIdx		:= 0;
	END_IF

	IF p_tyDO.bSOT3MagSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge3.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge3.usiValueIdx		:= 0;
	END_IF
	
	IF p_tyDO.bSOT4MagSizeLarge THEN
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge4.usiValueIdx		:= 1;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge4.usiValueIdx		:= 0;
	END_IF
	
	//MES Name
	tyP0205OpsAIV.tyIOMonitor.tyStringMesName.sValue			:= p_tyTagFromMes.sMESName;
	
	CASE p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			//Req To Bring
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring3.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring4.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToBring;
			//Req To Get
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[1].bReqAIVToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[2].bReqAIVToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet3.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[3].bReqAIVToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet4.bValue		:= p_tyTagToMes.tyTagStatOfPlatforms[4].bReqAIVToGet;
			
			tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.bValue				:= p_tyTagFromMes.bActive;
		McSetAGVCommHardIO:
			//Req To Bring
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.bValue		:= p_tyDO.bMag1ReqToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.bValue		:= p_tyDO.bMag2ReqToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring3.bValue		:= p_tyDO.bMag3ReqToBring;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring4.bValue		:= p_tyDO.bMag4ReqToBring;
			//Req To Get
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.bValue		:= p_tyDO.bMag1ReqToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.bValue		:= p_tyDO.bMag2ReqToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet3.bValue		:= p_tyDO.bMag3ReqToGet;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet4.bValue		:= p_tyDO.bMag4ReqToGet;
			
			tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.bValue				:= p_tyDI.bFleetManagerReady;
		McSetAGVCommDisabled:
			//Req To Bring
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring3.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring4.bValue		:= FALSE;
			//Req To Get
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet3.bValue		:= FALSE;
			tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet4.bValue		:= FALSE;
		
			tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.bValue	:= FALSE;
	END_CASE	
	
END_ACTION
