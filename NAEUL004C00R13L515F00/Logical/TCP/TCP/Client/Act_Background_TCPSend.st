(** 2019-06-10 **)
ACTION Act_Background_TCPSend:
	
	//Message Send (Generate XML Message)
	IF a_sMsgSend[0] <> '' THEN
		
		memset(ADR(sSnd) , 0 , SIZEOF(sSnd));
			
		sSnd			:= a_sMsgSend[0];
		udiSndMsgLen	:= LEN(sSnd);
			
		//Message Send
		fbSend.udiTCPIdent	:= udiTCPIdent;
		fbSend.udiSndSize	:= udiSndMsgLen;
		fbSend(bEn := TRUE);		
		
		IF (fbSend.udiStatus = 0) THEN
			
			fLogDTConvert(ADR(sDT) , p_dtCurrDT);
			memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('SND_TO_AIV$r$n') , LEN('SND_TO_AIV$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sSnd) , LEN(sSnd));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
	
			udiLogCntr	:= udiLogCntr + 1;
			IF udiLogCntr = 11 THEN
				udiLogCntr	:= 1;
			END_IF
			
			IF iHistoryCntr < 9 THEN
				a_tyHistoryList[iHistoryCntr].eTCP := MsgSndToTCP;
				a_tyHistoryList[iHistoryCntr].sMsg := sSnd;
				iHistoryCntr := iHistoryCntr +1 ;
			ELSE
				memmove(ADR(a_tyHistoryList[1]),ADR(a_tyHistoryList[2]),(SIZEOF(a_tyHistoryList[1])*7));
				memset(ADR(a_tyHistoryList[8]),0,SIZEOF(a_tyHistoryList[1]));
				a_tyHistoryList[8].eTCP := MsgSndToTCP;
				a_tyHistoryList[8].sMsg := sSnd;
			END_IF
			
			memcpy(ADR(a_sMsgSend[0]) , ADR(a_sMsgSend[1]) , SIZEOF(a_sMsgSend[0]) * 50);
			a_sMsgSend[50]		:= '';
			udiMsgSendBffr		:= udiMsgSendBffr - 1;
			
			fbSend(bEn := FALSE);
			
		ELSIF (fbSend.udiStatus = 2321)  THEN
			bRstConnection	:= TRUE;
			
		ELSIF (fbSend.udiStatus < 65534)  THEN
			eStatus1	:= Error;
		
			IF fbSend.udiStatus = 2300 THEN
				udiStatus1	:= 10024;	//Invalid Ident While Sending Data
			ELSIF fbSend.udiStatus = 2320 THEN
				udiStatus1	:= 10025;	//TCP Retry Send Data Error While Sending Data
			ELSIF fbSend.udiStatus = 2322 THEN
				udiStatus1	:= 10026;	//TCP Send Data Error
			ELSE
				udiStatus1	:= fbSend.udiStatus;
			END_IF
			
		END_IF
		
	END_IF
	
END_ACTION
