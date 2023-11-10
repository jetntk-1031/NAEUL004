 (** 2023-03-22  **)
ACTION Act_Background_Sequence:
	
	IF eStatus1 <> Error THEN
		
		IF EDGEPOS(p_tyOpsTravLifULMsgReq = OpConMsgTypePartReceived) THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePartReceived);
			tyPartReceive.tyData.sIdentifier 	:= p_sOpsTravLifULBarcode;
			tyPartReceive.tyData.asName			:= 'unloader';
			tyPartReceive.tyData.asValue		:= p_tyProdRcpCurrRcp.sRcpNm;
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;

		ELSIF EDGEPOS(p_tyOpsTravLifULMsgReq = OpConMsgTypePartProcessed)  THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePartProcessed);
			tyPartProcessed.tyData.sIdentifier := p_sOpsTravLifULBarcode;
			tyPartProcessed.tyData.sValue := p_tyOpsTravLifULPartProcessItms.tyData.sValue; //[0..4]
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;

		ELSIF EDGEPOS(p_tyOpsTravLifULMsgReq = OpConMsgTypePLCJam)  THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePLCJam);
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;

		ELSIF EDGEPOS(p_tyOpsTravLifULMsgReq = OpConMsgTypePLCJamStarted)  THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePLCJamStarted);
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;

		ELSIF EDGEPOS(p_tyOpsMagConvUL1MsgReq = OpConMsgTypePartMissingStarted) THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePartMissingStarted);
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;

		ELSIF EDGEPOS(p_tyOpsMagConvUL1MsgReq = OpConMsgTypePartMissing) THEN
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePartMissing);
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;
			
		ELSIF EDGEPOS(p_tyOpsTravLifULMsgReq = OpConMsgTypePLCGrab) THEN //trav lif
			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePLCGrab);
			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;
			tyPLCGrab.tyData.sValue := pas_OpsTravLifULMagEntered ;
			
//		ELSIF EDGEPOS(eOpConMsgReq = OpConMsgTypePLCError) THEN
//			fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePLCError);
//			tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;
//			eOpConMsgReq := OpConMsgTypeNA;
		END_IF
		FOR i:= 1 TO 15 DO
			IF s1[i] <> '' AND bMsgIssued[i] = FALSE THEN
				eOpConMsgReq := OpConMsgTypePLCError;
				tyPLCError.tyData.uiErrorNo := STRING_TO_UINT (LEFT(s1[i],5));;
				tyPLCError.tyData.sErrorText := MID(s1[i],LEN(s1[i]),9);
				IF eOpConMsgReq = OpConMsgTypePLCError AND bMsgIssued[i] = FALSE THEN
					fOpConAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , OpConMsgTypePLCError);
					tyOpConEvent.tyData.uiEventId := tyOpConEvent.tyData.uiEventId +1 ;
					eOpConMsgReq := OpConMsgTypeNA;
					bMsgIssued[i] := TRUE;
				END_IF
			ELSIF s1[i] = '' THEN
				EXIT;
			END_IF
		END_FOR
		
	END_IF
	
	
END_ACTION
