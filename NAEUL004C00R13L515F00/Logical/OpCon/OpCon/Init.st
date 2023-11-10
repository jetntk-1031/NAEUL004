(** 2019-06-10 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_OpConStat		:= ADR(eStat);
	p_OpConStatus	:= ADR(eMainStatus);
	p_OpConStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_OpConAlmData	:= ADR(tyAlmData);
	p_OpConAlmData1	:= ADR(tyAlmData1);
	p_OpConInfoData	:= ADR(tyInfoData);
	
	//Output
	p_OpConTableDataBrdAvl			:= ADR(a_tyXMLTableDataBrdAvl);
	p_OpConTableDataBrdAvlTtlIdx	:= ADR(iXMLTableDataBrdAvlTtlIdx);
	p_OpConConnected				:= ADR(bConnected);
	p_OpConHandshakeDone			:= ADR(bHandshakeDone);
	p_OpConOverWriteSlt			:= ADR(bOverWriteSlt);
	p_OpConOverWriteWidth		:= ADR(bOverWriteWidth);
	p_OpConReqRecipeNm			:= ADR(sReqRecipeNm);
	p_OpConReqWidthInUM			:= ADR(diReqWidthInUM);
	p_OpConInternalSnd			:= ADR(sInternalSnd);
	
	p_OpConPartRcvRetCode		:= ADR(tyPartReceive);
	p_OpConPlcGrabRcvCode			:= ADR(tyPlcGrab);
	(* Always Change If Project Change *)
	
END_PROGRAM
