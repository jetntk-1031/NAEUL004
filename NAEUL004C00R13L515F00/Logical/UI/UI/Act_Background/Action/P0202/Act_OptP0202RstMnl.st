
ACTION Act_OptP0202RstMnl:
	
	IF eCurrPage <> UIP0202OpsMag1 THEN
		bNewMag1	:= FALSE;
		bRlsMag1	:= FALSE;
		tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
	END_IF
	
END_ACTION
