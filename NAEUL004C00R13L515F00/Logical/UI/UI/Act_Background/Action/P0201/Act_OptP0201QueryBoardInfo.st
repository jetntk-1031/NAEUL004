
ACTION Act_OptP0201QueryBoardInfo: 
	
	//Hide or Unhide UI button
	IF p_tyHermesConfiguration.a_tyUSParam[0].bFeatureQueryBoardInfo = TRUE AND p_tyNtParamCurr.bHermesPrep AND p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.uiRtStat)); //show
	ELSE
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.uiRtStat)); //hide
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue := FALSE;
	END_IF
	
	//Mask
	IF p_tyNtParamCurr.bHermesScannerPrep = TRUE AND p_tyMcParamCurr.bHermesScannerEn = TRUE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnBarcodeScanner.uiMaskRtStat)); //hide the mask
	ELSE
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnBarcodeScanner.uiMaskRtStat)); //show the mask
	END_IF
	
	//Press Query Board Info button, bValue will toggle 0,1,0,1.
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bRtCompl := FALSE;	
	END_IF
	
	//Popup 
	IF 	EDGEPOS (tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue = TRUE) THEN
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //show popup QueryBoardInfo
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //hide popup BCScanner
	END_IF
	
	IF 	EDGEPOS (tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnBarcodeScanner.bValue = TRUE) THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //hide popup QueryBoardInfo
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyLyr.uiRtStat)); //show popup BCScanner
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnTop.uiMaskRtStat)); //hide Mask Top
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyBarcodeScanner.tyBtnMagazine.uiMaskRtStat)); //Mask Magazine
	END_IF
	
	//Press OK, set bQueryBoardInfo

	IF	tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnOk.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //close popup
		
	    IF (tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringTopBarcode.sValue <> '') OR (tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringBottomBarcode.sValue <> '') THEN
			
			bQueryBoardInfo := TRUE;
			tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue := TRUE;
		ELSE
			bQueryBoardInfo := FALSE;
			tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue := FALSE;	
		END_IF
		
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnOk.bValue := FALSE;

		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnOk.bRtCompl := FALSE;
		
	END_IF	
	
	//Reset
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue = FALSE THEN 	
		bQueryBoardInfo := FALSE;
	END_IF
		

    //Press Cancel
	IF	tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnCancel.bRtCompl = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyLyr.uiRtStat)); //hide
		
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue := FALSE;
		
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnCancel.bRtCompl := FALSE;
		tyP0201OpsTravLifter.tyQueryBoardInfo.tyBtnCancel.bValue := FALSE;
	END_IF	

	//Bitmap
	IF tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue THEN
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.usiBitmapIdx := 1;
	ELSE
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.usiBitmapIdx := 0;
	END_IF
			
	
END_ACTION
