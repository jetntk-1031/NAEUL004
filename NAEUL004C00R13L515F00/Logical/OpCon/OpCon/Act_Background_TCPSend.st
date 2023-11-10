(** 2023-03-22  **)
ACTION Act_Background_TCPSend:
	
	//Message Send (Generate XML Message)
	IF a_eMsgSend[0] <> OpConMsgTypeNA THEN
		
		IF a_eMsgSend[0] = OpConMsgTypePartReceived THEN
			tyOpConEvent.tyData.sEventName := 'partReceived';
			fOpConFormPartReceive(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure , tyOpConEvent, p_tyOpConLocation, tyPartReceive);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 63+1);
			
		ELSIF a_eMsgSend[0] = OpConMsgTypePartProcessed THEN
			tyOpConEvent.tyData.sEventName := 'partProcessed';
			fOpConFormPartProcessed(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure, tyOpConEvent, p_tyOpConLocation, tyPartProcessed);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 123+1);
			
		ELSIF a_eMsgSend[0] = OpConMsgTypePLCError THEN
			tyOpConEvent.tyData.sEventName := 'plcError';
			fOpConFormPLCError(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure,tyOpConEvent, p_tyOpConLocation, tyPLCError);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 71+1);
			
		ELSIF a_eMsgSend[0] = OpConMsgTypePartMissingStarted THEN
			tyOpConEvent.tyData.sEventName := 'plcPartsMissingStarted';
			fOpConFormPartMissing(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure,tyOpConEvent, p_tyOpConLocation, tyPartMissing);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 59+1);
					
		ELSIF a_eMsgSend[0] = OpConMsgTypePartMissing THEN
			tyOpConEvent.tyData.sEventName := 'plcPartsMissing';
			fOpConFormPartMissing(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure,tyOpConEvent, p_tyOpConLocation, tyPartMissing);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 59+1);
	
		ELSIF a_eMsgSend[0] = OpConMsgTypePLCJamStarted THEN
			tyOpConEvent.tyData.sEventName := 'plcJamStarted';
			fOpConFormPLCJam(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure,tyOpConEvent, p_tyOpConLocation, tyPLCJam);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 57+1);
		
		ELSIF a_eMsgSend[0] = OpConMsgTypePLCJam THEN
			tyOpConEvent.tyData.sEventName := 'plcJam';
			fOpConFormPLCJam(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure,tyOpConEvent, p_tyOpConLocation, tyPLCJam);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 57+1);
			
		ELSIF a_eMsgSend[0] = OpConMsgTypePLCGrab THEN
			tyOpConEvent.tyData.sEventName := 'plcGrab';
			fOpConFormPLCGrab(ADR(a_tyXMLTableDataSnd) , p_tyDTStructure, tyOpConEvent,tyPLCGrab);
			fTableConvertToXML(ADR(sSnd) , ADR(udiSndMsgLen) , SIZEOF(sSnd) , ADR(a_tyXMLTableDataSnd) , ADR(a_tyXMLTableDataSnd[0].sTitle) , ADR(a_tyXMLTableDataSnd[0].sValue) , ADR(a_tyXMLTableDataSnd[0].uiSize) , SIZEOF(a_tyXMLTableDataSnd[0]) , 59+1);
			
		END_IF
			
		//Message Send
		IF p_bInternalUse = FALSE THEN
			fbSend.udiTCPIdent	:= udiTCPIdent;
			fbSend.udiSndSize	:= udiSndMsgLen;
			fbSend(bEn := TRUE);
		ELSE
			sInternalSnd	:= sSnd;
		END_IF
		
		IF (fbSend.udiStatus = 0) OR (p_bInternalUse = TRUE) THEN
		
			fLogDTConvert(ADR(sDT) , p_dtCurrDT);
			memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('SND_TO_US$r$n') , LEN('SND_TO_US$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sSnd) , LEN(sSnd));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
	
			udiLogCntr	:= udiLogCntr + 1;
			IF udiLogCntr = 11 THEN
				udiLogCntr	:= 1;
			END_IF
			sSnd_0 := sSnd;
			
			fOpConRmvOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr));
			
			fbSend(bEn := FALSE);
			
		ELSIF (fbSend.udiStatus = 2321) AND (p_bInternalUse = FALSE) THEN
			bRstConnection	:= TRUE;
			
		ELSIF (fbSend.udiStatus < 65534) AND (p_bInternalUse = FALSE) THEN
			eStatus1	:= Error;
		
			IF fbSend.udiStatus = 2300 THEN
				udiStatus1	:= 10143;	//Invalid Ident While Sending Data
			ELSIF fbSend.udiStatus = 2320 THEN
				udiStatus1	:= 10144;	//TCP Retry Send Data Error While Sending Data
			ELSIF fbSend.udiStatus = 2322 THEN
				udiStatus1	:= 10145;	//TCP Send Data Error
			ELSE
				udiStatus1	:= fbSend.udiStatus;
			END_IF
			
		END_IF
		
	END_IF
	
	IF bTestEn THEN
		fbFileFullWrite_0(bEn := TRUE, sDevice := 'Log', sFile := 'OpCon_Send.xml', udiOffset := 0, p_Src := ADR(sSnd_0), udiLen := SIZEOF(sSnd_0), udiOption := 0);
		IF fbFileFullWrite_0.udiStatus = 0 THEN
			fbFileFullWrite_0(bEn := FALSE);
			bTestEn := FALSE;
		END_IF
		
	ELSE
		fbFileFullWrite_0(bEn := FALSE);
	END_IF
	
END_ACTION
