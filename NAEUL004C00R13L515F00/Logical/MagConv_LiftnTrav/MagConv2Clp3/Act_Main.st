(** 2019-10-30 **)
ACTION Act_Main:
	
	
	fbInit.bOnDirMod	:= tylocalMagConv2Clp.In.bOnDirMod;
	fbInit.tMtrOffDlyTm	:= tylocalMagConv2Clp.In.tMtrOffDlyTm;
	fbEnt.bOnDirMod		:= tylocalMagConv2Clp.In.bOnDirMod;
	fbEnt.tMtrOffDlyTm	:= tylocalMagConv2Clp.In.tMtrOffDlyTm;
	fbPreExit.bOnDirMod		:= tylocalMagConv2Clp.In.bOnDirMod;
	fbPreExit.tMtrOffDlyTm	:= tylocalMagConv2Clp.In.tMtrOffDlyTm;
	fbExit.bOnDirMod	:= tylocalMagConv2Clp.In.bOnDirMod;
	fbExit.tMtrOffDlyTm	:= tylocalMagConv2Clp.In.tMtrOffDlyTm;
	fbExit1.bOnDirMod		:= tylocalMagConv2Clp.In.bOnDirMod;
	fbExit1.tMtrOffDlyTm	:= tylocalMagConv2Clp.In.tMtrOffDlyTm;
	fbFixClprClampChk.tTimeOut	:= tylocalMagConv2Clp.In.tClprClampTO;
	fbFixClprUnclampChk.tTimeOut	:= tylocalMagConv2Clp.In.tClprUnclampTO;
	fbRmtClprClampChk.tTimeOut	:= tylocalMagConv2Clp.In.tClprClampTO;
	fbRmtClprUnclampChk.tTimeOut	:= tylocalMagConv2Clp.In.tClprUnclampTO;
	fbClprDlyTm.PT	:= tylocalMagConv2Clp.In.tMtrOffDlyTm / 2;
	//Set tylocalMagConv2Clp.In.eAct
	IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy OR tylocalMagConv2Clp.Out.eStatus = Done THEN
		tylocalMagConv2Clp.Out.eStat	:= tylocalMagConv2Clp.In.eAct;
	END_IF
	
	IF eStatOld <> tylocalMagConv2Clp.Out.eStat THEN
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
		fbClampTim(IN := FALSE);
		
		IF eStatOld <> MagConv2ClpActIdle
			AND eStatOld <> MagConv2ClpActSetMtrSigOnOrLToR
			AND eStatOld <> MagConv2ClpActSetMtrDirOrRToL
			AND eStatOld <> MagConv2ClpActRstMtrSigOnOrLToR
			AND eStatOld <> MagConv2ClpActRstMtrDirOrRToL
			AND eStatOld <> MagConv2ClpActSetMtrAll
			AND eStatOld <> MagConv2ClpActRstMtrAll THEN
			
			tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
			tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
			
		END_IF
		
		usiStep		:= 0;
		usiSubStep	:= 0;
		usiPrevStep := 0;
		bReachEnd	:= FALSE;
		
		tylocalMagConv2Clp.Out.sStatTxt	:= a_sStatText[tylocalMagConv2Clp.Out.eStat];
		
		eStatOld	:= tylocalMagConv2Clp.Out.eStat;
		
		tylocalMagConv2Clp.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalMagConv2Clp.Out.eStat OF
		
		MagConv2ClpActIdle:
			IF EDGENEG(tylocalMagConv2Clp.In.bManual) THEN
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
			END_IF
			
			tylocalMagConv2Clp.Out.eStatus	:= Idle;
			
		MagConv2ClpActInit:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Magazine Conveyor Init Run
				//Detect Have Magazine
				IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
					tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
				ELSE
					tylocalMagConv2Clp.Out.bHvMag	:= FALSE;
				END_IF
				
				fbInit.bConvLToR	:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
				fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diInitTm);
				
				IF fbInit.bConvLToR = TRUE THEN
					fbInit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
				ELSE
					fbInit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
				END_IF
				
				fbInit(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
				IF fbInit.udiStatus = 0 THEN
					IF fbInit.bConvLToR = TRUE THEN
						IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bRightSen = FALSE THEN
							udiStatus	:= 10000;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Magazine Conveyor Initial
							tylocalMagConv2Clp.Out.eStatus		:= Error;
						ELSE
							tylocalMagConv2Clp.Out.eStatus	:= Done;
						END_IF	
					ELSE
						IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bLeftSen = FALSE THEN
							udiStatus	:= 10001;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Magazine Conveyor Initial
							tylocalMagConv2Clp.Out.eStatus		:= Error;
						ELSE
							tylocalMagConv2Clp.Out.eStatus	:= Done;
						END_IF
					END_IF
				ELSIF fbInit.udiStatus < 65534 THEN
					udiStatus	:= fbInit.udiStatus;
					tylocalMagConv2Clp.Out.eStatus		:= Error;
				END_IF
			END_IF
			
		MagConv2ClpActInitStopClp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
							tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
						ELSE
							tylocalMagConv2Clp.Out.bHvMag	:= FALSE;
						END_IF
						
						fbInit.bConvLToR	:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.udiStatus = 0 THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bRightSen = FALSE THEN
									udiStatus	:= 10005;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Conveyor Initial With Clamper
									tylocalMagConv2Clp.Out.eStatus		:= Error;
								ELSE
									usiStep	:= 2;
								END_IF
							ELSE
								IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bLeftSen = FALSE THEN
									udiStatus	:= 10006;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Conveyor Initial With Clamper
									tylocalMagConv2Clp.Out.eStatus		:= Error;
								ELSE
									usiStep	:= 2;
								END_IF
							END_IF
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalMagConv2Clp.Out.eStatus		:= Error;
						END_IF
						
					2:	//Check If Have Magazine
						IF tylocalMagConv2Clp.Out.bHvMag = TRUE THEN
							fbWidthChk(IN := NOT tylocalMagConv2Clp.In.bWidthChkInterrupt);	
							IF tylocalMagConv2Clp.In.bWidthChkInterrupt = FALSE THEN
								IF fbWidthChk.Q THEN
									udiStatus := 10048; 
									tylocalMagConv2Clp.Out.eStatus	  := Error; //Safety Sensor Is Deactivated Before Clamp
								END_IF
							ELSIF tylocalMagConv2Clp.In.bWidthChkInterrupt THEN
								usiStep	  := 3;
							END_IF
						ELSE
							tylocalMagConv2Clp.Out.eStatus	:= Done;
						END_IF
						
					3:	//Fix Clamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
						
						fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
						fbFixClprClampChk(bEn := TRUE);
						
						IF fbFixClprClampChk.udiStatus = 0 THEN
							fbFixClprDly (IN := TRUE);
							IF  fbFixClprDly.Q THEN
								fbFixClprDly (IN := FALSE);
								usiStep	:= 4;
							END_IF
							
						ELSIF fbFixClprClampChk.udiStatus < 65534 THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
						
						fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
						fbRmtClprClampChk(bEn := TRUE);
						
						IF fbRmtClprClampChk.udiStatus = 0 THEN
							tylocalMagConv2Clp.Out.eStatus	:= Done;
								
						ELSIF fbRmtClprClampChk.udiStatus < 65534 THEN
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
							tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
						ELSE
							tylocalMagConv2Clp.Out.bHvMag	:= FALSE;
						END_IF
						
						fbInit.bConvLToR	:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.bEndSen = TRUE THEN
							bReachEnd	:= TRUE;
						END_IF
						
						IF bReachEnd = TRUE THEN
							fbClprDlyTm(IN := TRUE);
							IF fbClprDlyTm.Q = TRUE THEN
								CASE usiSubStep OF
									//	0:	//Fix Clamp
									//										tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
										
									//										fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
									//										fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
									//										fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
									//										fbFixClprClampChk(bEn := TRUE);
									//										
									//										IF fbFixClprClampChk.udiStatus = 0 THEN
									//											usiSubStep	:= 1;
									//										END_IF
										
									0:	//Remote Clamp
										tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
										tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
										fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
										fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
										fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
										fbRmtClprClampChk(bEn := TRUE);
										
										IF fbRmtClprClampChk.udiStatus = 0 THEN
											usiSubStep	:= 1;
										END_IF
									
										
									1:
									
										tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
										tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
										
										fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
										fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
										fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
										fbFixClprClampChk(bEn := TRUE);
									
								END_CASE
							END_IF
						END_IF
						
						IF (fbInit.udiStatus = 0) AND ((fbFixClprClampChk.udiStatus = 0 AND fbRmtClprClampChk.udiStatus = 0) OR (bReachEnd = FALSE)) THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bRightSen = FALSE THEN
									udiStatus	:= 10041;	//Magazine Detected But Not Present At Outlet Sensor (L - R) While Conveyor Initial With Clamper
									tylocalMagConv2Clp.Out.eStatus		:= Error;
								ELSE
									tylocalMagConv2Clp.Out.eStatus		:= Done;
								END_IF
							ELSE
								IF tylocalMagConv2Clp.Out.bHvMag = TRUE AND tylocalMagConv2Clp.In.bLeftSen = FALSE THEN
									udiStatus	:= 10042;	//Magazine Detected But Not Present At Outlet Sensor (R - L) While Conveyor Initial With Clamper
									tylocalMagConv2Clp.Out.eStatus		:= Error;
								ELSE
									tylocalMagConv2Clp.Out.eStatus		:= Done;
								END_IF
							END_IF
							
						ELSIF fbInit.udiStatus > 0 AND fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalMagConv2Clp.Out.eStatus		:= Error;
							
						ELSIF (fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534) OR (fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Detect Have Magazine
				IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
					tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
				END_IF
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
				ELSE
					fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus		:= Done;
				ELSIF fbEnt.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.eStatus		:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10028;	//Transfer In Time Out While Entering Magazine
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActEntStopClp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Conveyor Enter
						//Detect Have Magazine
						IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
							tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
						END_IF
						
						//Conveyor Run
						fbEnt.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
						fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxInTimeOut);
						
						IF fbEnt.bConvLToR = TRUE THEN
							fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
						ELSE
							fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
						END_IF
						
						fbEnt(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
						
						IF fbEnt.udiStatus = 0 THEN
							usiStep	:= 2;
							tRemainingTime := tylocalMagConv2Clp.In.tClprClampTO;
						
						ELSIF fbEnt.udiStatus < 65534 THEN
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
							IF fbEnt.udiStatus = 1101 THEN
								udiStatus	:= 10029;	//Transfer In Time Out While Entering Magazine
							ELSE
								udiStatus	:= fbEnt.udiStatus;
							END_IF
						END_IF
					1: //clamp standby step
						fbFixClprClampChk(bEn:= FALSE);
						fbRmtClprClampChk(bEn:= FALSE);
						fbFixClprUnclampChk(bEn:= FALSE);
						fbRmtClprUnclampChk(bEn := FALSE);
						fbInterrupSenDlyOff(IN:= tylocalMagConv2Clp.In.bWidthChkInterrupt);
						IF fbInterrupSenDlyOff.Q THEN
							IF NOT(tylocalMagConv2Clp.In.bLeftSen) AND NOT(tylocalMagConv2Clp.In.bRightSen) THEN
								tylocalMagConv2Clp.Out.eStatus := Error;
								udiStatus	:= 10049; //Magazine is taken away during the clamp
							ELSIF (tylocalMagConv2Clp.In.bLeftSen AND NOT(tylocalMagConv2Clp.In.bRightSen)) THEN
								fbEnt(bEn := FALSE);
								usiStep := 4;
								IF usiPrevStep <> usiStep THEN
									tRemainingTime := tylocalMagConv2Clp.In.tClprClampTO;
								END_IF
							ELSE
								usiStep := usiPrevStep;
								usiPrevStep := 1;
							END_IF
						END_IF
						
						
					2:	//Fix Clamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
						
						fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen ;// OR (usiPrevStep = 1 AND tylocalMagConv2Clp.In.bFixClprClampSen = FALSE);
						fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
						fbFixClprClampChk(bEn := TRUE);
						IF (tRemainingTime) > T#5s THEN
							fbClampTim(IN:= TRUE,PT:= tRemainingTime );
						ELSE
							fbClampTim(IN:= TRUE,PT:= T#6s);
						END_IF				
						IF fbFixClprClampChk.udiStatus = 0 THEN
							fbFixClprDly(IN := TRUE);
							IF  fbFixClprDly.Q THEN
								fbFixClprDly (IN := FALSE);
								usiStep	:= 3;
								tRemainingTime := tylocalMagConv2Clp.In.tClprClampTO;
								fbClampTim(IN:= FALSE);
							END_IF
						ELSIF fbFixClprClampChk.udiStatus < 65534 OR fbClampTim.Q THEN	
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
							IF fbFixClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10010;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10011;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10012;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbFixClprClampChk.udiStatus = 65535 AND fbClampTim.Q THEN
								udiStatus	:= 10050;	//Clamper Clamp Sensor On Time Out While Continue to Clamp
							ELSE
								udiStatus	:= fbFixClprClampChk.udiStatus;
							END_IF
						ELSIF NOT(tylocalMagConv2Clp.In.bWidthChkInterrupt) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
							usiPrevStep := 2;
							usiStep	:= 1;
							tRemainingTime := tRemainingTime - fbClampTim.ET;
							fbClampTim(IN:= FALSE);
						END_IF
						
					3:	//Remote Clamp
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
						fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen ;
						fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
						fbRmtClprClampChk(bEn := TRUE);
						IF (tRemainingTime ) > T#6s THEN
							fbClampTim(IN:= TRUE,PT:= tRemainingTime );
						ELSE
							fbClampTim(IN:= TRUE,PT:= T#5s);
						END_IF	
						IF fbRmtClprClampChk.udiStatus = 0 THEN
							tylocalMagConv2Clp.Out.eStatus	:= Done;
						ELSIF fbRmtClprClampChk.udiStatus < 65534 OR fbClampTim.Q THEN	
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
							IF fbRmtClprClampChk.udiStatus = 1503 THEN
								udiStatus	:= 10010;	//Clamper Clamp Sensor On Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1506 THEN
								udiStatus	:= 10011;	//Clamper Unclamp Sensor Off Time Out In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 1507 THEN
								udiStatus	:= 10012;	//Clamper Clamp Safety Sensor Error In Clamp Check While Conveyor Enter With Clamper
							ELSIF fbRmtClprClampChk.udiStatus = 65535 AND fbClampTim.Q THEN
								udiStatus	:= 10051;	//Clamper Clamp Sensor On Time Out While Continue to Clamp
							ELSE
								udiStatus	:= fbRmtClprClampChk.udiStatus;
							END_IF
						ELSIF NOT(tylocalMagConv2Clp.In.bWidthChkInterrupt) THEN
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl := FALSE;
							usiPrevStep := 3;
							usiStep	:= 1;
							tRemainingTime := tRemainingTime - fbClampTim.ET;
							fbClampTim(IN:= FALSE);
						END_IF
					4:
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						IF (tRemainingTime) > T#5s THEN
							fbClampTim(IN:= TRUE,PT:= tRemainingTime );
						ELSE
							fbClampTim(IN:= TRUE,PT:= T#6s);
						END_IF	
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep := 0;
							tRemainingTime := tylocalMagConv2Clp.In.tClprClampTO;
							fbClampTim(IN:= FALSE);
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) OR fbClampTim.Q THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
							IF fbFixClprUnclampChk.udiStatus = 1504 OR fbRmtClprUnclampChk.udiStatus = 1504 THEN
								udiStatus	:= 10002;	//Clamper Clamp Sensor Off Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1505 OR fbRmtClprUnclampChk.udiStatus = 1505 THEN
								udiStatus	:= 10003;	//Clamper Unclamp Sensor On Time Out In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus = 1508 OR fbRmtClprUnclampChk.udiStatus = 1508 THEN
								udiStatus	:= 10004;	//Clamper Unclamp Safety Sensor Error In Unclamp Check While Conveyor Initial With Clamper
							ELSIF fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534 THEN
								udiStatus	:= fbFixClprUnclampChk.udiStatus;
							ELSIF fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534 THEN
								udiStatus	:= fbRmtClprUnclampChk.udiStatus;
							ELSIF (fbFixClprUnclampChk.udiStatus = 65535 AND fbRmtClprUnclampChk.udiStatus = 65535) OR fbClampTim.Q THEN
								udiStatus	:= 10052;	//Clamper Unclamp Sensor On Time Out While Continue to UnClamp
							END_IF
						ELSIF NOT(tylocalMagConv2Clp.In.bWidthChkInterrupt) THEN
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl := FALSE;
							usiPrevStep := 4;
							usiStep	:= 1;
							tRemainingTime := tRemainingTime - fbClampTim.ET;
							fbClampTim(IN:= FALSE);
						END_IF
				END_CASE
				
			END_IF
			
		MagConv2ClpActEntClpStop:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Detect Have Magazine
				IF tylocalMagConv2Clp.In.bLeftSen OR tylocalMagConv2Clp.In.bRightSen THEN
					tylocalMagConv2Clp.Out.bHvMag	:= TRUE;
				END_IF
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
				ELSE
					fbEnt.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.bEndSen = TRUE THEN
					bReachEnd	:= TRUE;
				END_IF
						
				IF bReachEnd = TRUE THEN
					fbClprDlyTm(IN := TRUE);
					IF fbClprDlyTm.Q = TRUE THEN
						CASE usiSubStep OF
							0:	//Fix Clamp
								//								tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
								//								
								//								fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
								//								fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
								//								fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
								//								fbFixClprClampChk(bEn := TRUE);
								//								
								//								IF fbFixClprClampChk.udiStatus = 0 THEN
								//									usiSubStep	:= 1;
								//								END_IF
								
								tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
								tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
								fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
								fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
								fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
								fbRmtClprClampChk(bEn := TRUE);
								
								IF fbRmtClprClampChk.udiStatus = 0 THEN
									usiSubStep	:= 1;
								END_IF
								
							1:	//Remote Clamp
								//								tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
								//								
								//								fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
								//								fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
								//								fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
								//								fbRmtClprClampChk(bEn := TRUE);
								
								tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
								tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
								
								fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
								fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
								fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
								fbFixClprClampChk(bEn := TRUE);
								
		
							
						END_CASE
					END_IF
				END_IF
				
				IF fbEnt.udiStatus = 0 AND (fbFixClprClampChk.udiStatus = 0 AND fbRmtClprClampChk.udiStatus = 0) THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
					
				ELSIF (fbFixClprClampChk.udiStatus > 0 AND fbFixClprClampChk.udiStatus < 65534) OR (fbRmtClprClampChk.udiStatus > 0 AND fbRmtClprClampChk.udiStatus < 65534) THEN
					tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
					
					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10037;	//Transfer In Time Out While Entering Magazine
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
					
				END_IF
				
			END_IF
			
		MagConv2ClpActPreExit:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Conveyor Run
				fbPreExit.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
				fbPreExit.tTxDlyTm		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diInitTm);
				
				IF fbPreExit.bConvLToR = TRUE THEN
					fbPreExit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
					fbPreExit.bStartSen	:= tylocalMagConv2Clp.In.bLeftSen;
				ELSE
					fbPreExit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
					fbPreExit.bStartSen	:= tylocalMagConv2Clp.In.bRightSen;
				END_IF
				
				fbPreExit(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbPreExit.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbPreExit.bMtrDirOrRToL;
				
				IF fbPreExit.udiStatus = 0 THEN
					IF fbPreExit.bEndSen = TRUE THEN
						tylocalMagConv2Clp.Out.eStatus	:= Done;
					ELSE
						udiStatus	:= 10046;	//Magazine Not Detected While Pre-Exiting Magazine
						tylocalMagConv2Clp.Out.eStatus		:= Error;
					END_IF
				ELSIF fbPreExit.udiStatus < 65534 THEN
					udiStatus	:= fbPreExit.udiStatus;
					tylocalMagConv2Clp.Out.eStatus		:= Error;
				END_IF
				
			END_IF
			
		MagConv2ClpActPreExitClpr:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						fbPreExit.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
						fbPreExit.tTxDlyTm		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diInitTm);
						
						IF fbPreExit.bConvLToR = TRUE THEN
							fbPreExit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
							fbPreExit.bStartSen	:= tylocalMagConv2Clp.In.bLeftSen;
						ELSE
							fbPreExit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
							fbPreExit.bStartSen	:= tylocalMagConv2Clp.In.bRightSen;
						END_IF
						
						fbPreExit(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbPreExit.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbPreExit.bMtrDirOrRToL;
						
						IF fbPreExit.udiStatus = 0 THEN
							IF fbPreExit.bEndSen = TRUE THEN
								tylocalMagConv2Clp.Out.eStatus	:= Done;
							ELSE
								udiStatus	:= 10046;	//Magazine Not Detected While Pre-Exiting Magazine
								tylocalMagConv2Clp.Out.eStatus		:= Error;
							END_IF
						ELSIF fbPreExit.udiStatus < 65534 THEN
							udiStatus	:= fbPreExit.udiStatus;
							tylocalMagConv2Clp.Out.eStatus		:= Error;
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActExit:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Conveyor Run
				fbExit.bConvLToR	:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
				fbExit.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxOutTimeOut);
				
				IF fbExit.bConvLToR = TRUE THEN
					fbExit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
				ELSE
					fbExit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
				END_IF
				
				fbExit(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
				
				IF fbExit.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.bHvMag		:= FALSE;	
					tylocalMagConv2Clp.Out.eStatus		:= Done;
				ELSIF fbExit.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.eStatus		:= Error;
					
					IF fbExit.udiStatus = 1101 THEN
						udiStatus	:= 10030;	//Transfer Out Time Out While Exiting Magazine
					ELSE
						udiStatus	:= fbExit.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActExit1:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Conveyor Run
				fbExit1.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
				fbExit1.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxOutTimeOut);
				
				IF fbExit1.bConvLToR = TRUE THEN
					fbExit1.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
				ELSE
					fbExit1.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
				END_IF
				
				fbExit1(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
				
				IF fbExit1.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.bHvMag		:= FALSE;
					tylocalMagConv2Clp.Out.eStatus		:= Done;
				ELSIF fbExit1.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.eStatus		:= Error;
					
					IF fbExit1.udiStatus = 1101 THEN
						udiStatus	:= 10032;	//Transfer Out Time Out While Exiting Magazinie
					ELSE
						udiStatus	:= fbExit1.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		MagConv2ClpActExitClpr:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						fbExit.bConvLToR	:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
						fbExit.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxOutTimeOut);
						
						IF fbExit.bConvLToR = TRUE THEN
							fbExit.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
						ELSE
							fbExit.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
						END_IF
						
						fbExit(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
						
						IF fbExit.udiStatus = 0 THEN
							tylocalMagConv2Clp.Out.bHvMag		:= FALSE;
							tylocalMagConv2Clp.Out.eStatus		:= Done;
						ELSIF fbExit.udiStatus < 65534 THEN
							tylocalMagConv2Clp.Out.eStatus		:= Error;
							
							IF fbExit.udiStatus = 1101 THEN
								udiStatus	:= 10031;	//Transfer Out Time Out While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbExit.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActExit1Clpr:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				CASE usiStep OF
					0:	//Unclamp
						tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
						tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := TRUE;
						tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
						
						fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
						fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
						fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
						fbFixClprUnclampChk(bEn := TRUE);
						
						fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
						fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
						fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
						fbRmtClprUnclampChk(bEn := TRUE);
						
						IF fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
							tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
							tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
							tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
							
							tylocalMagConv2Clp.Out.eStatus	:= Error;
							
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
						fbExit1.bConvLToR		:= (tylocalMagConv2Clp.In.eDirection = ConvDirLToR) OR (tylocalMagConv2Clp.In.eDirection = ConvDirRToR);
						fbExit1.tTimeOut		:= DINT_TO_TIME(tylocalMagConv2Clp.In.diTxOutTimeOut);
						
						IF fbExit1.bConvLToR = TRUE THEN
							fbExit1.bEndSen	:= tylocalMagConv2Clp.In.bRightSen;
						ELSE
							fbExit1.bEndSen	:= tylocalMagConv2Clp.In.bLeftSen;
						END_IF
						
						fbExit1(bEn := TRUE);
						
						tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
						tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
						
						IF fbExit1.udiStatus = 0 THEN
							tylocalMagConv2Clp.Out.bHvMag		:= FALSE;
							tylocalMagConv2Clp.Out.eStatus		:= Done;
						ELSIF fbExit1.udiStatus < 65534 THEN
							tylocalMagConv2Clp.Out.eStatus		:= Error;
							
							IF fbExit1.udiStatus = 1101 THEN
								udiStatus	:= 10033;	//Transfer Out Time Out While Conveyor Exit With Clamper
							ELSE
								udiStatus	:= fbExit1.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
			
		MagConv2ClpActFixClprSetAll:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := TRUE;

				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprRstAll:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
	
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprSetClamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;

				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprSetUnclamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := TRUE;

				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActFixClprClamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;

				fbFixClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
				fbFixClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
				fbFixClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bFixClprClampSafetySen;
				fbFixClprClampChk(bEn := TRUE);
				
				IF fbFixClprClampChk.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
				ELSIF fbFixClprClampChk.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;

					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := TRUE;
				
				fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
				fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
				fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
				fbFixClprUnclampChk(bEn := TRUE);
				
				IF fbFixClprUnclampChk.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
				ELSIF fbFixClprUnclampChk.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;

					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprRstAll:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprSetClamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprSetUnclamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRmtClprClamp:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= TRUE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
				
				fbRmtClprClampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
				fbRmtClprClampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
				fbRmtClprClampChk.bExtSafety	:= tylocalMagConv2Clp.In.bRmtClprClampSafetySen;
				fbRmtClprClampChk(bEn := TRUE);
				
				IF fbRmtClprClampChk.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
				ELSIF fbRmtClprClampChk.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
				
				fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
				fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
				fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
				fbRmtClprUnclampChk(bEn := TRUE);
				
				IF fbRmtClprUnclampChk.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
				ELSIF fbRmtClprUnclampChk.udiStatus < 65534 THEN
					tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				IF fbStop.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus	:= Done;
				ELSIF fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalMagConv2Clp.Out.eStatus		:= Error;
				END_IF
				
			END_IF
			
		MagConv2ClpActStopClpr:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.eStatus	:= Busy;
				
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
				tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := TRUE;
				tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= TRUE;
				
				fbFixClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bFixClprClampSen;
				fbFixClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bFixClprUnclampSen;
				fbFixClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bFixClprUnclampSafetySen;
				fbFixClprUnclampChk(bEn := TRUE);
				
				fbRmtClprUnclampChk.bExtSen		:= tylocalMagConv2Clp.In.bRmtClprClampSen;
				fbRmtClprUnclampChk.bRetSen		:= tylocalMagConv2Clp.In.bRmtClprUnclampSen;
				fbRmtClprUnclampChk.bRetSafety	:= tylocalMagConv2Clp.In.bRmtClprUnclampSafetySen;
				fbRmtClprUnclampChk(bEn := TRUE);
				
				IF fbStop.udiStatus = 0 AND fbFixClprUnclampChk.udiStatus = 0 AND fbRmtClprUnclampChk.udiStatus = 0 THEN
					tylocalMagConv2Clp.Out.eStatus		:= Done;
				ELSIF fbStop.udiStatus > 0 AND fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalMagConv2Clp.Out.eStatus		:= Error;
				ELSIF (fbFixClprUnclampChk.udiStatus > 0 AND fbFixClprUnclampChk.udiStatus < 65534) OR (fbRmtClprUnclampChk.udiStatus > 0 AND fbRmtClprUnclampChk.udiStatus < 65534) THEN
					tylocalMagConv2Clp.Out.bFixClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bRmtClprClampCtrl	:= FALSE;
					tylocalMagConv2Clp.Out.bFixClprUnClampCtrl := FALSE;
					tylocalMagConv2Clp.Out.bRmtClprUnClampCtrl	:= FALSE;
					
					tylocalMagConv2Clp.Out.eStatus	:= Error;
					
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
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= TRUE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActSetMtrDirOrRToL:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= TRUE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrSigOnOrLToR:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrDirOrRToL:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActSetMtrAll:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= TRUE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= TRUE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
			
		MagConv2ClpActRstMtrAll:
			IF tylocalMagConv2Clp.Out.eStatus = Idle OR tylocalMagConv2Clp.Out.eStatus = Busy THEN
				
				tylocalMagConv2Clp.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalMagConv2Clp.Out.bMtrDirOrRToL	:= FALSE;
				
				tylocalMagConv2Clp.Out.eStatus	:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
