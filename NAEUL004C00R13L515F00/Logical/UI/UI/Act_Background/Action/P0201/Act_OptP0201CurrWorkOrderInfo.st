
ACTION Act_OptP0201CurrWorkOrderInfo: 
	
	//Hide or Unhide UI button
	IF p_tyHermesConfiguration.tySvyParam.bFeatureQueryWorkOrderInfo = TRUE AND p_tyNtParamCurr.bHermesSvyPrep AND p_tyMcParamCurr.bHermesSvyEn AND p_tyNtParamCurr.bHermesSvyFirstMcInTheLine THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.uiRtStat)); //show
	ELSE
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.uiRtStat)); //hide
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := FALSE;
	END_IF
	
	//Press Query Work Order Info button, bValue will toggle.
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bRtCompl := FALSE;			
	END_IF
	
	//Popup 
	IF 	EDGEPOS (tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue = TRUE) THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyLyr.uiRtStat)); //show popup View WorkOrder
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide popup BCScanner
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //hide popup QueryWorkOrder
	END_IF
	
	//Reset 
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue = FALSE THEN
		bQueryWorkOrderInfo := FALSE;
	END_IF
	
	//Press Query button, go page QueryWorkOrderInfo
	IF	tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bRtCompl = TRUE AND p_bSiemensMcModeChgPrep = FALSE THEN //AND bDummy THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyLyr.uiRtStat)); //hide popup View WorkOrder
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide popup BCScanner
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //show popup QueryWorkOrder            
		
//		bQueryWorkOrderInfo := TRUE;                                                                  //ADD
//		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := TRUE;
		
		
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bValue   := FALSE;
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bRtCompl := FALSE;
		 
//	ELSE                                                                                            //ADD
//		bQueryWorkOrderInfo := FALSE;
//		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := FALSE;
	ELSIF tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bRtCompl = TRUE (*AND p_bSiemensMcModeChgPrep*) THEN	        //ADD 2022-0780A
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyLyr.uiRtStat)); //hide popup View WorkOrder
		bQueryWorkOrderInfo := TRUE;
		
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bValue   := FALSE;
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.bRtCompl := FALSE;
	END_IF	
	
	//Manual Query (not possible Traverser in Loader-Unloader)
//	IF (*p_bSiemensMcModeChgPrep AND*) p_bAllZonesEmpty AND p_bOpsConvWaitForTopUpBrd AND  bBypassCoverSwitch = FALSE AND  bTopUpBrdRdy = FALSE AND p_sWorkOrderId <>''  THEN
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.uiRtStat)); //hide
//		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.uiRtStat)); //Show
//	ELSIF (*p_bSiemensMcModeChgPrep AND*) p_bAllZonesEmpty AND p_bOpsConvWaitForTopUpBrd AND bBypassCoverSwitch = FALSE AND  bTopUpBrdRdy = FALSE AND p_sWorkOrderId = '' THEN  
//		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.uiRtStat)); //Show
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.uiRtStat)); //Hide
//	ELSE
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnQuery.uiRtStat)); //Show
//		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.uiRtStat)); //Hide	
//	END_IF
	
	
	//Press Exit
	IF	tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnExit.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyLyr.uiRtStat)); //hide popup View WorkOrder
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide popup BCScanner
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //hide popup QueryWorkOrder
		
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := FALSE;
		
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnExit.bValue   := FALSE;
		tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnExit.bRtCompl := FALSE;
	END_IF	
	
	tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyStringWorkOrder.sValue := p_sWorkOrderId;
	
	//Press Delete, prompt confirm to delete
	IF	tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.bRtCompl = TRUE THEN
		p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxAskDelete);
		
		IF tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnYes.bRtCompl THEN
		   tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnYes.bRtCompl := FALSE;
			bDeleteWorkOrder := TRUE;
			tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.bValue := FALSE;
			tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.bRtCompl := FALSE;
			p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxHide);
			tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnYes.bValue := FALSE;
			
		ELSIF tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnNo.bRtCompl THEN
			tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnNo.bRtCompl := FALSE;

			bDeleteWorkOrder := FALSE;
			tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.bValue := FALSE;
			tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyBtnDelete.bRtCompl := FALSE;
			p_tyC0008MsgBox ACCESS ADR(tyP0201OpsTravLifter.tyMsgBoxHide);
			tyP0201OpsTravLifter.tyMsgBoxAskDelete.tyBtnNo.bValue := FALSE;
		END_IF	
		
	END_IF

	
	//Bitmap
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue THEN
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.usiBitmapIdx := 1;
	ELSE
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.usiBitmapIdx := 0;
	END_IF	
	
END_ACTION
