(** 2019-06-17 **)
ACTION Act_Main:
	
	
	fbInit.bOnDirMod	:= tylocalPshrConv.In.bOnDirMod;
	fbInit.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbEnt.bOnDirMod		:= tylocalPshrConv.In.bOnDirMod;
	fbEnt.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbRev.bOnDirMod		:= tylocalPshrConv.In.bOnDirMod;
	fbRev.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diRevDlyTm);
	fbRev.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbPreExit.bOnDirMod		:= tylocalPshrConv.In.bOnDirMod;
	fbPreExit.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbExit.bOnDirMod	:= tylocalPshrConv.In.bOnDirMod;
	fbExit.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbExit1.bOnDirMod		:= tylocalPshrConv.In.bOnDirMod;
	fbExit1.tMtrOffDlyTm	:= tylocalPshrConv.In.tMtrOffDlyTm;
	fbPshrExtChk.tTimeOut	:= tylocalPshrConv.In.tPshrExtTO;
	fbPshrRetChk.tTimeOut	:= tylocalPshrConv.In.tPshrRetTO;
	fbPullerExtChk.tTimeOut	:= tylocalPshrConv.In.tPullerExtTO;
	fbPullerRetChk.tTimeOut	:= tylocalPshrConv.In.tPullerRetTO;
	fbRotHomeChk.tTimeOut	:= tylocalPshrConv.In.tRotHomeTO;
	fbRotRemoteChk.tTimeOut	:= tylocalPshrConv.In.tRotRemoteTO;
	fbRejectUpChk.tTimeOut	:= tylocalPshrConv.In.tRejectUpTO;
	fbRejectDownChk.tTimeOut	:= tylocalPshrConv.In.tRejectDownTO;
	
	
	//Set tylocalPshrConv.In.eAct
	IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy OR tylocalPshrConv.Out.eStatus = Done THEN
		tylocalPshrConv.Out.eStat	:= tylocalPshrConv.In.eAct;
	END_IF
	
	IF eStatOld <> tylocalPshrConv.Out.eStat THEN
		fbInit(bEn := FALSE);
		fbEnt(bEn := FALSE);
		fbRev(bEn := FALSE);
		fbPreExit(bEn := FALSE);
		fbExit(bEn := FALSE);
		fbExit1(bEn := FALSE);
		fbStop(bEn := FALSE);
		fbPshrExtChk(bEn := FALSE);
		fbPshrRetChk(bEn := FALSE);
		fbPullerExtChk(bEn := FALSE);
		fbPullerRetChk(bEn := FALSE);
		fbRotHomeChk(bEn := FALSE);
		fbRotRemoteChk(bEn := FALSE);
		fbRejectUpChk(bEn := FALSE);
		fbRejectDownChk(bEn := FALSE);
		fbWaitTm(IN := FALSE);
			
		IF eStatOld <> ConvActIdle
			AND eStatOld <> ConvActSetMtrSigOnOrLToR
			AND eStatOld <> ConvActRstMtrSigOnOrLToR
			AND eStatOld <> ConvActSetMtrDirOrRToL
			AND eStatOld <> ConvActRstMtrDirOrRToL
			AND eStatOld <> ConvActSetMtrAll
			AND eStatOld <> ConvActRstMtrAll THEN
			
			tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
			tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
			
		END_IF
		
		tylocalPshrConv.Out.bLmtSenActivated	:= FALSE;
		bInletOff			:= FALSE;
		usiStep				:= 0;
		
		tylocalPshrConv.Out.sStatTxt	:= a_sStatText[tylocalPshrConv.Out.eStat];
		
		eStatOld	:= tylocalPshrConv.Out.eStat;
		
		tylocalPshrConv.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalPshrConv.Out.eStat OF
		
		ConvActIdle:
			IF EDGENEG(tylocalPshrConv.In.bManual) THEN
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
			END_IF
			
			tylocalPshrConv.Out.eStatus	:= Idle;
		
		ConvActInit:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd	:= FALSE;
						usiStep	:= 1;
						
					1:	//Conveyor Initial Run
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
							
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus	:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10000;	//Multi Board Detected While Conveyor Initial
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
						
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
						
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.udiStatus = 0 THEN
							
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10001;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10002;	//Board Not Present At Outlet Sensor (R - L) While Conveyor Initial
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							END_IF
							
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
						
				END_CASE
					
			END_IF	
		
		ConvActInitRev:	
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd	:= FALSE;
						usiStep	:= 1;
						
					1:	//Conveyor Initial Run
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10003;	//Multi Board Detected While Conveyor Initial With Reverse
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
					
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10004;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial With Reverse
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									usiStep		:= 2;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10005;	//Board Not Present At Outlet Sensor (R - L) While Conveyor Initial With Reverse
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									usiStep		:= 2;
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
						
					2:	//Check Have Board
						IF tylocalPshrConv.Out.bHvBrd = TRUE THEN
							usiStep		:= 3;
						ELSE	
							tylocalPshrConv.Out.eStatus		:= Done;
						END_IF	
							
					3:	//Delay
						fbWaitTm(IN := TRUE , PT := T#500ms);
					
						IF fbWaitTm.Q = TRUE THEN
							fbWaitTm(IN := FALSE);
							
							usiStep	:= 4;
						END_IF	
						
					4:	//Reverse
						//Conveyor Run
						fbRev.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirRToL) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
					
						IF fbRev.bConvLToR = TRUE THEN
							fbRev.bStartSen	:= tylocalPshrConv.In.bLeftSen;
							fbRev.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE	
							fbRev.bStartSen	:= tylocalPshrConv.In.bRightSen;
							fbRev.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF	
				
						fbRev(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbRev.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbRev.bMtrDirOrRToL;
				
						IF fbRev.udiStatus = 0 THEN
							tylocalPshrConv.Out.eStatus		:= Done;
						ELSIF fbRev.udiStatus < 65534 THEN	
							udiStatus	:= fbRev.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF		
					
				END_CASE	
			END_IF	
			
		ConvActInitPshr:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd	:= FALSE;
						usiStep	:= 1;
						
					1:	//Pusher Retract
						tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
						tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
				
						fbPshrRetChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
						fbPshrRetChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
						fbPshrRetChk.bRetSafety	:= tylocalPshrConv.In.bPshrRetSafetySen;
						fbPshrRetChk(bEn := TRUE);
					
						IF fbPshrRetChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
							usiStep			:= 2;
						ELSIF fbPshrRetChk.udiStatus < 65534 THEN
							tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
							tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbPshrRetChk.udiStatus = 1504 THEN
								udiStatus	:= 10006;	//Pusher Extend Sensor Off Time Out In Retract Check While Conveyor Initial With Pusher
							ELSIF fbPshrRetChk.udiStatus = 1505 THEN
								udiStatus	:= 10007;	//Pusher Retract Sensor On Time Out In Retract Check While Conveyor Initial With Pusher
							ELSIF fbPshrRetChk.udiStatus = 1508 THEN
								udiStatus	:= 10008;	//Pusher Retract Safety Sensor Error In Retract Check While Conveyor Initial With Pusher
							ELSE
								udiStatus	:= fbPshrRetChk.udiStatus;
							END_IF
						END_IF
						
					2:	//Conveyor Init Run
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10009;	//Multi Board Detected While Conveyor Initial With Pusher
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10010;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial With Pusher
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10011;	//Board Not Present At Outlet Sensor (R - L) While Conveyor Initial With Pusher
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
				END_CASE	
			END_IF	
		
		ConvActInitPuller:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd	:= FALSE;
						usiStep	:= 1;
						
					1:	//Rotate Home
						tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
				
						fbRotHomeChk.bExtSen	:= tylocalPshrConv.In.bRotHomeSen;
						fbRotHomeChk.bRetSen	:= tylocalPshrConv.In.bRotRemoteSen;
						fbRotHomeChk.bExtSafety	:= tylocalPshrConv.In.bRotHomeSafetySen;
						fbRotHomeChk(bEn := TRUE);
					
						IF fbRotHomeChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRotAtHome	:= TRUE;
							usiStep		:= 2;
						ELSIF fbRotHomeChk.udiStatus < 65534 THEN
							tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbRotHomeChk.udiStatus = 1503 THEN
								udiStatus	:= 10012;	//Rotator Home Sensor On Time Out In Home Check While Conveyor Initial With Puller
							ELSIF fbRotHomeChk.udiStatus = 1506 THEN
								udiStatus	:= 10013;	//Rotator Remote Sensor Off Time Out In Home Check While Conveyor Initial With Puller
							ELSIF fbRotHomeChk.udiStatus = 1507 THEN
								udiStatus	:= 10014;	//Rotator Home Safety Sensor Error In Home Check While Conveyor Initial With Puller
							ELSE
								udiStatus	:= fbRotHomeChk.udiStatus;
							END_IF
						END_IF
					
					2: //Puller Retract
						tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
						tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
					
						fbPullerRetChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
						fbPullerRetChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
						fbPullerRetChk.bRetSafety	:= tylocalPshrConv.In.bPullerRetSafetySen;
						fbPullerRetChk(bEn := TRUE);
						
						IF fbPullerRetChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bPullerRetracted	:= TRUE;
							usiStep				:= 3;	
						ELSIF fbPullerRetChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
							tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
							
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbPullerRetChk.udiStatus = 1504 THEN
								udiStatus	:= 10015;	//Puller Extend Sensor Off Time Out In Retract Check While Conveyor Initial With Puller
							ELSIF fbPullerRetChk.udiStatus = 1505 THEN
								udiStatus	:= 10016;	//Puller Retract Sensor On Time Out In Retract Check While Conveyor Initial With Puller
							ELSIF fbPullerRetChk.udiStatus = 1508 THEN
								udiStatus	:= 10017;	//Puller Retract Safety Sensor Error In Retract Check While Conveyor Initial With Puller
							ELSE
								udiStatus	:= fbPullerRetChk.udiStatus;
							END_IF
						END_IF	
					
					3: //Conveyor Init Run	
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10018;	//Multi Board Detected While Conveyor Initial With Puller
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10019;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial With Puller
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10020;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial With Puller
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
				END_CASE	
			END_IF
			
		ConvActInitRej:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd		:= FALSE;
						tylocalPshrConv.Out.bRejHvBrd	:= FALSE;
						usiStep		:= 1;
						
					1:	//Check Reject Sensor
						IF tylocalPshrConv.In.bRejectDownSen = TRUE THEN
							usiStep	:= 2;
						ELSE
							usiStep	:= 4;
						END_IF
						
					2:	//Initial Run Conveyor
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10079;	//Multi Board Detected While Conveyor Initial With Reject
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bMiddleSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
					
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE AND tylocalPshrConv.In.bMiddleSen = FALSE THEN
									udiStatus	:= 10080;	//Board Not Present At Outlet Or Middle Sensor (L - R) While Conveyor Initial With Reject
									tylocalPshrConv.Out.eStatus		:= Error;
									
								ELSE
									IF tylocalPshrConv.In.bRightSen = TRUE THEN
										tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
										tylocalPshrConv.Out.eStatus				:= Done;
									ELSIF tylocalPshrConv.In.bMiddleSen = TRUE THEN
										usiStep	:= 3;
									ELSE
										tylocalPshrConv.Out.eStatus	:= Done;
									END_IF
									
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE AND tylocalPshrConv.In.bMiddleSen = FALSE THEN
									udiStatus	:= 10081;	//Board Not Present At Outlet Or Middle Sensor (R - L) While Conveyor Initial With Reject
									tylocalPshrConv.Out.eStatus		:= Error;
									
								ELSE
									IF tylocalPshrConv.In.bLeftSen = TRUE THEN
										tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
										tylocalPshrConv.Out.eStatus				:= Done;
									ELSIF tylocalPshrConv.In.bMiddleSen = TRUE THEN
										usiStep	:= 3;
									ELSE
										tylocalPshrConv.Out.eStatus	:= Done;
									END_IF
									
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
						
					3: 	//Reject Up
						tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
						tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
						fbRejectUpChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
						fbRejectUpChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
						fbRejectUpChk.bExtSafety	:= tylocalPshrConv.In.bRejectUpSafetySen;
						fbRejectUpChk(bEn := TRUE);
						
						IF fbRejectUpChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRejectAtUp	:= TRUE;
							tylocalPshrConv.Out.bRejHvBrd	:= TRUE;
							tylocalPshrConv.Out.bHvBrd		:= FALSE;
							tylocalPshrConv.Out.eStatus		:= Done;
						ELSIF fbRejectUpChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
							tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
						
							IF fbRejectUpChk.udiStatus = 1503 THEN
								udiStatus	:= 10082;	//Reject Up Sensor On Time Out In Up Check While Conveyor Initial With Reject
							ELSIF fbRejectUpChk.udiStatus = 1506 THEN
								udiStatus	:= 10083;	//Reject Down Sensor Off Time Out In Up Check While Conveyor Initial With Reject
							ELSIF fbRejectUpChk.udiStatus = 1507 THEN
								udiStatus	:= 10084;	//Reject Up Safety Sensor Error In Up Check While Conveyor Initial With Reject
							ELSE
								udiStatus	:= fbRejectUpChk.udiStatus;
							END_IF
						END_IF
					
					4: 	//Reject Up
						tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
						tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
						fbRejectUpChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
						fbRejectUpChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
						fbRejectUpChk.bExtSafety	:= tylocalPshrConv.In.bRejectUpSafetySen;
						fbRejectUpChk(bEn := TRUE);
						
						IF fbRejectUpChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRejectAtUp	:= TRUE;
							tylocalPshrConv.Out.bRejHvBrd	:= TRUE;
							usiStep		:= 5;
						ELSIF fbRejectUpChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
							tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
						
							IF fbRejectUpChk.udiStatus = 1503 THEN
								udiStatus	:= 10088;	//Reject Up Sensor On Time Out In Up Check While Conveyor Initial With Reject
							ELSIF fbRejectUpChk.udiStatus = 1506 THEN
								udiStatus	:= 10089;	//Reject Down Sensor Off Time Out In Up Check While Conveyor Initial With Reject
							ELSIF fbRejectUpChk.udiStatus = 1507 THEN
								udiStatus	:= 10090;	//Reject Up Safety Sensor Error In Up Check While Conveyor Initial With Reject
							ELSE
								udiStatus	:= fbRejectUpChk.udiStatus;
							END_IF
						END_IF
					
					5:	//Initial Run Conveyor
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10091;	//Multi Board Detected While Conveyor Initial With Reject
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
					
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10092;	//Board Not Present At Outlet Sensor (L - R) While Conveyor Initial With Reject
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus		:= Done;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10093;	//Board Not Present At Outlet Sensor (R - L) While Conveyor Initial With Reject
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus		:= Done;
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
						
				END_CASE
				
			END_IF
			
		ConvActInitInsp:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Reset
						tylocalPshrConv.Out.bHvBrd		:= FALSE;
						tylocalPshrConv.Out.bInspHvBrd	:= FALSE;
						usiStep		:= 1;
						
					1:	//Initial Run Conveyor
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10085;	//Multi Board Detected While Conveyor Initial With Inspection
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
							tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdInit;
						END_IF
				
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bMiddleSen;
						END_IF
				
						fbInit(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
				
						IF fbInit.udiStatus = 0 THEN
					
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE AND tylocalPshrConv.In.bMiddleSen = FALSE THEN
									udiStatus	:= 10086;	//Board Not Present At Outlet Or Middle Sensor (L - R) While Conveyor Initial With Inspection
									tylocalPshrConv.Out.eStatus		:= Error;
									
								ELSE
									IF tylocalPshrConv.In.bRightSen = TRUE THEN
										tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
										tylocalPshrConv.Out.eStatus				:= Done;
									ELSIF tylocalPshrConv.In.bMiddleSen = TRUE THEN
										tylocalPshrConv.Out.bInspHvBrd	:= TRUE;
										tylocalPshrConv.Out.eStatus		:= Done;
									ELSE
										tylocalPshrConv.Out.eStatus	:= Done;
									END_IF
									
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE AND tylocalPshrConv.In.bMiddleSen = FALSE THEN
									udiStatus	:= 10087;	//Board Not Present At Outlet Or Middle Sensor (R - L) While Conveyor Initial With Inspection
									tylocalPshrConv.Out.eStatus		:= Error;
									
								ELSE
									IF tylocalPshrConv.In.bLeftSen = TRUE THEN
										tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
										tylocalPshrConv.Out.eStatus				:= Done;
									ELSIF tylocalPshrConv.In.bMiddleSen = TRUE THEN
										tylocalPshrConv.Out.bInspHvBrd	:= TRUE;
										tylocalPshrConv.Out.eStatus		:= Done;
									ELSE
										tylocalPshrConv.Out.eStatus	:= Done;
									END_IF
									
								END_IF
							END_IF
					
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
				
				END_CASE
				
			END_IF
			
		ConvActEnt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10021;	//Multi Board Detected While Conveyor Enter Board
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Detect Have Board
				IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
					tylocalPshrConv.Out.bHvBrd	:= TRUE;
				END_IF
				
				//Good Board Status
				tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbEnt.udiStatus < 65534 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10114;	//Transfer In Time Out While Conveyor Enter Board
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		ConvActEntToInOff:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10123;	//Multi Board Detected While Conveyor Enter Board To Inlet Off
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Detect Have Board
				IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
					tylocalPshrConv.Out.bHvBrd	:= TRUE;
				END_IF
				
				//Good Board Status
				tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
				
				//Conveyor Run
				fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
				
				IF fbEnt.bConvLToR = TRUE THEN
					IF EDGENEG(tylocalPshrConv.In.bLeftSen) THEN
						bInletOff	:= TRUE;
					END_IF
					
					fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen OR bInletOff;
				ELSE
					IF EDGENEG(tylocalPshrConv.In.bRightSen) THEN
						bInletOff	:= TRUE;
					END_IF
					
					fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen OR bInletOff;
				END_IF
				
				fbEnt(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
				IF fbEnt.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbEnt.udiStatus < 65534 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10124;	//Transfer In Time Out While Conveyor Enter Board To Inlet Off
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		ConvActEntRev:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF 
					0:	//Enter
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10022;	//Multi Board Detected While Conveyor Enter Board With Reverse
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
						END_IF
				
						//Good Board Status
						tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
				
						//Conveyor Run
						fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
				
						IF fbEnt.bConvLToR = TRUE THEN
							fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
				
						fbEnt(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
						IF fbEnt.udiStatus = 0 THEN
							usiStep		:= 1;
						ELSIF fbEnt.udiStatus < 65534 THEN
							tylocalPshrConv.Out.eStatus		:= Error;
					
							IF fbEnt.udiStatus = 1101 THEN
								udiStatus	:= 10115;	//Transfer In Time Out While Conveyor Enter Board With Reverse
							ELSE
								udiStatus	:= fbEnt.udiStatus;
							END_IF
						END_IF
						
					1:	
						IF tylocalPshrConv.Out.bHvBrd = TRUE THEN
							usiStep		:= 2;
						ELSE	
							tylocalPshrConv.Out.eStatus		:= Done;
						END_IF	
							
					2:	//Delay
						fbWaitTm(IN := TRUE , PT := T#500ms);
					
						IF fbWaitTm.Q = TRUE THEN
							fbWaitTm(IN := FALSE);
							
							usiStep	:= 3;
						END_IF	
							
					3:	//Reverse
						//Conveyor Run
						fbRev.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirRToL) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
					
						IF fbRev.bConvLToR = TRUE THEN
							fbRev.bStartSen	:= tylocalPshrConv.In.bLeftSen;
							fbRev.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE	
							fbRev.bStartSen	:= tylocalPshrConv.In.bRightSen;
							fbRev.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF	
				
						fbRev(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbRev.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbRev.bMtrDirOrRToL;
				
						IF fbRev.udiStatus = 0 THEN
							tylocalPshrConv.Out.eStatus		:= Done;
						ELSIF fbRev.udiStatus < 65534 THEN	
							udiStatus	:= fbRev.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF	
					
				END_CASE	
			END_IF	
			
		ConvActRev:	
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbRev.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirRToL) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
					
				IF fbRev.bConvLToR = TRUE THEN
					fbRev.bStartSen	:= tylocalPshrConv.In.bLeftSen;
					fbRev.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE	
					fbRev.bStartSen	:= tylocalPshrConv.In.bRightSen;
					fbRev.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF	
				
				fbRev(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbRev.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbRev.bMtrDirOrRToL;
				
				IF fbRev.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus		:= Done;
				ELSIF fbRev.udiStatus < 65534 THEN	
					udiStatus	:= fbRev.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF	
				
			END_IF	
			
		ConvActRevImmedStart:	
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbRev.bStartSen		:= TRUE;
				fbRev.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirRToL) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
					
				IF fbRev.bConvLToR = TRUE THEN
					fbRev.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE	
					fbRev.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF	
				
				fbRev(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbRev.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbRev.bMtrDirOrRToL;
				
				IF fbRev.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus		:= Done;
				ELSIF fbRev.udiStatus < 65534 THEN	
					udiStatus	:= fbRev.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF	
				
			END_IF	
			
		ConvActEntPuller:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0: //Puller Extend
						tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
						tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
					
						fbPullerExtChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
						fbPullerExtChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
						fbPullerExtChk.bExtSafety	:= tylocalPshrConv.In.bPullerExtSafetySen;
						fbPullerExtChk(bEn := TRUE);
						
						IF fbPullerExtChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bPullerExtended	:= TRUE;
							usiStep			:= 1;
						ELSIF fbPullerExtChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
							tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
									
							tylocalPshrConv.Out.eStatus			:= Error;
						
							IF fbPullerExtChk.udiStatus = 1503 THEN
								udiStatus	:= 10023;	//Puller Extend Sensor On Time Out In Extend Check While Conveyor Enter With Puller
							ELSIF fbPullerExtChk.udiStatus = 1506 THEN
								udiStatus	:= 10024;	//Puller Retract Sensor Off Time Out In Extend Check While Conveyor Enter With Puller
							ELSIF fbPullerExtChk.udiStatus = 1507 THEN
								udiStatus	:= 10025;	//Puller Extend Safety Sensor Error In Extend Check While Conveyor Enter With Puller
							ELSE
								udiStatus	:= fbPullerExtChk.udiStatus;
							END_IF
						END_IF	
					
					1: //Rotate Remote
						tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
					
						fbRotRemoteChk.bExtSen		:= tylocalPshrConv.In.bRotHomeSen;
						fbRotRemoteChk.bRetSen		:= tylocalPshrConv.In.bRotRemoteSen;
						fbRotRemoteChk.bRetSafety	:= tylocalPshrConv.In.bRotRemoteSafetySen;
						fbRotRemoteChk(bEn := TRUE);
						
						IF fbRotRemoteChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRotAtRemote	:= TRUE;
							usiStep			:= 2;
						ELSIF fbRotRemoteChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
							
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbRotRemoteChk.udiStatus = 1504 THEN
								udiStatus	:= 10026;	//Rotator Home Sensor Off Time Out In Remote Check While Conveyor Enter With Puller
							ELSIF fbRotRemoteChk.udiStatus = 1505 THEN
								udiStatus	:= 10027;	//Rotator Remote Sensor On Time Out In Remote Check While Conveyor Enter With Puller
							ELSIF fbRotRemoteChk.udiStatus = 1508 THEN
								udiStatus	:= 10028;	//Rotator Remote Safety Sensor Error In Remote Check While Conveyor Enter With Puller
							ELSE
								udiStatus	:= fbRotRemoteChk.udiStatus;
							END_IF
						END_IF	
					
					2: //Puller Retract
						tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
						tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
					
						fbPullerRetChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
						fbPullerRetChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
						fbPullerRetChk.bRetSafety	:= tylocalPshrConv.In.bPullerRetSafetySen;
						fbPullerRetChk(bEn := TRUE);
					
						IF fbPullerRetChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bPullerRetracted	:= TRUE;
							usiStep				:= 3;
						ELSIF fbPullerRetChk.udiStatus < 65534 THEN
							tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
							tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
							
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbPullerRetChk.udiStatus = 1504 THEN
								udiStatus	:= 10029;	//Puller Extend Sensor Off Time Out In Retract Check While Conveyor Enter With Puller
							ELSIF fbPullerRetChk.udiStatus = 1505 THEN
								udiStatus	:= 10030;	//Puller Retract Sensor On Time Out In Retract Check While Conveyor Enter With Puller
							ELSIF fbPullerRetChk.udiStatus = 1508 THEN
								udiStatus	:= 10031;	//Puller Retract Safety Sensor Error In Retract Check While Conveyor Enter With Puller
							ELSE
								udiStatus	:= fbPullerRetChk.udiStatus;
							END_IF
						END_IF	
							
					3: //Rotate Home
						tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
					
						fbRotHomeChk.bExtSen	:= tylocalPshrConv.In.bRotHomeSen;
						fbRotHomeChk.bRetSen	:= tylocalPshrConv.In.bRotRemoteSen;
						fbRotHomeChk.bExtSafety	:= tylocalPshrConv.In.bRotHomeSafetySen;
						fbRotHomeChk(bEn := TRUE);
						
						IF fbRotHomeChk.udiStatus = 0 AND fbEnt.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRotAtHome	:= TRUE;
							tylocalPshrConv.Out.eStatus		:= Done;
						ELSIF fbRotHomeChk.udiStatus < 65534 AND fbRotHomeChk.udiStatus > 0 THEN	
							tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
							
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbRotHomeChk.udiStatus = 1503 THEN
								udiStatus	:= 10032;	//Rotator Home Sensor On Time Out In Home Check While Conveyor Enter With Puller
							ELSIF fbRotHomeChk.udiStatus = 1506 THEN
								udiStatus	:= 10033;	//Rotator Remote Sensor Off Time Out In Home Check While Conveyor Enter With Puller
							ELSIF fbRotHomeChk.udiStatus = 1507 THEN
								udiStatus	:= 10034;	//Rotator Home Safety Sensor Error In Home Check While Conveyor Enter With Puller
							ELSE
								udiStatus	:= fbRotHomeChk.udiStatus;
							END_IF
						END_IF	
				END_CASE
				
				IF usiStep >= 2 THEN
					//Conveyor Run
					//Long Board Detection
					IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
						fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
						fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
						fbLongBrd;
						
						IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
							tylocalPshrConv.Out.eStatus		:= Error;
							IF fbLongBrd.udiStatus = 1100 THEN
								udiStatus	:= 10035;	//Multi Board Detected While Conveyor Enter With Puller
							ELSE
								udiStatus	:= fbLongBrd.udiStatus;
							END_IF
						END_IF
					END_IF
					
					//Detect Have Board
					IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen THEN
						tylocalPshrConv.Out.bHvBrd	:= TRUE;
					END_IF
					
					//Good Board Status
					tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
					
					//Conveyor Run
					fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
					fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
					
					IF fbEnt.bConvLToR = TRUE THEN
						fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen;
					ELSE
						fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen;
					END_IF
					
					fbEnt(bEn := TRUE);
					
					tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
					tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
					
					IF fbEnt.udiStatus < 65534 AND fbEnt.udiStatus > 0 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
					
						IF fbEnt.udiStatus = 1101 THEN
							udiStatus	:= 10116;	//Transfer In Time Out While Conveyor Enter With Puller
						ELSE
							udiStatus	:= fbEnt.udiStatus;
						END_IF
					END_IF
				END_IF
			END_IF
			
		ConvActEntRej:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Initial Run Conveyor
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
					
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus		:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10094;	//Multi Board Detected While Conveyor Entering With Reject
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
				
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
						END_IF
				
						//Conveyor Run
						fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
				
						tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
						
						IF fbEnt.bConvLToR = TRUE THEN
							fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen;
						ELSE
							fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bMiddleSen;
						END_IF
				
						fbEnt(bEn := TRUE);
				
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
				
						IF fbEnt.udiStatus = 0 THEN
					
							IF fbEnt.bConvLToR = TRUE THEN
								IF tylocalPshrConv.In.bRightSen = TRUE THEN
									tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
									tylocalPshrConv.Out.eStatus				:= Done;
								ELSE
									usiStep	:= 1;
								END_IF
								
							ELSE
								IF tylocalPshrConv.In.bLeftSen = TRUE THEN
									tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
									tylocalPshrConv.Out.eStatus				:= Done;
								ELSE
									usiStep	:= 1;

								END_IF
							END_IF
					
						ELSIF fbEnt.udiStatus < 65534 THEN
							tylocalPshrConv.Out.eStatus		:= Error;
					
							IF fbEnt.udiStatus = 1101 THEN
								udiStatus	:= 10117;	//Transfer In Time Out While Conveyor Entering With Reject
							ELSE
								udiStatus	:= fbEnt.udiStatus;
							END_IF
						END_IF
						
					1: 	//Reject Up
						tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
						tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
						fbRejectUpChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
						fbRejectUpChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
						fbRejectUpChk.bExtSafety	:= tylocalPshrConv.In.bRejectUpSafetySen;
						fbRejectUpChk(bEn := TRUE);
						
						IF fbRejectUpChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRejectAtUp	:= TRUE;
							tylocalPshrConv.Out.bRejHvBrd	:= TRUE;
							tylocalPshrConv.Out.bHvBrd		:= FALSE;
							tylocalPshrConv.Out.eStatus		:= Done;
						ELSIF fbRejectUpChk.udiStatus < 65534 THEN	
							tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
							tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
						
							IF fbRejectUpChk.udiStatus = 1503 THEN
								udiStatus	:= 10095;	//Reject Up Sensor On Time Out In Up Check While Conveyor Entering With Reject
							ELSIF fbRejectUpChk.udiStatus = 1506 THEN
								udiStatus	:= 10096;	//Reject Down Sensor Off Time Out In Up Check While Conveyor Entering With Reject
							ELSIF fbRejectUpChk.udiStatus = 1507 THEN
								udiStatus	:= 10097;	//Reject Up Safety Sensor Error In Up Check While Conveyor Entering With Reject
							ELSE
								udiStatus	:= fbRejectUpChk.udiStatus;
							END_IF
						END_IF
				END_CASE
				
			END_IF
		
		ConvActEntInsp:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
			
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10098;	//Multi Board Detected While Conveyor Entering With Inspection
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
		
				//Detect Have Board
				IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
					tylocalPshrConv.Out.bHvBrd	:= TRUE;
				END_IF
		
				//Conveyor Run
				fbEnt.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
				fbEnt.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxInTimeOut);
		
				tylocalPshrConv.Out.bGdBrd	:= tylocalPshrConv.In.bGdBrdEnt;
				
				IF fbEnt.bConvLToR = TRUE THEN
					fbEnt.bEndSen	:= tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen;
				ELSE
					fbEnt.bEndSen	:= tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bMiddleSen;
				END_IF
		
				fbEnt(bEn := TRUE);
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbEnt.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbEnt.bMtrDirOrRToL;
		
				IF fbEnt.udiStatus = 0 THEN
			
					IF fbEnt.bConvLToR = TRUE THEN
						IF tylocalPshrConv.In.bRightSen = TRUE THEN
							tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
						END_IF
						
						tylocalPshrConv.Out.eStatus	:= Done;
						
					ELSE
						IF tylocalPshrConv.In.bLeftSen = TRUE THEN
							tylocalPshrConv.Out.bLmtSenActivated	:= TRUE;
						END_IF
						
						tylocalPshrConv.Out.eStatus	:= Done;
						
					END_IF
			
				ELSIF fbEnt.udiStatus < 65534 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbEnt.udiStatus = 1101 THEN
						udiStatus	:= 10118;	//Transfer In Time Out While Conveyor Entering With Inspection
					ELSE
						udiStatus	:= fbEnt.udiStatus;
					END_IF
				END_IF
					
			END_IF
		
		ConvActPreExit:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN

				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;

					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10036;	//Multi Board Detected While Conveyor Pre-Exit Board
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Conveyor Run
				fbPreExit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
				fbPreExit.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
				
				IF fbPreExit.bConvLToR = TRUE THEN
					fbPreExit.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbPreExit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbPreExit(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbPreExit.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbPreExit.bMtrDirOrRToL;
				
				IF fbPreExit.udiStatus = 0 THEN
					IF fbPreExit.bEndSen = TRUE THEN
						tylocalPshrConv.Out.eStatus	:= Done;
					ELSE
						udiStatus	:= 10037;	//Board Missing While Conveyor Pre-Exit Board
						tylocalPshrConv.Out.eStatus		:= Error;
					END_IF
				ELSIF fbPreExit.udiStatus < 65534 THEN
					udiStatus	:= fbPreExit.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF
				
			END_IF
			
		ConvActRejResume:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
			
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				CASE usiStep OF
					0:	//Check Condition
						IF tylocalPshrConv.In.bRejectDownSen = FALSE AND tylocalPshrConv.In.bMiddleSen = TRUE THEN
							tylocalPshrConv.Out.eStatus		:= Error;
							udiStatus	:= 10099;	//Board Detect In Middle Sensor While Resuming Rejected Board
						ELSE
							usiStep	:= 1;
						END_IF
					
					1:	//Reject Down
						tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
						tylocalPshrConv.Out.bRejectDownCtrl	:= TRUE;
				
						fbRejectDownChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
						fbRejectDownChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
						fbRejectDownChk.bRetSafety	:= tylocalPshrConv.In.bRejectDownSafetySen;
						fbRejectDownChk(bEn := TRUE);
				
						IF fbRejectDownChk.udiStatus = 0 THEN
							usiStep	:= 2;
						ELSIF fbRejectDownChk.udiStatus < 65534 THEN
							tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
							tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbRejectDownChk.udiStatus = 1504 THEN
								udiStatus	:= 10100;	//Reject Up Sensor Off Time Out In Down Check While Resuming Rejected Board
							ELSIF fbRejectDownChk.udiStatus = 1505 THEN
								udiStatus	:= 10101;	//Reject Down Sensor On Time Out In Down Check While Resuming Rejected Board
							ELSIF fbRejectDownChk.udiStatus = 1508 THEN
								udiStatus	:= 10102;	//Reject Down Safety Sensor Error In Down Check While Resuming Rejected Board
							ELSE
								udiStatus	:= fbRejectDownChk.udiStatus;
							END_IF
						END_IF
					
					2:	//Reset
						tylocalPshrConv.Out.bRejHvBrd	:= FALSE;
						tylocalPshrConv.Out.bHvBrd		:= FALSE;
						usiStep		:= 3;
						
					3:	//Conveyor Run
						//Long Board Detection
						IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
							fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
							fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
							fbLongBrd;
							
							IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
								tylocalPshrConv.Out.eStatus	:= Error;
								IF fbLongBrd.udiStatus = 1100 THEN
									udiStatus	:= 10103;	//Multi Board Detected While Resuming Rejected Board
								ELSE
									udiStatus	:= fbLongBrd.udiStatus;
								END_IF
							END_IF
						END_IF
						
						//Detect Have Board
						IF tylocalPshrConv.In.bLeftSen OR tylocalPshrConv.In.bRightSen OR tylocalPshrConv.In.bMiddleSen THEN
							tylocalPshrConv.Out.bHvBrd	:= TRUE;
						END_IF
						
						//Conveyor Run
						fbInit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirLToL);
						fbInit.tTxDlyTm		:= DINT_TO_TIME(tylocalPshrConv.In.diInitTm);
						
						IF fbInit.bConvLToR = TRUE THEN
							fbInit.bEndSen	:= tylocalPshrConv.In.bRightSen;
						ELSE
							fbInit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
						END_IF
						
						fbInit(bEn := TRUE);
						
						tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbInit.bMtrSigOnOrLToR;
						tylocalPshrConv.Out.bMtrDirOrRToL	:= fbInit.bMtrDirOrRToL;
						
						IF fbInit.udiStatus = 0 THEN
							
							IF fbInit.bConvLToR = TRUE THEN
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bRightSen = FALSE THEN
									udiStatus	:= 10104;	//Board Not Present At Outlet Sensor (L - R) While Resuming Rejected Board
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							ELSE
								IF tylocalPshrConv.Out.bHvBrd = TRUE AND tylocalPshrConv.In.bLeftSen = FALSE THEN
									udiStatus	:= 10105;	//Board Not Present At Outlet Sensor (R - L) While Resuming Rejected Board
									tylocalPshrConv.Out.eStatus		:= Error;
								ELSE
									tylocalPshrConv.Out.eStatus	:= Done;
								END_IF
							END_IF
							
						ELSIF fbInit.udiStatus < 65534 THEN
							udiStatus	:= fbInit.udiStatus;
							tylocalPshrConv.Out.eStatus		:= Error;
						END_IF
						
				END_CASE
				
			END_IF
		
		ConvActExit:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10038;	//Multi Board Detected While Conveyor Exit Board
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Conveyor Run
				fbExit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
				fbExit.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxOutTimeOut);
				
				IF fbExit.bConvLToR = TRUE THEN
					fbExit.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbExit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbExit(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
				
				IF fbExit.udiStatus = 0 THEN
					tylocalPshrConv.Out.bHvBrd	:= FALSE;	//Reset Have Board
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbExit.udiStatus < 65534 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbExit.udiStatus = 1101 THEN
						udiStatus	:= 10119;	//Transfer Out Time Out While Conveyor Exit Board
					ELSE
						udiStatus	:= fbExit.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		ConvActExit1:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10106;	//Multi Board Detected While Conveyor Exit Board
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Conveyor Run
				fbExit1.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
				fbExit1.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxOutTimeOut);
				
				IF fbExit1.bConvLToR = TRUE THEN
					fbExit1.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbExit1.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbExit1(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
				
				IF fbExit1.udiStatus = 0 THEN
					tylocalPshrConv.Out.bHvBrd	:= FALSE;	//Reset Have Board
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbExit1.udiStatus < 65534 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbExit1.udiStatus = 1101 THEN
						udiStatus	:= 10121;	//Transfer Out Time Out While Conveyor Exit Board
					ELSE
						udiStatus	:= fbExit1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		ConvActExitPshr:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10039;	//Multi Board Detected While Conveyor Exit Board With Pusher
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Conveyor Run
				fbExit.bConvLToR	:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
				fbExit.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxOutTimeOut);
				
				IF fbExit.bConvLToR = TRUE THEN
					fbExit.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbExit.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbExit(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbExit.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbExit.bMtrDirOrRToL;
				
				IF fbExit.udiStatus < 65534 AND fbExit.udiStatus > 0 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbExit.udiStatus = 1101 THEN
						udiStatus	:= 10120;	//Transfer Out Time Out While Conveyor Exit Board With Pusher
					ELSE
						udiStatus	:= fbExit.udiStatus;
					END_IF
				END_IF
				
				//Wait for 1s After Conveyor Running, then to Extend Pusher
				IF tylocalPshrConv.In.bMiddleSen = FALSE THEN
					fbWaitTm(IN := TRUE , PT := T#80ms);
				END_IF
					
				IF fbWaitTm.Q = TRUE THEN
					CASE usiStep OF
						0: 
							tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
							tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
				
							fbPshrExtChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
							fbPshrExtChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
							fbPshrExtChk.bExtSafety	:= tylocalPshrConv.In.bPshrExtSafetySen;
							fbPshrExtChk(bEn := TRUE);
						
							IF fbPshrExtChk.udiStatus = 0 THEN
								tylocalPshrConv.Out.bPshrExtended	:= TRUE;
								tylocalPshrConv.Out.bHvBrd			:= FALSE;	//Reset Have Board
								usiStep			:= 1;
							ELSIF fbPshrExtChk.udiStatus < 65534 THEN	
								tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
								tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
								tylocalPshrConv.Out.eStatus			:= Error;
						
								IF fbPshrExtChk.udiStatus = 1503 THEN
									udiStatus	:= 10040;	//Pusher Extend Sensor On Time Out In Extend Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrExtChk.udiStatus = 1506 THEN
									udiStatus	:= 10041;	//Pusher Retract Sensor Off Time Out In Extend Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrExtChk.udiStatus = 1507 THEN
									udiStatus	:= 10042;	//Pusher Extend Safety Sensor Error In Extend Check While Conveyor Exit Board With Pusher
								ELSE
									udiStatus	:= fbPshrExtChk.udiStatus;
								END_IF
							END_IF
						
						1:
							tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
							tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
				
							fbPshrRetChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
							fbPshrRetChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
							fbPshrRetChk.bRetSafety	:= tylocalPshrConv.In.bPshrRetSafetySen;
							fbPshrRetChk(bEn := TRUE);
				
							IF fbPshrRetChk.udiStatus = 0 AND fbExit.udiStatus = 0 THEN
								tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
								tylocalPshrConv.Out.eStatus			:= Done;
							ELSIF fbPshrRetChk.udiStatus < 65534 AND fbPshrRetChk.udiStatus > 0 THEN
								tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
								tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
								
								tylocalPshrConv.Out.eStatus			:= Error;
							
								IF fbPshrRetChk.udiStatus = 1504 THEN
									udiStatus	:= 10043;	//Pusher Extend Sensor Off Time Out In Retract Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrRetChk.udiStatus = 1505 THEN
									udiStatus	:= 10044;	//Pusher Retract Sensor On Time Out In Retract Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrRetChk.udiStatus = 1508 THEN
									udiStatus	:= 10045;	//Pusher Retract Safety Sensor Error In Retract Check While Conveyor Exit Board With Pusher
								ELSE
									udiStatus	:= fbPshrRetChk.udiStatus;
								END_IF
							END_IF
					
					END_CASE	
				END_IF	
	
			END_IF
		
		ConvActExit1Pshr:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Long Board Detection
				IF tylocalPshrConv.In.bLongBrdPrep = FALSE OR tylocalPshrConv.In.bLongBrdEn = FALSE THEN
					fbLongBrd.bSen1	:= tylocalPshrConv.In.bLeftSen;
					fbLongBrd.bSen2	:= tylocalPshrConv.In.bRightSen;
					fbLongBrd;
					
					IF fbLongBrd.udiStatus > 0 AND fbLongBrd.udiStatus < 65534 THEN
						tylocalPshrConv.Out.eStatus		:= Error;
						IF fbLongBrd.udiStatus = 1100 THEN
							udiStatus	:= 10107;	//Multi Board Detected While Conveyor Exit Board With Pusher
						ELSE
							udiStatus	:= fbLongBrd.udiStatus;
						END_IF
					END_IF
				END_IF
				
				//Conveyor Run
				fbExit1.bConvLToR		:= (tylocalPshrConv.In.eDirection = ConvDirLToR) OR (tylocalPshrConv.In.eDirection = ConvDirRToR);
				fbExit1.tTimeOut		:= DINT_TO_TIME(tylocalPshrConv.In.diTxOutTimeOut);
				
				IF fbExit1.bConvLToR = TRUE THEN
					fbExit1.bEndSen	:= tylocalPshrConv.In.bRightSen;
				ELSE
					fbExit1.bEndSen	:= tylocalPshrConv.In.bLeftSen;
				END_IF
				
				fbExit1(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbExit1.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbExit1.bMtrDirOrRToL;
				
				IF fbExit1.udiStatus < 65534 AND fbExit1.udiStatus > 0 THEN
					tylocalPshrConv.Out.eStatus		:= Error;
					
					IF fbExit1.udiStatus = 1101 THEN
						udiStatus	:= 10122;	//Transfer Out Time Out While Conveyor Exit Board With Pusher
					ELSE
						udiStatus	:= fbExit1.udiStatus;
					END_IF
				END_IF
				
				//Wait for 1s After Conveyor Running, then to Extend Pusher
				IF tylocalPshrConv.In.bMiddleSen = FALSE THEN
					fbWaitTm(IN := TRUE , PT := T#1s);
				END_IF
					
				IF fbWaitTm.Q = TRUE THEN
					CASE usiStep OF
						0: 
							tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
							tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
				
							fbPshrExtChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
							fbPshrExtChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
							fbPshrExtChk.bExtSafety	:= tylocalPshrConv.In.bPshrExtSafetySen;
							fbPshrExtChk(bEn := TRUE);
						
							IF fbPshrExtChk.udiStatus = 0 THEN
								tylocalPshrConv.Out.bPshrExtended	:= TRUE;
								tylocalPshrConv.Out.bHvBrd			:= FALSE;	//Reset Have Board
								usiStep			:= 1;
							ELSIF fbPshrExtChk.udiStatus < 65534 THEN	
								tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
								tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
					
								tylocalPshrConv.Out.eStatus			:= Error;
						
								IF fbPshrExtChk.udiStatus = 1503 THEN
									udiStatus	:= 10108;	//Pusher Extend Sensor On Time Out In Extend Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrExtChk.udiStatus = 1506 THEN
									udiStatus	:= 10109;	//Pusher Retract Sensor Off Time Out In Extend Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrExtChk.udiStatus = 1507 THEN
									udiStatus	:= 10110;	//Pusher Extend Safety Sensor Error In Extend Check While Conveyor Exit Board With Pusher
								ELSE
									udiStatus	:= fbPshrExtChk.udiStatus;
								END_IF
							END_IF
						
						1:
							tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
							tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
				
							fbPshrRetChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
							fbPshrRetChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
							fbPshrRetChk.bRetSafety	:= tylocalPshrConv.In.bPshrRetSafetySen;
							fbPshrRetChk(bEn := TRUE);
				
							IF fbPshrRetChk.udiStatus = 0 AND fbExit1.udiStatus = 0 THEN
								tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
								tylocalPshrConv.Out.eStatus			:= Done;
							ELSIF fbPshrRetChk.udiStatus < 65534 AND fbPshrRetChk.udiStatus > 0 THEN
								tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
								tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
								tylocalPshrConv.Out.eStatus			:= Error;
							
								IF fbPshrRetChk.udiStatus = 1504 THEN
									udiStatus	:= 10111;	//Pusher Extend Sensor Off Time Out In Retract Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrRetChk.udiStatus = 1505 THEN
									udiStatus	:= 10112;	//Pusher Retract Sensor On Time Out In Retract Check While Conveyor Exit Board With Pusher
								ELSIF fbPshrRetChk.udiStatus = 1508 THEN
									udiStatus	:= 10113;	//Pusher Retract Safety Sensor Error In Retract Check While Conveyor Exit Board With Pusher
								ELSE
									udiStatus	:= fbPshrRetChk.udiStatus;
								END_IF
							END_IF
					
					END_CASE	
				END_IF	
	
			END_IF
		
		ConvActPshrSetAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPshrRstAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPshrSetExt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
				tylocalPshrConv.Out.bPshrExtended	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPshrSetRet:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
				tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPshrExt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
				tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
				
				fbPshrExtChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
				fbPshrExtChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
				fbPshrExtChk.bExtSafety	:= tylocalPshrConv.In.bPshrExtSafetySen;
				fbPshrExtChk(bEn := TRUE);
						
				IF fbPshrExtChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bPshrExtended	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbPshrExtChk.udiStatus < 65534 THEN	
					tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
					tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
					tylocalPshrConv.Out.eStatus			:= Error;
						
					IF fbPshrExtChk.udiStatus = 1503 THEN
						udiStatus	:= 10046;	//Pusher Extend Sensor On Time Out In Extend Check While Pusher Extend
					ELSIF fbPshrExtChk.udiStatus = 1506 THEN
						udiStatus	:= 10047;	//Pusher Retract Sensor Off Time Out In Extend Check While Pusher Extend
					ELSIF fbPshrExtChk.udiStatus = 1507 THEN
						udiStatus	:= 10048;	//Pusher Extend Safety Sensor Error In Extend Check While Pusher Extend
					ELSE
						udiStatus	:= fbPshrExtChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		ConvActPshrRet:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
				tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
				
				fbPshrRetChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
				fbPshrRetChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
				fbPshrRetChk.bRetSafety	:= tylocalPshrConv.In.bPshrRetSafetySen;
				fbPshrRetChk(bEn := TRUE);
				
				IF fbPshrRetChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbPshrRetChk.udiStatus < 65534 THEN
					tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
					tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbPshrRetChk.udiStatus = 1504 THEN
						udiStatus	:= 10049;	//Pusher Extend Sensor Off Time Out In Retract Check While Pusher Retract
					ELSIF fbPshrRetChk.udiStatus = 1505 THEN
						udiStatus	:= 10050;	//Pusher Retract Sensor On Time Out In Retract Check While Pusher Retract
					ELSIF fbPshrRetChk.udiStatus = 1508 THEN
						udiStatus	:= 10051;	//Pusher Retract Safety Sensor Error In Retract Check While Pusher Retract
					ELSE
						udiStatus	:= fbPshrRetChk.udiStatus;
					END_IF
				END_IF
			END_IF		
			
		ConvActPullerSetAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
				tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPullerRstAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
				tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPullerSetExt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
				tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
				tylocalPshrConv.Out.bPullerExtended	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPullerSetRet:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl		:= FALSE;
				tylocalPshrConv.Out.bPullerRetCtrl		:= TRUE;
				tylocalPshrConv.Out.bPullerRetracted	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActPullerExt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
				tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
				
				fbPullerExtChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
				fbPullerExtChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
				fbPullerExtChk.bExtSafety	:= tylocalPshrConv.In.bPullerExtSafetySen;
				fbPullerExtChk(bEn := TRUE);
						
				IF fbPullerExtChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bPullerExtended	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbPullerExtChk.udiStatus < 65534 THEN	
					tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
					tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
						
					IF fbPullerExtChk.udiStatus = 1503 THEN
						udiStatus	:= 10052;	//Puller Extend Sensor On Time Out In Extend Check While Puller Extend
					ELSIF fbPullerExtChk.udiStatus = 1506 THEN
						udiStatus	:= 10053;	//Puller Retract Sensor Off Time Out In Extend Check While Puller Extend
					ELSIF fbPullerExtChk.udiStatus = 1507 THEN
						udiStatus	:= 10054;	//Puller Extend Safety Sensor Error In Extend Check While Puller Extend
					ELSE
						udiStatus	:= fbPullerExtChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		ConvActPullerRet:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
				tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
				
				fbPullerRetChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
				fbPullerRetChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
				fbPullerRetChk.bRetSafety	:= tylocalPshrConv.In.bPullerRetSafetySen;
				fbPullerRetChk(bEn := TRUE);
				
				IF fbPullerRetChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bPullerRetracted	:= TRUE;
					tylocalPshrConv.Out.eStatus				:= Done;
				ELSIF fbPullerRetChk.udiStatus < 65534 THEN
					tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
					tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbPullerRetChk.udiStatus = 1504 THEN
						udiStatus	:= 10055;	//Puller Extend Sensor Off Time Out In Retract Check While Puller Retract
					ELSIF fbPullerRetChk.udiStatus = 1505 THEN
						udiStatus	:= 10056;	//Puller Retract Sensor On Time Out In Retract Check While Puller Retract
					ELSIF fbPullerRetChk.udiStatus = 1508 THEN
						udiStatus	:= 10057;	//Puller Retract Safety Sensor Error In Retract Check While Puller Retract
					ELSE
						udiStatus	:= fbPullerRetChk.udiStatus;
					END_IF
				END_IF
			END_IF		
			
		ConvActRotSetAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRotRstAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRotSetHome:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
				tylocalPshrConv.Out.bRotAtHome		:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRotSetRmt:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
				tylocalPshrConv.Out.bRotAtRemote	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRotHome:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
				
				fbRotHomeChk.bExtSen	:= tylocalPshrConv.In.bRotHomeSen;
				fbRotHomeChk.bRetSen	:= tylocalPshrConv.In.bRotRemoteSen;
				fbRotHomeChk.bExtSafety	:= tylocalPshrConv.In.bRotHomeSafetySen;
				fbRotHomeChk(bEn := TRUE);
						
				IF fbRotHomeChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bRotAtHome	:= TRUE;
					tylocalPshrConv.Out.eStatus		:= Done;
				ELSIF fbRotHomeChk.udiStatus < 65534 THEN	
					tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbRotHomeChk.udiStatus = 1503 THEN
						udiStatus	:= 10058;	//Rotator Home Sensor On Time Out In Home Check While Rotator Home
					ELSIF fbRotHomeChk.udiStatus = 1506 THEN
						udiStatus	:= 10059;	//Rotator Remote Sensor Off Time Out In Home Check While Rotator Home
					ELSIF fbRotHomeChk.udiStatus = 1507 THEN
						udiStatus	:= 10060;	//Rotator Home Safety Sensor Error In Home Check While Rotator Home
					ELSE
						udiStatus	:= fbRotHomeChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		ConvActRotRemote:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
				
				fbRotRemoteChk.bExtSen		:= tylocalPshrConv.In.bRotHomeSen;
				fbRotRemoteChk.bRetSen		:= tylocalPshrConv.In.bRotRemoteSen;
				fbRotRemoteChk.bRetSafety	:= tylocalPshrConv.In.bRotRemoteSafetySen;
				fbRotRemoteChk(bEn := TRUE);
				
				IF fbRotRemoteChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bRotAtRemote	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbRotRemoteChk.udiStatus < 65534 THEN
					tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbRotRemoteChk.udiStatus = 1504 THEN
						udiStatus	:= 10061;	//Rotator Home Sensor Off Time Out In Remote Check While Rotator Remote
					ELSIF fbRotRemoteChk.udiStatus = 1505 THEN
						udiStatus	:= 10062;	//Rotator Remote Sensor On Time Out In Remote Check While Rotator Remote
					ELSIF fbRotRemoteChk.udiStatus = 1508 THEN
						udiStatus	:= 10063;	//Rotator Remote Safety Sensor Error In Remote Check While Rotator Remote
					ELSE
						udiStatus	:= fbRotRemoteChk.udiStatus;
					END_IF
				END_IF
			END_IF		
			
		ConvActRejSetAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRejRstAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRejSetUp:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				tylocalPshrConv.Out.bRejectAtUp		:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRejSetDown:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= TRUE;
				tylocalPshrConv.Out.bRejectAtDown	:= TRUE;
				
				tylocalPshrConv.Out.eStatus		:= Done;

			END_IF
			
		ConvActRejUp:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= TRUE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
				fbRejectUpChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
				fbRejectUpChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
				fbRejectUpChk.bExtSafety	:= tylocalPshrConv.In.bRejectUpSafetySen;
				fbRejectUpChk(bEn := TRUE);
						
				IF fbRejectUpChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bRejectAtUp	:= TRUE;
					tylocalPshrConv.Out.eStatus		:= Done;
				ELSIF fbRejectUpChk.udiStatus < 65534 THEN	
					tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
					tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
						
					IF fbRejectUpChk.udiStatus = 1503 THEN
						udiStatus	:= 10073;	//Reject Up Sensor On Time Out In Up Check While Reject Up
					ELSIF fbRejectUpChk.udiStatus = 1506 THEN
						udiStatus	:= 10074;	//Reject Down Sensor Off Time Out In Up Check While Reject Up
					ELSIF fbRejectUpChk.udiStatus = 1507 THEN
						udiStatus	:= 10075;	//Reject Up Safety Sensor Error In Up Check While Reject Up
					ELSE
						udiStatus	:= fbRejectUpChk.udiStatus;
					END_IF
				END_IF
			END_IF
			
		ConvActRejDown:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				
				
				tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= TRUE;
				
				fbRejectDownChk.bExtSen		:= tylocalPshrConv.In.bRejectUpSen;
				fbRejectDownChk.bRetSen		:= tylocalPshrConv.In.bRejectDownSen;
				fbRejectDownChk.bRetSafety	:= tylocalPshrConv.In.bRejectDownSafetySen;
				fbRejectDownChk(bEn := TRUE);
				
				IF fbRejectDownChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bRejectAtDown	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbRejectDownChk.udiStatus < 65534 THEN
					tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
					tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
					
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbRejectDownChk.udiStatus = 1504 THEN
						udiStatus	:= 10076;	//Reject Up Sensor Off Time Out In Down Check While Reject Down
					ELSIF fbRejectDownChk.udiStatus = 1505 THEN
						udiStatus	:= 10077;	//Reject Down Sensor On Time Out In Down Check While Reject Down
					ELSIF fbRejectDownChk.udiStatus = 1508 THEN
						udiStatus	:= 10078;	//Reject Down Safety Sensor Error In Down Check While Reject Down
					ELSE
						udiStatus	:= fbRejectDownChk.udiStatus;
					END_IF
				END_IF
			END_IF		
			
		ConvActStop:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				IF fbStop.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF
				
			END_IF
		
		ConvActStopPshr:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				//Pneumatic Run
				tylocalPshrConv.Out.bPshrExtCtrl	:= FALSE;
				tylocalPshrConv.Out.bPshrRetCtrl	:= TRUE;
				
				fbPshrRetChk.bExtSen	:= tylocalPshrConv.In.bPshrExtSen;
				fbPshrRetChk.bRetSen	:= tylocalPshrConv.In.bPshrRetSen;
				fbPshrRetChk.bRetSafety	:= tylocalPshrConv.In.bPshrRetSafetySen;
				fbPshrRetChk(bEn := TRUE);
				
				IF fbStop.udiStatus = 0 AND fbPshrRetChk.udiStatus = 0 THEN
					tylocalPshrConv.Out.bPshrRetracted	:= TRUE;
					tylocalPshrConv.Out.eStatus			:= Done;
				ELSIF fbStop.udiStatus < 65534 AND fbStop.udiStatus > 0 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				ELSIF fbPshrRetChk.udiStatus < 65534 AND fbPshrRetChk.udiStatus > 0 THEN 
					tylocalPshrConv.Out.bPshrExtCtrl	:= TRUE;
					tylocalPshrConv.Out.bPshrRetCtrl	:= FALSE;
					tylocalPshrConv.Out.eStatus			:= Error;
							
					IF fbPshrRetChk.udiStatus = 1504 THEN
						udiStatus	:= 10064;	//Pusher Extend Sensor Off Time Out In Retract Check While Stop With Pusher
					ELSIF fbPshrRetChk.udiStatus = 1505 THEN
						udiStatus	:= 10065;	//Pusher Retract Sensor On Time Out In Retract Check While Stop With Pusher
					ELSIF fbPshrRetChk.udiStatus = 1508 THEN
						udiStatus	:= 10066;	//Pusher Retract Safety Sensor Error In Retract Check While Stop With Pusher
					ELSE
						udiStatus	:= fbPshrRetChk.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		ConvActStopPuller:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				IF fbStop.udiStatus < 65534 AND fbStop.udiStatus > 0 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF
					
				CASE usiStep OF
					0: //Rotate Home
						tylocalPshrConv.Out.bRotRemoteCtrl	:= FALSE;
				
						fbRotHomeChk.bExtSen	:= tylocalPshrConv.In.bRotHomeSen;
						fbRotHomeChk.bRetSen	:= tylocalPshrConv.In.bRotRemoteSen;
						fbRotHomeChk.bExtSafety	:= tylocalPshrConv.In.bRotHomeSafetySen;
						fbRotHomeChk(bEn := TRUE);
					
						IF fbRotHomeChk.udiStatus = 0 THEN
							tylocalPshrConv.Out.bRotAtHome	:= TRUE;
							usiStep		:= 1;
						ELSIF fbRotHomeChk.udiStatus < 65534 THEN
							tylocalPshrConv.Out.bRotRemoteCtrl	:= TRUE;
					
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbRotHomeChk.udiStatus = 1503 THEN
								udiStatus	:= 10067;	//Rotator Home Sensor On Time Out In Home Check While Stop With Puller
							ELSIF fbRotHomeChk.udiStatus = 1506 THEN
								udiStatus	:= 10068;	//Rotator Remote Sensor Off Time Out In Home Check While Stop With Puller
							ELSIF fbRotHomeChk.udiStatus = 1507 THEN
								udiStatus	:= 10069;	//Rotator Home Safety Sensor Error In Home Check While Stop With Puller
							ELSE
								udiStatus	:= fbRotHomeChk.udiStatus;
							END_IF
						END_IF
					
					1: //Puller Retract
						tylocalPshrConv.Out.bPullerExtCtrl	:= FALSE;
						tylocalPshrConv.Out.bPullerRetCtrl	:= TRUE;
					
						fbPullerRetChk.bExtSen		:= tylocalPshrConv.In.bPullerExtSen;
						fbPullerRetChk.bRetSen		:= tylocalPshrConv.In.bPullerRetSen;
						fbPullerRetChk.bRetSafety	:= tylocalPshrConv.In.bPullerRetSafetySen;
						fbPullerRetChk(bEn := TRUE);
						
						IF fbPullerRetChk.udiStatus = 0 AND fbStop.udiStatus = 0 THEN
							tylocalPshrConv.Out.bPullerRetracted	:= TRUE;
							tylocalPshrConv.Out.eStatus				:= Done;
						ELSIF fbPullerRetChk.udiStatus < 65534 AND fbPullerRetChk.udiStatus > 0 THEN	
							tylocalPshrConv.Out.bPullerExtCtrl	:= TRUE;
							tylocalPshrConv.Out.bPullerRetCtrl	:= FALSE;
							
							tylocalPshrConv.Out.eStatus			:= Error;
							
							IF fbPullerRetChk.udiStatus = 1504 THEN
								udiStatus	:= 10070;	//Puller Extend Sensor Off Time Out In Retract Check While Stop With Puller
							ELSIF fbPullerRetChk.udiStatus = 1505 THEN
								udiStatus	:= 10071;	//Puller Retract Sensor On Time Out In Retract Check While Stop With Puller
							ELSIF fbPullerRetChk.udiStatus = 1508 THEN
								udiStatus	:= 10072;	//Puller Retract Safety Sensor Error In Retract Check While Stop With Puller
							ELSE
								udiStatus	:= fbPullerRetChk.udiStatus;
							END_IF
						END_IF	
					
				END_CASE
				
			END_IF
	
		ConvActStopRej:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
				
				tylocalPshrConv.Out.eStatus	:= Busy;
		
				//Conveyor Run
				fbStop(bEn := TRUE);
				
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= fbStop.bMtrSigOnOrLToR;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= fbStop.bMtrDirOrRToL;
				
				//Pneumatic Run
				tylocalPshrConv.Out.bRejectUpCtrl	:= FALSE;
				tylocalPshrConv.Out.bRejectDownCtrl	:= FALSE;
				
				IF fbStop.udiStatus = 0 THEN
					tylocalPshrConv.Out.eStatus	:= Done;
				ELSIF fbStop.udiStatus < 65534 THEN
					udiStatus	:= fbStop.udiStatus;
					tylocalPshrConv.Out.eStatus		:= Error;
				END_IF
				
			END_IF
		
		ConvActSetMtrSigOnOrLToR:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= TRUE;
				tylocalPshrConv.Out.eStatus			:= Done;

			END_IF
		
		ConvActSetMtrDirOrRToL:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrDirOrRToL	:= TRUE;
				tylocalPshrConv.Out.eStatus			:= Done;

			END_IF
		
		ConvActRstMtrSigOnOrLToR:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.eStatus			:= Done;

			END_IF
		
		ConvActRstMtrDirOrRToL:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				tylocalPshrConv.Out.eStatus			:= Done;

			END_IF
		
		ConvActSetMtrAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= TRUE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= TRUE;
				tylocalPshrConv.Out.eStatus			:= Done;

			END_IF
		
		ConvActRstMtrAll:
			IF tylocalPshrConv.Out.eStatus = Idle OR tylocalPshrConv.Out.eStatus = Busy THEN
		
				tylocalPshrConv.Out.bMtrSigOnOrLToR	:= FALSE;
				tylocalPshrConv.Out.bMtrDirOrRToL	:= FALSE;
				tylocalPshrConv.Out.eStatus			:= Done;
				
			END_IF
		
	END_CASE
	
	
	IF tylocalPshrConv.In.bPshrExtSen = FALSE THEN
		tylocalPshrConv.Out.bPshrExtended	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bPshrRetSen = FALSE THEN
		tylocalPshrConv.Out.bPshrRetracted	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bPullerExtSen = FALSE THEN
		tylocalPshrConv.Out.bPullerExtended	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bPullerRetSen = FALSE THEN
		tylocalPshrConv.Out.bPullerRetracted	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bRotHomeSen = FALSE THEN
		tylocalPshrConv.Out.bRotAtHome	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bRotRemoteSen = FALSE THEN
		tylocalPshrConv.Out.bRotAtRemote	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bRejectUpSen = FALSE THEN
		tylocalPshrConv.Out.bRejectAtUp	:= FALSE;
	END_IF
	
	IF tylocalPshrConv.In.bRejectDownSen = FALSE THEN
		tylocalPshrConv.Out.bRejectAtDown	:= FALSE;
	END_IF
	
	
	//ADDED 
	IF tylocalPshrConv.In.eAct <> ConvActExitPshr  THEN
		tylocalPshrConv.Out.bPshrRetAllwTraverse :=   FALSE;
	ELSIF tylocalPshrConv.Out.bPshrRetCtrl AND tylocalPshrConv.In.bLinkPshrRetSlwSen THEN
		tylocalPshrConv.Out.bPshrRetAllwTraverse :=   TRUE;
	END_IF
	
	
END_ACTION
