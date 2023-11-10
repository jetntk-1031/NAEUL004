(** 2019-06-02 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbClntConnect.udiSndBffrSize		:= p_udiSndBffrSize;
	fbClntConnect.udiRcvBffrSize		:= p_udiRcvBffrSize;
	fbClntConnect.udiAliveIdleTmInSec	:= p_udiAliveIdleTmInSec;
	fbClntConnect.tConnectTO			:= p_tConnectTO;
	fbClntConnect(bEn := FALSE);
	
	fbSnd(bEn := FALSE);
	
	fbRcv.udiBffrSize	:= SIZEOF(sFullMsgRd);
	fbRcv.p_BffrDest	:= ADR(sFullMsgRd);
	fbRcv(bEn := FALSE);
	
	fbClose(bEn := FALSE);
	
END_ACTION
