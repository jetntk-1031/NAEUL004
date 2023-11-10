(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtCtrl	:= FALSE;
		bRetCtrl	:= FALSE;
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
	//eAct
//	IF p_eConvDirection = ConvDirLToR THEN
//		bRetAllow			:= p_bLinkOpsLftConvStepUSCommTmr AND (p_bStopperUnBlkCtrl = FALSE);
//		bExtAllow			:= (p_bLinkOpsLftConvStepStandby AND (p_bLinkLftAWWidthPosDiff OR p_bLinkOpsLftAWStepMove)) OR (NOT p_bLinkLFFollowerUSAllow);
//		p_bEntBrdExtAllow	:= p_bLinkOpsInitLftConvStepInitCon OR p_bLinkOpsLftConvStepEntBrd OR (p_eLinkLftConvStat <> ConvActIdle);
//		
//	END_IFs
//	
//	
//	IF p_bRetAllow AND (bRetCtrl = FALSE OR bExtCtrl = TRUE) THEN
//		eACT	:= StopperStepRet;
//	ELSIF p_bExtAllow AND (p_bStopperUnBlkCtrl = TRUE) THEN
//		eGotoStep	:= StopperStepExt;
//	ELSIF p_bEntBrdExtAllow AND (p_bStopperUnBlkCtrl = TRUE) THEN
//		eGotoStep	:= StopperStepEntBrdExt;
//		//					ELSE
//		//						bPaused	:= p_bStop OR p_bStep;
//	END_IF
	
END_ACTION
