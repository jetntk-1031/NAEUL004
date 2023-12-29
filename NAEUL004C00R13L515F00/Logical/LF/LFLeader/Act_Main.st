
ACTION Act_Main:
	
		//Set p_eAct
	IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy OR tylocalLFLeader.Out.eStatus = Done THEN
		tylocalLFLeader.Out.eStat	:= p_eAct;
	END_IF
	
	IF eStatOld <> tylocalLFLeader.Out.eStat THEN
		fbSyncTm(bEn := FALSE);
		fbChgAll(bEn := FALSE);
		fbChgSeq(bEn := FALSE);
		
		tylocalLFLeader.Out.sStatTxt	:= a_sStatText[tylocalLFLeader.Out.eStat];
				
		eStatOld	:= tylocalLFLeader.Out.eStat;
		
		tylocalLFLeader.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalLFLeader.Out.eStat OF
		
		LFActIdle:
			tylocalLFLeader.Out.eStatus	:= Idle;
		
		LFActBGStartRun:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				bRun1		:= TRUE;
				bRun2		:= TRUE;
				bStop		:= FALSE;
				bStop1Done	:= FALSE;
				bStop2Done	:= FALSE;
				tylocalLFLeader.Out.eStatus		:= Done;
				
			END_IF
		
		LFActBGStopRun:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				tylocalLFLeader.Out.eStatus	:= Busy;
				
				bStop	:= TRUE;
				
				IF bStop1Done AND bStop2Done THEN
				
					bRun1		:= FALSE;
					bRun2		:= FALSE;
					bStop		:= FALSE;
					bStop1Done	:= FALSE;
					bStop2Done	:= FALSE;
					tylocalLFLeader.Out.eStatus		:= Done;
					
				END_IF
				
			END_IF
		
		LFActSyncPLCTm:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				IF bRun1 AND bRun2 THEN
					tylocalLFLeader.Out.eStatus	:= Busy;
				
					fbSyncTm.dtCurrDT		:= g_tyTime.dtCurrDT;
					fbSyncTm.diMcNum		:= diMcNum;
					fbSyncTm(bEn := TRUE);
					
					IF fbSyncTm.udiStatus = 0 THEN
						tylocalLFLeader.Out.eStatus	:= Done;
					ELSIF fbSyncTm.udiStatus < 65534 THEN
						tylocalLFLeader.Out.eStatus		:= Error;
						udiStatus	:= fbSyncTm.udiStatus;
					END_IF
					
				ELSE
					tylocalLFLeader.Out.eStatus		:= Error;
					udiStatus	:= 10000;	//Background Not Running While Calling Sync PLC Tm
				END_IF
				
			END_IF
		
		LFActChgAllAuto:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				IF bRun1 AND bRun2 THEN
					tylocalLFLeader.Out.eStatus	:= Busy;
					
					fbChgAll.bChgAuto					:= TRUE;
					fbChgAll.a_bOnline					:= g_tyMcParamCurr.a_bLFOnline;;
					fbChgAll.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
					fbChgAll.sReqProdRcpNm				:= p_sReqProdRcpNm;
					fbChgAll.diReqProdRcpWidth			:= p_diReqProdWidth;
					fbChgAll.sReqMagRcpNm				:= p_sReqMagRcpNm;
					fbChgAll.diMcNum					:= diMcNum;
					fbChgAll(bEn := TRUE);
					
					IF fbChgAll.udiStatus = 0 THEN
						tylocalLFLeader.Out.eStatus	:= Done;
					ELSIF fbChgAll.udiStatus < 65534 THEN
						tylocalLFLeader.Out.eStatus		:= Error;
						udiStatus	:= fbChgAll.udiStatus;
					END_IF
					
				ELSE
					tylocalLFLeader.Out.eStatus		:= Error;
					udiStatus	:= 10001;	//Background Not Running While Changing All Recipe Automatically
				END_IF
				
			END_IF
		
		LFActChgAllMnl:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				IF bRun1 AND bRun2 THEN
					tylocalLFLeader.Out.eStatus	:= Busy;
					
					fbChgAll.bChgAuto					:= FALSE;
					fbChgAll.a_bOnline					:= g_tyMcParamCurr.a_bLFOnline;
					fbChgAll.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
					fbChgAll.sReqProdRcpNm				:= p_sReqProdRcpNm;
					fbChgAll.diReqProdRcpWidth			:= p_diReqProdWidth;
					fbChgAll.sReqMagRcpNm				:= p_sReqMagRcpNm;
					fbChgAll.diMcNum					:= diMcNum;
					fbChgAll(bEn := TRUE);
					
					IF fbChgAll.udiStatus = 0 THEN
						tylocalLFLeader.Out.eStatus	:= Done;
					ELSIF fbChgAll.udiStatus < 65534 THEN
						tylocalLFLeader.Out.eStatus		:= Error;
						udiStatus	:= fbChgAll.udiStatus;
					END_IF
					
				ELSE
					tylocalLFLeader.Out.eStatus		:= Error;
					udiStatus	:= 10002;	//Background Not Running While Changing All Recipe Manually
				END_IF
				
			END_IF
		
		LFActChgSeqAuto:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				IF bRun1 AND bRun2 THEN
					tylocalLFLeader.Out.eStatus	:= Busy;
					
					fbChgSeq.bChgAuto					:= TRUE;
					fbChgSeq.a_bOnline					:= g_tyMcParamCurr.a_bLFOnline;;
					fbChgSeq.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
					fbChgSeq.sReqProdRcpNm				:= p_sReqProdRcpNm;
					fbChgSeq.diReqProdRcpWidth			:= p_diReqProdWidth;
					fbChgSeq.sReqMagRcpNm				:= p_sReqMagRcpNm;
					fbChgSeq.diMcNum					:= diMcNum;
					fbChgSeq(bEn := TRUE);
					
					IF fbChgSeq.udiStatus = 0 THEN
						tylocalLFLeader.Out.eStatus	:= Done;
					ELSIF fbChgSeq.udiStatus < 65534 THEN
						tylocalLFLeader.Out.eStatus		:= Error;
						udiStatus	:= fbChgSeq.udiStatus;
					END_IF
					
				ELSE
					tylocalLFLeader.Out.eStatus		:= Error;
					udiStatus	:= 10003;	//Background Not Running While Changing Recipe In Sequence Automatically
				END_IF
				
			END_IF
		
		LFActChgSeqMnl:
			IF tylocalLFLeader.Out.eStatus = Idle OR tylocalLFLeader.Out.eStatus = Busy THEN
				
				IF bRun1 AND bRun2 THEN
					tylocalLFLeader.Out.eStatus	:= Busy;
					
					fbChgSeq.bChgAuto					:= FALSE;
					fbChgSeq.a_bOnline					:= g_tyMcParamCurr.a_bLFOnline;;
					fbChgSeq.a_tyFollowerToLeaderTag	:= a_tyFollowerToLeaderTag;
					fbChgSeq.sReqProdRcpNm				:= p_sReqProdRcpNm;
					fbChgSeq.diReqProdRcpWidth			:= p_diReqProdWidth;
					fbChgSeq.sReqMagRcpNm				:= p_sReqMagRcpNm;
					fbChgSeq.diMcNum					:= diMcNum;
					fbChgSeq(bEn := TRUE);
					
					IF fbChgSeq.udiStatus = 0 THEN
						tylocalLFLeader.Out.eStatus	:= Done;
					ELSIF fbChgSeq.udiStatus < 65534 THEN
						tylocalLFLeader.Out.eStatus		:= Error;
						udiStatus	:= fbChgSeq.udiStatus;
					END_IF
					
				ELSE
					tylocalLFLeader.Out.eStatus		:= Error;
					udiStatus	:= 10004;	//Background Not Running While Changing Recipe In Sequence Manually
				END_IF
				
			END_IF
		
	END_CASE
	
END_ACTION
