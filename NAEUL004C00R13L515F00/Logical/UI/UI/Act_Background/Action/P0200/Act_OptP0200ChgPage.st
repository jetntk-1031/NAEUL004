
ACTION Act_OptP0200ChgPage: 

	IF tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsTravLifter.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0201OpsTravLifter;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.bRtCompl = TRUE OR tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOps2Mag1.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag1.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0202OpsMag1;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.bRtCompl = TRUE OR tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOps2Mag2.bRtCompl	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag2.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0203OpsMag2;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOps3Mag3.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0204OpsMag3;
	
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsAIV.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsAIV.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0205OpsAIV;
		
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsMagLane1.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsMagLane1.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0206OpsMagConv1;
				
	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsMagLane2.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsMagLane2.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0207OpsMagConv2;

	ELSIF tyP0200OpsGen.tyOps.tyHotspotOpsMagInfo.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOps.tyHotspotOpsMagInfo.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0800MagInfo;
		
	ELSIF tyP0200OpsGen.tyOven.tyHotspotOven.bRtCompl = TRUE THEN
		tyP0200OpsGen.tyOven.tyHotspotOven.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP0850OvenInfo;
		
	END_IF
	
END_ACTION
