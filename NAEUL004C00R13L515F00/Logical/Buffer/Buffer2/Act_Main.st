(** 2019-07-03 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbDirCreate1(bEn := FALSE);
		fbDirCreate2(bEn := FALSE);
		fbFileRead1(bEn := FALSE);
		fbFileWrite1(bEn := FALSE);
		usiStep	:= 0;
				
		bFileNotFound			:= FALSE;
		bNewProduct				:= FALSE;
		bLastProductUnload		:= FALSE;
		bLastProductLeftInBffr	:= FALSE;
			
		sStatTxt	:= a_sStatText[eStat];
		
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		BufferActIdle:
			eStatus	:= Idle;
		
		BufferActCreateDir:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Retain Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		BufferActGetRetainBffr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileRead1(bEn := TRUE);
				IF fbFileRead1.udiStatus = 0 THEN
					eStatus	:= Done;
					
					tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
					tyBffrParameter.diSltCap		:= p_diSltCap;
		
					fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
					fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10002;	//File Open Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10003;	//File Read Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10004;	//File Close Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		BufferActSetFull:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyBffrParameter.bAscending		:= p_bAscending;
						tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
						tyBffrParameter.diMaxSlt		:= p_diMaxSlt;
						tyBffrParameter.diMinSlt		:= p_diMinSlt;
						tyBffrParameter.diPitch			:= p_diPitch;
						tyBffrParameter.diSltCap		:= p_diSltCap;
						tyBffrParameter.a_bSkip			:= pa_bSkip;
						bFIFOOld						:= p_bFIFO;
		
						udiStatus	:= fBffrSetFull(ADR(p_tyBuffer) , tyBffrParameter , p_dtCurrDT , p_sBffrNm , p_sProdNm);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
							fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
						ELSE
							eStatus	:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10005;	//File Open Error While Setting Full Buffer
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10006;	//File Create Error While Setting Full Buffer
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10007;	//File Write Error While Setting Full Buffer
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10008;	//File Close Error While Setting Full Buffer
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10040;	//Directory Does Not Exist While Setting Full Buffer
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActSetMty:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyBffrParameter.bAscending		:= p_bAscending;
						tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
						tyBffrParameter.diMaxSlt		:= p_diMaxSlt;
						tyBffrParameter.diMinSlt		:= p_diMinSlt;
						tyBffrParameter.diPitch			:= p_diPitch;
						tyBffrParameter.diSltCap		:= p_diSltCap;
						tyBffrParameter.a_bSkip			:= pa_bSkip;
						bFIFOOld						:= p_bFIFO;
		
						udiStatus	:= fBffrSetMty(ADR(p_tyBuffer) , tyBffrParameter , p_sBffrNm);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
							fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
						ELSE
							eStatus	:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10009;	//File Open Error While Setting Empty Buffer
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10010;	//File Create Error While Setting Empty Buffer
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10011;	//File Write Error While Setting Empty Buffer
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10012;	//File Close Error While Setting Empty Buffer
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10041;	//Directory Does Not Exist While Setting Empty Buffer
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActLoad:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						udiStatus	:= fBffrLoad(ADR(p_tyBuffer) , ADR(bNewProduct) , diCurrSlt , p_dtCurrDT , p_bGdBrdIn , p_sProdNm , p_sBarcode1 , p_sBarcode2);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
							tyBffrParameter.diSltCap		:= p_diSltCap;
		
							fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
							fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
						ELSE
							eStatus	:= Error;
							
							IF udiStatus = 1010 THEN
								udiStatus	:= 10076;	//Loading Slot Is Not For Board
							ELSIF udiStatus = 1011 THEN
								udiStatus	:= 10077;	//Loading Slot Is Full Of Board
							ELSIF udiStatus = 1012 THEN
								udiStatus	:= 10078;	//Loading First Sub-Slot Is Not For Board
							ELSIF udiStatus	= 1013 THEN
								udiStatus	:= 10079;	//Loading Last Sub-Slot Have Board, Which Mean Slot Is Full Of Board
							ELSIF udiStatus = 1014 THEN
								udiStatus	:= 10080;	//Loading Last Sub-Slot Is Not For Board
							ELSIF udiStatus = 1015 THEN
								udiStatus	:= 10081;	//Loading Slot Is Full Of Board
							ELSIF udiStatus = 1001 THEN
								udiStatus	:= 10082;	//Loading Slot Is Skipped
							ELSIF udiStatus	= 1016 THEN
								udiStatus	:= 10083;	//Existing Board Status Is Different With Loading Board Status
							END_IF
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10013;	//File Open Error While Loading Info To Buffer
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10014;	//File Create Error While Loading Info To Buffer
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10015;	//File Write Error While Loading Info To Buffer
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10016;	//File Close Error While Loading Info To Buffer
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10042;	//Directory Does Not Exist While Loading Info To Buffer
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActLoadSltChk:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						IF p_bNxtLoadSeq = TRUE AND p_bGdBrdIn = TRUE THEN
							diExpectedSlt	:= fBffrNxtLoadSeqGd(p_bAscending , p_tyBuffer);
						ELSIF p_bNxtLoadSeq = TRUE AND p_bGdBrdIn = FALSE THEN
							diExpectedSlt	:= fBffrNxtLoadSeqBad(p_bAscending , p_tyBuffer);
						ELSIF p_bNxtLoadSeq = FALSE AND p_bGdBrdIn = TRUE THEN
							diExpectedSlt	:= fBffrNxtLoadNearbyGd(diCurrSlt , p_tyBuffer);
						ELSE
							diExpectedSlt	:= fBffrNxtLoadNearbyBad(diCurrSlt , p_tyBuffer);
						END_IF
				
						IF diCurrSlt = diExpectedSlt THEN
							udiStatus	:= fBffrLoad(ADR(p_tyBuffer) , ADR(bNewProduct) , diCurrSlt , p_dtCurrDT , p_bGdBrdIn , p_sProdNm , p_sBarcode1 , p_sBarcode2);
					
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= p_diSltCap;
		
								fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
								fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
							ELSE
								eStatus	:= Error;
						
								IF udiStatus = 1010 THEN
									udiStatus	:= 10084;	//Loading Slot Is Not For Board
								ELSIF udiStatus = 1011 THEN
									udiStatus	:= 10085;	//Loading Slot Is Full Of Board
								ELSIF udiStatus = 1012 THEN
									udiStatus	:= 10086;	//Loading First Sub-Slot Is Not For Board
								ELSIF udiStatus	= 1013 THEN
									udiStatus	:= 10087;	//Loading Last Sub-Slot Have Board, Which Mean Slot Is Full Of Board
								ELSIF udiStatus = 1014 THEN
									udiStatus	:= 10088;	//Loading Last Sub-Slot Is Not For Board
								ELSIF udiStatus = 1015 THEN
									udiStatus	:= 10089;	//Loading Slot Is Full Of Board
								ELSIF udiStatus = 1001 THEN
									udiStatus	:= 10090;	//Loading Slot Is Skipped
								ELSIF udiStatus	= 1016 THEN
									udiStatus	:= 10091;	//Existing Board Status Is Different With Loading Board Status
								END_IF
					
							END_IF
					
						ELSE
							udiStatus	:= 10017;	//Wrong Slot Number To Load
							eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10018;	//File Open Error While Loading Info To Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10019;	//File Create Error While Loading Info To Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10020;	//File Write Error While Loading Info To Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10021;	//File Close Error While Loading Info To Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10043;	//Directory Does Not Exist While Loading Info To Buffer With Slot Check
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActUnload:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						udiStatus	:= fBffrUnload(ADR(tyBoardUnloadStat) , ADR(p_tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , diCurrSlt);
					
						IF p_sCurrRcpNm = tyBoardUnloadStat.sProdNm THEN
							bLastProductUnload	:= FALSE;
						END_IF
						
						IF udiStatus = 0 THEN
							usiStep	:= 1;
						
							tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
							tyBffrParameter.diSltCap		:= p_diSltCap;
		
							fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
							fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
						ELSE
							eStatus	:= Error;
						
							IF udiStatus = 1000 THEN
								udiStatus	:= 10048;	//Unloading Slot Is Skipped While Unloading Buffer
							ELSIF udiStatus = 1003 THEN
								udiStatus	:= 10049;	//Unloading Slot Is Not For Board While Unloading Buffer
							ELSIF udiStatus = 1004 THEN
								udiStatus	:= 10050;	//Unloading Slot Board Is Not available While Unloading Buffer
							ELSIF udiStatus = 1005 THEN
								udiStatus	:= 10051;	//Unloading Last Sub Slot Is Not For Board While Unloading Buffer
							ELSIF udiStatus = 1006 THEN
								udiStatus	:= 10052;	//Unloading Last Sub Slot Has No Board While Unloading Buffer
							ELSIF udiStatus = 1007 THEN
								udiStatus	:= 10053;	//Board Quantity In Slot Is 0 While Unloading Buffer
							ELSIF udiStatus = 1008 THEN
								udiStatus	:= 10054;	//Board Capacity In Slot Is 0 While Unloading Buffer
							END_IF
							
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10022;	//File Open Error While Unloading Info From Buffer
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10023;	//File Create Error While Unloading Info From Buffer
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10024;	//File Write Error While Unloading Info From Buffer
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10025;	//File Close Error While Unloading Info From Buffer
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10044;	//Directory Does Not Exist While Unloading Info From Buffer
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActUnloadSltChk:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						IF p_bFIFO = TRUE AND p_bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOGd(p_tyBuffer , '');
						ELSIF p_bFIFO = TRUE AND p_bGdBrdReq = FALSE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOBad(p_tyBuffer , '');
						ELSIF p_bFIFO = FALSE AND p_bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadLIFOGd(p_tyBuffer , '');
						ELSE
							diExpectedSlt	:= fBffrNxtUnloadLIFOBad(p_tyBuffer , '');
						END_IF
				
						IF diCurrSlt = diExpectedSlt THEN
							udiStatus	:= fBffrUnload(ADR(tyBoardUnloadStat) , ADR(p_tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , diCurrSlt);
					
							IF p_sCurrRcpNm = tyBoardUnloadStat.sProdNm THEN
								bLastProductUnload	:= FALSE;
							END_IF
						
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= p_diSltCap;
		
								fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
								fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
							ELSE
								eStatus	:= Error;
						
								IF udiStatus = 1000 THEN
									udiStatus	:= 10055;	//Unloading Slot Is Skipped While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1003 THEN
									udiStatus	:= 10056;	//Unloading Slot Is Not For Board While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1004 THEN
									udiStatus	:= 10057;	//Unloading Slot Board Is Not available While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1005 THEN
									udiStatus	:= 10058;	//Unloading Last Sub Slot Is Not For Board While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1006 THEN
									udiStatus	:= 10059;	//Unloading Last Sub Slot Has No Board While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1007 THEN
									udiStatus	:= 10060;	//Board Quantity In Slot Is 0 While Unloading Buffer With Slot Check
								ELSIF udiStatus = 1008 THEN
									udiStatus	:= 10061;	//Board Capacity In Slot Is 0 While Unloading Buffer With Slot Check
								END_IF
							
							END_IF
					
						ELSE
							udiStatus	:= 10026;	//Wrong Slot Number To Unload
							eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10027;	//File Open Error While Unloading Info From Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10028;	//File Create Error While Unloading Info From Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10029;	//File Write Error While Unloading Info From Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10030;	//File Close Error While Unloading Info From Buffer With Slot Check
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10045;	//Directory Does Not Exist While Unloading Info From Buffer With Slot Check
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActUnloadCoolChk:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(diCurrSlt, p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
				
						IF bCoolNotRdy = FALSE THEN
							udiStatus	:= fBffrUnload(ADR(tyBoardUnloadStat) , ADR(p_tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , diCurrSlt);
					
							IF p_sCurrRcpNm = tyBoardUnloadStat.sProdNm THEN
								bLastProductUnload	:= FALSE;
							END_IF
						
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= p_diSltCap;
		
								fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
								fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
							ELSE
								eStatus	:= Error;
						
								IF udiStatus = 1000 THEN
									udiStatus	:= 10062;	//Unloading Slot Is Skipped While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1003 THEN
									udiStatus	:= 10063;	//Unloading Slot Is Not For Board While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1004 THEN
									udiStatus	:= 10064;	//Unloading Slot Board Is Not available While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1005 THEN
									udiStatus	:= 10065;	//Unloading Last Sub Slot Is Not For Board While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1006 THEN
									udiStatus	:= 10066;	//Unloading Last Sub Slot Has No Board While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1007 THEN
									udiStatus	:= 10067;	//Board Quantity In Slot Is 0 While Unloading Buffer With Cool Check
								ELSIF udiStatus = 1008 THEN
									udiStatus	:= 10068;	//Board Capacity In Slot Is 0 While Unloading Buffer With Cool Check
								END_IF
							
							END_IF
					
						ELSE
							eStatus	:= Done;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10031;	//File Open Error While Unloading Info From Buffer With Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10032;	//File Create Error While Unloading Info From Buffer With Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10033;	//File Write Error While Unloading Info From Buffer With Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10034;	//File Close Error While Unloading Info From Buffer With Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10046;	//Directory Does Not Exist While Unloading Info From Buffer With Cooling Time Check
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActUnloadSltChkCoolChk:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
				
						IF p_bFIFO = TRUE AND p_bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOGd(p_tyBuffer , '');
						ELSIF p_bFIFO = TRUE AND p_bGdBrdReq = FALSE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOBad(p_tyBuffer , '');
						ELSIF p_bFIFO = FALSE AND p_bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadLIFOGd(p_tyBuffer , '');
						ELSE
							diExpectedSlt	:= fBffrNxtUnloadLIFOBad(p_tyBuffer , '');
						END_IF
				
						IF diCurrSlt = diExpectedSlt THEN
							bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(diCurrSlt, p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
					
							IF bCoolNotRdy = FALSE THEN
								udiStatus	:= fBffrUnload(ADR(tyBoardUnloadStat) , ADR(p_tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , diCurrSlt);
						
								IF p_sCurrRcpNm = tyBoardUnloadStat.sProdNm THEN
									bLastProductUnload	:= FALSE;
								END_IF
						
								IF udiStatus = 0 THEN
									usiStep	:= 1;
							
									tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
									tyBffrParameter.diSltCap		:= p_diSltCap;
		
									fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
									fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
								ELSE
									eStatus	:= Error;
							
									IF udiStatus = 1000 THEN
										udiStatus	:= 10069;	//Unloading Slot Is Skipped While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1003 THEN
										udiStatus	:= 10070;	//Unloading Slot Is Not For Board While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1004 THEN
										udiStatus	:= 10071;	//Unloading Slot Board Is Not available While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1005 THEN
										udiStatus	:= 10072;	//Unloading Last Sub Slot Is Not For Board While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1006 THEN
										udiStatus	:= 10073;	//Unloading Last Sub Slot Has No Board While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1007 THEN
										udiStatus	:= 10074;	//Board Quantity In Slot Is 0 While Unloading Buffer With Cool & Slot Check
									ELSIF udiStatus = 1008 THEN
										udiStatus	:= 10075;	//Board Capacity In Slot Is 0 While Unloading Buffer With Cool & Slot Check
									END_IF
							
								END_IF
						
							ELSE
								eStatus	:= Done;
						
							END_IF
					
						ELSE
							udiStatus	:= 10035;	//Wrong Slot Number To Unload With Cooling Time Check
							eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							eStatus	:= Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10036;	//File Open Error While Unloading Info From Buffer With Slot Check And Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10037;	//File Create Error While Unloading Info From Buffer With Slot Check And Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10038;	//File Write Error While Unloading Info From Buffer With Slot Check And Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10039;	//File Close Error While Unloading Info From Buffer With Slot Check And Cooling Time Check
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10047;	//Directory Does Not Exist While Unloading Info From Buffer With Slot Check And Cooling Time Check
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
				
				END_CASE
				
			END_IF
		
		BufferActNxtLoad:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
		
				IF p_bNxtLoadSeq = TRUE THEN
					diNxtLoadSlt	:= fBffrNxtLoadSeqAny(p_bAscending , p_tyBuffer);
				ELSE
					diNxtLoadSlt	:= fBffrNxtLoadNearbyAny(diCurrSlt , p_tyBuffer);
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActNxtLoadGd:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
		
				IF p_bNxtLoadSeq = TRUE THEN
					diNxtLoadSlt	:= fBffrNxtLoadSeqGd(p_bAscending , p_tyBuffer);
				ELSE
					diNxtLoadSlt	:= fBffrNxtLoadNearbyGd(diCurrSlt , p_tyBuffer);
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActNxtLoadBad:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
		
				IF p_bNxtLoadSeq = TRUE THEN
					diNxtLoadSlt	:= fBffrNxtLoadSeqBad(p_bAscending , p_tyBuffer);
				ELSE
					diNxtLoadSlt	:= fBffrNxtLoadNearbyBad(diCurrSlt , p_tyBuffer);
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnload:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				IF p_bFIFO = TRUE THEN
					diNxtUnloadSlt	:= fBffrNxtUnloadFIFOAny(p_tyBuffer , '');
				ELSE
					diNxtUnloadSlt	:= fBffrNxtUnloadLIFOAny(p_tyBuffer , '');
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnloadGd:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				IF p_bFIFO = TRUE THEN
					diNxtUnloadSlt	:= fBffrNxtUnloadFIFOGd(p_tyBuffer , '');
				ELSE
					diNxtUnloadSlt	:= fBffrNxtUnloadLIFOGd(p_tyBuffer , '');
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnloadBad:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				IF p_bFIFO = TRUE THEN
					diNxtUnloadSlt	:= fBffrNxtUnloadFIFOBad(p_tyBuffer , '');
				ELSE
					diNxtUnloadSlt	:= fBffrNxtUnloadLIFOBad(p_tyBuffer , '');
				END_IF
				
				eStatus	:= Done;
				
			END_IF
		
		BufferActChkCoolTm:		
			diCurrSlt	:= fLifterPosInUMToSltBtmMin(p_diLifterCurrPosInUM , p_diSltToSltInUM , p_diLifterBtmPosInUM);
		
			bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(diCurrSlt, p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
			
			eStatus	:= Done;
		
		BufferActChkCoolBrdAny:		
			diCoolBrdAny	:= fBffrChkCoolBrdAny(p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
			
			eStatus	:= Done;
		
		BufferActChkCoolBrdGd:		
			diCoolBrdGd		:= fBffrChkCoolBrdGd(p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
			
			eStatus	:= Done;
		
		BufferActChkCoolBrdBad:		
			diCoolBrdBad	:= fBffrChkCoolBrdBad(p_dtCurrDT, DINT_TO_TIME(p_diCoolTm), p_tyBuffer);
			
			eStatus	:= Done;
		
		BufferActRstBffr:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				tyBffrParameter.diBffrTtlSlt	:= p_diBffrTtlSlt;
				tyBffrParameter.diSltCap		:= p_diSltCap;
		
				memset(ADR(p_tyBuffer) , 0 , SIZEOF(p_tyBuffer));
				fBffrStat(ADR(p_tyBufferStat) , p_tyBuffer);
				fDispBffrDescending(ADR(p_tyDispBuffer) , tyBffrParameter , p_tyBuffer , p_dtCurrDT , DINT_TO_TIME(p_diCoolTm) , 0 , 1 , 2);
					
				eStatus	:= Done;
				
			END_IF
		
		BufferActSetCoolFan:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bCoolFanCtrl	:= TRUE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActRstCoolFan:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bCoolFanCtrl	:= FALSE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartBffrSetFull:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bBffrSetFull	:= TRUE;
				bBffrSetMty		:= FALSE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartBffrSetMty:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bBffrSetFull	:= FALSE;
				bBffrSetMty		:= TRUE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopBffrSet:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bBffrSetFull	:= FALSE;
				bBffrSetMty		:= FALSE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartUpdtSen:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bUpdateSensor	:= TRUE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopUpdtSen:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bUpdateSensor	:= FALSE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartUpdtDisplay:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bUpdtDisplay	:= TRUE;
				eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopUpdtDisplay:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bUpdtDisplay	:= FALSE;
				eStatus			:= Done;
				
			END_IF
		
		
		BufferActBGStartCoolFan:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bCoolFanRun	:= TRUE;
				eStatus		:= Done;
				
			END_IF
		
		BufferActBGStopCoolFan:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bCoolFanRun	:= FALSE;
				eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
