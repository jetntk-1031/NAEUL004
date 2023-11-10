
ACTION Act_OptP0203ChgPage: 

	IF tyP0203OpsMag2.tyOps.tyHotspotMagInfo.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyOps.tyHotspotMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
	END_IF
	
END_ACTION
