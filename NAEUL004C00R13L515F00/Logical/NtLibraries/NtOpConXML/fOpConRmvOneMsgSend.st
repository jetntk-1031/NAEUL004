
(* OpCon Remove One Message Send Buffer *)
FUNCTION fOpConRmvOneMsgSend
	
	fOpConRmvOneMsgSend	:= TRUE;
	
	memcpy(ADR(pa_eMsgSend[0]) , ADR(pa_eMsgSend[1]) , SIZEOF(pa_eMsgSend[0]) * 50);
	pa_eMsgSend[50]	:= OpConMsgTypeNA;
	p_udiIdx		:= p_udiIdx - 1;
	
END_FUNCTION
