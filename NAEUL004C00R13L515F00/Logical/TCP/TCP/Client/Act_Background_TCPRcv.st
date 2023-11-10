(** 2019-06-10 **)
ACTION Act_Background_TCPRcv:
	
	IF eStatus1 <> Error THEN
		
		//Receive Data
		fbRcv.udiTCPIdent	:= udiTCPIdent;
		fbRcv(bEn := TRUE);
		
		
		IF (fbRcv.udiStatus = 0) OR (LEN(sRcv) > 0) THEN
			
			fLogDTConvert(ADR(sDT) , p_dtCurrDT);
			memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('RCV_FRM_AIV$r$n') , LEN('RCV_FRM_AIV$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sRcv) , LEN(sRcv));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
			
			udiLogCntr	:= udiLogCntr + 1;
			IF udiLogCntr = 11 THEN
				udiLogCntr	:= 1;
			END_IF
			
			IF iHistoryCntr < 9 THEN
				a_tyHistoryList[iHistoryCntr].eTCP := MsgRcvFromTCP;
				a_tyHistoryList[iHistoryCntr].sMsg := sRcv;
				iHistoryCntr := iHistoryCntr +1 ;
			ELSE
				memmove(ADR(a_tyHistoryList[1]),ADR(a_tyHistoryList[2]),(SIZEOF(a_tyHistoryList[1])*7));
				memset(ADR(a_tyHistoryList[8]),0,SIZEOF(a_tyHistoryList[1]));
				a_tyHistoryList[8].eTCP := MsgRcvFromTCP;
				a_tyHistoryList[8].sMsg := sRcv;
			END_IF
			
			IF FIND(sRcv , 'Enter password') <> 0 THEN
				tyAIVMsgRcvData.bEnterPW	:= TRUE;
		
			ELSIF FIND(sRcv , sELD1Reached) <> 0 THEN
				tyAIVMsgRcvData.bELD1Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sELD1Completed) <> 0 THEN
				tyAIVMsgRcvData.bELD1Completed	:= TRUE;
		
			ELSIF FIND(sRcv , sELD2Reached) <> 0 THEN
				tyAIVMsgRcvData.bELD2Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sELD2Completed) <> 0 THEN
				tyAIVMsgRcvData.bELD2Completed	:= TRUE;
		
			ELSIF FIND(sRcv , sELD3Reached) <> 0 THEN
				tyAIVMsgRcvData.bELD3Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sELD3Completed) <> 0 THEN
				tyAIVMsgRcvData.bELD3Completed	:= TRUE;	
		
			ELSIF FIND(sRcv , sEUL1Reached) <> 0 THEN
				tyAIVMsgRcvData.bEUL1Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sEUL1Completed) <> 0 THEN
				tyAIVMsgRcvData.bEUL1Completed	:= TRUE;
		
			ELSIF FIND(sRcv , sEUL2Reached) <> 0 THEN
				tyAIVMsgRcvData.bEUL2Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sEUL2Completed) <> 0 THEN
				tyAIVMsgRcvData.bEUL2Completed	:= TRUE;	
		
			ELSIF FIND(sRcv , sEUL3Reached) <> 0 THEN
				tyAIVMsgRcvData.bEUL3Reached	:= TRUE;
		
			ELSIF FIND(sRcv , sEUL3Completed) <> 0 THEN
				tyAIVMsgRcvData.bEUL3Completed	:= TRUE;	
				
			ELSIF FIND(sRcv , sSTANDBYReached) <> 0 THEN
				tyAIVMsgRcvData.bStandbyReached	:= TRUE;
		
			ELSIF FIND(sRcv , sSTANDBYCompleted) <> 0 THEN
				tyAIVMsgRcvData.bStandbyCompleted	:= TRUE;
		
			ELSIF FIND(sRcv, 'Arrived at clear') <> 0 THEN
				tyAIVMsgRcvData.bMoveBackCompleted	:= TRUE;				
				
			ELSIF FIND(sRcv, 'Status:') <> 0 THEN
				tyAIVMsgRcvData.bOneLineStatus	:= TRUE;
				
				sDecodeMsg := sRcv;
				
			ELSIF FIND(sRcv, 'Welcome to the server') <> 0 THEN
				tyAIVMsgRcvData.bLoginSuccess	:= TRUE;
				
			END_IF
			
			fbRcv(bEn := FALSE);
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2317)  THEN
			fbRcv(bEn := FALSE);
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2316)  THEN
			bRstConnection	:= TRUE;
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2318)  THEN
			bRstConnection	:= TRUE;
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus < 65534)  THEN
			eStatus1	:= Error;
			
			IF fbRcv.udiStatus = 2300 THEN
				udiStatus1	:= 10014;	//Invalid Ident While Receiving Data
			ELSIF fbRcv.udiStatus = 2319 THEN
				udiStatus1	:= 10015;	//TCP Receive Data Error While Receiving Data
			ELSE
				udiStatus1	:= fbRcv.udiStatus;
			END_IF
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		END_IF
		
	END_IF
		
END_ACTION
