(** 2021-08-01 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbCreateSvr.udiSndBffrSize		:= p_udiSndBffrSize;
	fbCreateSvr.udiRcvBffrSize		:= p_udiRcvBffrSize;
	fbCreateSvr.udiAliveIdleTmInSec	:= p_udiAliveIdleTimeInSec;
	fbCreateSvr(bEn := FALSE);
	
	fbListen(bEn := FALSE);
	
	fbRcv.udiBffrSize	:= SIZEOF(sRcv);
	fbRcv.p_BffrDest	:= ADR(sRcv);
	fbRcv(bEn := FALSE);
	
	fbSend.p_BffrDest	:= ADR(sSnd);
	fbSend(bEn := FALSE);
	
	fbCloseSvr(bEn := FALSE);
	fbCloseClnt(bEn := FALSE);
	
	fbParseXMLTable.p_XMLTable	:= ADR(a_tyXMLTableDataRcv);
	
	fbCheckAlive(bEn := FALSE);
	
	fbCheckAliveSendPing(bEn := FALSE);
	
	fbCheckAliveRcvPing(bEn := FALSE);
	
	fbSequenceSvy.p_tyMsgTypeRcv	:= ADR(tyMsgTypeRcv);
	fbSequenceSvy(bEn := FALSE);
	
	fbSequenceTO(bEn := FALSE);
	
	fbFileAppend1.sDevice	:= 'Log';
	fbFileAppend1(bEn := FALSE);
	
	fbFileOldDel1.sDevice			:= 'Log';
	fbFileOldDel1.sPath				:= '';
	fbFileOldDel1.sKeyword			:= p_sProgNm;
	fbFileOldDel1.udiFileKeepDay	:= p_udiFileKeepDay;
	fbFileOldDel1(bEn := FALSE);
	
	fbFileRead1.sDevice			:= 'Retain';
	fbFileRead1.sFile			:= p_sRetainFileName;
	fbFileRead1.udiOffset		:= 0;
	fbFileRead1(bEn := FALSE);
	
	fbFileWrite1.sDevice		:= 'Retain';
	fbFileWrite1.sFile			:= p_sRetainFileName;
	fbFileWrite1.udiOffset		:= 0;
	fbFileWrite1.udiOption		:= 0;
	fbFileWrite1(bEn := FALSE);
	
	fbFileRead2.sDevice			:= 'Retain';
	fbFileRead2.sFile			:= p_sRetainFileName1;
	fbFileRead2.udiOffset		:= 0;
	fbFileRead2(bEn := FALSE);
	
	fbFileWrite2.sDevice		:= 'Retain';
	fbFileWrite2.sFile			:= p_sRetainFileName1;
	fbFileWrite2.udiOffset		:= 0;
	fbFileWrite2.udiOption		:= 0;
	fbFileWrite2(bEn := FALSE);
	
	fbFileRead3.sDevice			:= 'Retain';
	fbFileRead3.sFile			:= p_sRetainFileName2;
	fbFileRead3.udiOffset		:= 0;
	fbFileRead3(bEn := FALSE);
	
	fbFileWrite3.sDevice		:= 'Retain';
	fbFileWrite3.sFile			:= p_sRetainFileName2;
	fbFileWrite3.udiOffset		:= 0;
	fbFileWrite3.udiOption		:= 0;
	fbFileWrite3(bEn := FALSE);
	
	
	fbFileRead4.sDevice			:= 'Retain';
	fbFileRead4.sFile			:= p_sRetainFileName3;
	fbFileRead4.udiOffset		:= 0;
	fbFileRead4(bEn := FALSE);
	
	fbFileWrite4.sDevice		:= 'Retain';
	fbFileWrite4.sFile			:= p_sRetainFileName3;
	fbFileWrite4.udiOffset		:= 0;
	fbFileWrite4.udiOption		:= 0;
	fbFileWrite4(bEn := FALSE);
	
	
	diReqLoaderWidthInUM := REAL_TO_DINT(tySendWorkOrderInfoAcc.tyData.rWidth * 1000);
	
	
	
	
	
END_ACTION
