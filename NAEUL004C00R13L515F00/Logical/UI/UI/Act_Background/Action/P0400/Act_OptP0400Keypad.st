
ACTION Act_OptP0400Keypad:
	
	IF fUIOutRtStatTPIsOpen(ADR(tyP0400ProdSel.tyProdSel.tyStringSearch.uiRtStat)) THEN
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= tyP0400ProdSel.tyProdSel.tyStringSearch.sKeypadTitle;
		
	ELSE
		tyProperty.tyKeypad.tyStringTitle.sKeypadTitle	:= '';
		
	END_IF
	
END_ACTION
