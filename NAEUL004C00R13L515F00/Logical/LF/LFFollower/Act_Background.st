
ACTION Act_Background:
	
	IF p_bInternalUse = TRUE THEN
		tyLeaderToFollowerTag.sReqProdRcpNm		:= p_tyInternalReqProdRcp.sRcpNm;
		
		IF g_tyNtParamCurr.bLFProdWidth2Prep THEN
			tyLeaderToFollowerTag.diReqProdRcpWidth	:= p_tyInternalReqProdRcp.diWidthInUM2;
		ELSE
			tyLeaderToFollowerTag.diReqProdRcpWidth	:= p_tyInternalReqProdRcp.diWidthInUM;
		END_IF
		tyLeaderToFollowerTag.sReqMagRcpNm		:= '';
		tyLeaderToFollowerTag.bMnlAccData		:= FALSE;
		tyLeaderToFollowerTag.bBypassMnlAccData	:= FALSE;
		tyLeaderToFollowerTag.bBlkDS			:= FALSE;
		tyLeaderToFollowerTag.bBlkUS			:= FALSE;
		tyLeaderToFollowerTag.bBypassWidthChk	:= TRUE;
		tyLeaderToFollowerTag.bSetTm			:= FALSE;
		tyLeaderToFollowerTag.dtTm				:= 0;
		tyLeaderToFollowerTag.uiTmZone			:= 0;
		tyLeaderToFollowerTag.usiRunTm			:= 0;
		tyLeaderToFollowerTag.bProdNameUSWarn	:= FALSE;
		tyLeaderToFollowerTag.bProdNameDSWarn	:= FALSE;
		tyLeaderToFollowerTag.bProdWidthUSWarn	:= FALSE;
		tyLeaderToFollowerTag.bProdWidthDSWarn	:= FALSE;
		tyLeaderToFollowerTag.bLeaderSeqCtrlInActive	:= FALSE;
	END_IF
	
	Act_Background_UpdtData;
	
	//FB
	fbFollower.tyLeaderToFollowerTag	:= tyLeaderToFollowerTag;
	fbFollower.sMcNm					:= g_tyMcParamCurr.sMcNm;
	fbFollower.sIPAddr					:= g_tyMcParamCurr.sIPAddr;
	fbFollower.bSectionLeader			:= g_tyMcParamCurr.bSectionLeader;
	fbFollower.sCurrProdRcpNm			:= p_tyCurrProdRcp.sRcpNm;
	fbFollower.diCurrProdWidthUS		:= p_tyCurrProdRcp.diWidthInUM;
	fbFollower.diCurrProdWidthDS		:= p_tyCurrProdRcp.diWidthInUM2;
	fbFollower.sCurrMagRcpNm			:= p_sCurrMagRcpNm;
	fbFollower.sUpdtLeaderProdRcpNm		:= p_tyFollower.tyUpdtProdRcp.sRcpNm;
	fbFollower.diUpdtLeaderProdWidthUS	:= p_tyFollower.tyUpdtProdRcp.diWidthInUM;
	fbFollower.diUpdtLeaderProdWidthDS	:= p_tyFollower.tyUpdtProdRcp.diWidthInUM2;
	fbFollower.sUpdtLeaderMagRcpNm		:= tylocalLFFollower.In.sMagRcpNm;
	fbFollower.bMnlAccDat				:= g_tyMcParamCurr.bMnlAccDat;
	fbFollower.bAWEn					:= (g_tyNtParamCurr.bAWPrep = TRUE) AND (g_tyMcParamCurr.bAWDis = FALSE);
	fbFollower.bUSWidthChkEn			:= g_tyNtParamCurr.bUSWidthChkPrep AND g_tyMcParamCurr.bUSWidthChkEn;
	fbFollower.bUSWidthChkSen			:= tylocalLFFollower.In.bUSWidthChkSen;
	fbFollower.bDSWidthChkEn			:= g_tyNtParamCurr.bDSWidthChkPrep AND g_tyMcParamCurr.bDSWidthChkEn;
	fbFollower.bDSWidthChkSen			:= tylocalLFFollower.In.bDSWidthChkSen;
	fbFollower.bProdWidthChk			:= g_tyNtParamCurr.bLFProdWidthChk;
	fbFollower.bProdRcpErr				:= bProdRcpErr;
	fbFollower.bMagRcpErr				:= bMagRcpErr;
	fbFollower.bSetTmErr				:= bSetTmErr;
	fbFollower.eCurrMachineStat			:= eCurrMachineStat;
	fbFollower.bProdChgOverActive		:= (g_tyAW.eStat = AWActGoWidthOff);
	fbFollower.bDBAOnWOAlign			:= g_tyMcParamCurr.bDBAOnWOAlign;

	fbFollower(bEn := TRUE);
	
	tyFollowerToLeaderTag	:= fbFollower.tyFollowerToLeaderTag;
	bProdAccDataReq			:= fbFollower.bProdAccDataReq OR (p_bInternalReqProdRcpDiff = TRUE) ;
	bMagAccDataReq			:= fbFollower.bMagAccDataReq;
	bAutoAccData			:= fbFollower.bAutoAccData;

	IF p_bInternalUse THEN
		bLeaderOnline			:= TRUE;
	ELSE
		bLeaderOnline			:= tyLeaderInfo.bOnline;
	END_IF
	
	IF bLeaderOnline=FALSE THEN
		bUSAllow				:= TRUE;
		bDSAllow				:= TRUE;
		bLeaderSeqCtrlInActive	:= FALSE;
	ELSE
		bUSAllow				:= fbFollower.bUSAllow AND (p_bInternalReqProdRcpDiff = FALSE);
		bDSAllow				:= fbFollower.bDSAllow;
		bLeaderSeqCtrlInActive	:= tyLeaderToFollowerTag.bLeaderSeqCtrlInActive;
	END_IF
		
	fbOnlineChk.tyLeaderToFollowerTag	:= tyLeaderToFollowerTag;
	fbOnlineChk(bEn := TRUE);
	
	Act_Background_AccData;
	Act_Background_ChkRlsBrd;		
	
	//Set Time
	IF EDGEPOS(tyLeaderToFollowerTag.bSetTm) THEN
		bSetTm	:= TRUE;
	END_IF
	
	IF bSetTm = TRUE THEN
		eTimeAct	:= TimeActSetTime;
		
		IF (g_tyTime.eStat = TimeActSetTime) AND (g_tyTime.eMainStatus = Done) THEN
			eTimeAct		:= TimeActIdle;
			bSetTm			:= FALSE;
		ELSIF g_tyTime.eMainStatus = Error THEN
			eTimeAct		:= TimeActIdle;
			bSetTm			:= FALSE;
		END_IF
	END_IF
	
	bSetTmErr	:= g_tyTime.eMainStatus = Error;
	
	IF (eStatus = Error) AND bRstErr THEN
		eStatus		:= Idle;
		udiStatus	:= 0;
		bProdRcpErr	:= FALSE;
		bProdRcpErrNotExist	:= FALSE;
		bProdRcpErrWidthMismatch:= FALSE;	
		bMagRcpErr	:= FALSE;
	END_IF
	
END_ACTION
