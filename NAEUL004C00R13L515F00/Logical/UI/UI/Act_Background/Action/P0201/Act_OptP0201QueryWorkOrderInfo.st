
ACTION Act_OptP0201QueryWorkOrderInfo: 
	
	//Mask Magazine Barcode / SlotId
	IF p_tyNtParamCurr.bHermesSvyMagTypeMc = FALSE THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBitmapMask.uiMaskRtStat)); //show the mask
	ELSE
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBitmapMask.uiMaskRtStat)); //hide the mask
	END_IF
	
	//Mask Barcode Scanner
	IF p_tyNtParamCurr.bHermesScannerPrep = TRUE AND p_tyMcParamCurr.bHermesScannerEn = TRUE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnBarcodeScanner.uiMaskRtStat)); //hide the mask
	ELSE
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnBarcodeScanner.uiMaskRtStat)); //show the mask
	END_IF
	
	IF 	EDGEPOS (tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnBarcodeScanner.bValue = TRUE) THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //hide popup QueryBoardInfo
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //show popup BCScanner
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.uiMaskRtStat)); //hide Mask Magazine
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.uiMaskRtStat)); //Mask Top
	END_IF
	
	//Convert
	iSlotId := DINT_TO_INT(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyNumSlotId.diValue);
	
	//Press OK, set bQueryWorkOrderInfo
	IF	tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnOk.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //close popup
		
		IF (tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringMagazineId.sValue <> '') OR (iSlotId <> 0) 
			OR (tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringBarcode.sValue <> '') THEN
			bQueryWorkOrderInfo := TRUE;
			tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := TRUE;
		ELSE
			bQueryWorkOrderInfo := FALSE;
			tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := FALSE;
		END_IF
		
		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnOk.bValue := FALSE;

		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnOk.bRtCompl := FALSE;
		
	END_IF	
		
	//Press Cancel
	IF	tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnCancel.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //hide
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyCurrWorkOrderInfo.tyLyr.uiRtStat)); //hide		
		
		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnCancel.bRtCompl := FALSE;
		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnCancel.bValue := FALSE;
	END_IF	


			
END_ACTION
