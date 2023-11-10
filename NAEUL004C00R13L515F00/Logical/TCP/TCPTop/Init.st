(** 2019-06-02 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_TCPTopStat		:= ADR(eStat);
	p_TCPTopStatus		:= ADR(eStatus);
	p_TCPTopStatTxt		:= ADR(sStatTxt);
	
	//Alarm
	p_TCPTopAlmData		:= ADR(tyAlmData);
	
	//Output
	p_TCPTopFullMsgRd	:= ADR(sFullMsgRd);
	p_TCPTopMsgRd		:= ADR(sMsgRd);
	p_TCPTopMsgRdValid	:= ADR(bMsgRdValid);
	p_TCPTopMsgRdLen	:= ADR(uiMsgRdLen);
	
	(* Always Change If Project Change *)
	
END_PROGRAM