(** 2019-01-20 **)
ACTION Act_Main:

	
	//Set tylocalAGV.In.eAct
	IF tylocalAGV.Out.eStatus = Idle OR tylocalAGV.Out.eStatus = Busy OR tylocalAGV.Out.eStatus = Done THEN
		tylocalAGV.Out.eStat	:= tylocalAGV.In.eAct;
	END_IF
	
	
	IF eStatOld <> tylocalAGV.Out.eStat THEN
		
		fbTxInTimer(IN := FALSE);
		fbTxOutTimer(IN := FALSE);
		fbMagOutTrig(CLK := FALSE);
		
		tylocalAGV.Out.bMcRunRdy				 	  := FALSE;
		tylocalAGV.Out.bRdyEnt			 		   	  := FALSE;
		tylocalAGV.Out.bRdyExit				  	  := FALSE;
		bMagConvRun    := FALSE;
		fbCheckErrorTim(IN:= FALSE);
		usiStep		:= 0;
		
		tylocalAGV.Out.sStatTxt	:= a_sStatText[tylocalAGV.Out.eStat];
				
		eStatOld	:= tylocalAGV.Out.eStat;
		
		tylocalAGV.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalAGV.Out.eStat OF
		
		AGVMagActIdle:
			tylocalAGV.Out.eStatus	:= Idle;
			bMagConvRdy := FALSE;
			
		AGVMagActEnter:
			
			IF tylocalAGV.Out.eStatus = Idle OR tylocalAGV.Out.eStatus = Busy THEN
				
				tylocalAGV.Out.eStatus	:= Busy;
				bMagConvRdy := TRUE;
				
				
				IF usiStep = 0 THEN
					
					IF bAIVAuto AND bMagConvAuto
						OR tylocalAGV.In.bSOTAvailable
						THEN // ON Connection
						
						bMagConvRdy  := TRUE; //Allow VEH to Move In
						
						IF bAIVInPos OR tylocalAGV.In.bSOTRcvOk THEN // VEH is in Position to Enter
							
							tylocalAGV.Out.bRdyEnt := TRUE;
						
						END_IF
					END_IF
					
						IF tylocalAGV.Out.bRdyEnt THEN
							
							IF bAIVInPos OR tylocalAGV.In.bSOTRcvOk  THEN
								
								bMagConvRdy := FALSE; // Temporarily Not Allowed Other VEH while one VEH in Pos.
							
								IF tylocalAGV.In.bSOTErr THEN
									tylocalAGV.Out.eStatus		:= Error;
									udiStatus	:= 10010;//SOT Sensor Error Has Been Activated;	
									
								ELSIF (NOT bMagConvOccupied) (*AND tylocalAGV.In.tyAGVToDTMag.bVEHOccupied*) THEN
									
									tylocalAGV.Out.bMcRunRdy	:= TRUE;
									
									bMagConvRun := TRUE;
								
									usiStep	:= 1;
								ELSE
									tylocalAGV.Out.eStatus		:= Error;
									udiStatus	:= 10000;	//Magazine Is Present Before Entering
								END_IF
							
							ELSE
								tylocalAGV.Out.eStatus		:= Error;
								udiStatus	:= 10001;	//AIV Not In Enter Position
							END_IF
							
						END_IF
				
					
				ELSIF usiStep = 1 THEN
					
					IF tylocalAGV.In.eDirection = ConvDirLToL OR tylocalAGV.In.eDirection = ConvDirLToR THEN
						bEndSen	:= tylocalAGV.In.bMagConvRgtSen;
					ELSE
						bEndSen	:= tylocalAGV.In.bMagConvLftSen;
					END_IF
					
					fbTxInTimer(IN := TRUE, PT := DINT_TO_TIME(tylocalAGV.In.diTxInTimeOut));
					
					IF bEndSen = TRUE (*AND tylocalAGV.In.tyAGVToDTMag.bVEHOccupied = FALSE*) THEN
						
						tylocalAGV.Out.eStatus	:= Done;
						
						bMagConvRdy := TRUE; // Allow VEH to Move Out After Transfering Magazine
						
						bMagConvRun := FALSE;
						
					ELSIF fbTxInTimer.Q = TRUE THEN
						
						tylocalAGV.Out.eStatus		:= Error;
						udiStatus	:= 10002;	//Transfer In Time Out While Transporting
						
					END_IF
					
					IF bAIVInPos = FALSE AND tylocalAGV.In.bSOTRcvOk = FALSE AND tylocalAGV.Out.eStatus = Busy THEN
						
						tylocalAGV.Out.eStatus		:= Error;
						udiStatus	:= 10001;	//AIV Not In Enter Position
					END_IF
					
