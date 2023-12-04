
ACTION Act_OptP0203RstMnl:
	
	IF eCurrPage <> UIP0203OpsMag2 AND eCurrPage <> UIP0003MMenu THEN
		bNewMag2	:= FALSE;
		bRlsMag2	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
		tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
		
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk  := FALSE;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 0;
	END_IF
	
END_ACTION
