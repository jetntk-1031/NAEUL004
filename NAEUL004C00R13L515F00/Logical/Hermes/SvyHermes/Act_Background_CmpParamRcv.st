(** 2021-08-01 **)
ACTION Act_Background_CmpParamRcv:
	
	IF eStatus2 <> Error THEN
		
		IF tySServiceDescriptionRcv.tyAvl.tySupportedFeatures.bFeatureSendWorkOrderInfo = TRUE AND p_tyParam.bFeatureQueryWorkOrderInfo THEN
				                                                                          //ADD
			IF tyMsgTypeRcv.bSendWorkOrderInfo = TRUE AND (p_bQueryWorkOrderInfo OR tyQueryWorkOrderInfo.tyAvl.bQueryId) THEN
				udiStatus2	:= fHermesChkParamSWQW(tySendWorkOrderInfoRcv , tyQueryWorkOrderInfo);
				udiStatus5  := fHermesChkParamSWBQW(tySendWorkOrderInfoRcv , tyQueryBypassWorkOrderInfo);	          //ADD	
				
				IF udiStatus2 <> 0 AND udiStatus5 <> 0 THEN
					eStatus2	:= Error;
								
					IF udiStatus2 = 2767 THEN
						udiStatus2	:= 10164;	//QueryId Mismatch While Checking SendWorkOrderId & QueryWorkOrderId
					ELSIF udiStatus5 = 2767  THEN
						udiStatus2	:= 10164;	//QueryId Mismatch While Checking SendWorkOrderId & QueryWorkOrderId
					ELSIF udiStatus2 = 2768 THEN
						udiStatus2	:= 10165;	//QueryId Missing While Checking SendWorkOrderId & QueryWorkOrderId
					ELSIF udiStatus5 = 2768 THEN
						udiStatus2	:= 10165;	//QueryId Missing While Checking SendWorkOrderId & QueryWorkOrderId	
					END_IF
								
					fHermesAddOneMsgSend(ADR(a_eMsgSend) , ADR(udiMsgSendBffr) , HermesMsgTypeNotification);
							
					tyNotificationSnd.tyAvl.bSeverity			:= TRUE;
					tyNotificationSnd.tyAvl.bNotificationCode	:= TRUE;
					tyNotificationSnd.tyAvl.bDescription		:= TRUE;
					tyNotificationSnd.tyData.eSeverity			:= HermesSeverityError;
					tyNotificationSnd.tyData.iNotificationCode	:= UDINT_TO_INT(udiStatus2);
					tyNotificationSnd.tyData.sDescription		:= a_tyAlmText[udiStatus2].sAlmText;
						
					tyMsgTypeRcv.bSendWorkOrderInfo := FALSE; //reset, else latching
				END_IF
			END_IF
		END_IF
	END_IF
	

		END_ACTION
