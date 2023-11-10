(** 2019-01-20 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		
		fbTxInTimer(IN := FALSE);
		fbTxOutTimer(IN := FALSE);
		fbMagOutTrig(CLK := FALSE);
		
		bMcRunRdy				 	  := FALSE;
		bRdyEnt			 		   	  := FALSE;
		bRdyExit				  	  := FALSE;
		bMagConvRun    := FALSE;
		fbCheckErrorTim(IN:= FALSE);
		usiStep		:= 0;
		
		sStatTxt	:= a_sStatText[eStat];
				
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		AGVMagActIdle:
			eStatus	:= Idle;
			bMagConvRdy := FALSE;
			
		AGVMagActEnter:
			
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				bMagConvRdy := TRUE;
				
				
				IF usiStep = 0 THEN
					
					IF bAIVAuto AND bMagConvAuto
						OR p_bSOTAvailable
						THEN // ON Connection
						
						bMagConvRdy  := TRUE; //Allow VEH to Move In
						
						IF bAIVInPos OR p_bSOTRcvOk THEN // VEH is in Position to Enter
							
							bRdyEnt := TRUE;
						
						END_IF
					END_IF
					
						IF bRdyEnt THEN
							
							IF bAIVInPos OR p_bSOTRcvOk  THEN
								
								bMagConvRdy := FALSE; // Temporarily Not Allowed Other VEH while one VEH in Pos.
							
								IF p_bSOTErr THEN
									eStatus		:= Error;
									udiStatus	:= 10010;//SOT Sensor Error Has Been Activated;	
									
								ELSIF (NOT bMagConvOccupied) (*AND p_tyAGVToDTMag.bVEHOccupied*) THEN
									
									bMcRunRdy	:= TRUE;
									
									bMagConvRun := TRUE;
								
									usiStep	:= 1;
								ELSE
									eStatus		:= Error;
									udiStatus	:= 10000;	//Magazine Is Present Before Entering
								END_IF
							
							ELSE
								eStatus		:= Error;
								udiStatus	:= 10001;	//AIV Not In Enter Position
							END_IF
							
						END_IF
				
					
				ELSIF usiStep = 1 THEN
					
					IF p_eDirection = ConvDirLToL OR p_eDirection = ConvDirLToR THEN
						bEndSen	:= p_bMagConvRgtSen;
					ELSE
						bEndSen	:= p_bMagConvLftSen;
					END_IF
					
					fbTxInTimer(IN := TRUE, PT := DINT_TO_TIME(p_diTxInTimeOut));
					
					IF bEndSen = TRUE (*AND p_tyAGVToDTMag.bVEHOccupied = FALSE*) THEN
						
						eStatus	:= Done;
						
						bMagConvRdy := TRUE; // Allow VEH to Move Out After Transfering Magazine
						
						bMagConvRun := FALSE;
						
					ELSIF fbTxInTimer.Q = TRUE THEN
						
						eStatus		:= Error;
						udiStatus	:= 10002;	//Transfer In Time Out While Transporting
						
					END_IF
					
					IF bAIVInPos = FALSE AND p_bSOTRcvOk = FALSE AND eStatus = Busy THEN
						
						eStatus		:= Error;
						udiStatus	:= 10001;	//AIV Not In Enter Position
					END_IF
					
//					IF bAIVAuto = FALSE AND eStatus = Busy THEN
//						
//						eStatus		:= Error;
//						udiStatus	:= 10006;	//AIV Not In Enter Position
//					END_IF
				END_IF
				
			END_IF
			
		AGVMagActExit:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
					
				bMagConvRdy := TRUE;
				
				IF usiStep = 0 THEN
					
					IF bAIVAuto AND bMagConvAuto
						OR p_bSOTRdy
						THEN // ON Connection
						
						bMagConvRdy  := TRUE; //Allow VEH to Move In
						
						IF bAIVInPos OR p_bSOTRcvOk THEN // VEH is in Position to Exit
							
							bRdyExit := TRUE;
							
						END_IF
					END_IF
						
						IF bRdyExit THEN
							
						
							IF (bAIVInPos OR p_bSOTRcvOk) AND bAIVOccupied=FALSE THEN 
								
								bMagConvRdy := FALSE; // Temporarily Not Allowed Other VEH while one VEH in Pos.
								
							
								IF bMagConvOccupied OR p_bSOTRdy = FALSE THEN
									
									bMcRunRdy	:= TRUE;
									
									bMagConvRun := TRUE;
									
									usiStep	:= 1;
										
								ELSE
									eStatus		:= Error;
									udiStatus	:= 10003;	//Magazine Is Not Present Before Exiting
								END_IF
								
							ELSE
								eStatus		:= Error;
								udiStatus	:= 10004;	//AIV Not In Exit Position
							END_IF
						END_IF
					
				
				ELSIF usiStep = 1 THEN
					
					IF p_bSOTErr THEN
						
						usiStep := 2;
					END_IF
					
						
					IF p_eDirection = ConvDirLToR OR p_eDirection = ConvDirRToR THEN
						bEndSen	:= p_bMagConvRgtSen;
					ELSE
						bEndSen	:= p_bMagConvLftSen;
					END_IF
					
					
					fbTxOutTimer(IN := TRUE, PT := DINT_TO_TIME(p_diTxOutTimeOut));
					
						
					IF bEndSen = FALSE AND (bAIVOccupied = TRUE OR p_bSOTRdy = FALSE) THEN
						
						usiStep := 2;
				
					ELSIF fbTxOutTimer.Q = TRUE THEN
						
						eStatus		:= Error;
						udiStatus	:= 10005;	//Transfer Out Time Out While Transporting
						
					END_IF
					
					IF bAIVInPos = FALSE AND p_bSOTRcvOk = FALSE AND eStatus = Busy THEN
						
						eStatus		:= Error;
						udiStatus	:= 10001;	//AIV Not In Enter Position
					END_IF
					
//					IF bAIVAuto = FALSE AND eStatus = Busy THEN
//						
//						eStatus		:= Error;
//						udiStatus	:= 10006;	//AIV Not In Auto
//					END_IF
				
				ELSIF usiStep = 2 THEN
					fbCheckErrorTim(IN:= TRUE);
					IF p_bSOTErr THEN
						eStatus		:= Error;
						udiStatus	:= 10010;	//SOT Error signal activated
					ELSIF fbCheckErrorTim.Q THEN
						usiStep := 3;
					END_IF
				
				ELSIF usiStep = 3 THEN
					bMagConvRdy 	   := TRUE; // Allow VEH to Move Out After Transfering Magazine
						
					bMagConvRun := FALSE;
					eStatus := Done;
				END_IF
				
			END_IF
	END_CASE
	

END_ACTION
