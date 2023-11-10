
ACTION Act_OptP1040Limit:

	
//	IF tyP1040ProdSet.tyProdSet.tyTableRecipe.a_tyStringDataCol1[udiP1040SelectedRow].sValue <> '' THEN 
//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:= -(p_tyProdRcpCurrList[udiP1040SelectedRow].diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000);
//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax		:= (p_tyProdRcpCurrList[udiP1040SelectedRow].diWidthInUM/2-p_tyMcParamCurr.diAWPusherAtHmPosInUM-5000);	
//	ELSE
//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin		:= 0;
//		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax		:= 0;
//	END_IF
	
	//Pusher Offset has to include min safe zone and max safe zone for the product width // 04102022 - 2022-0617
	IF (tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue) <> 0 THEN
		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin	:= - ((tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2 - p_tyMcParamCurr.diAWPusherAtHmPosInUM) - IPshrSafeDistanceValue);
		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax	:= ((tyP1040ProdSet.tyProdSet.tyNumProdWidth.diValue/2 - p_tyMcParamCurr.diAWPusherAtHmPosInUM) - IPshrSafeDistanceValue);
	ELSE
		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMin	:= 0;
		tyP1040ProdSet.tyProdSet.tyNumPshrOffset.diValueMax	:= 0;
	END_IF
		
		
END_ACTION
