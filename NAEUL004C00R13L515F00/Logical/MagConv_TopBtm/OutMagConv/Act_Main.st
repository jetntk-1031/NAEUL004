(** 2019-05-28 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbInit(bEn := FALSE);
		fbEnt(bEn := FALSE);
		fbPreExit(bEn := FALSE);
		fbExit(bEn := FALSE);
		fbExit1(bEn := FALSE);
		fbStop(bEn := FALSE);
		fbClprClampChk(bEn := FALSE);
		fbClprUnclampChk(bEn := FALSE);
		
		IF eStatOld <> MagConvActIdle
			AND eStatOld <> MagConvActSetMtrSigOnOrLToR
			AND eStatOld <> MagConvActSetMtrDirOrRToL
			AND eStatOld <> MagConvActRstMtrSigOnOrLToR
			AND eStatOld <> MagConvActRstMtrDirOrRToL
			AND eStatOld <> MagConvActSetMtrAll
			AND eStatOld <> MagConvActRstMtrAll THEN
			
			bMtrSigOnOrLToR	:= FALSE;
			bMtrDirOrRToL	:= FALSE;
			
		END_IF
				
		usiStep		:= 0;
		bReachEnd	:= FALSE;
		
		sStatTxt	:= a_sStatText[eStat];
			
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		MagConvActIdle:
			IF EDGENEG(p_bManual) THEN
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
			END_IF
			
			eStatus	:= Idle;
		
		MagConvActInit:
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
			
		MagConvActInitStopClp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0: //Unclamp
						bClprClampCtrl		:= FALSE;
				
						fbClprUnclampChk.bExtSen	:= p_bClprClampSen;
						fbClprUnclampChk.bRetSen	:= p_bClprUnclampSen;
						fbClprUnclampChk.bRetSafety	:= p_bClprUnclampSafetySen;
						fbClprUnclampChk(bEn := TRUE);
					
						IF fbClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
							bClprClampCtrl		:= TRUE;
					
							eStatus			:= Error;
							
							IF fbClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbClprUnclampChk.udiStatus;
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
							usiStep	:= 3;
						ELSE	
							eStatus	:= Done;
						END_IF	
							
					3:	//Clamp
						bClprClampCtrl		:= TRUE;
					
						fbClprClampChk.bExtSen		:= p_bClprClampSen;
						fbClprClampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprClampChk.bExtSafety	:= p_bClprClampSafetySen;
						fbClprClampChk(bEn := TRUE);
						
						IF fbClprClampChk.udiStatus = 0 THEN
							eStatus		:= Done;
						ELSIF fbClprClampChk.udiStatus < 65534 THEN	
							bClprClampCtrl		:= FALSE;
					
							eStatus			:= Error;
						
							IF fbClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10007;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10008;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10009;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbClprClampChk.udiStatus;
							END_IF
						END_IF		
					
				END_CASE	
			END_IF	
			
		MagConvActInitClpStop:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0: //Unclamp
						bClprClampCtrl		:= FALSE;
				
						fbClprUnclampChk.bExtSen	:= p_bClprClampSen;
						fbClprUnclampChk.bRetSen	:= p_bClprUnclampSen;
						fbClprUnclampChk.bRetSafety	:= p_bClprUnclampSafetySen;
						fbClprUnclampChk(bEn := TRUE);
					
						IF fbClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
							bClprClampCtrl		:= TRUE;
					
							eStatus			:= Error;
							
							IF fbClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10038;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10039;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10040;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbClprUnclampChk.udiStatus;
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
								bClprClampCtrl		:= TRUE;
							
								fbClprClampChk.bExtSen		:= p_bClprClampSen;
								fbClprClampChk.bRetSen		:= p_bClprUnclampSen;
								fbClprClampChk.bExtSafety	:= p_bClprClampSafetySen;
								fbClprClampChk(bEn := TRUE);
							END_IF
							
						END_IF
						
						IF (fbInit.udiStatus = 0) AND ((fbClprClampChk.udiStatus = 0) OR (bReachEnd = FALSE)) THEN
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

						ELSIF fbClprClampChk.udiStatus > 0 AND fbClprClampChk.udiStatus < 65534 THEN	
							bClprClampCtrl		:= FALSE;
					
							eStatus			:= Error;
						
							IF fbClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10043;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10044;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Initial With Clamper
							ELSIF fbClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10045;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Initial With Clamper
							ELSE
								udiStatus	:= fbClprClampChk.udiStatus;
							END_IF
						END_IF		
							
				END_CASE	
			END_IF	
			
		MagConvActEnt:	
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
			
		MagConvActEntStopClp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:
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
							usiStep	:= 1;
						ELSIF fbEnt.udiStatus < 65534 THEN
							eStatus		:= Error;
					
							IF fbEnt.udiStatus = 1101 THEN
								udiStatus	:= 10029;	//Transfer In Time Out While Entering Magazine
							ELSE
								udiStatus	:= fbEnt.udiStatus;
							END_IF
						END_IF
						
					1:	
						bClprClampCtrl		:= TRUE;
					
						fbClprClampChk.bExtSen		:= p_bClprClampSen;
						fbClprClampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprClampChk.bExtSafety	:= p_bClprClampSafetySen;
						fbClprClampChk(bEn := TRUE);
						
						IF fbClprClampChk.udiStatus = 0 THEN
							eStatus		:= Done;
						ELSIF fbClprClampChk.udiStatus < 65534 THEN	
							bClprClampCtrl		:= FALSE;
					
							eStatus			:= Error;
						
							IF fbClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10010;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10011;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10012;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
							ELSE
								udiStatus	:= fbClprClampChk.udiStatus;
							END_IF
						END_IF		
					
				END_CASE
				
			END_IF
			
		MagConvActEntClpStop:
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
						bClprClampCtrl		:= TRUE;
					
						fbClprClampChk.bExtSen		:= p_bClprClampSen;
						fbClprClampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprClampChk.bExtSafety	:= p_bClprClampSafetySen;
						fbClprClampChk(bEn := TRUE);
					END_IF
					
				END_IF
				
				IF fbClprClampChk.udiStatus = 0 AND fbEnt.udiStatus = 0 THEN
					eStatus		:= Done;
					
				ELSIF fbClprClampChk.udiStatus > 0 AND fbClprClampChk.udiStatus < 65534 THEN	
					bClprClampCtrl		:= FALSE;
				
					eStatus			:= Error;
					
					IF fbClprClampChk.udiStatus = 1503 THEN
						udiStatus	:= 10034;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
					ELSIF fbClprClampChk.udiStatus = 1506 THEN
						udiStatus	:= 10035;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
					ELSIF fbClprClampChk.udiStatus = 1507 THEN
						udiStatus	:= 10036;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
					ELSE
						udiStatus	:= fbClprClampChk.udiStatus;
					END_IF

				ELSIF fbEnt.udiStatus > 0 AND fbEnt.udiStatus < 65534 THEN
					eStatus		:= Error;
			
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10037;	//Transfer In Time Out While Entering Magazine
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
					
				END_IF
				
			END_IF
			
		MagConvActPreExit:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				//Conveyor Run
				fbPreExit.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
				fbPreExit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
				
				IF fbPreExit.bConvLToR = TRUE THEN
					fbPreExit.bEndSen	:= p_bRightSen;
				ELSE
					fbPreExit.bEndSen	:= p_bLeftSen;
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
			
		MagConvActPreExitClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:
						bClprClampCtrl		:= FALSE;
						
						fbClprUnclampChk.bExtSen		:= p_bClprClampSen;
						fbClprUnclampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprUnclampChk.bRetSafety		:= p_bClprUnclampSafetySen;
						fbClprUnclampChk(bEn := TRUE);
						
						IF fbClprUnclampChk.udiStatus = 0 THEN
							usiStep		:= 1;
						ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
							bClprClampCtrl		:= TRUE;
							
							eStatus			:= Error;
							
							IF fbClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10013;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10014;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10015;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbClprUnclampChk.udiStatus;
							END_IF
						END_IF
						
					1:
						//Conveyor Run
						fbPreExit.bConvLToR		:= (p_eDirection = ConvDirLToR) OR (p_eDirection = ConvDirRToR);
						fbPreExit.tTxDlyTm		:= DINT_TO_TIME(p_diInitTm);
				
						IF fbPreExit.bConvLToR = TRUE THEN
							fbPreExit.bEndSen	:= p_bRightSen;
						ELSE
							fbPreExit.bEndSen	:= p_bLeftSen;
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
			
		MagConvActExit:
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
			
		MagConvActExit1:
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
			
		MagConvActExitClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:
						bClprClampCtrl		:= FALSE;
				
						fbClprUnclampChk.bExtSen		:= p_bClprClampSen;
						fbClprUnclampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprUnclampChk.bRetSafety		:= p_bClprUnclampSafetySen;
						fbClprUnclampChk(bEn := TRUE);
					
						IF fbClprUnclampChk.udiStatus = 0 THEN
							usiStep		:= 1;
						ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
							bClprClampCtrl		:= TRUE;
					
							eStatus			:= Error;
							
							IF fbClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10013;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10014;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10015;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbClprUnclampChk.udiStatus;
							END_IF
						END_IF
						
					1:
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
			
		MagConvActExit1Clpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:
						bClprClampCtrl		:= FALSE;
				
						fbClprUnclampChk.bExtSen		:= p_bClprClampSen;
						fbClprUnclampChk.bRetSen		:= p_bClprUnclampSen;
						fbClprUnclampChk.bRetSafety		:= p_bClprUnclampSafetySen;
						fbClprUnclampChk(bEn := TRUE);
					
						IF fbClprUnclampChk.udiStatus = 0 THEN
							usiStep		:= 1;
						ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
							bClprClampCtrl		:= TRUE;
					
							eStatus			:= Error;
							
							IF fbClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10025;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10026;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Exit With Clamper
							ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10027;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbClprUnclampChk.udiStatus;
							END_IF
						END_IF
						
					1:
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
			
		MagConvActClprSetAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= TRUE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActClprRstAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= FALSE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActClprSetClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= TRUE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActClprSetUnclamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= FALSE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActClprClamp:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= TRUE;
					
				fbClprClampChk.bExtSen		:= p_bClprClampSen;
				fbClprClampChk.bRetSen		:= p_bClprUnclampSen;
				fbClprClampChk.bExtSafety	:= p_bClprClampSafetySen;
				fbClprClampChk(bEn := TRUE);
						
				IF fbClprClampChk.udiStatus = 0 THEN
					eStatus		:= Done;
				ELSIF fbClprClampChk.udiStatus < 65534 THEN	
					bClprClampCtrl		:= FALSE;
					
					eStatus			:= Error;
						
					IF fbClprClampChk.udiStatus = 1503 THEN
						udiStatus	:= 10016;	//Clamper Clamp Sensor On Time Out In Clamp Check While Clamper Clamp
					ELSIF fbClprClampChk.udiStatus = 1506 THEN
						udiStatus	:= 10017;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Clamper Clamp
					ELSIF fbClprClampChk.udiStatus = 1507 THEN
						udiStatus	:= 10018;	//Clamper Clamp Safety Sensor Error In Clamp Check While Clamper Clamp
					ELSE
						udiStatus	:= fbClprClampChk.udiStatus;
					END_IF
				END_IF		
			END_IF	
				
		MagConvActClprUnclamp:	
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				
				bClprClampCtrl		:= FALSE;
				
				fbClprUnclampChk.bExtSen		:= p_bClprClampSen;
				fbClprUnclampChk.bRetSen		:= p_bClprUnclampSen;
				fbClprUnclampChk.bRetSafety		:= p_bClprUnclampSafetySen;
				fbClprUnclampChk(bEn := TRUE);
					
				IF fbClprUnclampChk.udiStatus = 0 THEN
					eStatus		:= Done;
				ELSIF fbClprUnclampChk.udiStatus < 65534 THEN
					bClprClampCtrl		:= TRUE;
					
					eStatus			:= Error;
							
					IF fbClprUnclampChk.udiStatus = 1504 THEN
						udiStatus	:= 10019;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
						udiStatus	:= 10020;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Clamper Unclamp
					ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
						udiStatus	:= 10021;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Clamper Unclamp
					ELSE
						udiStatus	:= fbClprUnclampChk.udiStatus;
					END_IF
				END_IF
				
			END_IF	
			
		MagConvActStop:
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
		
		MagConvActStopClpr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				//Conveyor Run
				fbStop(bEn := TRUE);
		
				bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
		
				
				bClprClampCtrl		:= FALSE;
		
				fbClprUnclampChk.bExtSen		:= p_bClprClampSen;
				fbClprUnclampChk.bRetSen		:= p_bClprUnclampSen;
				fbClprUnclampChk.bRetSafety		:= p_bClprUnclampSafetySen;
				fbClprUnclampChk(bEn := TRUE);
			
				
				IF fbStop.udiStatus = 0 AND fbClprUnclampChk.udiStatus = 0 THEN
					eStatus		:= Done;
				ELSIF fbStop.udiStatus > 0 AND fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					eStatus		:= Error;
				ELSIF fbClprUnclampChk.udiStatus > 0 AND fbClprUnclampChk.udiStatus < 65534 THEN
					bClprClampCtrl		:= TRUE;
			
					eStatus			:= Error;
					
					IF fbClprUnclampChk.udiStatus = 1504 THEN
						udiStatus	:= 10022;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Stop With Clamper
					ELSIF fbClprUnclampChk.udiStatus = 1505 THEN
						udiStatus	:= 10023;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Stop With Clamper
					ELSIF fbClprUnclampChk.udiStatus = 1508 THEN
						udiStatus	:= 10024;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Stop With Clamper
					ELSE
						udiStatus	:= fbClprUnclampChk.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		MagConvActSetMtrSigOnOrLToR:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrSigOnOrLToR	:= TRUE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActSetMtrDirOrRToL:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrDirOrRToL	:= TRUE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActRstMtrSigOnOrLToR:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrSigOnOrLToR	:= FALSE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActRstMtrDirOrRToL:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrDirOrRToL	:= FALSE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActSetMtrAll:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrSigOnOrLToR	:= TRUE;
				bMtrDirOrRToL	:= TRUE;
				
				eStatus		:= Done;

			END_IF
			
		MagConvActRstMtrAll:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				bMtrSigOnOrLToR	:= FALSE;
				bMtrDirOrRToL	:= FALSE;
				
				eStatus		:= Done;

			END_IF
			
	END_CASE
	
END_ACTION
