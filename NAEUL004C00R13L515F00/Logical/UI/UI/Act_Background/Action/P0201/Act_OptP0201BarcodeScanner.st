
ACTION Act_OptP0201BarcodeScanner: 
	 //Reset bValue
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bRtCompl = TRUE  THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bRtCompl := FALSE;	
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue := FALSE;
		
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bRtCompl = TRUE  THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bRtCompl := FALSE;
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue := FALSE;
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bRtCompl = TRUE  THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bRtCompl := FALSE;
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue := FALSE;
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bRtCompl = TRUE  THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bRtCompl := FALSE;
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue := FALSE;
	END_IF
	
	//Top Barcode	
	IF EDGEPOS (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcodeBK.sValue;
	END_IF
	
	IF EDGENEG (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcodeBK.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcode.sValue;
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue = TRUE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue = FALSE  THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue;
	END_IF
	
	
	//Bottom Barcode
	IF EDGEPOS (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcodeBK.sValue;
	END_IF
	
	IF EDGENEG (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcodeBK.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcode.sValue;
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue = TRUE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue = FALSE THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue;
	END_IF
	
	
	//Magazine Barcode
	IF EDGEPOS (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcodeBK.sValue;
	END_IF
	
	IF EDGENEG (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcodeBK.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcode.sValue;
	END_IF
	
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue = TRUE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue = FALSE THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue;
	END_IF
	
	
	//PCB Barcode
	IF EDGEPOS (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcodeBK.sValue;
	END_IF
	
	IF EDGENEG (tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue = TRUE) THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcodeBK.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcode.sValue;
	END_IF
    
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue = TRUE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue = FALSE THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue;
	END_IF
	

	
	//Reset to dummy
	IF tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue = FALSE AND  tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue = FALSE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue = FALSE AND tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue = FALSE THEN
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue := '';
	END_IF
	
	
	//Press OK
	IF	tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnOk.bRtCompl = TRUE THEN
		                                            
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide
		IF tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //show	
			tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringTopBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcode.sValue;
			tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringBottomBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcode.sValue;
		ELSIF tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //show	
			tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringMagazineId.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcode.sValue;
			tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringBarcode.sValue := tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcode.sValue;
		END_IF
		
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnBarcodeScanner.bValue := FALSE;
		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnBarcodeScanner.bValue := FALSE;
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnOk.bRtCompl := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnOk.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcodeBK.sValue :='';
		
	END_IF	
	
	//Press Cancel
	IF	tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnCancel.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide
		IF tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //show	
		ELSIF tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyLyr.uiRtStat)); //show	
		END_IF
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringTopBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringBottomBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringMagazineBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcode.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyStringPCBBarcodeBK.sValue :='';
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnBottom.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.bValue := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnPCB.bValue := FALSE;
		
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnBarcodeScanner.bValue := FALSE;
		tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyBtnBarcodeScanner.bValue := FALSE;
		
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnCancel.bRtCompl := FALSE;
		tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnCancel.bValue := FALSE;
		
	END_IF	
	
	
END_ACTION
