
ACTION Act_OptP0203RstMnl:
	
	IF eCurrPage <> UIP0203OpsMag2 THEN
		bNewMag2	:= FALSE;
		bRlsMag2	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
	END_IF
	
END_ACTION
