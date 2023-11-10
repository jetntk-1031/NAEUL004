
ACTION Act_OptP0200ToP0204BypsInitConv: 
	
	IF p_tyNtParamCurr.bProjBypsInitConvPrep THEN
		
		(*Display*)
		//Initializing Conveyor
		IF EDGEPOS(p_bOpsTravLifULInitConv) THEN
			fUIInRtStatOff(ADR(tyP0200OpsGen.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0202OpsMag1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0204OpsMag3.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0206OpsMagConv1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0207OpsMagConv2.tyBypsInitConv.tyLyr.uiRtStat));
		END_IF
		
		//Initializing Conveyor Done
		IF EDGENEG(p_bOpsTravLifULInitConv) THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0202OpsMag1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0204OpsMag3.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyBypsInitConv.tyLyr.uiRtStat));

			bOpsBypsInitConv	:= FALSE;
		END_IF
		
		//Blinking Button
		IF tyP0200OpsGen.tyBypsInitConv.tyLyr.uiRtStat.0 = FALSE THEN
			
			fbBypsInitConvBlinkTm(IN := TRUE);
			
			IF fbBypsInitConvBlinkTm.Q THEN
				fbBypsInitConvBlinkTm(IN := FALSE);
				
				IF tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx = 0 THEN
					tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx			:= 1;
					tyP0201OpsTravLifter.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 1;
					tyP0202OpsMag1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 1;
					tyP0203OpsMag2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 1;
					tyP0204OpsMag3.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 1;
					tyP0206OpsMagConv1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 1;
					tyP0207OpsMagConv2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx			:= 0;
					tyP0201OpsTravLifter.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;
					tyP0202OpsMag1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
					tyP0203OpsMag2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
					tyP0204OpsMag3.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
					tyP0206OpsMagConv1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;
					tyP0207OpsMagConv2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;
				END_IF
				
			END_IF
			
		ELSE
			
			fbBypsInitConvBlinkTm(IN := FALSE);
			
			tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx			:= 0;
			tyP0201OpsTravLifter.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;
			tyP0202OpsMag1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
			tyP0203OpsMag2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
			tyP0204OpsMag3.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx		:= 0;
			tyP0206OpsMagConv1.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;
			tyP0207OpsMagConv2.tyBypsInitConv.tyBtnBypsInitConv.usiBitmapIdx	:= 0;

		END_IF
		
		(*Control*)
		IF tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl OR tyP0201OpsTravLifter.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl OR tyP0202OpsMag1.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl OR tyP0203OpsMag2.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl OR tyP0204OpsMag3.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl THEN
			tyP0200OpsGen.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl			:= FALSE;
			tyP0201OpsTravLifter.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl	:= FALSE;
			tyP0202OpsMag1.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl		:= FALSE;
			tyP0203OpsMag2.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl		:= FALSE;
			tyP0204OpsMag3.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl		:= FALSE;
			tyP0206OpsMagConv1.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl	:= FALSE;
			tyP0207OpsMagConv2.tyBypsInitConv.tyBtnBypsInitConv.bRtCompl	:= FALSE;

			fUIInRtStatHide(ADR(tyP0200OpsGen.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0202OpsMag1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0204OpsMag3.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyBypsInitConv.tyLyr.uiRtStat));
	
			bOpsBypsInitConv	:= TRUE;
			
		ELSIF tyP0200OpsGen.tyBypsInitConv.tyHotspotClose.bRtCompl OR tyP0201OpsTravLifter.tyBypsInitConv.tyHotspotClose.bRtCompl OR tyP0202OpsMag1.tyBypsInitConv.tyHotspotClose.bRtCompl OR tyP0203OpsMag2.tyBypsInitConv.tyHotspotClose.bRtCompl OR tyP0204OpsMag3.tyBypsInitConv.tyHotspotClose.bRtCompl THEN
			tyP0200OpsGen.tyBypsInitConv.tyHotspotClose.bRtCompl		:= FALSE;
			tyP0201OpsTravLifter.tyBypsInitConv.tyHotspotClose.bRtCompl	:= FALSE;
			tyP0202OpsMag1.tyBypsInitConv.tyHotspotClose.bRtCompl		:= FALSE;
			tyP0203OpsMag2.tyBypsInitConv.tyHotspotClose.bRtCompl		:= FALSE;
			tyP0204OpsMag3.tyBypsInitConv.tyHotspotClose.bRtCompl		:= FALSE;
			tyP0206OpsMagConv1.tyBypsInitConv.tyHotspotClose.bRtCompl	:= FALSE;
			tyP0207OpsMagConv2.tyBypsInitConv.tyHotspotClose.bRtCompl	:= FALSE;

			fUIInRtStatHide(ADR(tyP0200OpsGen.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0202OpsMag1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0204OpsMag3.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyBypsInitConv.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyBypsInitConv.tyLyr.uiRtStat));

		END_IF
		
	END_IF
	
END_ACTION
