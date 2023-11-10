(** 2019-06-10 **)
ACTION Act_Background_TCPProcess:	
		
	IF tyAIVMsgRcvData.bEnterPW THEN
		
		a_sMsgSend[udiMsgSendBffr] := 'Hello$r$n';
			
		udiMsgSendBffr	:= udiMsgSendBffr + 1;
			
		tyAIVMsgRcvData.bEnterPW	:= FALSE;
		
	ELSIF tyAIVMsgRcvData.bLoginSuccess THEN		
		
		bLoginSuccess := TRUE;
		
		tyAIVMsgRcvData.bLoginSuccess	:= FALSE;
		
		a_sMsgSend[udiMsgSendBffr]	:= 'qc status inprogress$r$nqc status pending$r$n';
		
		udiMsgSendBffr	:= udiMsgSendBffr + 1;		
		
	ELSIF fbSendAliveTimer.Q THEN
		
		fbSendAliveTimer(IN:= FALSE);
		a_sMsgSend[udiMsgSendBffr] := 'onelinestatus$r$n';
		
		udiMsgSendBffr	:= udiMsgSendBffr + 1;
		
		bWaitAliveResponse := TRUE;		
		
	ELSIF p_sMsgSnd <> ''  THEN
		
		a_sMsgSend[udiMsgSendBffr] := p_sMsgSnd;
		p_sMsgSnd	:= '';
	
		udiMsgSendBffr	:= udiMsgSendBffr + 1;
	END_IF
		
	
END_ACTION
