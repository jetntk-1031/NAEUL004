
(* Parse XML Table Data *)
FUNCTION_BLOCK fbOpConParseXMLTable
	
	memset(ADR(tyMsgType) , 0 , SIZEOF(tyMsgType));
	memset(ADR(tyEventReceive),0,SIZEOF(tyEventReceive));
	memset(ADR(tyPartReceive),0,SIZEOF(tyPartReceive));
	memset(ADR(tyPlcGrabReceive),0,SIZEOF(tyPlcGrabReceive));
	
	
	iPartReceiveFirstIdx			:= -1;
	iPartReceiveLastIdx				:= -1;
	iEventReceiveFirstIdx			:= -1;
	iEventReceiveLastIdx			:= -1;
	iPlcGrabFirstIdx1				:= -1;
	iPlcGrabLastIdx1				:= -1;
	
	iOpConIdx						:= -1;
	
	eMsgType	:= OpConMsgTypeNA;
	
	FOR udi := p_XMLTable TO (p_XMLTable + ((iTotalIdxWrite - 2) * SIZEOF(p_tyXMLTable))) BY SIZEOF(p_tyXMLTable) DO
		
		p_tyXMLTable ACCESS udi;
		p_tyXMLTable1 ACCESS (udi + SIZEOF(p_tyXMLTable));
		
		fConvertToLower_254(ADR(sLowerCase) , p_tyXMLTable.sValue);
		
		IF (p_tyXMLTable.sTitle = 'ST') AND (sLowerCase = 'root') THEN
			
			eMsgType	:= OpConMsgTypeNA;
			iOpConIdx	:= UDINT_TO_INT((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable)));
				
		ELSIF (p_tyXMLTable.sTitle = 'ET') AND (sLowerCase = 'root') THEN
			
			iOpConIdx	:= -1;
			
			CASE eMsgType OF
				
				OpConMsgTypeEventReceived:	iEventReceiveLastIdx	:= UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))) + 1);
				OpConMsgTypePartReceived:		iPartReceiveLastIdx	:= UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))) + 1);
				OpConMsgTypePlcGrabReceived: 	iPlcGrabLastIdx1	:= UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))) + 1);

			END_CASE
			
			eMsgType	:= OpConMsgTypeNA;
		ELSIF (p_tyXMLTable.sTitle = 'ST') AND (sLowerCase = 'header') THEN 
			//capture event
			eMsgType					:= OpConMsgTypeEventReceived;
			tyMsgType.bEventRcv			:= TRUE;
			iEventReceiveFirstIdx := UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))));
			
		ELSIF (p_tyXMLTable.sTitle = 'ST') AND ((sLowerCase = 'result')OR (sLowerCase = 'trace')) AND tyEventReceive.tyAvl.bEventName  THEN
			
			fConvertToLower_254(ADR(sEventLowerCase),tyEventReceive.tyData.sEventName);
			
			IF sEventLowerCase = 'partreceived' THEN
					eMsgType					:= OpConMsgTypePartReceived;
					tyMsgType.bPartRcvRetCode	:= TRUE;
					//iPartReceiveFirstIdx		:= iOpConIdx;
					iPartReceiveFirstIdx := UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))));
			ELSIF sEventLowerCase = 'plcgrab' THEN	
					eMsgType					:= OpConMsgTypePlcGrabReceived;
					tyMsgType.bPlcGrabRcv		:= TRUE;
					//iPartReceiveFirstIdx		:= iOpConIdx;
					iPlcGrabFirstIdx1 := UDINT_TO_INT(((udi - p_XMLTable) / (SIZEOF(p_tyXMLTable))));
			END_IF
		ELSE
			
			CASE eMsgType OF
				OpConMsgTypeEventReceived:
					fOpConParseEventReceive(ADR(tyEventReceive) , p_tyXMLTable , p_tyXMLTable1 , sLowerCase);
				OpConMsgTypePartReceived:
					fOpConParsePartReceive(ADR(tyPartReceive) , p_tyXMLTable , p_tyXMLTable1 , sLowerCase);
				OpConMsgTypePlcGrabReceived:
					fOpConParsePlcGrabReceive(ADR(tyPlcGrabReceive) , p_tyXMLTable , p_tyXMLTable1 , sLowerCase);
				OpConMsgTypeNA:
					tyMsgType.bPartRcvRetCode	:= FALSE;
					
				
			END_CASE
	
		END_IF
						
	END_FOR
	
END_FUNCTION_BLOCK
