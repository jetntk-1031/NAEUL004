(** 2019-06-07 **)
ACTION Act_Main:
	
	//Main
	CASE eStat OF
		
		TCPActIdle_0:
			IF eStatus <> Idle THEN	//Reset Data
				//Private
				fbClntConnect(bEn := FALSE);
				fbSnd(bEn := FALSE);
				fbRcv(bEn := FALSE);
				fbClose(bEn := FALSE);
				
				udiTCPIdent	:= 0;
				usiStep		:= 0;

				sStatTxt	:= a_sStatText[eStat];
		
			END_IF
			
			eStatus	:= Idle;
		
		TCPActFullWriteRead:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				CASE usiStep OF
					0:
						fbClntConnect.sClntIP		:= p_sClntIP;
						fbClntConnect.sSvrIP		:= p_sSvrIP;
						fbClntConnect.uiClntPort	:= p_uiClntPort;
						fbClntConnect.uiSvrPort		:= p_uiSvrPort;
						fbClntConnect(bEn := TRUE);
					
						IF fbClntConnect.udiStatus = 0 THEN
							udiTCPIdent	:= fbClntConnect.udiTCPIdent;
							usiStep	:= 1;
						ELSIF fbClntConnect.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClntConnect.udiStatus = 2309 THEN
								udiStatus	:= 10000;	//TCP Open Port Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2300 THEN
								udiStatus	:= 10001;	//Invalid Ident While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2307 THEN
								udiStatus	:= 10002;	//Setting Send Buffer Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2306 THEN
								udiStatus	:= 10003;	//Setting Receive Buffer Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2308 THEN
								udiStatus	:= 10004;	//Setting No Waiting Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2305 THEN
								udiStatus	:= 10005;	//Setting Keep Alive Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2304 THEN
								udiStatus	:= 10006;	//Setting Keep Alive Count Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2303 THEN
								udiStatus	:= 10007;	//Setting Keep Alive Idle Time Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2302 THEN
								udiStatus	:= 10008;	//Setting Keep Alive Interval Time Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2313 THEN
								udiStatus	:= 10009;	//Server Connection Failed While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2314 THEN
								udiStatus	:= 10010;	//Ident In Used While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2315 THEN
								udiStatus	:= 10011;	//Connect To Server Error While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2323 THEN
								udiStatus	:= 10012;	//Client Connect Time Out While Full Write & Read
							ELSIF fbClntConnect.udiStatus = 2310 THEN
								udiStatus	:= 10013;	//Closing TCP Error While Full Write & Read
							END_IF
						END_IF
					
					1:
						fbSnd.udiTCPIdent	:= udiTCPIdent;
						fbSnd.udiSndSize	:= LEN(p_sMsgWr);
						fbSnd.p_BffrDest	:= ADR(p_sMsgWr);
						fbSnd(bEn := TRUE);
					
						IF fbSnd.udiStatus = 0 THEN
							usiStep	:= 2;
						ELSIF fbSnd.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbSnd.udiStatus = 2320 THEN
								udiStatus	:= 10014;	//TCP Retry Send Data Error While Full Write & Read
							ELSIF fbSnd.udiStatus = 2300 THEN
								udiStatus	:= 10015;	//Invalid Ident While Full Write & Read
							ELSIF fbSnd.udiStatus = 2321 THEN
								udiStatus	:= 10016;	//Opposite Closed Connection While Full Write & Read
							ELSIF fbSnd.udiStatus = 2322 THEN
								udiStatus	:= 10017;	//TCP Send Data Error While Full Write & Read
							END_IF
						END_IF
					
					2:
						fbRcv.udiTCPIdent	:= udiTCPIdent;
						fbRcv(bEn := TRUE);
					
						IF fbRcv.udiStatus = 0 THEN
							bMsgRdValid	:= TRUE;
							uiMsgRdLen	:= UDINT_TO_UINT(fbRcv.udiDataSizeRcv);
							
							//Start Code
							IF p_diStartCode1 <> -1 AND p_diStartCode2 <> -1 THEN
				
								iStartCodeLen	:= 2;
								siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
								siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
								memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
								memmove(ADR(sStartCode) + 1 , ADR(siStartCode2) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 <> -1 AND p_diStartCode2 = -1 THEN
		
								iStartCodeLen	:= 1;
								siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
								memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 = -1 AND p_diStartCode2 <> -1 THEN
		
								iStartCodeLen	:= 1;
								siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
								memmove(ADR(sStartCode) , ADR(siStartCode2) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 = -1 AND p_diStartCode2 = -1 THEN
		
								iStartCodeLen	:= 0;
								iStartCodePos	:= 0;
		
							END_IF
			
							//End Code
							IF p_diEndCode1 <> -1 AND p_diEndCode2 <> -1 THEN
				
								iEndCodeLen	:= 2;
								siEndCode1	:= DINT_TO_SINT(p_diEndCode1);
								siEndCode2	:= DINT_TO_SINT(p_diEndCode2);
								memmove(ADR(sEndCode) , ADR(siEndCode1) , 1);
								memmove(ADR(sEndCode) + 1 , ADR(siEndCode2) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 <> -1 AND p_diEndCode2 = -1 THEN
		
								iEndCodeLen	:= 1;
								siEndCode1	:= DINT_TO_SINT(p_diEndCode1);
								memmove(ADR(sEndCode) , ADR(siEndCode1) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 = -1 AND p_diEndCode2 <> -1 THEN
		
								iEndCodeLen	:= 1;
								siEndCode2	:= DINT_TO_SINT(p_diEndCode2);
								memmove(ADR(sEndCode) , ADR(siEndCode2) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 = -1 AND p_diEndCode2 = -1 THEN
		
								iEndCodeLen	:= 0;
								iEndCodePos	:= 0;
		
							END_IF
						
							IF iStartCodePos = 0 THEN
								sMsgRd	:= '';
							ELSIF iEndCodePos = 0 THEN
								sMsgRd	:= RIGHT(sFullMsgRd , (LEN(sFullMsgRd) - (iStartCodePos + iStartCodeLen - 1)));
							ELSIF iEndCodePos <> 0 THEN
								sMsgRd	:= MID(sFullMsgRd , iEndCodePos - iStartCodePos - iStartCodeLen , iStartCodePos + iStartCodeLen);
							END_IF
						
							usiStep	:= 3;
						ELSIF fbRcv.udiStatus = 2317 THEN
							bMsgRdValid	:= FALSE;
							uiMsgRdLen	:= 0;
							
							usiStep		:= 3;
						ELSIF fbRcv.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbRcv.udiStatus = 2316 THEN
								udiStatus	:= 10018;	//Data Receive Length Is Zero Due To Opposite Closed Connection While TCP Receiving Data While Full Write & Read
							ELSIF fbRcv.udiStatus = 2300 THEN
								udiStatus	:= 10019;	//Invalid Ident While Full Write & Read
							ELSIF fbRcv.udiStatus = 2318 THEN
								udiStatus	:= 10020;	//Opposite Closed Connection While Full Write & Read
							ELSIF fbRcv.udiStatus = 2319 THEN
								udiStatus	:= 10021;	//TCP Receive Data Error While Full Write & Read
							END_IF
						END_IF
					
					3:
						fbClose.udiTCPIdent	:= udiTCPIdent;
						fbClose(bEn := TRUE);
						
						IF fbClose.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbClose.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClose.udiStatus = 2300 THEN
								udiStatus	:= 10022;	//Invalid Ident While Full Write & Read
							ELSIF fbClose.udiStatus = 2310 THEN
								udiStatus	:= 10023;	//Closing TCP Error While Full Write & Read
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		TCPActFullWriteReadUntilValid:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				CASE usiStep OF
					0:
						fbClntConnect.sClntIP		:= p_sClntIP;
						fbClntConnect.sSvrIP		:= p_sSvrIP;
						fbClntConnect.uiClntPort	:= p_uiClntPort;
						fbClntConnect.uiSvrPort		:= p_uiSvrPort;
						fbClntConnect(bEn := TRUE);
					
						IF fbClntConnect.udiStatus = 0 THEN
							udiTCPIdent	:= fbClntConnect.udiTCPIdent;
							udiTCPIdent1:= fbClntConnect.udiTCPIdent;
	
							usiStep	:= 1;
						ELSIF fbClntConnect.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClntConnect.udiStatus = 2309 THEN
								udiStatus	:= 10024;	//TCP Open Port Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2300 THEN
								udiStatus	:= 10025;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2307 THEN
								udiStatus	:= 10026;	//Setting Send Buffer Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2306 THEN
								udiStatus	:= 10027;	//Setting Receive Buffer Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2308 THEN
								udiStatus	:= 10028;	//Setting No Waiting Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2305 THEN
								udiStatus	:= 10029;	//Setting Keep Alive Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2304 THEN
								udiStatus	:= 10030;	//Setting Keep Alive Count Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2303 THEN
								udiStatus	:= 10031;	//Setting Keep Alive Idle Time Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2302 THEN
								udiStatus	:= 10032;	//Setting Keep Alive Interval Time Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2313 THEN
								udiStatus	:= 10033;	//Server Connection Failed While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2314 THEN
								udiStatus	:= 10034;	//Ident In Used While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2315 THEN
								udiStatus	:= 10035;	//Connect To Server Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2323 THEN
								udiStatus	:= 10036;	//Client Connect Time Out While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2310 THEN
								udiStatus	:= 10037;	//Closing TCP Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					1:
						fbSnd.udiTCPIdent	:= udiTCPIdent;
						fbSnd.udiSndSize	:= LEN(p_sMsgWr);
						fbSnd.p_BffrDest	:= ADR(p_sMsgWr);
						
						fbSnd(bEn := TRUE);
					
						IF fbSnd.udiStatus = 0 THEN
							fbSnd(bEn := FALSE);
							usiStep	:= 2;
						ELSIF fbSnd.udiStatus < 65534 THEN
							
							fbClose.udiTCPIdent	:= udiTCPIdent;
							fbClose(bEn := TRUE);
						
							IF fbClose.udiStatus = 0 THEN
								fbSnd(bEn := FALSE);
							
								eStatus	:= Error;

								IF fbSnd.udiStatus = 2320 THEN
									udiStatus	:= 10038;	//TCP Retry Send Data Error While Full Write & Read Until Valid
								ELSIF fbSnd.udiStatus = 2300 THEN
									udiStatus	:= 10039;	//Invalid Ident While Full Write & Read Until Valid
								ELSIF fbSnd.udiStatus = 2321 THEN
									udiStatus	:= 10040;	//Opposite Closed Connection While Full Write & Read Until Valid
								ELSIF fbSnd.udiStatus = 2322 THEN
									udiStatus	:= 10041;	//TCP Send Data Error While Full Write & Read Until Valid
								END_IF
							END_IF
							
						
						END_IF
					
					2:
						fbRcv.udiTCPIdent	:= udiTCPIdent;
						fbRcv(bEn := TRUE);
					
						IF fbRcv.udiStatus = 0 THEN
							fbRcv(bEn := FALSE);
							bMsgRdValid	:= TRUE;
							uiMsgRdLen	:= UDINT_TO_UINT(fbRcv.udiDataSizeRcv);
							
							//Start Code
							IF p_diStartCode1 <> -1 AND p_diStartCode2 <> -1 THEN
				
								iStartCodeLen	:= 2;
								siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
								siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
								memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
								memmove(ADR(sStartCode) + 1 , ADR(siStartCode2) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 <> -1 AND p_diStartCode2 = -1 THEN
		
								iStartCodeLen	:= 1;
								siStartCode1	:= DINT_TO_SINT(p_diStartCode1);
								memmove(ADR(sStartCode) , ADR(siStartCode1) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 = -1 AND p_diStartCode2 <> -1 THEN
		
								iStartCodeLen	:= 1;
								siStartCode2	:= DINT_TO_SINT(p_diStartCode2);
								memmove(ADR(sStartCode) , ADR(siStartCode2) , 1);
		
								iStartCodePos	:= FIND(sFullMsgRd , sStartCode);
			
							ELSIF p_diStartCode1 = -1 AND p_diStartCode2 = -1 THEN
		
								iStartCodeLen	:= 0;
								iStartCodePos	:= 0;
		
							END_IF
			
							//End Code
							IF p_diEndCode1 <> -1 AND p_diEndCode2 <> -1 THEN
				
								iEndCodeLen	:= 2;
								siEndCode1	:= DINT_TO_SINT(p_diEndCode1);
								siEndCode2	:= DINT_TO_SINT(p_diEndCode2);
								memmove(ADR(sEndCode) , ADR(siEndCode1) , 1);
								memmove(ADR(sEndCode) + 1 , ADR(siEndCode2) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 <> -1 AND p_diEndCode2 = -1 THEN
		
								iEndCodeLen	:= 1;
								siEndCode1	:= DINT_TO_SINT(p_diEndCode1);
								memmove(ADR(sEndCode) , ADR(siEndCode1) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 = -1 AND p_diEndCode2 <> -1 THEN
		
								iEndCodeLen	:= 1;
								siEndCode2	:= DINT_TO_SINT(p_diEndCode2);
								memmove(ADR(sEndCode) , ADR(siEndCode2) , 1);
		
								iEndCodePos	:= FIND(sFullMsgRd , sEndCode);
			
							ELSIF p_diEndCode1 = -1 AND p_diEndCode2 = -1 THEN
		
								iEndCodeLen	:= 0;
								iEndCodePos	:= 0;
		
							END_IF
						
							IF iStartCodePos = 0 THEN
								sMsgRd	:= '';
							ELSIF iEndCodePos = 0 THEN
								sMsgRd	:= RIGHT(sFullMsgRd , (LEN(sFullMsgRd) - (iStartCodePos + iStartCodeLen - 1)));
							ELSIF iEndCodePos <> 0 THEN
								sMsgRd	:= MID(sFullMsgRd , iEndCodePos - iStartCodePos - iStartCodeLen , iStartCodePos + iStartCodeLen);
							END_IF
							
							IF p_usiTravLifScanCntr = usiScanCntr THEN //number of scan
								usiStep	:= 3;
							ELSE
								usiScanCntr := usiScanCntr +1;
								eStatus := Done;
							END_IF
							
						ELSIF fbRcv.udiStatus = 2317 THEN
							fbRcv(bEn := FALSE);
						ELSIF fbRcv.udiStatus < 65534 THEN
							eStatus	:= Error;
				
							IF fbRcv.udiStatus = 2316 THEN
								udiStatus	:= 10042;	//Data Receive Length Is Zero Due To Opposite Closed Connection While TCP Receiving Data While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2300 THEN
								udiStatus	:= 10043;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2318 THEN
								bRstConnection := TRUE;
								udiStatus	:= 10044;	//Opposite Closed Connection While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2319 THEN
								udiStatus	:= 10045;	//TCP Receive Data Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					3:
						fbClose.udiTCPIdent	:= udiTCPIdent;
						fbClose(bEn := TRUE);
						
						IF fbClose.udiStatus = 0 THEN
							udiTCPIdent := 0; 
							eStatus	:= Done;
						ELSIF fbClose.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClose.udiStatus = 2300 THEN
								udiStatus	:= 10046;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbClose.udiStatus = 2310 THEN
								udiStatus	:= 10047;	//Closing TCP Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		TCPActDebug :
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[eStat];
		
				CASE usiStep OF
					0:
						fbClntConnect.sClntIP		:= p_sClntIP;
						fbClntConnect.sSvrIP		:= p_sSvrIP;
						fbClntConnect.uiClntPort	:= p_uiClntPort;
						fbClntConnect.uiSvrPort		:= p_uiSvrPort;
						fbClntConnect(bEn := TRUE);
					
						IF fbClntConnect.udiStatus = 0 THEN
							udiTCPIdent	:= fbClntConnect.udiTCPIdent;
							
						//	usiStep	:= 1;
						ELSIF fbClntConnect.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClntConnect.udiStatus = 2309 THEN
								udiStatus	:= 10024;	//TCP Open Port Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2300 THEN
								udiStatus	:= 10025;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2307 THEN
								udiStatus	:= 10026;	//Setting Send Buffer Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2306 THEN
								udiStatus	:= 10027;	//Setting Receive Buffer Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2308 THEN
								udiStatus	:= 10028;	//Setting No Waiting Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2305 THEN
								udiStatus	:= 10029;	//Setting Keep Alive Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2304 THEN
								udiStatus	:= 10030;	//Setting Keep Alive Count Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2303 THEN
								udiStatus	:= 10031;	//Setting Keep Alive Idle Time Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2302 THEN
								udiStatus	:= 10032;	//Setting Keep Alive Interval Time Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2313 THEN
								udiStatus	:= 10033;	//Server Connection Failed While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2314 THEN
								udiStatus	:= 10034;	//Ident In Used While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2315 THEN
								udiStatus	:= 10035;	//Connect To Server Error While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2323 THEN
								udiStatus	:= 10036;	//Client Connect Time Out While Full Write & Read Until Valid
							ELSIF fbClntConnect.udiStatus = 2310 THEN
								udiStatus	:= 10037;	//Closing TCP Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					1:
						fbSnd.udiTCPIdent	:= udiTCPIdent;
						fbSnd.udiSndSize	:= LEN(p_sMsgWr);
						fbSnd.p_BffrDest	:= ADR(p_sMsgWr);
						fbSnd(bEn := TRUE);
					
						IF fbSnd.udiStatus = 0 THEN
						//	usiStep	:= 2;
						ELSIF fbSnd.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbSnd.udiStatus = 2320 THEN
								udiStatus	:= 10038;	//TCP Retry Send Data Error While Full Write & Read Until Valid
							ELSIF fbSnd.udiStatus = 2300 THEN
								udiStatus	:= 10039;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbSnd.udiStatus = 2321 THEN
								udiStatus	:= 10040;	//Opposite Closed Connection While Full Write & Read Until Valid
							ELSIF fbSnd.udiStatus = 2322 THEN
								udiStatus	:= 10041;	//TCP Send Data Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					2:
						fbRcv.udiTCPIdent	:= udiTCPIdent;
						fbRcv(bEn := TRUE);
					
						IF fbRcv.udiStatus = 0 THEN
							bMsgRdValid	:= TRUE;
							uiMsgRdLen	:= UDINT_TO_UINT(fbRcv.udiDataSizeRcv);
						
							sMsgRd	:= MID(sFullMsgRd , iEndCodePos - iStartCodePos - iStartCodeLen , iStartCodePos + iStartCodeLen);
							
						
						//	usiStep	:= 3;
						ELSIF fbRcv.udiStatus = 2317 THEN
							fbRcv(bEn := FALSE);
						ELSIF fbRcv.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbRcv.udiStatus = 2316 THEN
								udiStatus	:= 10042;	//Data Receive Length Is Zero Due To Opposite Closed Connection While TCP Receiving Data While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2300 THEN
								udiStatus	:= 10043;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2318 THEN
								udiStatus	:= 10044;	//Opposite Closed Connection While Full Write & Read Until Valid
							ELSIF fbRcv.udiStatus = 2319 THEN
								udiStatus	:= 10045;	//TCP Receive Data Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					3:
						fbClose.udiTCPIdent	:= udiTCPIdent;
						fbClose(bEn := TRUE);
						
						IF fbClose.udiStatus = 0 THEN
						//	eStatus	:= Done;
						ELSIF fbClose.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbClose.udiStatus = 2300 THEN
								udiStatus	:= 10046;	//Invalid Ident While Full Write & Read Until Valid
							ELSIF fbClose.udiStatus = 2310 THEN
								udiStatus	:= 10047;	//Closing TCP Error While Full Write & Read Until Valid
							END_IF
						END_IF
					
					
				END_CASE
			END_IF
	END_CASE
	
END_ACTION
