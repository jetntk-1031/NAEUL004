
ACTION Act_Background_Process:
	
	IF bRun2 = TRUE AND bStop = FALSE THEN
		fbOnlineChk.a_bOnline				:= g_tyMcParamCurr.a_bLFOnline;
		fbOnlineChk.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
		fbOnlineChk.diMcNum					:= diMcNum;
		fbOnlineChk(bEn := TRUE);
		
		fbBlkUSDS.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
		fbBlkUSDS.diBeforeOven1			:= g_tyMcParamCurr.diLFMcIdxBeforeOven;
		fbBlkUSDS.diAfterOven1			:= g_tyMcParamCurr.diLFMcIdxAfterOven;
		fbBlkUSDS.diBeforeOven2			:= g_tyMcParamCurr.diLFMcIdxBeforeOven2;
		fbBlkUSDS.diAfterOven2			:= g_tyMcParamCurr.diLFMcIdxAfterOven2;
		fbBlkUSDS.diMcNum				:= diMcNum;
		fbBlkUSDS.pa_bLFOnline			:= g_tyMcParamCurr.a_bLFOnline;
		fbBlkUSDS.bSeqMode				:= (tylocalLFLeader.Out.eStat= LFActChgSeqAuto) OR (tylocalLFLeader.Out.eStat= LFActChgSeqMnl);
		fbBlkUSDS(bEn := TRUE);
		
		fbDataUpdt.a_bOnline			:= g_tyMcParamCurr.a_bLFOnline;
		fbDataUpdt.diMcNum				:= diMcNum;
		fbDataUpdt(bEn := TRUE);
		
		
	ELSIF bStop = TRUE THEN
		fbOnlineChk(bEn := FALSE);
		fbBlkUSDS(bEn := FALSE);
		fbDataUpdt(bEn := FALSE);
		bStop2Done	:= TRUE;
		
	END_IF
	
END_ACTION