//					IF bAIVAuto = FALSE AND tylocalAGV.Out.eStatus = Busy THEN
//						
//						tylocalAGV.Out.eStatus		:= Error;
//						udiStatus	:= 10006;	//AIV Not In Enter Position
//					END_IF
				END_IF
				
			END_IF
			
		AGVMagActExit:
			IF tylocalAGV.Out.eStatus = Idle OR tylocalAGV.Out.eStatus = Busy THEN
				
				tylocalAGV.Out.eStatus	:= Busy;
					
				bMagConvRdy := TRUE;
				
				IF usiStep = 0 THEN
					
					IF bAIVAuto AND bMagConvAuto
						OR tylocalAGV.In.bSOTRdy
						THEN // ON Connection
						
						bMagConvRdy  := TRUE; //Allow VEH to Move In
						
						IF bAIVInPos OR tylocalAGV.In.bSOTRcvOk THEN // VEH is in Position to Exit
							
							tylocalAGV.Out.bRdyExit := TRUE;
							
						END_IF
					END_IF
						
						IF tylocalAGV.Out.bRdyExit THEN
							
						
							IF (bAIVInPos OR tylocalAGV.In.bSOTRcvOk) AND bAIVOccupied=FALSE THEN 
								
								bMagConvRdy := FALSE; // Temporarily Not Allowed Other VEH while one VEH in Pos.
								
							
								IF bMagConvOccupied OR tylocalAGV.In.bSOTRdy = FALSE THEN
									
									tylocalAGV.Out.bMcRunRdy	:= TRUE;
									
									bMagConvRun := TRUE;
									
									usiStep	:= 1;
										
								ELSE
									tylocalAGV.Out.eStatus		:= Error;
									udiStatus	:= 10003;	//Magazine Is Not Present Before Exiting
								END_IF
								
							ELSE
								tylocalAGV.Out.eStatus		:= Error;
								udiStatus	:= 10004;	//AIV Not In Exit Position
							END_IF
						END_IF
					
				
				ELSIF usiStep = 1 THEN
					
					IF tylocalAGV.In.bSOTErr THEN
						
						usiStep := 2;
					END_IF
					
						
					IF tylocalAGV.In.eDirection = ConvDirLToR OR tylocalAGV.In.eDirection = ConvDirRToR THEN
						bEndSen	:= tylocalAGV.In.bMagConvRgtSen;
					ELSE
						bEndSen	:= tylocalAGV.In.bMagConvLftSen;
					END_IF
					
					
					fbTxOutTimer(IN := TRUE, PT := DINT_TO_TIME(tylocalAGV.In.diTxOutTimeOut));
					
						
					IF bEndSen = FALSE AND (bAIVOccupied = TRUE OR tylocalAGV.In.bSOTRdy = FALSE) THEN
						
						usiStep := 2;
				
					ELSIF fbTxOutTimer.Q = TRUE THEN
						
						tylocalAGV.Out.eStatus		:= Error;
						udiStatus	:= 10005;	//Transfer Out Time Out While Transporting
						
					END_IF
					
					IF bAIVInPos = FALSE AND tylocalAGV.In.bSOTRcvOk = FALSE AND tylocalAGV.Out.eStatus = Busy THEN
						
						tylocalAGV.Out.eStatus		:= Error;
						udiStatus	:= 10001;	//AIV Not In Enter Position
					END_IF
					
//					IF bAIVAuto = FALSE AND tylocalAGV.Out.eStatus = Busy THEN
//						
//						tylocalAGV.Out.eStatus		:= Error;
//						udiStatus	:= 10006;	//AIV Not In Auto
//					END_IF
				
				ELSIF usiStep = 2 THEN
					fbCheckErrorTim(IN:= TRUE);
					IF tylocalAGV.In.bSOTErr THEN
						tylocalAGV.Out.eStatus		:= Error;
						udiStatus	:= 10010;	//SOT Error signal activated
					ELSIF fbCheckErrorTim.Q THEN
						usiStep := 3;
					END_IF
				
				ELSIF usiStep = 3 THEN
					bMagConvRdy 	   := TRUE; // Allow VEH to Move Out After Transfering Magazine
						
					bMagConvRun := FALSE;
					tylocalAGV.Out.eStatus := Done;
				END_IF
				
			END_IF
	END_CASE
	

END_ACTION
