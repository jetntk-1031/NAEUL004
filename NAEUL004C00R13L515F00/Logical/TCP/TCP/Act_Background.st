(** 2019-06-10 **)
ACTION Act_Background:
	
	IF bRun = TRUE THEN
		IF eTCPModel = Client THEN
			IF udiTCPIdent = 0 THEN
				Act_Background_TCPConnect;
			ELSE
				IF bRstConnection = FALSE THEN
					Act_Background_TCPRcv;
					Act_Background_ChkAlive;
					Act_Background_TCPSend;
					Act_Background_TCPProcess;
			//		Act_Background_Log;
				ELSE
					Act_Background_TCPClose;
				END_IF
			END_IF
			Act_Background_Stop;
			
		ELSIF eTCPModel = Server THEN
			Act_TCPSvr;
			Act_TCPSvrProcess;
		END_IF
		
			
	END_IF
		
	IF EDGENEG(bRun) OR EDGENEG(udiTCPIdent = 0) THEN
		//Reset
		fbClntConnect(bEn := FALSE);
		
		bConnected		:= bRun;
		
		bWaitAliveResponse	:= FALSE;
		bCheckAliveTimeout 	:= FALSE;
	END_IF
	
	IF EDGENEG(bRun) OR EDGENEG(udiTCPIdent <> 0) THEN
		fbRcv(bEn := FALSE);
	
		fbSend(bEn := FALSE);
		fbClose(bEn := FALSE);
		
		fbFileAppend1(bEn := FALSE);
		iWriteLogStep	:= 0;
		
		bConnected		:= FALSE;
		
		memset(ADR(a_sMsgSend) , 0 , SIZEOF(a_sMsgSend));
		memset(ADR(tyAIVMsgRcvData) , 0 , SIZEOF(tyAIVMsgRcvData));
		udiMsgSendBffr	:= 0;
		bLoginSuccess 	:= FALSE;
		
		bWaitAliveResponse	:= FALSE;
		bCheckAliveTimeout 	:= FALSE;
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
		iWriteLogStep	:= 0;
		
		bConnected		:= FALSE;
		
		memset(ADR(a_sMsgSend) , 0 , SIZEOF(a_sMsgSend));		
		memset(ADR(tyAIVMsgRcvData) , 0 , SIZEOF(tyAIVMsgRcvData));
		udiMsgSendBffr	:= 0;
		bLoginSuccess 	:= FALSE;
		
		bWaitAliveResponse	:= FALSE;
		bCheckAliveTimeout 	:= FALSE;
	END_IF
	
	IF (eStatus2 = Error) AND bRstErr THEN
		eStatus2	:= Idle;
		udiStatus2	:= 0;
		
		fbFileAppend1(bEn := FALSE);
		iWriteLogStep	:= 0;
		
	END_IF
	
	
END_ACTION
