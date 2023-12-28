
ACTION Act_Main:
	
	fbSMEMA_Std.tRstDlyTm 		:= tylocalUSSMEMA.In.tRstDlyTm;
	fbSMEMA_9851.tRstDlyTm  	:= tylocalUSSMEMA.In.tRstDlyTm;
	fbSigInChk.tSigInChkTm		:= tylocalUSSMEMA.In.tSigInChkTm;
	
	//Timer Running
	fbTimeTrig(CLK := tylocalUSSMEMA.In.bTimerEnSenEdge);
	
	IF tylocalUSSMEMA.Out.eStat = SMEMAActRun AND (tylocalUSSMEMA.In.bTimerEnSenEdge OR tylocalUSSMEMA.In.bTimerEnSen) THEN
		IF fbTimeTrig.Q = TRUE OR tylocalUSSMEMA.In.bTimerEnSen THEN
			fbTimerDlyTm.IN	:= TRUE;
		END_IF
	ELSE
		fbTimerDlyTm.IN	:= FALSE;
	END_IF
	
	IF tylocalUSSMEMA.Out.bConvStart = FALSE AND tylocalUSSMEMA.Out.bConvStop = FALSE THEN
		fbTimerDlyTm;

		IF fbTimerDlyTm.Q = TRUE AND tylocalUSSMEMA.Out.eStat = SMEMAActRun THEN
			tylocalUSSMEMA.Out.bTimer		:= TRUE;
			tylocalUSSMEMA.Out.bVirtual		:= FALSE;
		ELSIF tylocalUSSMEMA.In.bVirtualEn = TRUE THEN
			tylocalUSSMEMA.Out.bTimer		:= FALSE;
			tylocalUSSMEMA.Out.bVirtual		:= TRUE;
		ELSE
			tylocalUSSMEMA.Out.bTimer		:= FALSE;
			tylocalUSSMEMA.Out.bVirtual		:= FALSE;
		END_IF
	ELSE
		fbTimerDlyTm(IN := FALSE);
	END_IF
	
	IF tylocalUSSMEMA.Out.bTimer = TRUE THEN
		
		fbSigInChk.bNomSig			:= tylocalUSSMEMA.Out.bConvStart = FALSE AND tylocalUSSMEMA.Out.bConvStop = FALSE;
		fbSigInChk.bStatSig			:= FALSE;
		fbSigInChk.bStatSigSetGd	:= FALSE;
	
	ELSIF tylocalUSSMEMA.Out.bVirtual = TRUE THEN
		
		fbSigInChk.bNomSig	:= tylocalUSSMEMA.In.bUBAVirtual;
	
		IF tylocalUSSMEMA.In.tyParam.eSelection = SMEMASelIPC9851Ext THEN
			fbSigInChk.bStatSig			:= tylocalUSSMEMA.In.bUBAStatVirtual;
			fbSigInChk.bStatSigSetGd	:= tylocalUSSMEMA.In.tyParam.bStatSigSetGd;
		ELSE
			fbSigInChk.bStatSig			:= FALSE;
			fbSigInChk.bStatSigSetGd	:= FALSE;
		END_IF
	
	ELSE
		
		fbSigInChk.bNomSig	:= tylocalUSSMEMA.In.bUBA;
	
		IF tylocalUSSMEMA.In.tyParam.eSelection = SMEMASelIPC9851Ext THEN
			fbSigInChk.bStatSig			:= tylocalUSSMEMA.In.bUBAStat;
			fbSigInChk.bStatSigSetGd	:= tylocalUSSMEMA.In.tyParam.bStatSigSetGd;
		ELSE
			fbSigInChk.bStatSig			:= FALSE;
			fbSigInChk.bStatSigSetGd	:= FALSE;
		END_IF
	
	END_IF
	
	fbSigInChk;
	
	tylocalUSSMEMA.Out.bUSRdy		    := fbSigInChk.bSigInValid;
	tylocalUSSMEMA.Out.bUSGdBrdRdy   	:= fbSigInChk.bGdBrd;
	
	
	//Set p_eAct
	IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy OR tylocalUSSMEMA.Out.eStatus = Done THEN
		tylocalUSSMEMA.Out.eStatus	:= tylocalUSSMEMA.In.eAct;
	END_IF

	//Transition State
	IF eStatOld <> tylocalUSSMEMA.Out.eStat THEN
		
		fbSMEMA_Std(bEn := FALSE);
		fbSMEMA_9851(bEn := FALSE);
			
		tylocalUSSMEMA.Out.bTransporting	:= FALSE;
		tylocalUSSMEMA.Out.bConvStart		:= FALSE;
		tylocalUSSMEMA.Out.bConvStop		:= FALSE;
		tylocalUSSMEMA.Out.bDSRdy			:= FALSE;
			
		IF eStatOld <> SMEMAActIdle
			AND eStatOld <> SMEMAActSetSig
			AND eStatOld <> SMEMAActSetStatSig
			AND eStatOld <> SMEMAActRstSig
			AND eStatOld <> SMEMAActRstStatSig
			AND eStatOld <> SMEMAActSetAllSig
			AND eStatOld <> SMEMAActRstAllSig THEN
			
			tylocalUSSMEMA.Out.bUSB	:= FALSE;
			
		END_IF
			
		tylocalUSSMEMA.Out.sStatTxt	:= a_sStatText[tylocalUSSMEMA.Out.eStat];
				
		eStatOld	:= tylocalUSSMEMA.Out.eStat;
		
		tylocalUSSMEMA.Out.eStatus		:= Busy;
	END_IF
	
	//Inlet Sensor & Outlet Sensor
	IF tylocalUSSMEMA.In.bDirLToR THEN
		bInletSen 	:= tylocalUSSMEMA.In.bLeftSen;
		bOutletSen  := tylocalUSSMEMA.In.bRightSen;
	ELSE
		bInletSen   := tylocalUSSMEMA.In.bRightSen;
		bOutletSen  := tylocalUSSMEMA.In.bLeftSen;
	END_IF
	
	
	//Main
	CASE tylocalUSSMEMA.Out.eStat OF
		
		SMEMAActIdle:
			
			IF EDGENEG(g_tyUIOut.bManualMod) THEN
				tylocalUSSMEMA.Out.bUSB	:= FALSE;
			END_IF
			
			tylocalUSSMEMA.Out.eStatus	:= Idle;
		
		SMEMAActRun:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
				
				tylocalUSSMEMA.Out.eStatus	:= Busy;
		
				IF tylocalUSSMEMA.In.tyParam.eSelection <> SMEMASelStandard THEN
					
					fbSMEMA_9851.bUSRdy			:= fbSigInChk.bSigInValid;
					fbSMEMA_9851.bRdyRcv		:= tylocalUSSMEMA.In.bRdyRcv;
					fbSMEMA_9851.bComplSigOn	:= tylocalUSSMEMA.In.bComplSigOn;
					fbSMEMA_9851.bInletSen		:= bInletSen;
					fbSMEMA_9851.bOutletSen		:= bOutletSen;
					
					fbSMEMA_9851.tTimeOut		:= DINT_TO_TIME(tylocalUSSMEMA.In.diTransferInTO);
					fbSMEMA_9851(bEn := TRUE);
					
					tylocalUSSMEMA.Out.bTransporting	:= fbSMEMA_9851.bTransporting;
					tylocalUSSMEMA.Out.bConvStart		:= fbSMEMA_9851.bConvStart;
					tylocalUSSMEMA.Out.bConvStop		:= fbSMEMA_9851.bConvStop;
					tylocalUSSMEMA.Out.bUSB				:= fbSMEMA_9851.bSigToUS AND (tylocalUSSMEMA.Out.bTimer = FALSE) AND (tylocalUSSMEMA.Out.bVirtual = FALSE);
					tylocalUSSMEMA.Out.bDSRdy			:= fbSMEMA_9851.bSigToUS;
					
					IF fbSMEMA_9851.udiStatus = 0 THEN
						tylocalUSSMEMA.Out.eStatus	:= Done;
					ELSIF fbSMEMA_9851.udiStatus < 65534 THEN
						tylocalUSSMEMA.Out.eStatus		:= Error;
						
						IF fbSMEMA_9851.udiStatus = 1200 THEN
							udiStatus	:= 2701;	//SMEMA 9851 Transport Time Out While Transporting
						ELSIF fbSMEMA_9851.udiStatus = 1201 THEN
							udiStatus	:= 2702;	//SMEMA 9851 Transport Time Out After Opposite Machine Transport Finished
						ELSIF fbSMEMA_9851.udiStatus = 1202 THEN
							udiStatus	:= 2703;	//SMEMA 9851 Transport Time Out After Current Machine Transport Finished
						ELSIF fbSMEMA_9851.udiStatus = 1203 THEN
							udiStatus	:= 2704;	//SMEMA 9851 Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
						ELSE
							udiStatus	:= fbSMEMA_9851.udiStatus;
						END_IF
					END_IF
					
				ELSE
					
					fbSMEMA_Std.bUSRdy		:= fbSigInChk.bSigInValid;
					fbSMEMA_Std.bRdyRcv		:= tylocalUSSMEMA.In.bRdyRcv;
					fbSMEMA_Std.bComplSigOn	:= tylocalUSSMEMA.In.bComplSigOn;	
					fbSMEMA_Std.bInletSen	:= bInletSen;
					fbSMEMA_Std.bOutletSen	:= bOutletSen;
					fbSMEMA_Std.tTimeOut	:= DINT_TO_TIME(tylocalUSSMEMA.In.diTransferInTO);
					fbSMEMA_Std(bEn := TRUE);
					
					tylocalUSSMEMA.Out.bTransporting	:= fbSMEMA_Std.bTransporting;
					tylocalUSSMEMA.Out.bConvStart		:= fbSMEMA_Std.bConvStart;
					tylocalUSSMEMA.Out.bConvStop		:= fbSMEMA_Std.bConvStop;
					tylocalUSSMEMA.Out.bUSB				:= fbSMEMA_Std.bSigToUS AND (tylocalUSSMEMA.Out.bTimer = FALSE) AND (tylocalUSSMEMA.Out.bVirtual = FALSE);
					tylocalUSSMEMA.Out.bDSRdy			:= fbSMEMA_Std.bSigToUS;
					
					IF fbSMEMA_Std.udiStatus = 0 THEN
						tylocalUSSMEMA.Out.eStatus	:= Done;
					ELSIF fbSMEMA_Std.udiStatus < 65534 THEN
						tylocalUSSMEMA.Out.eStatus		:= Error;
						
						IF fbSMEMA_Std.udiStatus = 1200 THEN
							udiStatus	:= 2705;	//Standard SMEMA Transport Time Out While Transporting
						ELSIF fbSMEMA_Std.udiStatus = 1201 THEN
							udiStatus	:= 2706;	//Standard SMEMA Transport Time Out After Opposite Machine Transport Finished
						ELSIF fbSMEMA_Std.udiStatus = 1202 THEN
							udiStatus	:= 2707;	//Standard SMEMA Transport Time Out After Current Machine Transport Finished
						ELSIF fbSMEMA_Std.udiStatus = 1203 THEN
							udiStatus	:= 2708;	//Standard SMEMA Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
						ELSE
							udiStatus	:= fbSMEMA_Std.udiStatus;
						END_IF
					END_IF
					
				END_IF
				
			END_IF
		
		SMEMAActSetSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.bUSB		:= TRUE;
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
		SMEMAActSetStatSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
			
		SMEMAActRstSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.bUSB	:= FALSE;
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
		SMEMAActRstStatSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
			
		SMEMAActSetAllSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.bUSB	:= TRUE;
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
		SMEMAActRstAllSig:
			IF tylocalUSSMEMA.Out.eStatus = Idle OR tylocalUSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_Std(bEn := FALSE);
				fbSMEMA_9851(bEn := FALSE);
				
				tylocalUSSMEMA.Out.bConvStart	:= FALSE;
				tylocalUSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalUSSMEMA.Out.bUSB	:= FALSE;
				tylocalUSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
	END_CASE
	
END_ACTION
