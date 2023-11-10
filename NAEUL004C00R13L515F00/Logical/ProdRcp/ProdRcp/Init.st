(** 2020-06-08 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_ProdRcpStat		:= ADR(eStat);
	p_ProdRcpStatus		:= ADR(eStatus);
	p_ProdRcpStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_ProdRcpAlmData	:= ADR(tyAlmData);
	
	//Output
	p_ProdRcpNmExist		:= ADR(bNmExist);
	p_ProdRcpNmNotExist		:= ADR(bNmNotExist);
	p_ProdRcpNmEmpty		:= ADR(bNmEmpty);
	p_ProdRcpListFull		:= ADR(bListFull);
	p_ProdRcpCurrList		:= ADR(a_tyCurrList);
	p_ProdRcpFilterList		:= ADR(a_tyFilterList);
	p_ProdRcpSortedList				:= ADR(a_tySortList);
	p_ProdRcpScanList				:= ADR(a_tyScanList);
	p_ProdRcpInfoOut		:= ADR(tyInfoOut);
	p_ProdRcpFileNotFound	:= ADR(bFileNotFound);
	p_ProdRcpCurrRcpAll		:= ADR(a_tyCurrRcp);
	p_ProdRcpCurrRcp0				:= ADR(a_tyCurrRcp[0]);
	p_ProdRcpCurrRcp0Nm				:= ADR(a_tyCurrRcp[0].sRcpNm);
	p_ProdRcpCurrRcp0Width			:= ADR(a_tyCurrRcp[0].diWidthInUM);
	p_ProdRcpCurrRcp0MinSltValue	:= ADR(a_tyCurrRcp[0].diMinSltValue);
	p_ProdRcpCurrRcp0MaxSltValue	:= ADR(a_tyCurrRcp[0].diMaxSltValue);
	p_ProdRcpCurrRcp0Pitch			:= ADR(a_tyCurrRcp[0].diPitch);
	p_ProdRcpCurrRcp0BrdPerSlt		:= ADR(a_tyCurrRcp[0].diBrdPerSlt);
	p_ProdRcpCurrRcp0McMod			:= ADR(a_tyCurrRcp[0].usiMcMod);
	p_ProdRcpCurrRcp0TopToBtm		:= ADR(a_tyCurrRcp[0].bTopToBtm);
	p_ProdRcpCurrRcp0GapBtwnBrd		:= ADR(a_tyCurrRcp[0].bGapBwtnBrd);
	p_ProdRcpCurrRcp0LongBrd		:= ADR(a_tyCurrRcp[0].bLongBrd);
	p_ProdRcpCurrRcp0MinReqFreeBffr	:= ADR(a_tyCurrRcp[0].diMinReqFreeBffr);
	p_ProdRcpCurrRcp0DisplayInfo	:= ADR(a_tyCurrRcp[0].sDisplayInfo);
	p_ProdRcpCurrRcp0LastModified	:= ADR(a_tyCurrRcp[0].dtLastModified);
	p_ProdRcpCurrRcp0Width2 		:= ADR(a_tyCurrRcp[0].diWidthInUM2);
	p_ProdRcpCurrRcp0PshrPulerOffset:= ADR(a_tyCurrRcp[0].diPshrOffset);
	p_ProdRcpCurrRcp0MtrPshrExtSpd	:= ADR(a_tyCurrRcp[0].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp0MtrPshrExtTorq	:= ADR(a_tyCurrRcp[0].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp0PshrOffset		:= ADR(a_tyCurrRcp[0].diPshrOffset);
	
	p_ProdRcpCurrRcp1				:= ADR(a_tyCurrRcp[1]);
	p_ProdRcpCurrRcp1Nm				:= ADR(a_tyCurrRcp[1].sRcpNm);
	p_ProdRcpCurrRcp1Width			:= ADR(a_tyCurrRcp[1].diWidthInUM);
	p_ProdRcpCurrRcp1MinSltValue	:= ADR(a_tyCurrRcp[1].diMinSltValue);
	p_ProdRcpCurrRcp1MaxSltValue	:= ADR(a_tyCurrRcp[1].diMaxSltValue);
	p_ProdRcpCurrRcp1Pitch			:= ADR(a_tyCurrRcp[1].diPitch);
	p_ProdRcpCurrRcp1BrdPerSlt		:= ADR(a_tyCurrRcp[1].diBrdPerSlt);
	p_ProdRcpCurrRcp1McMod			:= ADR(a_tyCurrRcp[1].usiMcMod);
	p_ProdRcpCurrRcp1TopToBtm		:= ADR(a_tyCurrRcp[1].bTopToBtm);
	p_ProdRcpCurrRcp1GapBtwnBrd		:= ADR(a_tyCurrRcp[1].bGapBwtnBrd);
	p_ProdRcpCurrRcp1LongBrd		:= ADR(a_tyCurrRcp[1].bLongBrd);
	p_ProdRcpCurrRcp1MinReqFreeBffr	:= ADR(a_tyCurrRcp[1].diMinReqFreeBffr);
	p_ProdRcpCurrRcp1DisplayInfo	:= ADR(a_tyCurrRcp[1].sDisplayInfo);
	p_ProdRcpCurrRcp1LastModified	:= ADR(a_tyCurrRcp[1].dtLastModified);
	p_ProdRcpCurrRcp1Width2 		:= ADR(a_tyCurrRcp[1].diWidthInUM2);
	p_ProdRcpCurrRcp1PshrPulerOffset:= ADR(a_tyCurrRcp[1].diPshrOffset);
	p_ProdRcpCurrRcp1MtrPshrExtSpd	:= ADR(a_tyCurrRcp[1].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp1MtrPshrExtTorq	:= ADR(a_tyCurrRcp[1].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp1PshrOffset		:= ADR(a_tyCurrRcp[1].diPshrOffset);
	
	p_ProdRcpCurrRcp2				:= ADR(a_tyCurrRcp[2]);
	p_ProdRcpCurrRcp2Nm				:= ADR(a_tyCurrRcp[2].sRcpNm);
	p_ProdRcpCurrRcp2Width			:= ADR(a_tyCurrRcp[2].diWidthInUM);
	p_ProdRcpCurrRcp2MinSltValue	:= ADR(a_tyCurrRcp[2].diMinSltValue);
	p_ProdRcpCurrRcp2MaxSltValue	:= ADR(a_tyCurrRcp[2].diMaxSltValue);
	p_ProdRcpCurrRcp2Pitch			:= ADR(a_tyCurrRcp[2].diPitch);
	p_ProdRcpCurrRcp2BrdPerSlt		:= ADR(a_tyCurrRcp[2].diBrdPerSlt);
	p_ProdRcpCurrRcp2McMod			:= ADR(a_tyCurrRcp[2].usiMcMod);
	p_ProdRcpCurrRcp2TopToBtm		:= ADR(a_tyCurrRcp[2].bTopToBtm);
	p_ProdRcpCurrRcp2GapBtwnBrd		:= ADR(a_tyCurrRcp[2].bGapBwtnBrd);
	p_ProdRcpCurrRcp2LongBrd		:= ADR(a_tyCurrRcp[2].bLongBrd);
	p_ProdRcpCurrRcp2MinReqFreeBffr	:= ADR(a_tyCurrRcp[2].diMinReqFreeBffr);
	p_ProdRcpCurrRcp2DisplayInfo	:= ADR(a_tyCurrRcp[2].sDisplayInfo);
	p_ProdRcpCurrRcp2LastModified	:= ADR(a_tyCurrRcp[2].dtLastModified);
	p_ProdRcpCurrRcp2Width2 		:= ADR(a_tyCurrRcp[2].diWidthInUM2);
	p_ProdRcpCurrRcp2PshrPulerOffset:= ADR(a_tyCurrRcp[2].diPshrOffset);
	p_ProdRcpCurrRcp2MtrPshrExtSpd	:= ADR(a_tyCurrRcp[2].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp2MtrPshrExtTorq	:= ADR(a_tyCurrRcp[2].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp2PshrOffset		:= ADR(a_tyCurrRcp[2].diPshrOffset);
	
	p_ProdRcpCurrRcp3				:= ADR(a_tyCurrRcp[3]);
	p_ProdRcpCurrRcp3Nm				:= ADR(a_tyCurrRcp[3].sRcpNm);
	p_ProdRcpCurrRcp3Width			:= ADR(a_tyCurrRcp[3].diWidthInUM);
	p_ProdRcpCurrRcp3MinSltValue	:= ADR(a_tyCurrRcp[3].diMinSltValue);
	p_ProdRcpCurrRcp3MaxSltValue	:= ADR(a_tyCurrRcp[3].diMaxSltValue);
	p_ProdRcpCurrRcp3Pitch			:= ADR(a_tyCurrRcp[3].diPitch);
	p_ProdRcpCurrRcp3BrdPerSlt		:= ADR(a_tyCurrRcp[3].diBrdPerSlt);
	p_ProdRcpCurrRcp3McMod			:= ADR(a_tyCurrRcp[3].usiMcMod);
	p_ProdRcpCurrRcp3TopToBtm		:= ADR(a_tyCurrRcp[3].bTopToBtm);
	p_ProdRcpCurrRcp3GapBtwnBrd		:= ADR(a_tyCurrRcp[3].bGapBwtnBrd);
	p_ProdRcpCurrRcp3LongBrd		:= ADR(a_tyCurrRcp[3].bLongBrd);
	p_ProdRcpCurrRcp3MinReqFreeBffr	:= ADR(a_tyCurrRcp[3].diMinReqFreeBffr);
	p_ProdRcpCurrRcp3DisplayInfo	:= ADR(a_tyCurrRcp[3].sDisplayInfo);
	p_ProdRcpCurrRcp3LastModified	:= ADR(a_tyCurrRcp[3].dtLastModified);
	p_ProdRcpCurrRcp3Width2 		:= ADR(a_tyCurrRcp[3].diWidthInUM2);
	p_ProdRcpCurrRcp3PshrPulerOffset:= ADR(a_tyCurrRcp[3].diPshrOffset);
	p_ProdRcpCurrRcp3MtrPshrExtSpd	:= ADR(a_tyCurrRcp[3].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp3MtrPshrExtTorq	:= ADR(a_tyCurrRcp[3].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp3PshrOffset		:= ADR(a_tyCurrRcp[3].diPshrOffset);
	
	p_ProdRcpCurrRcp4				:= ADR(a_tyCurrRcp[4]);
	p_ProdRcpCurrRcp4Nm				:= ADR(a_tyCurrRcp[4].sRcpNm);
	p_ProdRcpCurrRcp4Width			:= ADR(a_tyCurrRcp[4].diWidthInUM);
	p_ProdRcpCurrRcp4MinSltValue	:= ADR(a_tyCurrRcp[4].diMinSltValue);
	p_ProdRcpCurrRcp4MaxSltValue	:= ADR(a_tyCurrRcp[4].diMaxSltValue);
	p_ProdRcpCurrRcp4Pitch			:= ADR(a_tyCurrRcp[4].diPitch);
	p_ProdRcpCurrRcp4BrdPerSlt		:= ADR(a_tyCurrRcp[4].diBrdPerSlt);
	p_ProdRcpCurrRcp4McMod			:= ADR(a_tyCurrRcp[4].usiMcMod);
	p_ProdRcpCurrRcp4TopToBtm		:= ADR(a_tyCurrRcp[4].bTopToBtm);
	p_ProdRcpCurrRcp4GapBtwnBrd		:= ADR(a_tyCurrRcp[4].bGapBwtnBrd);
	p_ProdRcpCurrRcp4LongBrd		:= ADR(a_tyCurrRcp[4].bLongBrd);
	p_ProdRcpCurrRcp4MinReqFreeBffr	:= ADR(a_tyCurrRcp[4].diMinReqFreeBffr);
	p_ProdRcpCurrRcp4DisplayInfo	:= ADR(a_tyCurrRcp[4].sDisplayInfo);
	p_ProdRcpCurrRcp4LastModified	:= ADR(a_tyCurrRcp[4].dtLastModified);
	p_ProdRcpCurrRcp4Width2 		:= ADR(a_tyCurrRcp[4].diWidthInUM2);
	p_ProdRcpCurrRcp4PshrPulerOffset:= ADR(a_tyCurrRcp[4].diPshrOffset);
	p_ProdRcpCurrRcp4MtrPshrExtSpd	:= ADR(a_tyCurrRcp[4].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp4MtrPshrExtTorq	:= ADR(a_tyCurrRcp[4].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp4PshrOffset		:= ADR(a_tyCurrRcp[4].diPshrOffset);
	
	p_ProdRcpCurrRcp5				:= ADR(a_tyCurrRcp[5]);
	p_ProdRcpCurrRcp5Nm				:= ADR(a_tyCurrRcp[5].sRcpNm);
	p_ProdRcpCurrRcp5Width			:= ADR(a_tyCurrRcp[5].diWidthInUM);
	p_ProdRcpCurrRcp5MinSltValue	:= ADR(a_tyCurrRcp[5].diMinSltValue);
	p_ProdRcpCurrRcp5MaxSltValue	:= ADR(a_tyCurrRcp[5].diMaxSltValue);
	p_ProdRcpCurrRcp5Pitch			:= ADR(a_tyCurrRcp[5].diPitch);
	p_ProdRcpCurrRcp5BrdPerSlt		:= ADR(a_tyCurrRcp[5].diBrdPerSlt);
	p_ProdRcpCurrRcp5McMod			:= ADR(a_tyCurrRcp[5].usiMcMod);
	p_ProdRcpCurrRcp5TopToBtm		:= ADR(a_tyCurrRcp[5].bTopToBtm);
	p_ProdRcpCurrRcp5GapBtwnBrd		:= ADR(a_tyCurrRcp[5].bGapBwtnBrd);
	p_ProdRcpCurrRcp5LongBrd		:= ADR(a_tyCurrRcp[5].bLongBrd);
	p_ProdRcpCurrRcp5MinReqFreeBffr	:= ADR(a_tyCurrRcp[5].diMinReqFreeBffr);
	p_ProdRcpCurrRcp5DisplayInfo	:= ADR(a_tyCurrRcp[5].sDisplayInfo);
	p_ProdRcpCurrRcp5LastModified	:= ADR(a_tyCurrRcp[5].dtLastModified);
	p_ProdRcpCurrRcp5Width2			:= ADR(a_tyCurrRcp[5].diWidthInUM2);
	p_ProdRcpCurrRcp5PshrPulerOffset:= ADR(a_tyCurrRcp[5].diPshrOffset);
	p_ProdRcpCurrRcp5MtrPshrExtSpd	:= ADR(a_tyCurrRcp[5].diMtrPshrExtSpd);
	p_ProdRcpCurrRcp5MtrPshrExtTorq	:= ADR(a_tyCurrRcp[5].diMtrPshrExtTorq);
	p_ProdRcpCurrRcp5PshrOffset		:= ADR(a_tyCurrRcp[5].diPshrOffset);
	
	
	
	(* Always Change If Project Change *)
	
END_PROGRAM