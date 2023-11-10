
ACTION Act_TCPSvr: 
	
	CASE usiStep OF
		0:
			//Analyse Connection
			IF udiSvrIdent = 0 THEN
				
				IF p_sSvrIP <> '' AND p_uiSvrPort <> 0 THEN
					usiStep	:= 1;
				END_IF
				
			ELSIF udiTCPIdent = 0 THEN
				
				usiStep	:= 2;
				
			END_IF
			
		1:
			//Create Server
			fbTCPSvrCreateSvr.sSvrIP				:= p_sSvrIP;
			fbTCPSvrCreateSvr.uiSvrPort				:= p_uiSvrPort;
			fbTCPSvrCreateSvr.udiAliveIdleTmInSec	:= 1;
			fbTCPSvrCreateSvr(bEn := TRUE);
			
			IF fbTCPSvrCreateSvr.udiStatus = 0 THEN
				udiSvrIdent	:= fbTCPSvrCreateSvr.udiTCPIdent;
				fbTCPSvrCreateSvr(bEn := FALSE);
				
				usiStep	:= 2;
				
			ELSIF fbTCPSvrCreateSvr.udiStatus < 65534 THEN
				fbTCPSvrCreateSvr(bEn := FALSE);
				
			END_IF
			
			IF p_bReconnect = TRUE THEN
				fbTCPSvrCreateSvr(bEn := FALSE);
				
				usiStep	:= 4;
			END_IF
			
		2:
			//Listen
			IF udiSvrIdent <> 0 THEN
				
				fbTCPSvrSvrListenFltr.bFltrIP			:= p_bFltrIP;
				fbTCPSvrSvrListenFltr.bFltrPort			:= p_bFltrPort;
				fbTCPSvrSvrListenFltr.a_sConfigIP[1]	:= p_sAllwClntIP;
				fbTCPSvrSvrListenFltr.a_uiConfigPort[1]	:= p_uiAllwClntPort;
				fbTCPSvrSvrListenFltr.udiSvrIdent		:= udiSvrIdent;
				fbTCPSvrSvrListenFltr(bEn := TRUE);
				
				IF fbTCPSvrSvrListenFltr.udiStatus = 0 THEN
					
					IF fbTCPSvrSvrListenFltr.bRejected = FALSE THEN
						udiTCPIdent	:= fbTCPSvrSvrListenFltr.udiClntIdent;
						fbTCPSvrSvrListenFltr(bEn := FALSE);
						bConnected		:= TRUE;
						
						usiStep	:= 3;
					ELSE
						fbTCPSvrSvrListenFltr(bEn := FALSE);
					END_IF
					
				ELSIF fbTCPSvrSvrListenFltr.udiStatus < 65534 THEN
					fbTCPSvrSvrListenFltr(bEn := FALSE);
					
				END_IF
				
			ELSE
				
				usiStep	:= 0;
				
			END_IF
			
			IF p_bReconnect = TRUE THEN
				fbTCPSvrSvrListenFltr(bEn := FALSE);
				
				usiStep	:= 4;
			END_IF
			
		3:
			//Send
			IF udiTCPIdent <> 0 AND bMsgSnd = TRUE THEN
				
				fbSend.udiTCPIdent	:= udiTCPIdent;
				fbSend.p_BffrDest	:= ADR(sMsgSnd);
				fbSend.udiSndSize	:= LEN(sMsgSnd);
				fbSend(bEn := TRUE);
				
				IF fbSend.udiStatus = 0 THEN
					bMsgSnd	:= FALSE;
					eSvrStat := SvrActIdle; //TCPSvrProcess
					fbSend(bEn := FALSE);
					
				ELSIF fbSend.udiStatus = 2320 THEN
					bMsgSnd	:= FALSE;
					fbSend(bEn := FALSE);
					
				ELSIF fbSend.udiStatus < 65534 THEN
					bMsgSnd	:= FALSE;
					fbSend(bEn := FALSE);
					
					usiStep	:= 4;
					
				END_IF
				
			ELSE
				fbSend(bEn := FALSE);
				
			END_IF
			
			//Receive
			IF udiTCPIdent <> 0 THEN
				
				fbRcv.udiTCPIdent	:= udiTCPIdent;
				fbRcv.p_BffrDest	:= ADR(sMsgRcv);
				fbRcv.udiBffrSize	:= SIZEOF(sMsgRcv);
				fbRcv(bEn := TRUE);
				
				IF eSvrStat <> SvrActWrite THEN
					eSvrStat := SvrActRead; //TCPSvrProcess
				END_IF
				
				IF fbRcv.udiStatus = 0 THEN
					bMsgRcv	:= TRUE;
					sSvrMsgRcv  := sMsgRcv;  //Evaluate
					fbRcv(bEn := FALSE);
					
				ELSIF fbRcv.udiStatus = 2316 THEN
					fbRcv(bEn := FALSE);
					
					usiStep	:= 4;
					
				ELSIF fbRcv.udiStatus = 2317 THEN //32605- no data is available for reading
				
					fbRcv(bEn := FALSE);
					memset(ADR(sMsgRcv) , 0 , SIZEOF(sMsgRcv));
					
				ELSIF fbRcv.udiStatus < 65534 THEN
					fbRcv(bEn := FALSE);
					
					usiStep	:= 4;
					
				END_IF
				
			ELSE
				fbRcv(bEn := FALSE);
				
			END_IF
			
			IF udiTCPIdent = 0 THEN
				usiStep	:= 0;
			END_IF
			
			IF p_bReconnect = TRUE THEN
				fbSend(bEn := FALSE);
				fbRcv(bEn := FALSE);
				
				usiStep	:= 4;
			END_IF
			
		4:
			//Close Client Ident
			IF udiTCPIdent <> 0 THEN
				
				fbClose.udiTCPIdent	:= udiTCPIdent;
				fbClose(bEn := TRUE);
				
				IF fbClose.udiStatus = 0 THEN
					udiTCPIdent	:= 0;
					fbClose(bEn := FALSE);
					bConnected		:= FALSE;
					
					usiStep	:= 5;
					
				ELSIF fbClose.udiStatus < 65534 THEN
					udiTCPIdent	:= 0;
					fbClose(bEn := FALSE);
					bConnected		:= FALSE;
					
				END_IF
				
			ELSE
				usiStep	:= 5;
				
			END_IF
			
		5:
			//Close Server Ident
			IF udiSvrIdent <> 0 THEN
				
				fbClose.udiTCPIdent	:= udiSvrIdent;
				fbClose(bEn := TRUE);
				
				IF fbClose.udiStatus = 0 THEN
					udiSvrIdent	:= 0;
					fbClose(bEn := FALSE);
					
					usiStep	:= 0;
					
				ELSIF fbClose.udiStatus < 65534 THEN
					udiSvrIdent	:= 0;
					fbClose(bEn := FALSE);
					
				END_IF
				
			ELSE
				usiStep	:= 0;
				
			END_IF
			
	END_CASE
	
END_ACTION
