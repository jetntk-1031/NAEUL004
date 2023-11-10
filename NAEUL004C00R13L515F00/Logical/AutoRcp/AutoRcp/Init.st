(** 2019-06-27 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bAutoUpdtData	:= TRUE;
	bInternalUse	:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_AutoRcpStat		:= ADR(eStat);
	p_AutoRcpStatus	:= ADR(eStatus);
	
	//Alarm
	p_AutoRcpAlmData		:= ADR(tyAlmData);
	p_AutoRcpInfoData		:= ADR(tyInfoData);
	p_AutoRcpInfoData1	:= ADR(tyInfoData1);
	
	//Output
//	p_AutoRcpUSAllow			:= ADR(bUSAllow);
//	p_AutoRcpDSAllow			:= ADR(bDSAllow);

	p_AutoRcpCurrRcpProdID	:= ADR(sProdtypeID);
	p_AutoRcpCurrRcpWidth :=  ADR(diProdWidth);
	
	
	p_AutoRcpbTravWidthDiffblk := ADR(bTravLifWidthDiffBlk);
	
	
	(*p_AutoRcp:= ADR(a_bCheckDifferent);*)
	p_AutoRcpbMag1PropDiffBlk := ADR(a_bCheckDifferent[1]);
	p_AutoRcpbMag2PropDiffBlk := ADR(a_bCheckDifferent[2]);
	p_AutoRcpbMag3PropDiffBlk := ADR(a_bCheckDifferent[3]);
	
	p_AutoRcpbMagChangeOverBlk := ADR(a_bMagChangOverBlk);
	
	p_AutoRcpbMag1WidthChg	:= ADR (a_bAllwChangeWidth[1]);
	p_AutoRcpbMag2WidthChg	:= ADR (a_bAllwChangeWidth[2]);
	p_AutoRcpbMag3WidthChg	:= ADR (a_bAllwChangeWidth[3]);

	p_AutoRcpbMag1SlotChg := ADR (a_bAllwChangeSlot[1]);
	p_AutoRcpbMag2SlotChg := ADR (a_bAllwChangeSlot[2]);
	p_AutoRcpbMag3SlotChg := ADR (a_bAllwChangeSlot[3]);
	
	p_diAutoRcpTravLifWidth := ADR(diTravLifWidth);
	
	p_diAutoRcpAllMagProps := ADR(a_tyMagProps);
	p_diAutoRcpBrdProps    := ADR(a_tyCurrZ2Rcp);

	
	p_diAutoRcpMag1MaxSlt  := ADR(a_tyMagProps[1].diMaxSlt);
	p_diAutoRcpMag1MinSlt  := ADR(a_tyMagProps[1].diMinSlt);
	p_diAutoRcpMag1Pitch   := ADR(a_tyMagProps[1].diPitch);
	p_diAutoRcpMag1Width   := ADR(a_tyMagProps[1].diWidth);
	
	
	p_diAutoRcpMag2MaxSlt  := ADR(a_tyMagProps[2].diMaxSlt);
	p_diAutoRcpMag2MinSlt  := ADR(a_tyMagProps[2].diMinSlt);
	p_diAutoRcpMag2Pitch   := ADR(a_tyMagProps[2].diPitch);
	p_diAutoRcpMag2Width   := ADR(a_tyMagProps[2].diWidth);
	
	
	
	p_diAutoRcpMag3MaxSlt  := ADR(a_tyMagProps[3].diMaxSlt);
	p_diAutoRcpMag3MinSlt  := ADR(a_tyMagProps[3].diMinSlt);
	p_diAutoRcpMag3Pitch   := ADR(a_tyMagProps[3].diPitch);
	p_diAutoRcpMag3Width   := ADR(a_tyMagProps[3].diWidth);
	
	
	p_AutoRcpForceExitMag		   := ADR(bForceExitMag);
	(* Always Change If Project Change *)
	
END_PROGRAM
