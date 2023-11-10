(** 2020-09-10 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_TCPStat		:= ADR(eStat);
	p_TCPStatus		:= ADR(eMainStatus);
	p_TCPStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_TCPAlmData	:= ADR(tyAlmData);
	p_TCPAlmData1	:= ADR(tyAlmData1);
	p_TCPAlmData2	:= ADR(tyAlmData2);
	p_TCPAlmData3	:= ADR(tyAlmData3);
	
	//Output
	p_TCPConnected				:= ADR(bConnected);
	p_TCPHistoryList			:= ADR(a_tyHistoryList);	
	p_TCPAIVBatteryLvl			:= ADR(sExtractBatteryLvl);
	p_TCPAIVCurrentBatteryLvl	:= ADR(rCurrentBatteryLvl);
	p_TCPMsgRcvData				:= ADR(tyAIVMsgRcvData); //Client
	
	p_TCPSvrMsgRcvData			:= ADR(sSvrMsgRcv);
	p_TCPSvrAGVStatus1			:= ADR(eMagAGVStatus[0]);
	p_TCPSvrAGVStatus2			:= ADR(eMagAGVStatus[1]);
	p_TCPSvrAGVStatus3			:= ADR(eMagAGVStatus[2]);
	p_TCPSvrAGVStatus4			:= ADR(eMagAGVStatus[3]);
	
	p_TCPSvrUBA					:= ADR(bUBA);
	p_TCPSvrUBA2				:= ADR(bUBA2);
	p_TCPSvrDSB					:= ADR(bDSB);
	p_TCPSvrDSB2				:= ADR(bDSB2);
	(* Always Change If Project Change *)
	
END_PROGRAM
