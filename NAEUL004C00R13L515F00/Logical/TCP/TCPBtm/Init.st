(** 2019-06-02 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_TCPBtmStat		:= ADR(eStat);
	p_TCPBtmStatus		:= ADR(eStatus);
	p_TCPBtmStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_TCPBtmAlmData		:= ADR(tyAlmData);
	
	//Output
	p_TCPBtmFullMsgRd	:= ADR(sFullMsgRd);
	p_TCPBtmMsgRd		:= ADR(sMsgRd);
	p_TCPBtmMsgRdValid	:= ADR(bMsgRdValid);
	p_TCPBtmMsgRdLen	:= ADR(uiMsgRdLen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM