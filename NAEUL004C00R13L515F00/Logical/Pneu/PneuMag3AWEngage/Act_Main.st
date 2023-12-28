
ACTION Act_Main:
	
	IF tylocalPneu.In.bSafetyRelaySig = FALSE OR EDGEPOS(tylocalPneu.Out.eStatus = Error) THEN
		tylocalPneu.Out.bExtCtrl 	:= FALSE;
		tylocalPneu.Out.bRetCtrl 	:= FALSE;
		tylocalPneu.Out.bExtended	:= FALSE;
		tylocalPneu.Out.bRetracted  := FALSE;
	END_IF

	//Execution Action
	IF tylocalPneu.Out.eStatus <> Error THEN
		tylocalPneu.Out.eStat := tylocalPneu.In.eAct;
	END_IF
	
	//Transition State
	IF eStatOld <> tylocalPneu.Out.eStat THEN
		
		fbPneuNoSenExt(bEn := FALSE);
		fbPneuNoSenRet(bEn := FALSE);
		
		fbPneu2SenExt(bEn := FALSE);
		fbPneu2SenRet(bEn := FALSE);
		
		eStatOld	:= tylocalPneu.Out.eStat;
		
		tylocalPneu.Out.eStatus		:= Busy;
	END_IF
	
	
	//Main
	CASE tylocalPneu.Out.eStat OF
		
		PneuActIdle:
			tylocalPneu.Out.eStatus	:= Idle;
		
		PneuActSetAll:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
		
				fbPneuNoSenExt(bEn := FALSE);
				fbPneuNoSenRet(bEn := FALSE);
				
				fbPneu2SenExt(bEn := FALSE);
				fbPneu2SenRet(bEn := FALSE);
				
				tylocalPneu.Out.bExtCtrl	:= TRUE;
				tylocalPneu.Out.bRetCtrl	:= TRUE;
				
				tylocalPneu.Out.bExtended	:= FALSE;
				tylocalPneu.Out.bRetracted	:= FALSE;
				
				tylocalPneu.Out.eStatus	:= Done;
				
			END_IF
		
		PneuActRstAll:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
		
				fbPneuNoSenExt(bEn := FALSE);
				fbPneuNoSenRet(bEn := FALSE);
				
				fbPneu2SenExt(bEn := FALSE);
				fbPneu2SenRet(bEn := FALSE);
				
				tylocalPneu.Out.bExtCtrl	:= FALSE;
				tylocalPneu.Out.bRetCtrl	:= FALSE;
				
				tylocalPneu.Out.bExtended	:= FALSE;
				tylocalPneu.Out.bRetracted	:= FALSE;
				
				tylocalPneu.Out.eStatus	:= Done;
				
			END_IF
		
		PneuActSetExt:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
		
				fbPneuNoSenExt(bEn := FALSE);
				fbPneuNoSenRet(bEn := FALSE);
				
				fbPneu2SenExt(bEn := FALSE);
				fbPneu2SenRet(bEn := FALSE);
				
				tylocalPneu.Out.bExtCtrl	:= TRUE;
				tylocalPneu.Out.bRetCtrl	:= FALSE;
				
				tylocalPneu.Out.bExtended	:= TRUE;
				tylocalPneu.Out.bRetracted	:= FALSE;
				
				tylocalPneu.Out.eStatus	:= Done;
				
			END_IF
		
		PneuActSetRet:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
		
				//Reset
				fbPneuNoSenExt(bEn := FALSE);
				fbPneuNoSenRet(bEn := FALSE);
				
				fbPneu2SenExt(bEn := FALSE);
				fbPneu2SenRet(bEn := FALSE);
				
				tylocalPneu.Out.bExtCtrl	:= FALSE;
				tylocalPneu.Out.bRetCtrl	:= TRUE;
				
				tylocalPneu.Out.bExtended	:= FALSE;
				tylocalPneu.Out.bRetracted	:= TRUE;
				
				tylocalPneu.Out.eStatus	:= Done;
				
			END_IF
		
		PneuActExt:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
				
				tylocalPneu.Out.eStatus	:= Busy;
				
				tylocalPneu.Out.bExtCtrl	:= TRUE;
				tylocalPneu.Out.bRetCtrl	:= FALSE;
				
				CASE tylocalPneu.In.ePneuSel OF
					
					PneuNoSen: //Pneumatic Without Sen // 0
						fbPneuNoSenExt.bExtSafety	:= tylocalPneu.In.bExtSafetySen;
						fbPneuNoSenExt.tDlyTm		:= tylocalPneu.In.tExtDlyTm;
						fbPneuNoSenExt(bEn := TRUE);
					Pneu2Sen: //Pneumatic With 2 Sen // 3
						fbPneu2SenExt.bExtSen   	:= tylocalPneu.In.bExtSen;
						fbPneu2SenExt.bRetSen   	:= tylocalPneu.In.bRetSen;
						fbPneu2SenExt.bExtSafety	:= tylocalPneu.In.bExtSafetySen;
						fbPneu2SenExt.tTimeOut		:= tylocalPneu.In.tExtTO;
						fbPneu2SenExt(bEn := TRUE);
				END_CASE
				
				IF fbPneuNoSenExt.udiStatus = 0 OR 
					fbPneu2SenExt.udiStatus = 0 THEN
					
					tylocalPneu.Out.bExtended	:= TRUE;
					tylocalPneu.Out.bRetracted	:= FALSE;
					tylocalPneu.Out.eStatus		:= Done;
				
				ELSIF (fbPneuNoSenExt.udiStatus > 0 AND fbPneuNoSenExt.udiStatus < 65534) OR
					(fbPneu2SenExt.udiStatus > 0 AND fbPneu2SenExt.udiStatus < 65534) THEN
					
					IF tylocalPneu.In.bTwoCtrlIn = TRUE THEN
						
						tylocalPneu.Out.bExtCtrl	:= FALSE;
						tylocalPneu.Out.bRetCtrl	:= FALSE;
					
					ELSE
						tylocalPneu.Out.bExtCtrl	:= FALSE;
						tylocalPneu.Out.bRetCtrl	:= TRUE;
					
					END_IF
					
					tylocalPneu.Out.bExtended	:= FALSE;
					tylocalPneu.Out.bRetracted	:= FALSE;
					
					tylocalPneu.Out.eStatus		:= Error;
					
					IF fbPneuNoSenExt.udiStatus = 1507 OR fbPneu2SenExt.udiStatus  = 1507 THEN
						udiStatus	:= 2401; //Safety Check Error While Extending
					ELSIF fbPneu2SenExt.udiStatus = 1503 THEN
						udiStatus	:= 2552;	//Extend Sensor On Checking Time Out While Extending
					ELSIF fbPneu2SenExt.udiStatus = 1506 THEN
						udiStatus	:= 2553; //Retract Sensor Off Checking Time Out While Extending
					ELSE
						IF tylocalPneu.In.ePneuSel = PneuNoSen THEN
							udiStatus	:= fbPneuNoSenExt.udiStatus;
						ELSE
							udiStatus	:= fbPneu2SenExt.udiStatus;
						END_IF
					END_IF
				END_IF
				
			END_IF
		
		PneuActRet:
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN
				
				tylocalPneu.Out.eStatus	:= Busy;
						
				tylocalPneu.Out.bExtCtrl	:= FALSE;
				tylocalPneu.Out.bRetCtrl	:= TRUE;
				
				CASE tylocalPneu.In.ePneuSel OF
					
					PneuNoSen: //Pneumatic Without Sen // 0
						fbPneuNoSenRet.bRetSafety	:= tylocalPneu.In.bRetSafetySen;
						fbPneuNoSenRet.tDlyTm		:= tylocalPneu.In.tRetDlyTm;
						fbPneuNoSenRet(bEn := TRUE);
					Pneu2Sen: //Pneumatic With 2 Sen // 3
						fbPneu2SenRet.bExtSen   	:= tylocalPneu.In.bExtSen;
						fbPneu2SenRet.bRetSen   	:= tylocalPneu.In.bRetSen;
						fbPneu2SenRet.bRetSafety	:= tylocalPneu.In.bRetSafetySen;
						fbPneu2SenRet.tTimeOut		:= tylocalPneu.In.tRetTO;
						fbPneu2SenRet(bEn := TRUE);
				END_CASE
				
				IF fbPneuNoSenRet.udiStatus = 0 OR
					fbPneu2SenRet.udiStatus = 0 THEN
					
					tylocalPneu.Out.bExtended	:= FALSE;
					tylocalPneu.Out.bRetracted	:= TRUE;
					tylocalPneu.Out.eStatus		:= Done;
				
				ELSIF (fbPneuNoSenRet.udiStatus > 0 AND fbPneuNoSenRet.udiStatus < 65534) OR
					(fbPneu2SenRet.udiStatus > 0 AND fbPneu2SenRet.udiStatus < 65534) THEN
				
					IF tylocalPneu.In.bTwoCtrlIn = TRUE THEN
						tylocalPneu.Out.bExtCtrl	:= FALSE;
						tylocalPneu.Out.bRetCtrl	:= FALSE;
					ELSE
						tylocalPneu.Out.bExtCtrl	:= TRUE;
						tylocalPneu.Out.bRetCtrl	:= FALSE;
					END_IF
					
					tylocalPneu.Out.bExtended	:= FALSE;
					tylocalPneu.Out.bRetracted	:= FALSE;
					
					tylocalPneu.Out.eStatus		:= Error;
					
					IF fbPneuNoSenRet.udiStatus = 1508 OR fbPneu2SenRet.udiStatus = 1508 THEN
						udiStatus	:= 2404;	//Safety Check Error While Retracting
					ELSIF fbPneu2SenRet.udiStatus = 1505 THEN
						udiStatus	:= 2555;	//Retract Sensor On Checking Time Out While Retracting
					ELSIF fbPneu2SenRet.udiStatus = 1504 THEN
						udiStatus	:= 2556;    //Extend Sensor Off Checking Time Out While Retracting
					ELSE
						IF tylocalPneu.In.ePneuSel = PneuNoSen THEN
							udiStatus	:= fbPneuNoSenRet.udiStatus;
						ELSE
							udiStatus	:= fbPneu2SenRet.udiStatus;
						END_IF
					END_IF
				END_IF
				
			END_IF
		
		ELSE
			IF tylocalPneu.Out.eStatus = Idle OR tylocalPneu.Out.eStatus = Busy THEN		
				tylocalPneu.Out.eStatus	:= Done;
			END_IF
		
	END_CASE
	
	
	
	
	//background
	IF tylocalPneu.In.ePneuSel = Pneu2Sen THEN
		IF tylocalPneu.In.bExtSen = FALSE THEN
			tylocalPneu.Out.bExtended	:= FALSE;
		END_IF
		
		IF tylocalPneu.In.bRetSen = FALSE THEN
			tylocalPneu.Out.bRetracted	:= FALSE;
		END_IF
	END_IFs
	
	
END_ACTION
