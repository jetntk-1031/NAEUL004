
ACTION Act_OptP0204ChgPage: 

	IF tyP0204OpsMag3.tyOps.tyHotspotMagInfo.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyOps.tyHotspotMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
	END_IF
	
END_ACTION
