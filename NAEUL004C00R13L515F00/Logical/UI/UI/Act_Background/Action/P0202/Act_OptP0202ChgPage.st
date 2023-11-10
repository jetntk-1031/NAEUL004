
ACTION Act_OptP0202ChgPage: 

	IF tyP0202OpsMag1.tyOps.tyHotspotMagInfo.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyOps.tyHotspotMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
	END_IF
	
END_ACTION
