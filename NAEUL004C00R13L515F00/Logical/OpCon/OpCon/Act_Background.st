(** 2019-06-10 **)
ACTION Act_Background:
	
	IF bRun = TRUE THEN
		IF udiTCPIdent = 0 THEN
			IF p_bInternalUse = FALSE THEN
				Act_Background_TCPConnect;
				
			ELSE
				udiTCPIdent	:= 1;
			END_IF
			
		ELSE
			IF bRstConnection = FALSE THEN
				Act_Background_TCPRcv;
				
//				Act_Background_NotificationRcv;
//			
//				Act_Background_IllegalMsg;
//				Act_Background_ChkParamRcv;
//				Act_Background_CmpParamRcv;

//				IF bHandshakeDone = TRUE THEN
//					IF (p_tyParam.tSndAlive <> T#0s) AND (p_tyParam.tRcvAlive <> T#0s) THEN
//						IF tyServiceDescriptionRcv.tyData.tySupportedFeatures.bFeatureCheckAliveResponse = TRUE AND p_tyParam.bFeatureCheckAliveResponse = TRUE THEN
//							Act_Background_ChkAliveSendPing;
//							Act_Background_ChkAliveRcvPing;
//						ELSE
//							Act_Background_ChkAlive;
//						END_IF
//					ELSE
//						fbCheckAlive(bEn := FALSE);
//						fbCheckAliveSendPing(bEn := FALSE);
//						fbCheckAliveRcvPing(bEn := FALSE);
//					END_IF
//				END_IF

//				Act_Background_BoardAvailableChk;
				Act_Background_PLCError;
				Act_Background_Sequence;
//				Act_Background_SequenceTO;
//				Act_Background_Err;
//				
//				Act_Background_ChgConfig;
				
				Act_Background_TCPSend;
				
				//				Act_Background_Log;
				
			ELSE //rstconnection -true
				Act_Background_TCPClose;
				
			END_IF
			
		END_IF
		
		Act_Background_Stop;
		
	END_IF
		
	IF EDGENEG(bRun) OR EDGENEG(udiTCPIdent = 0) THEN
		//Reset
		fbClntConnect(bEn := FALSE);
		
		bConnected	:= bRun;
	END_IF
	
	IF EDGENEG(bRun) OR EDGENEG(udiTCPIdent <> 0) THEN
		fbRcv(bEn := FALSE);
		fbSend(bEn := FALSE);
		fbClose(bEn := FALSE);
		
		fbFileAppend1(bEn := FALSE);
		
		bConnected		:= FALSE;
		bHandshakeDone	:= FALSE;
		bOverWriteSlt	:= FALSE;
		bOverWriteWidth	:= FALSE;
		bRstConnection	:= FALSE;
		bRstState		:= FALSE;
		
		memset(ADR(a_eMsgSend) , 0 , SIZEOF(a_eMsgSend));
		udiMsgSendBffr	:= 0;
	END_IF
	
	//Reset Error
	IF (eStatus1 = Error) AND bRstErr THEN
		eStatus1	:= Idle;
		udiStatus1	:= 0;
		
		fbClntConnect(bEn := FALSE);
		fbRcv(bEn := FALSE);
		fbSend(bEn := FALSE);
		fbClose(bEn := FALSE);
		
		fbFileAppend1(bEn := FALSE);
		
		bConnected		:= FALSE;
		bHandshakeDone	:= FALSE;
		bOverWriteSlt	:= FALSE;
		bOverWriteWidth	:= FALSE;
		bRstConnection	:= FALSE;
		bRstState		:= FALSE;
		
		memset(ADR(a_eMsgSend) , 0 , SIZEOF(a_eMsgSend));
		udiMsgSendBffr	:= 0;
	END_IF
	
		
END_ACTION
