
ACTION Act_OptP0204RstMnl:
	
	IF eCurrPage <> UIP0204OpsMag3 THEN
		bNewMag3	:= FALSE;
		bRlsMag3	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
	END_IF
	
END_ACTION
