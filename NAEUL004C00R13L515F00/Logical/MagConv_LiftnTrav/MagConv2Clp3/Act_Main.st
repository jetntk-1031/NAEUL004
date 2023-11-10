(** 2019-10-30 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbInit(bEn := FALSE);
		fbEnt(bEn := FALSE);
		fbPreExit(bEn := FALSE);
		fbExit(bEn := FALSE);
		fbExit1(bEn := FALSE);
		fbStop(bEn := FALSE);
		fbFixClprClampChk(bEn := FALSE);
		fbFixClprUnclampChk(bEn := FALSE);
		fbRmtClprClampChk(bEn := FALSE);
		fbRmtClprUnclampChk(bEn := FALSE);
		fbClprDlyTm(IN := FALSE);
		fbFixClprDly(IN := FALSE);
		fbWidthChk(IN := FALSE);
		
		IF eStatOld <> MagConv2ClpActIdle
			AND eStatOld <> MagConv2ClpActSetMtrSigOnOrLToR
			AND eStatOld <> MagConv2ClpActSetMtrDirOrRToL
			AND eStatOld <> MagConv2ClpActRstMtrSigOnOrLToR
			AND eStatOld <> MagConv2ClpActRstMtrDirOrRToL
			AND eStatOld <> MagConv2ClpActSetMtrAll
			AND eStatOld <> MagConv2ClpActRstMtrAll THEN
			
			bMtrSigOnOrLToR	:= FALSE;
			bMtrDirOrRToL	:= FALSE;
			
		END_IF
		
		usiStep		:= 0;
		usiSubStep	:= 0;
		bReachEnd	:= FALSE;
		
		sStatTxt	:= a_sStatText[eStat];
		
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		MagConv2ClpActIdle:
			IF EDGENEG(p_bManual) THEN
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
			END_IF
			
			eStatus	:= Idle;
			
		MagConv2ClpActInit:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Magazine Conveyor Init Run
				//Detect Have Magazine
				IF p_bLeftSen OR p_bRightSen THEN
					bHvMag	:= TRUE;
				ELSE
					bHvMag	:= FALSE;
				END_IF
				
				fbInit.bConvLToR	:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
				fbInit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
				
				IF fbInit.bConvLToR = TRUE THEN
					fbInit.bEndSen	:= p_bRightSen;
				ELSE
					fbInit.bEndSen	:= p_bLeftSen;
				END_IF
				
				fbInit(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
				IF fbInit.udiStatus = 0 THEN
					IF fbInit.bConvLToR = TRUE THEN
						IF bHvMag = TRUE AND p_bRightSen = FALSE THEN
							udiStatus	:= 10000;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Magazine Conveyor Initial
							eStatus		:= Error;
						ELSE
							eStatus	:= Done;
						END_IF	
					ELSE
						IF bHvMag = TRUE AND p_bLeftSen = FALSE THEN
							udiStatus	:= 10001;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Magazine Conveyor Initial
							eStatus		:= Error;
						ELSE
							eStatus	:= Done;
						END_IF
					END_IF
				ELSIF fbInit.udiStatus < 65534 THEN
					udiStatus	:= fbInit.udiStatus;
					eStatus		:= Error;
				END_IF
			END_IF
			
		MagConv2ClpActInitStopClp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk.udiStatus;
								ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Magazine Conveyor Init Run
						//Detect Have Magazine
						IF p_bLeftSen OR p_bRightSen THEN
							bHvMag	:= TRUE;
						ELSE
							bHvMag	:= FALSE;
						END_IF
						
						fbInit.bConvLToR	:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= p_bRightSen;
						ELSE
							fbInit.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.udiStatus = 0 THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF bHvMag = TRUE AND p_bRightSen = FALSE THEN
									udiStatus	:= 10005;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Conveyor Initial With Clamper
									eStatus		:= Error;
								ELSE
									usiStep	:= 2;
								END_IF
							ELSE
								IF bHvMag = TRUE AND p_bLeftSen = FALSE THEN
									udiStatus	:= 10006;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Conveyor Initial With Clamper
									eStatus		:= Error;
								ELSE
									usiStep	:= 2;
								END_IF
							END_IF
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							eStatus		:= Error;
						END_IF
						
					2:	//Check If Have Magazine
						IF bHvMag = TRUE THEN
							fbWidthChk(IN := NOT p_bWidthChkInterrupt);	
							IF p_bWidthChkInterrupt = FALSE THEN
								IF fbWidthChk.Q THEN
									udiStatus := 10048; 
									eStatus	  := Error; //Safety Sensor Is Deactivated Before Clamp
								END_IF
							ELSIF p_bWidthChkInterrupt THEN
								usiStep	  := 3;
							END_IF
						ELSE
							eStatus	:= Done;
						END_IF
						
					3:	//Fix Clamp
						bFixClprClampCtrl	:= TRUE;
						
						fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
						fbFixClprClampChk(bEn := TRUE);
						
						IF fbFixClprClampChk.udiStatus = 0 THEN
								fbFixClprDly (IN := TRUE);
							IF  fbFixClprDly.Q THEN
								fbFixClprDly (IN := FALSE);
								usiStep	:= 4;
							END_IF
							
						ELSIF fbFixClprClampChk.udiStatus < 65534 THEN
							bFixClprClampCtrl	:= FALSE;
							
							eStatus	:= Error;
							
							IF fbFixClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10007;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10008;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10009;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbFixClprClampChk.udiStatus;
							END_IF
						END_IF
						
					4:	//Remote Clamp
						bRmtClprClampCtrl	:= TRUE;
						
						fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
						fbRmtClprClampChk(bEn := TRUE);
						
						IF fbRmtClprClampChk.udiStatus = 0 THEN
								eStatus	:= Done;
								
						ELSIF fbRmtClprClampChk.udiStatus < 65534 THEN
							bRmtClprClampCtrl	:= FALSE;
							
							eStatus	:= Error;
							
							IF fbRmtClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10007;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10008;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10009;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbRmtClprClampChk.udiStatus;
							END_IF
						END_IF
					
				END_CASE	
			END_IF	
			
		MagConv2ClpActInitClpStop:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk.udiStatus;
								ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Magazine Conveyor Init Run & Clamp
						//Detect Have Magazine
						IF p_bLeftSen OR p_bRightSen THEN
							bHvMag	:= TRUE;
						ELSE
							bHvMag	:= FALSE;
						END_IF
						
						fbInit.bConvLToR	:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= p_bRightSen;
						ELSE
							fbInit.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.bEndSen = TRUE THEN
							bReachEnd	:= TRUE;
						END_IF
						
						IF bReachEnd = TRUE THEN
							fbClprDlyTm(IN := TRUE);
							IF fbClprDlyTm.Q = TRUE THEN
								CASE usiSubStep OF
								//	0:	//Fix Clamp
//										bFixClprClampCtrl	:= TRUE;
										
//										fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
//										fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
//										fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
//										fbFixClprClampChk(bEn := TRUE);
//										
//										IF fbFixClprClampChk.udiStatus = 0 THEN
//											usiSubStep	:= 1;
//										END_IF
										
									0:	//Remote Clamp
										bRmtClprClampCtrl	:= TRUE;
										
										fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
										fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
										fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
										fbRmtClprClampChk(bEn := TRUE);
										
										IF fbRmtClprClampChk.udiStatus = 0 THEN
											usiSubStep	:= 1;
										END_IF
									
										
									1:
									
										bFixClprClampCtrl	:= TRUE;
										
										fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
										fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
										fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
										fbFixClprClampChk(bEn := TRUE);
									
								END_CASE
							END_IF
						END_IF
						
						IF (fbInit.udiStatus = 0) AND ((fbFixClprClampChk.udiStatus = 0 AND fbRmtClprClampChk.udiStatus = 0) OR (bReachEnd = FALSE)) THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF bHvMag = TRUE AND p_bRightSen = FALSE THEN
									udiStatus	:= 10041;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Conveyor Initial With Clamper
									eStatus		:= Error;
								ELSE
									eStatus		:= Done;
								END_IF
							ELSE
								IF bHvMag = TRUE AND p_bLeftSen = FALSE THEN
									udiStatus	:= 10042;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Conveyor Initial With Clamper
									eStatus		:= Error;
								ELSE
									eStatus		:= Done;
								END_IF
							END_IF
							
						ELSIF fbInit.udiStatus > 0 AND fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							eStatus		:= Error;
							
						ELSIF (fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534) OR (fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= FALSE;
							bRmtClprClampCtrl	:= FALSE;
							
							eStatus	:= Error;
							
							IF fbFixClprClampChk.udiStatus = 1503 OR fbRmtClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10043;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1506 OR fbRmtClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10044;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1507 OR fbRmtClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10045;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprClampChk.udiStatus;
								ELSIF fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprClampChk.udiStatus;
								END_IF
							END_IF
						END_IF
					
				END_CASE
			END_IF
			
		MagConv2ClpActEnt:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Detect Have Magazine
				IF p_bLeftSen OR p_bRightSen THEN
					bHvMag	:= TRUE;
				END_IF
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(p_diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= p_bRightSen;
				ELSE
					fbEnt.bEndSen	:= p_bLeftSen;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.udiStatus = 0 THEN
					eStatus		:= Done;
				ELSIF fbEnt.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10028;	//Transfer In Time Out While Entering Magazine
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActEntStopClp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Conveyor Enter
						//Detect Have Magazine
						IF p_bLeftSen OR p_bRightSen THEN
							bHvMag	:= TRUE;
						END_IF
						
						//Conveyor Run
						fbEnt.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
						fbEnt.tTimeOut		:= DINT_TO_TIME(p_diTxInTimeOut);
						
						IF fbEnt.bConvLToR = TRUE THEN
							fbEnt.bEndSen	:= p_bRightSen;
						ELSE
							fbEnt.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbEnt(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
						
						IF fbEnt.udiStatus = 0 THEN
//							usiStep	:= 1;
							fbWidthChk(IN := NOT p_bWidthChkInterrupt);	
								IF p_bWidthChkInterrupt = FALSE THEN
								    IF fbWidthChk.Q THEN
										udiStatus := 10048; 
										eStatus	  := Error; //Safety Sensor Is Deactivated Before Clamp
									END_IF
								ELSIF p_bWidthChkInterrupt THEN
									usiStep	  := 1;
								END_IF
						ELSIF fbEnt.udiStatus < 65534 THEN
							eStatus	:= Error;
							
							IF fbEnt.udiStatus = 1101 THEN
								udiStatus	:= 10029;	//Transfer In Time Out While Entering Magazine
							ELSE
								udiStatus	:= fbEnt.udiStatus;
							END_IF
						END_IF
						
					1:	//Fix Clamp
						bFixClprClampCtrl	:= TRUE;
						
						fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
						fbFixClprClampChk(bEn := TRUE);
						
						IF fbFixClprClampChk.udiStatus = 0 THEN
							fbFixClprDly(IN := TRUE);
							IF  fbFixClprDly.Q THEN
								fbFixClprDly (IN := FALSE);
								usiStep	:= 2;
							END_IF
							
						ELSIF fbFixClprClampChk.udiStatus < 65534 THEN	
							bFixClprClampCtrl	:= FALSE;
							
							eStatus	:= Error;
							
							IF fbFixClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10010;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10011;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10012;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
							ELSE
								udiStatus	:= fbFixClprClampChk.udiStatus;
							END_IF
						END_IF
						
					2:	//Remote Clamp
						bRmtClprClampCtrl	:= TRUE;
						
						fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
						fbRmtClprClampChk(bEn := TRUE);
						
						IF fbRmtClprClampChk.udiStatus = 0 THEN
								eStatus	:= Done;
							
						ELSIF fbRmtClprClampChk.udiStatus < 65534 THEN	
							bRmtClprClampCtrl	:= FALSE;
							
							eStatus	:= Error;
							
							IF fbRmtClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10010;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10011;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10012;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
							ELSE
								udiStatus	:= fbRmtClprClampChk.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActEntClpStop:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Detect Have Magazine
				IF p_bLeftSen OR p_bRightSen THEN
					bHvMag	:= TRUE;
				END_IF
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(p_diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= p_bRightSen;
				ELSE
					fbEnt.bEndSen	:= p_bLeftSen;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.bEndSen = TRUE THEN
					bReachEnd	:= TRUE;
				END_IF
						
				IF bReachEnd = TRUE THEN
					fbClprDlyTm(IN := TRUE);
					IF fbClprDlyTm.Q = TRUE THEN
						CASE usiSubStep OF
							0:	//Fix Clamp
//								bFixClprClampCtrl	:= TRUE;
//								
//								fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
//								fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
//								fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
//								fbFixClprClampChk(bEn := TRUE);
//								
//								IF fbFixClprClampChk.udiStatus = 0 THEN
//									usiSubStep	:= 1;
//								END_IF
								
								bRmtClprClampCtrl	:= TRUE;
								
								fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
								fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
								fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
								fbRmtClprClampChk(bEn := TRUE);
								
								IF fbRmtClprClampChk.udiStatus = 0 THEN
									usiSubStep	:= 1;
								END_IF
								
							1:	//Remote Clamp
//								bRmtClprClampCtrl	:= TRUE;
//								
//								fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
//								fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
//								fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
//								fbRmtClprClampChk(bEn := TRUE);
								
								bFixClprClampCtrl	:= TRUE;
								
								fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
								fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
								fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
								fbFixClprClampChk(bEn := TRUE);
								
		
							
						END_CASE
					END_IF
				END_IF
				
				IF fbEnt.udiStatus = 0 AND (fbFixClprClampChk.udiStatus = 0 AND fbRmtClprClampChk.udiStatus = 0) THEN
					eStatus	:= Done;
					
				ELSIF (fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534) OR (fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534) THEN
					bFixClprClampCtrl	:= FALSE;
					bRmtClprClampCtrl	:= FALSE;
					
					eStatus	:= Error;
					
					IF fbFixClprClampChk.udiStatus = 1503 OR fbRmtClprClampChk.udiStatus = 1503 THEN
						udiStatus	:= 10034;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
					ELSIF fbFixClprClampChk.udiStatus = 1506 OR fbRmtClprClampChk.udiStatus = 1506 THEN
						udiStatus	:= 10035;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
					ELSIF fbFixClprClampChk.udiStatus = 1507 OR fbRmtClprClampChk.udiStatus = 1507 THEN
						udiStatus	:= 10036;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
					ELSE
						IF fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534 THEN
							udiStatus	:= fbFixClprClampChk.udiStatus;
						ELSIF fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534 THEN
							udiStatus	:= fbRmtClprClampChk.udiStatus;
						END_IF
					END_IF
					
				ELSIF fbEnt.udiStatus > 0 AND fbEnt.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10037;	//Transfer In Time Out While Entering Magazine
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
					
				END_IF
				
			END_IF
			
		MagConv2ClpActPreExit:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbPreExit.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
				fbPreExit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
				
				IF fbPreExit.bConvLToR = TRUE THEN
					fbPreExit.bEndSen	:= p_bRightSen;
					fbPreExit.bStartSen	:= p_bLeftSen;
				ELSE
					fbPreExit.bEndSen	:= p_bLeftSen;
					fbPreExit.bStartSen	:= p_bRightSen;
				END_IF
				
				fbPreExit(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbPreExit.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbPreExit.bMtrDirOrRToL;
				
				IF fbPreExit.udiStatus = 0 THEN
					IF fbPreExit.bEndSen = TRUE THEN
						eStatus	:= Done;
					ELSE
						udiStatus	:= 10046;	//Magazine Not Detected While Pre-Exiting Magazine
						eStatus		:= Error;
					END_IF
				ELSIF fbPreExit.udiStatus < 65534 THEN
					udiStatus	:= fbPreExit.udiStatus;
					eStatus		:= Error;
				END_IF
				
			END_IF
			
		MagConv2ClpActPreExitClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk.udiStatus;
								ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Conveyor Pre-Exit
						//Conveyor Run
						fbPreExit.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
						fbPreExit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
						
						IF fbPreExit.bConvLToR = TRUE THEN
							fbPreExit.bEndSen	:= p_bRightSen;
							fbPreExit.bStartSen	:= p_bLeftSen;
						ELSE
							fbPreExit.bEndSen	:= p_bLeftSen;
							fbPreExit.bStartSen	:= p_bRightSen;
						END_IF
						
						fbPreExit(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbPreExit.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbPreExit.bMtrDirOrRToL;
						
						IF fbPreExit.udiStatus = 0 THEN
							IF fbPreExit.bEndSen = TRUE THEN
								eStatus	:= Done;
							ELSE
								udiStatus	:= 10046;	//Magazine Not Detected While Pre-Exiting Magazine
								eStatus		:= Error;
							END_IF
						ELSIF fbPreExit.udiStatus < 65534 THEN
							udiStatus	:= fbPreExit.udiStatus;
							eStatus		:= Error;
						END_IF
					
				END_CASE
				
			END_IF
		MagConv2ClpActPreExitClpr1: //halfway exit 
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						
						fbFixClprUnclampChk1.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						
						fbRmtClprUnclampChk1.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk1.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk1(bEn := TRUE);
						
						IF fbFixClprUnclampChk1.udiStatus = 0 AND fbRmtClprUnclampChk1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk1.udiStatus > 0 AND fbFixClprUnclampChk1.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk1.udiStatus = 1504 OR fbRmtClprUnclampChk1.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk1.udiStatus = 1505 OR fbRmtClprUnclampChk1.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk1.udiStatus = 1508 OR fbRmtClprUnclampChk1.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk1.udiStatus > 0 AND fbFixClprUnclampChk1.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk1.udiStatus;
								ELSIF fbRmtClprUnclampChk1.udiStatus > 0 AND fbRmtClprUnclampChk1.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk1.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Conveyor Pre-Exit
						//Conveyor Run
						fbInit.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
						
						IF p_bLeftSen OR p_bRightSen THEN
							bHvMag	:= TRUE;
						ELSE
							bHvMag	:= FALSE;
						END_IF
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= p_bRightSen;
						ELSE
							fbInit.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;

						IF fbInit.udiStatus = 0 THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF bHvMag = TRUE AND p_bRightSen = FALSE THEN
									udiStatus	:= 10000;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Magazine Conveyor Initial
									eStatus		:= Error;
								ELSE
									eStatus	:= Done;
								END_IF	
							ELSE
								IF bHvMag = TRUE AND p_bLeftSen = FALSE THEN
									udiStatus	:= 10001;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Magazine Conveyor Initial
									eStatus		:= Error;
								ELSE
									eStatus	:= Done;
								END_IF
							END_IF
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							eStatus		:= Error;
						END_IF
						
				END_CASE
				
			END_IF
		
		MagConv2ClpActExit:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbExit.bConvLToR	:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
				fbExit.tTimeOut		:= DINT_TO_TIME(p_diTxOutTimeOut);
				
				IF fbExit.bConvLToR = TRUE THEN
					fbExit.bEndSen	:= p_bRightSen;
				ELSE
					fbExit.bEndSen	:= p_bLeftSen;
				END_IF
				
				fbExit(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
				
				IF fbExit.udiStatus = 0 THEN
					bHvMag		:= FALSE;	
					eStatus		:= Done;
				ELSIF fbExit.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbExit.udiStatus = 1101 THEN
						udiStatus	:= 10030;	//Transfer Out Time Out While Exiting Magazine
					ELSE
						udiStatus	:= fbExit.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActExit1:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbExit1.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
				fbExit1.tTimeOut		:= DINT_TO_TIME(p_diTxOutTimeOut);
				
				IF fbExit1.bConvLToR = TRUE THEN
					fbExit1.bEndSen	:= p_bRightSen;
				ELSE
					fbExit1.bEndSen	:= p_bLeftSen;
				END_IF
				
				fbExit1(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
				
				IF fbExit1.udiStatus = 0 THEN
					bHvMag		:= FALSE;
					eStatus		:= Done;
				ELSIF fbExit1.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbExit1.udiStatus = 1101 THEN
						udiStatus	:= 10032;	//Transfer Out Time Out While Exiting Magazinie
					ELSE
						udiStatus	:= fbExit1.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActExitClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk.udiStatus;
								ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Conveyor Exit
						//Conveyor Run
						fbExit.bConvLToR	:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
						fbExit.tTimeOut		:= DINT_TO_TIME(p_diTxOutTimeOut);
						
						IF fbExit.bConvLToR = TRUE THEN
							fbExit.bEndSen	:= p_bRightSen;
						ELSE
							fbExit.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbExit(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
						
						IF fbExit.udiStatus = 0 THEN
							bHvMag		:= FALSE;
							eStatus		:= Done;
						ELSIF fbExit.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbExit.udiStatus = 1101 THEN
								udiStatus	:= 10031;	//Transfer Out Time Out While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbExit.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActExit1Clpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						bFixClprClampCtrl	:= FALSE;
						bRmtClprClampCtrl	:= FALSE;
						
						fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							bFixClprClampCtrl	:= TRUE;
							bRmtClprClampCtrl	:= TRUE;
							
							eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbFixClprUnclampChk.udiStatus;
								ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
									udiStatus	:= fbRmtClprUnclampChk.udiStatus;
								END_IF
							END_IF
						END_IF
						
					1:	//Conveyor Exit
						//Conveyor Run
						fbExit1.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
						fbExit1.tTimeOut		:= DINT_TO_TIME(p_diTxOutTimeOut);
						
						IF fbExit1.bConvLToR = TRUE THEN
							fbExit1.bEndSen	:= p_bRightSen;
						ELSE
							fbExit1.bEndSen	:= p_bLeftSen;
						END_IF
						
						fbExit1(bEn := TRUE);
						
						bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
						bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
						
						IF fbExit1.udiStatus = 0 THEN
							bHvMag		:= FALSE;
							eStatus		:= Done;
						ELSIF fbExit1.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbExit1.udiStatus = 1101 THEN
								udiStatus	:= 10033;	//Transfer Out Time Out While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbExit1.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActFixClprSetAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprRstAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprSetClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprSetUnclamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= TRUE;
				
				fbFixClprClampChk.bExtSen		:= p_bFixClprClampSen;
				fbFixClprClampChk.bRetSen		:= p_bFixClprUnclampSen;
				fbFixClprClampChk.bExtSafety	:= p_bFixClprClampSafetySen;
				fbFixClprClampChk(bEn := TRUE);
				
				IF fbFixClprClampChk.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFixClprClampChk.udiStatus < 65534 THEN
					bFixClprClampCtrl	:= FALSE;
					
					eStatus	:= Error;
					
					IF fbFixClprClampChk.udiStatus = 1503 THEN
						udiStatus	:= 10016;	//Clamper Clamp Sensor On Time Out In Clamp Check While Clamper Clamp
					ELSIF fbFixClprClampChk.udiStatus = 1506 THEN
						udiStatus	:= 10017;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Clamper Clamp
					ELSIF fbFixClprClampChk.udiStatus = 1507 THEN
						udiStatus	:= 10018;	//Clamper Clamp Safety Sensor Error In Clamp Check While Clamper Clamp
					ELSE
						udiStatus	:= fbFixClprClampChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		MagConv2ClpActFixClprUnclamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bFixClprClampCtrl	:= FALSE;
				
				fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
				fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
				fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
				fbFixClprUnclampChk(bEn := TRUE);
				
				IF fbFixClprUnclampChk.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFixClprUnclampChk.udiStatus < 65534 THEN
					bFixClprClampCtrl	:= TRUE;
					
					eStatus	:= Error;
					
					IF fbFixClprUnclampChk.udiStatus = 1504 THEN
						udiStatus	:= 10019;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbFixClprUnclampChk.udiStatus = 1505 THEN
						udiStatus	:= 10020;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbFixClprUnclampChk.udiStatus = 1508 THEN
						udiStatus	:= 10021;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Clamper Unclamp
					ELSE
						udiStatus	:= fbFixClprUnclampChk.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActRmtClprSetAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprRstAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprSetClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprSetUnclamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= TRUE;
				
				fbRmtClprClampChk.bExtSen		:= p_bRmtClprClampSen;
				fbRmtClprClampChk.bRetSen		:= p_bRmtClprUnclampSen;
				fbRmtClprClampChk.bExtSafety	:= p_bRmtClprClampSafetySen;
				fbRmtClprClampChk(bEn := TRUE);
				
				IF fbRmtClprClampChk.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbRmtClprClampChk.udiStatus < 65534 THEN
					bRmtClprClampCtrl	:= FALSE;
					
					eStatus	:= Error;
					
					IF fbRmtClprClampChk.udiStatus = 1503 THEN
						udiStatus	:= 10016;	//Clamper Clamp Sensor On Time Out In Clamp Check While Clamper Clamp
					ELSIF fbRmtClprClampChk.udiStatus = 1506 THEN
						udiStatus	:= 10017;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Clamper Clamp
					ELSIF fbRmtClprClampChk.udiStatus = 1507 THEN
						udiStatus	:= 10018;	//Clamper Clamp Safety Sensor Error In Clamp Check While Clamper Clamp
					ELSE
						udiStatus	:= fbRmtClprClampChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		MagConv2ClpActRmtClprUnclamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				bRmtClprClampCtrl	:= FALSE;
				
				fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
				fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
				fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
				fbRmtClprUnclampChk(bEn := TRUE);
				
				IF fbRmtClprUnclampChk.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbRmtClprUnclampChk.udiStatus < 65534 THEN
					bRmtClprClampCtrl	:= TRUE;
					
					eStatus	:= Error;
					
					IF fbRmtClprUnclampChk.udiStatus = 1504 THEN
						udiStatus	:= 10019;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbRmtClprUnclampChk.udiStatus = 1505 THEN
						udiStatus	:= 10020;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbRmtClprUnclampChk.udiStatus = 1508 THEN
						udiStatus	:= 10021;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Clamper Unclamp
					ELSE
						udiStatus	:= fbRmtClprUnclampChk.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActStop:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				IF fbStop.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					eStatus		:= Error;
				END_IF
				
			END_IF
			
		MagConv2ClpActStopClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				bFixClprClampCtrl	:= FALSE;
				bRmtClprClampCtrl	:= FALSE;
				
				fbFixClprUnclampChk.bExtSen		:= p_bFixClprClampSen;
				fbFixClprUnclampChk.bRetSen		:= p_bFixClprUnclampSen;
				fbFixClprUnclampChk.bRetSafety	:= p_bFixClprUnclampSafetySen;
				fbFixClprUnclampChk(bEn := TRUE);
				
				fbRmtClprUnclampChk.bExtSen		:= p_bRmtClprClampSen;
				fbRmtClprUnclampChk.bRetSen		:= p_bRmtClprUnclampSen;
				fbRmtClprUnclampChk.bRetSafety	:= p_bRmtClprUnclampSafetySen;
				fbRmtClprUnclampChk(bEn := TRUE);
				
				IF fbStop.udiStatus = 0 AND fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
					eStatus		:= Done;
				ELSIF fbStop.udiStatus > 0 AND fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					eStatus		:= Error;
				ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
					bFixClprClampCtrl	:= TRUE;
					bRmtClprClampCtrl	:= TRUE;
					
					eStatus	:= Error;
					
					IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
						udiStatus	:= 10022;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Stop With Clamper
					ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
						udiStatus	:= 10023;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Stop With Clamper
					ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
						udiStatus	:= 10024;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Stop With Clamper
					ELSE
						IF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
							udiStatus	:= fbFixClprUnclampChk.udiStatus;
						ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
							udiStatus	:= fbRmtClprUnclampChk.udiStatus;
						END_IF
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActSetMtrSigOnOrLToR:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrSigOnOrLToR	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActSetMtrDirOrRToL:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrDirOrRToL	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrSigOnOrLToR:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrSigOnOrLToR	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrDirOrRToL:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrDirOrRToL	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActSetMtrAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrSigOnOrLToR	:= TRUE;
				bMtrDirOrRToL	:= TRUE;
				
				eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				eStatus	:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
