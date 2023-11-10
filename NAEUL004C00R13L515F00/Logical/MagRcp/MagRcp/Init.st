(** 2019-05-04 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_MagRcpStat	:= ADR(eStat);
	p_MagRcpStatus	:= ADR(eStatus);
	p_MagRcpStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_MagRcpAlmData	:= ADR(tyAlmData);
	
	//Output
	p_MagRcpNmExist			:= ADR(bNmExist);
	p_MagRcpNmNotExist		:= ADR(bNmNotExist);
	p_MagRcpNmEmpty			:= ADR(bNmEmpty);
	p_MagRcpListFull		:= ADR(bListFull);
	p_MagRcpCurrList		:= ADR(a_tyCurrList);
	p_MagRcpFilterList		:= ADR(a_tyFilterList);
	p_MagRcpSortedList		:= ADR(a_tySortList);
	p_MagRcpInfoOut			:= ADR(tyInfoOut);
	p_MagRcpFileNotFound	:= ADR(bFileNotFound);
	
	p_MagRcpCurrRcp					:= ADR(tyCurrRcp);
	p_MagRcpCurrRcpNm				:= ADR(tyCurrRcp.sRcpNm);
	p_MagRcpCurrRcpTtlSlt			:= ADR(tyCurrRcp.diTtlSlt);
	p_MagRcpCurrRcpSltToSlt			:= ADR(tyCurrRcp.diSltToSltInUM);
	p_MagRcpCurrRcpMag1Slt1Pos		:= ADR(tyCurrRcp.diMag1Slt1PosInUM);
	p_MagRcpCurrRcpMag2Slt1Pos		:= ADR(tyCurrRcp.diMag2Slt1PosInUM);
	p_MagRcpCurrRcpMag3Slt1Pos		:= ADR(tyCurrRcp.diMag3Slt1PosInUM);
	p_MagRcpCurrRcpMag1TravPos		:= ADR(tyCurrRcp.diMag1TravPosInUM);
	p_MagRcpCurrRcpMag2TravPos		:= ADR(tyCurrRcp.diMag2TravPosInUM);
	p_MagRcpCurrRcpMag3TravPos		:= ADR(tyCurrRcp.diMag3TravPosInUM);
	p_MagRcpCurrRcpDisplayInfo		:= ADR(tyCurrRcp.sDisplayInfo);
	p_MagRcpCurrRcpLastModified		:= ADR(tyCurrRcp.dtLastModified);
	p_MagRcpCurrRcpMagMaxBrdWidth	:= ADR(tyCurrRcp.diMagMaxBrdWidth);
	p_MagRcpCurrRcpMagModel			:= ADR(tyCurrRcp.usiMagModel);
	p_MagRcpCurrRcpSBarDisabled		:= ADR(tyCurrRcp.bSafetyBarDisabled);
	p_MagRcpCurrRcpMagHeightChkEn	:= ADR(tyCurrRcp.bMagHeightChkEn);
	(* Always Change If Project Change *)
	
END_PROGRAM