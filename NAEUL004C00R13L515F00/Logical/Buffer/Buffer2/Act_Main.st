(** 2019-07-03 **)
ACTION Act_Main:

	
	fbMagPresentTm(IN := tylocalBuffer.In.bMagPresentSensor);
	
	//Update Retain
	IF bUpdateSensor = TRUE THEN
		tylocalBuffer.Out.bMagPresent	:= fbMagPresentTm.Q;
	END_IF
	
	//Display Buffer
	IF bUpdtDisplay = TRUE THEN
		fDispBffrDescending(ADR(tylocalBuffer.In.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
	END_IF
	
	//Cooling Fan Control
	IF tylocalBuffer.In.bManual = TRUE THEN
		;
		
	ELSIF bCoolFanRun = TRUE AND tylocalBuffer.In.bPrepCoolFan = TRUE AND bCoolFanTm = TRUE THEN //Cooling Fan Control By Cooling Time
		
		fbCoolFanOffChkTm(IN := TRUE);
		
		IF fbCoolFanOffChkTm.Q = TRUE THEN
			IF fBffrChkCoolBrdAny(tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tyBuffer) = 0 THEN
				fbCoolFanOffDlyTm.IN	:= TRUE;
			ELSE
				fbCoolFanOffDlyTm.IN	:= FALSE;
				tylocalBuffer.Out.bCoolFanCtrl			:= TRUE;
			END_IF
			
			fbCoolFanOffChkTm(IN := FALSE);
		END_IF
		
		fbCoolFanOffDlyTm;
		
		IF fbCoolFanOffDlyTm.Q = TRUE THEN
			tylocalBuffer.Out.bCoolFanCtrl	:= FALSE;
		END_IF
		
	ELSIF bCoolFanRun = TRUE AND tylocalBuffer.In.bPrepCoolFan = TRUE AND bCoolFanTm = FALSE THEN	//Cooling Fan Control By Buffer Empty
		fbCoolFanOffDlyTm(IN := tylocalBuffer.In.tyBufferStat.bBffrMty);
		
		IF tylocalBuffer.In.tyBufferStat.bBffrMty = FALSE THEN
			tylocalBuffer.Out.bCoolFanCtrl	:= TRUE;
		END_IF
		
		IF fbCoolFanOffDlyTm.Q = TRUE THEN
			tylocalBuffer.Out.bCoolFanCtrl	:= FALSE;
		END_IF
		
	ELSE
		
		tylocalBuffer.Out.bCoolFanCtrl	:= FALSE;
		
	END_IF
	
	//Set Buffer By Magazine Present
	IF bBffrSetFull = TRUE THEN
		IF tylocalBuffer.In.bMagPresentSensor = TRUE AND fbMagAbsentTm.Q = TRUE THEN
			bSetFull		:= TRUE;
			tylocalBuffer.Out.dtMagPresentTm	:= tylocalBuffer.In.dtCurrDT;
		END_IF
		
		IF bSetFull = TRUE  THEN
			tylocalBuffer.In.eAct	:= BufferActSetFull;
			
			IF eStatus = Done AND eStat = BufferActSetFull THEN
				tylocalBuffer.In.eAct		:= BufferActIdle;
				bSetFull	:= FALSE;
			ELSIF eStatus = Error THEN
				bSetFull	:= FALSE;
			END_IF
		END_IF
		
		fbMagAbsentTm(IN := NOT tylocalBuffer.In.bMagPresentSensor);
		
	ELSIF bBffrSetMty = TRUE THEN
		IF tylocalBuffer.In.bMagPresentSensor = TRUE AND fbMagAbsentTm.Q = TRUE THEN
			bSetMty			:= TRUE;
			tylocalBuffer.Out.dtMagPresentTm	:= tylocalBuffer.In.dtCurrDT;
		END_IF
		
		IF bSetMty = TRUE  THEN
			tylocalBuffer.In.eAct	:= BufferActSetMty;
			
			IF eStatus = Done AND eStat = BufferActSetMty THEN
				tylocalBuffer.In.eAct	:= BufferActIdle;
				bSetMty	:= FALSE;
			ELSIF eStatus = Error THEN
				bSetMty	:= FALSE;
			END_IF
		END_IF
		
		fbMagAbsentTm(IN := NOT tylocalBuffer.In.bMagPresentSensor);
		
	END_IF
	//background--end//
	
	
	//Check Parameter Different
	tylocalBuffer.Out.bParamDiff	:= (tyBffrParameter.bAscending <> tylocalBuffer.In.bAscending)
	OR (tyBffrParameter.diMinSlt <> tylocalBuffer.In.diMinSlt)
	OR (tyBffrParameter.diMaxSlt <> tylocalBuffer.In.diMaxSlt)
	OR (tyBffrParameter.diPitch <> tylocalBuffer.In.diPitch)
	OR (tyBffrParameter.diSltCap <> tylocalBuffer.In.diSltCap)
	OR (tylocalBuffer.Out.bFIFOOld <> tylocalBuffer.In.bFIFO);
	
	//Update MagRemoved
	tylocalBuffer.Out.bMagRemoved	:= fbMagAbsentTm.Q;	
	

	//Action
	IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy OR tylocalBuffer.Out.eStatus = Done THEN
		tylocalBuffer.Out.eStat	:= tylocalBuffer.In.eAct;
	END_IF
	
	IF eStatOld <> tylocalBuffer.Out.eStat THEN
		fbDirCreate1(bEn := FALSE);
		fbDirCreate2(bEn := FALSE);
		fbFileRead1(bEn := FALSE);
		fbFileWrite1(bEn := FALSE);
		usiStep	:= 0;
				
		bFileNotFound			:= FALSE;
		bNewProduct				:= FALSE;
		bLastProductUnload		:= FALSE;
		bLastProductLeftInBffr	:= FALSE;
			
		tylocalBuffer.Out.sStatTxt	:= a_sStatText[tylocalBuffer.Out.eStat];
		
		eStatOld	:= tylocalBuffer.Out.eStat;
		
		tylocalBuffer.Out.eStatus		:= Busy;
	END_IF
	

	//Main
	CASE tylocalBuffer.Out.eStat OF
		
		BufferActIdle:
			tylocalBuffer.Out.eStatus	:= Idle;
		
		BufferActCreateDir:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Retain Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		BufferActGetRetainBffr:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				fbFileRead1(bEn := TRUE);
				IF fbFileRead1.udiStatus = 0 THEN
					tylocalBuffer.Out.eStatus	:= Done;
					
					tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
					tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
					fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
					fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					tylocalBuffer.Out.eStatus	:= Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10002;	//File Open Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10003;	//File Read Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10004;	//File Close Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						tylocalBuffer.Out.eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		BufferActSetFull:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyBffrParameter.bAscending		:= tylocalBuffer.In.bAscending;
						tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
						tyBffrParameter.diMaxSlt		:= tylocalBuffer.In.diMaxSlt;
						tyBffrParameter.diMinSlt		:= tylocalBuffer.In.diMinSlt;
						tyBffrParameter.diPitch			:= tylocalBuffer.In.diPitch;
						tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
						tyBffrParameter.a_bSkip			:= tylocalBuffer.In.a_bSkip;
						tylocalBuffer.Out.bFIFOOld		:= tylocalBuffer.In.bFIFO;
		
						udiStatus	:= fBffrSetFull(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , tyBffrParameter , tylocalBuffer.In.dtCurrDT , tylocalBuffer.In.sBffrNm , tylocalBuffer.In.sProdNm);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
							fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
						ELSE
							tylocalBuffer.Out.eStatus	:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyBffrParameter.bAscending		:= tylocalBuffer.In.bAscending;
						tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
						tyBffrParameter.diMaxSlt		:= tylocalBuffer.In.diMaxSlt;
						tyBffrParameter.diMinSlt		:= tylocalBuffer.In.diMinSlt;
						tyBffrParameter.diPitch			:= tylocalBuffer.In.diPitch;
						tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
						tyBffrParameter.a_bSkip			:= tylocalBuffer.In.a_bSkip;
						tylocalBuffer.Out.bFIFOOld						:= tylocalBuffer.In.bFIFO;
		
						udiStatus	:= fBffrSetMty(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , tyBffrParameter , tylocalBuffer.In.sBffrNm);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
							fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
						ELSE
							tylocalBuffer.Out.eStatus	:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						udiStatus	:= fBffrLoad(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bNewProduct) , tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.dtCurrDT , tylocalBuffer.In.bGdBrdIn , tylocalBuffer.In.sProdNm , tylocalBuffer.In.sBarcode1 , tylocalBuffer.In.sBarcode2);
				
						IF udiStatus = 0 THEN
							usiStep	:= 1;
					
							tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
							tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
							fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
							fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
						ELSE
							tylocalBuffer.Out.eStatus	:= Error;
							
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
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						IF tylocalBuffer.In.bNxtLoadSeq = TRUE AND tylocalBuffer.In.bGdBrdIn = TRUE THEN
							diExpectedSlt	:= fBffrNxtLoadSeqGd(tylocalBuffer.In.bAscending , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
						ELSIF tylocalBuffer.In.bNxtLoadSeq = TRUE AND tylocalBuffer.In.bGdBrdIn = FALSE THEN
							diExpectedSlt	:= fBffrNxtLoadSeqBad(tylocalBuffer.In.bAscending , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
						ELSIF tylocalBuffer.In.bNxtLoadSeq = FALSE AND tylocalBuffer.In.bGdBrdIn = TRUE THEN
							diExpectedSlt	:= fBffrNxtLoadNearbyGd(tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
						ELSE
							diExpectedSlt	:= fBffrNxtLoadNearbyBad(tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
						END_IF
				
						IF tyLocalBuffer.Out.diCurrSlt = diExpectedSlt THEN
							udiStatus	:= fBffrLoad(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bNewProduct) , tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.dtCurrDT , tylocalBuffer.In.bGdBrdIn , tylocalBuffer.In.sProdNm , tylocalBuffer.In.sBarcode1 , tylocalBuffer.In.sBarcode2);
					
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
								fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
								fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
							ELSE
								tylocalBuffer.Out.eStatus	:= Error;
						
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
							tylocalBuffer.Out.eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						udiStatus	:= fBffrUnload(ADR(tylocalBuffer.Out.tyBoardUnloadStat) , ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , tyLocalBuffer.Out.diCurrSlt);
					
						IF tylocalBuffer.In.sCurrRcpNm = tylocalBuffer.Out.tyBoardUnloadStat.sProdNm THEN
							bLastProductUnload	:= FALSE;
						END_IF
						
						IF udiStatus = 0 THEN
							usiStep	:= 1;
						
							tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
							tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
							fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
							fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
						ELSE
							tylocalBuffer.Out.eStatus	:= Error;
						
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
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						IF tylocalBuffer.In.bFIFO = TRUE AND tylocalBuffer.In.bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSIF tylocalBuffer.In.bFIFO = TRUE AND tylocalBuffer.In.bGdBrdReq = FALSE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSIF tylocalBuffer.In.bFIFO = FALSE AND tylocalBuffer.In.bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadLIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSE
							diExpectedSlt	:= fBffrNxtUnloadLIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						END_IF
				
						IF tyLocalBuffer.Out.diCurrSlt = diExpectedSlt THEN
							udiStatus	:= fBffrUnload(ADR(tylocalBuffer.Out.tyBoardUnloadStat) , ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , tyLocalBuffer.Out.diCurrSlt);
					
							IF tylocalBuffer.In.sCurrRcpNm = tylocalBuffer.Out.tyBoardUnloadStat.sProdNm THEN
								bLastProductUnload	:= FALSE;
							END_IF
						
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
								fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
								fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
							ELSE
								tylocalBuffer.Out.eStatus	:= Error;
						
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
							tylocalBuffer.Out.eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						tylocalBuffer.Out.bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(tyLocalBuffer.Out.diCurrSlt, tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				
						IF tylocalBuffer.Out.bCoolNotRdy = FALSE THEN
							udiStatus	:= fBffrUnload(ADR(tylocalBuffer.Out.tyBoardUnloadStat) , ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , tyLocalBuffer.Out.diCurrSlt);
					
							IF tylocalBuffer.In.sCurrRcpNm = tylocalBuffer.Out.tyBoardUnloadStat.sProdNm THEN
								bLastProductUnload	:= FALSE;
							END_IF
						
							IF udiStatus = 0 THEN
								usiStep	:= 1;
						
								tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
								tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
								fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
								fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
							ELSE
								tylocalBuffer.Out.eStatus	:= Error;
						
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
							tylocalBuffer.Out.eStatus	:= Done;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
				
				tylocalBuffer.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	
						tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
				
						IF tylocalBuffer.In.bFIFO = TRUE AND tylocalBuffer.In.bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSIF tylocalBuffer.In.bFIFO = TRUE AND tylocalBuffer.In.bGdBrdReq = FALSE THEN
							diExpectedSlt	:= fBffrNxtUnloadFIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSIF tylocalBuffer.In.bFIFO = FALSE AND tylocalBuffer.In.bGdBrdReq = TRUE THEN
							diExpectedSlt	:= fBffrNxtUnloadLIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						ELSE
							diExpectedSlt	:= fBffrNxtUnloadLIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
						END_IF
				
						IF tyLocalBuffer.Out.diCurrSlt = diExpectedSlt THEN
							tylocalBuffer.Out.bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(tyLocalBuffer.Out.diCurrSlt, tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
					
							IF tylocalBuffer.Out.bCoolNotRdy = FALSE THEN
								udiStatus	:= fBffrUnload(ADR(tylocalBuffer.Out.tyBoardUnloadStat) , ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , ADR(bLastProductUnload) , ADR(bLastProductLeftInBffr) , tyLocalBuffer.Out.diCurrSlt);
						
								IF tylocalBuffer.In.sCurrRcpNm = tylocalBuffer.Out.tyBoardUnloadStat.sProdNm THEN
									bLastProductUnload	:= FALSE;
								END_IF
						
								IF udiStatus = 0 THEN
									usiStep	:= 1;
							
									tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
									tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
									fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
									fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
								ELSE
									tylocalBuffer.Out.eStatus	:= Error;
							
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
								tylocalBuffer.Out.eStatus	:= Done;
						
							END_IF
					
						ELSE
							udiStatus	:= 10035;	//Wrong Slot Number To Unload With Cooling Time Check
							tylocalBuffer.Out.eStatus		:= Error;
					
						END_IF
				
					1:	
						fbFileWrite1(bEn := TRUE);
				
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalBuffer.Out.eStatus	:= Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalBuffer.Out.eStatus	:= Error;
					
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
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
		
				IF tylocalBuffer.In.bNxtLoadSeq = TRUE THEN
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadSeqAny(tylocalBuffer.In.bAscending , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				ELSE
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadNearbyAny(tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActNxtLoadGd:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
		
				IF tylocalBuffer.In.bNxtLoadSeq = TRUE THEN
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadSeqGd(tylocalBuffer.In.bAscending , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				ELSE
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadNearbyGd(tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActNxtLoadBad:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
		
				IF tylocalBuffer.In.bNxtLoadSeq = TRUE THEN
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadSeqBad(tylocalBuffer.In.bAscending , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				ELSE
					tylocalBuffer.Out.diNxtLoadSlt	:= fBffrNxtLoadNearbyBad(tyLocalBuffer.Out.diCurrSlt , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnload:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				IF tylocalBuffer.In.bFIFO = TRUE THEN
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadFIFOAny(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				ELSE
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadLIFOAny(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnloadGd:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				IF tylocalBuffer.In.bFIFO = TRUE THEN
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadFIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				ELSE
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadLIFOGd(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActNxtUnloadBad:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				IF tylocalBuffer.In.bFIFO = TRUE THEN
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadFIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				ELSE
					tylocalBuffer.Out.diNxtUnloadSlt	:= fBffrNxtUnloadLIFOBad(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , '');
				END_IF
				
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActChkCoolTm:		
			tyLocalBuffer.Out.diCurrSlt	:= fLifterPosInUMToSltBtmMin(tylocalBuffer.In.diLifterCurrPosInUM , tylocalBuffer.In.diSltToSltInUM , tylocalBuffer.In.diLifterBtmPosInUM);
		
			tylocalBuffer.Out.bCoolNotRdy	:= NOT fBffrChkCoolTmRdy(tyLocalBuffer.Out.diCurrSlt, tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
			
			tylocalBuffer.Out.eStatus	:= Done;
		
		BufferActChkCoolBrdAny:		
			tylocalBuffer.Out.diCoolBrdAny	:= fBffrChkCoolBrdAny(tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
			
			tylocalBuffer.Out.eStatus	:= Done;
		
		BufferActChkCoolBrdGd:		
			tylocalBuffer.Out.diCoolBrdGd		:= fBffrChkCoolBrdGd(tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
			
			tylocalBuffer.Out.eStatus	:= Done;
		
		BufferActChkCoolBrdBad:		
			tylocalBuffer.Out.diCoolBrdBad	:= fBffrChkCoolBrdBad(tylocalBuffer.In.dtCurrDT, DINT_TO_TIME(tylocalBuffer.In.diCoolTm), tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
			
			tylocalBuffer.Out.eStatus	:= Done;
		
		BufferActRstBffr:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tyBffrParameter.diBffrTtlSlt	:= tylocalBuffer.In.diBffrTtlSlt;
				tyBffrParameter.diSltCap		:= tylocalBuffer.In.diSltCap;
		
				memset(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer) , 0 , SIZEOF(tylocalBuffer.In.tylocalBuffer.Out.tyBuffer));
				fBffrStat(ADR(tylocalBuffer.In.tylocalBuffer.Out.tylocalBuffer.Out.tyBufferStat) , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer);
				fDispBffrDescending(ADR(tylocalBuffer.In.tylocalBuffer.Out.tyDispBuffer) , tyBffrParameter , tylocalBuffer.In.tylocalBuffer.Out.tyBuffer , tylocalBuffer.In.dtCurrDT , DINT_TO_TIME(tylocalBuffer.In.diCoolTm) , 0 , 1 , 2);
					
				tylocalBuffer.Out.eStatus	:= Done;
				
			END_IF
		
		BufferActSetCoolFan:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tylocalBuffer.Out.bCoolFanCtrl	:= TRUE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActRstCoolFan:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				tylocalBuffer.Out.bCoolFanCtrl	:= FALSE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartBffrSetFull:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bBffrSetFull	:= TRUE;
				bBffrSetMty		:= FALSE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartBffrSetMty:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bBffrSetFull	:= FALSE;
				bBffrSetMty		:= TRUE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopBffrSet:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bBffrSetFull	:= FALSE;
				bBffrSetMty		:= FALSE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartUpdtSen:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bUpdateSensor	:= TRUE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopUpdtSen:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bUpdateSensor	:= FALSE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStartUpdtDisplay:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bUpdtDisplay	:= TRUE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		BufferActBGStopUpdtDisplay:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bUpdtDisplay	:= FALSE;
				tylocalBuffer.Out.eStatus			:= Done;
				
			END_IF
		
		
		BufferActBGStartCoolFan:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bCoolFanRun	:= TRUE;
				tylocalBuffer.Out.eStatus		:= Done;
				
			END_IF
		
		BufferActBGStopCoolFan:
			IF tylocalBuffer.Out.eStatus = Idle OR tylocalBuffer.Out.eStatus = Busy THEN
		
				bCoolFanRun	:= FALSE;
				tylocalBuffer.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
