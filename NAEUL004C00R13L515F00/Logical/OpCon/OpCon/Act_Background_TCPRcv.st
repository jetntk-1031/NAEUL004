(** 2023-03-22  **)
ACTION Act_Background_TCPRcv:
	
	IF eStatus1 <> Error THEN
		
		//Receive Data
		IF p_bInternalUse = FALSE THEN
			fbRcv.udiTCPIdent	:= udiTCPIdent;
			fbRcv(bEn := TRUE);
		ELSE
			sRcv	:= p_sInternalRcv;
		END_IF
		
		IF (fbRcv.udiStatus = 0) OR ((p_bInternalUse = TRUE) AND (LEN(sRcv) > 0)) THEN
			
			fLogDTConvert(ADR(sDT) , p_dtCurrDT);
			memset(ADR(a_sLogList[udiLogCntr]) , 0 , SIZEOF(a_sLogList[udiLogCntr]));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sDT) , LEN(sDT));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n') , LEN('$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('RCV_FRM_US$r$n') , LEN('RCV_FRM_US$r$n'));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR(sRcv) , LEN(sRcv));
			memcpy(ADR(a_sLogList[udiLogCntr]) + LEN(a_sLogList[udiLogCntr]) , ADR('$r$n$r$n') , LEN('$r$n$r$n'));
			
			udiLogCntr	:= udiLogCntr + 1;
			IF udiLogCntr = 11 THEN
				udiLogCntr	:= 1;
			END_IF
			
			fXMLConvertToTable(ADR(sRcv) , LEN(sRcv) , ADR(a_tyXMLTableDataRcv) , ADR(a_tyXMLTableDataRcv[0].sTitle) , SIZEOF(a_tyXMLTableDataRcv[0].sTitle) , ADR(a_tyXMLTableDataRcv[0].sValue) , SIZEOF(a_tyXMLTableDataRcv[0].sValue) , ADR(a_tyXMLTableDataRcv[0].uiSize) , SIZEOF(a_tyXMLTableDataRcv[0]) , SIZEOF(a_tyXMLTableDataRcv) / SIZEOF(a_tyXMLTableDataRcv[0]) , ADR(udiXMLTableWriteIdx));
			
			fbParseXMLTable.iTotalIdxWrite	:= UDINT_TO_INT(udiXMLTableWriteIdx);
			fbParseXMLTable;
			
			IF fbParseXMLTable.tyMsgType.bPartRcvRetCode = TRUE THEN
				//tyMsgTypeRcv.bCheckAlive	:= TRUE;
				tyPartReceive.tyData.iReturnCode			:= fbParseXMLTable.tyPartReceive.tyData.iReturnCode;
				tyPartReceive.tyData.sTypeNo				:= fbParseXMLTable.tyPartReceive.tyData.sTypeNo;
				tyPartReceive.tyData.sTypeVar				:= fbParseXMLTable.tyPartReceive.tyData.sTypeVar;
				tyPartReceive.tyData.sTraceTxt				:= fbParseXMLTable.tyPartReceive.tyData.sTraceTxt;
				tyPartReceive.tyAvl.bReturnCode				:= fbParseXMLTable.tyPartReceive.tyAvl.bReturnCode;
			END_IF
			
			IF fbParseXMLTable.tyMsgType.bPlcGrabRcv = TRUE THEN
				tyPlcGrab.tyData.iReturnCode				:= fbParseXMLTable.tyPlcGrabReceive.tyData.iReturnCode;
				tyPlcGrab.tyData.sTraceTxt					:= fbParseXMLTable.tyPlcGrabReceive.tyData.sTraceTxt;
				tyPlcGrab.tyData.sLevel						:= fbParseXMLTable.tyPlcGrabReceive.tyData.sLevel;
				tyPlcGrab.tyAvl.bReturnCode				:= fbParseXMLTable.tyPlcGrabReceive.tyAvl.bReturnCode;
			END_IF
			
			fbRcv(bEn := FALSE);
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2317) AND (p_bInternalUse = FALSE) THEN
			fbRcv(bEn := FALSE);
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2316) AND (p_bInternalUse = FALSE) THEN
			bRstConnection	:= TRUE;
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus = 2318) AND (p_bInternalUse = FALSE) THEN
			bRstConnection	:= TRUE;
			
			memset(ADR(sRcv) , 0 , SIZEOF(sRcv));
			
		ELSIF (fbRcv.udiStatus < 65534) AND (p_bInternalUse = FALSE) THEN
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
