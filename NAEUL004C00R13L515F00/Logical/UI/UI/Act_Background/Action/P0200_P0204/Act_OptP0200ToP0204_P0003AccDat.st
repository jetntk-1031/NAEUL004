
ACTION Act_OptP0200ToP0204_P0003AccDat: 
	
//	IF EDGENEG(p_bLFFollowerProdAccDataMnl OR p_bLCSLFAccDataMnl OR p_bUSHermesAAccDataMnl OR p_bUSHermesBAccDataMnl) THEN
//		bProdAccData	:= FALSE;
//	END_IF
	
	//Control
	IF (tyP0200OpsGen.tyOps.tyBtnAccDat.bRtCompl = TRUE)		OR (tyP0201OpsTravLifter.tyOps.tyBtnAccDat.bRtCompl = TRUE)
		OR (tyP0202OpsMag1.tyOps.tyBtnAccDat.bRtCompl = TRUE)	OR (tyP0203OpsMag2.tyOps.tyBtnAccDat.bRtCompl = TRUE)
		OR (tyP0204OpsMag3.tyOps.tyBtnAccDat.bRtCompl = TRUE) 	OR (tyP0206OpsMagConv1.tyOps.tyBtnAccDat.bRtCompl = TRUE) 
		OR (tyP0207OpsMagConv2.tyOps.tyBtnAccDat.bRtCompl = TRUE) OR tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.bRtCompl THEN
		
		tyP0200OpsGen.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0201OpsTravLifter.tyOps.tyBtnAccDat.bRtCompl	:= FALSE;
		tyP0202OpsMag1.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0203OpsMag2.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0204OpsMag3.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0206OpsMagConv1.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;
		tyP0207OpsMagConv2.tyOps.tyBtnAccDat.bRtCompl		:= FALSE;

		tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.bRtCompl		:= FALSE;
		bProdAccData	:= TRUE;
	END_IF
	
	//Button Appearance
	IF (p_bLFFollowerProdAccDataMnl = TRUE) OR (p_bLCSLFAccDataMnl = TRUE) OR (p_bUSHermesAAccDataMnl = TRUE) OR (p_bUSHermesBAccDataMnl = TRUE) THEN
		
		fbAccDatBlinkTm(IN := TRUE);
		
		IF fbAccDatBlinkTm.Q THEN
			fbAccDatBlinkTm(IN := FALSE);
			
			IF (tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx = 1) THEN
				tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 0;
				tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0206OpsMagConv1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				tyP0207OpsMagConv2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.usiBitmapIdx   := 0;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 1;
				tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0206OpsMagConv1.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				tyP0207OpsMagConv2.tyOps.tyBitmapAccDat.usiValueIdx			:= 1;
				
				tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.usiBitmapIdx   := 1;
			END_IF
		END_IF
		
		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0206OpsMagConv1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0207OpsMagConv2.tyOps.tyBtnAccDat.uiRtStat));

		fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0206OpsMagConv1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatOff(ADR(tyP0207OpsMagConv2.tyOps.tyBitmapAccDat.uiRtStat));
		
		fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.uiRtStat)); 

	ELSE
		
		fbAccDatBlinkTm(IN := FALSE);
		
		tyP0200OpsGen.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.usiValueIdx	:= 0;
		tyP0202OpsMag1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0203OpsMag2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0204OpsMag3.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0206OpsMagConv1.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;
		tyP0207OpsMagConv2.tyOps.tyBitmapAccDat.usiValueIdx			:= 0;

		tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.usiBitmapIdx := 0;
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyOps.tyBtnAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyOps.tyBtnAccDat.uiRtStat));
	
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyOps.tyBitmapAccDat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyOps.tyBitmapAccDat.uiRtStat));

		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnAccDat.uiRtStat));
	END_IF
	

	
END_ACTION
