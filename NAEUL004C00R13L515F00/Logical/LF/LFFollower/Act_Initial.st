
ACTION Act_Initial:
	
	//Initial
	fbFollower.diWidthLimit	:= g_tyNtParamCurr.diLFWidthLimit;
	fbFollower(bEn := FALSE);
	
	fbOnlineChk.p_tyLeaderInfo		:= ADR(tyLeaderInfo);
	fbOnlineChk.tDlyTm				:= g_tyNtParamCurr.tLFFollowerOnlineChkDlyTm;
	fbOnlineChk(bEn := FALSE);
	
END_ACTION
