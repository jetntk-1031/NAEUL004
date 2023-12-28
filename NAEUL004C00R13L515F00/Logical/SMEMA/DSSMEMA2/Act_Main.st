
ACTION Act_Main:
	
	fbSMEMA_OppFirst.tRstDlyTm	:= tylocalDSSMEMA.In.tRstDlyTm;
	fbSMEMA.tRstDlyTm			:= tylocalDSSMEMA.In.tRstDlyTm;
	fbSigInChk.tSigInChkTm		:= tylocalDSSMEMA.In.tSigInChkTm;
	
	//Timer Running
	fbTimeTrig(CLK := tylocalDSSMEMA.In.bTimerEnSenEdge);
	
	IF tylocalDSSMEMA.Out.eStat = SMEMAActRun AND (tylocalDSSMEMA.In.bTimerEnSenEdge OR tylocalDSSMEMA.In.bTimerEnSen) THEN
		IF fbTimeTrig.Q = TRUE OR tylocalDSSMEMA.In.bTimerEnSen THEN
			fbTimerDlyTm.IN	:= TRUE;
		END_IF
	ELSE
		fbTimerDlyTm.IN	:= FALSE;
	END_IF
	
	IF tylocalDSSMEMA.Out.bConvStart = FALSE AND tylocalDSSMEMA.Out.bConvStop = FALSE THEN
		fbTimerDlyTm;

		IF fbTimerDlyTm.Q = TRUE AND tylocalDSSMEMA.Out.eStat = SMEMAActRun THEN
			tylocalDSSMEMA.Out.bTimer		:= TRUE;
			tylocalDSSMEMA.Out.bVirtual	:= FALSE;
		ELSIF tylocalDSSMEMA.In.bVirtualEn = TRUE THEN
			tylocalDSSMEMA.Out.bTimer		:= FALSE;
			tylocalDSSMEMA.Out.bVirtual	:= TRUE;
		ELSE
			tylocalDSSMEMA.Out.bTimer		:= FALSE;
			tylocalDSSMEMA.Out.bVirtual	:= FALSE;
		END_IF
	ELSE
		fbTimerDlyTm(IN := FALSE);
	END_IF
	
	IF tylocalDSSMEMA.Out.bTimer = TRUE THEN
		
		fbSigInChk.bNomSig			:= tylocalDSSMEMA.Out.bConvStart = FALSE AND tylocalDSSMEMA.Out.bConvStop = FALSE;
		fbSigInChk.bStatSig			:= FALSE;
		fbSigInChk.bStatSigSetGd	:= FALSE;
	
	ELSIF tylocalDSSMEMA.Out.bVirtual = TRUE THEN
		
		fbSigInChk.bNomSig			:= tylocalDSSMEMA.In.bDSBVirtual;
		fbSigInChk.bStatSig			:= FALSE;
		fbSigInChk.bStatSigSetGd	:= FALSE;
	
	ELSE
		
		fbSigInChk.bNomSig			:= tylocalDSSMEMA.In.bDSB;
		fbSigInChk.bStatSig			:= FALSE;
		fbSigInChk.bStatSigSetGd	:= FALSE;
	
	END_IF
	
	fbSigInChk;
	
	tylocalDSSMEMA.Out.bDSRdy	:= fbSigInChk.bSigInValid;
	
	
	//Set tylocalDSSMEMA.In.eAct
	IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy OR tylocalDSSMEMA.Out.eStatus = Done THEN
		tylocalDSSMEMA.Out.eStat	:= tylocalDSSMEMA.In.eAct;
	END_IF
	//Transition State
	IF eStatOld <> tylocalDSSMEMA.Out.eStat THEN
		fbSMEMA_OppFirst(bEn := FALSE);
		fbSMEMA(bEn := FALSE);
		
		tylocalDSSMEMA.Out.bTransporting	:= FALSE;
		tylocalDSSMEMA.Out.bConvStart		:= FALSE;
		tylocalDSSMEMA.Out.bConvStop		:= FALSE;
		tylocalDSSMEMA.Out.bUSRdy			:= FALSE;
		tylocalDSSMEMA.Out.bUSGdBrdRdy		:= FALSE;
		
		IF eStatOld <> SMEMAActIdle
			AND eStatOld <> SMEMAActSetSig
			AND eStatOld <> SMEMAActSetStatSig
			AND eStatOld <> SMEMAActRstSig
			AND eStatOld <> SMEMAActRstStatSig
			AND eStatOld <> SMEMAActSetAllSig
			AND eStatOld <> SMEMAActRstAllSig THEN
			
			tylocalDSSMEMA.Out.bDBA		:= FALSE;
			tylocalDSSMEMA.Out.bDBAStat	:= FALSE;
			
		END_IF
				
		tylocalDSSMEMA.Out.sStatTxt	:= a_sStatText[tylocalDSSMEMA.Out.eStat];
				
		eStatOld	:= tylocalDSSMEMA.Out.eStat;
		
		tylocalDSSMEMA.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalDSSMEMA.Out.eStat OF
		
		SMEMAActIdle:
			IF EDGENEG(tylocalDSSMEMA.In.bManual) THEN
				tylocalDSSMEMA.Out.bDBA		:= FALSE;
				tylocalDSSMEMA.Out.bDBAStat	:= FALSE;
			END_IF
			
			tylocalDSSMEMA.Out.eStatus	:= Idle;
		
		SMEMAActRun:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
				
				tylocalDSSMEMA.Out.eStatus	:= Busy;
		
				IF tylocalDSSMEMA.In.tyParam.eSelection <> SMEMASelStandard THEN
					
					fbSMEMA.bDSRdy		:= fbSigInChk.bSigInValid;
					fbSMEMA.bRdySend	:= tylocalDSSMEMA.In.bRdySend;
					fbSMEMA.bComplSigOn	:= tylocalDSSMEMA.In.bComplSigOn;
					
					fbSMEMA.tTimeOut	:= DINT_TO_TIME(tylocalDSSMEMA.In.diTransferOutTO);
					fbSMEMA(bEn := TRUE);
					
					tylocalDSSMEMA.Out.bTransporting	:= fbSMEMA.tylocalDSSMEMA.Out.bTransporting;
					tylocalDSSMEMA.Out.bConvStart		:= fbSMEMA.tylocalDSSMEMA.Out.bConvStart;
					tylocalDSSMEMA.Out.bConvStop		:= fbSMEMA.tylocalDSSMEMA.Out.bConvStop;
					tylocalDSSMEMA.Out.bDBA			:= fbSMEMA.bSigToDS AND (tylocalDSSMEMA.Out.bTimer = FALSE) AND (tylocalDSSMEMA.Out.bVirtual = FALSE);
					tylocalDSSMEMA.Out.bDBAStat		:= (fbSMEMA.bSigToDS) AND (fSMEMASigStatOut(tylocalDSSMEMA.In.tyParam.bStatSigSetGd, tylocalDSSMEMA.In.bGdBrd)) AND (tylocalDSSMEMA.In.tyParam.eSelection = SMEMASelIPC9851Ext);
					
					tylocalDSSMEMA.Out.bUSRdy			:= fbSMEMA.bSigToDS;
					tylocalDSSMEMA.Out.bUSGdBrdRdy		:= tylocalDSSMEMA.In.bGdBrd;
					
					IF fbSMEMA.udiStatus = 0 THEN
						tylocalDSSMEMA.Out.eStatus	:= Done;
					ELSIF fbSMEMA.udiStatus < 65534 THEN
						tylocalDSSMEMA.Out.eStatus		:= Error;
						
						IF fbSMEMA.udiStatus = 1200 THEN
							udiStatus	:= 10000;	//SMEMA 9851 Transport Time Out While Transporting
						ELSIF fbSMEMA.udiStatus = 1201 THEN
							udiStatus	:= 10001;	//SMEMA 9851 Transport Time Out After Opposite Machine Transport Finished
						ELSIF fbSMEMA.udiStatus = 1202 THEN
							udiStatus	:= 10002;	//SMEMA 9851 Transport Time Out After Current Machine Transport Finished
						ELSIF fbSMEMA.udiStatus = 1203 THEN
							udiStatus	:= 10003;	//SMEMA 9851 Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
						ELSE
							udiStatus	:= fbSMEMA.udiStatus;
						END_IF
					END_IF
					
				ELSE
					
					fbSMEMA_OppFirst.bDSRdy			:= fbSigInChk.bSigInValid;
					fbSMEMA_OppFirst.bRdySend		:= tylocalDSSMEMA.In.bRdySend;
					fbSMEMA_OppFirst.bComplSigOn	:= tylocalDSSMEMA.In.bComplSigOn;
					
					fbSMEMA_OppFirst.tTimeOut	:= DINT_TO_TIME(tylocalDSSMEMA.In.diTransferOutTO);
					fbSMEMA_OppFirst(bEn := TRUE);
					
					tylocalDSSMEMA.Out.bTransporting	:= fbSMEMA_OppFirst.tylocalDSSMEMA.Out.bTransporting;
					tylocalDSSMEMA.Out.bConvStart		:= fbSMEMA_OppFirst.tylocalDSSMEMA.Out.bConvStart;
					tylocalDSSMEMA.Out.bConvStop		:= fbSMEMA_OppFirst.tylocalDSSMEMA.Out.bConvStop;
					tylocalDSSMEMA.Out.bDBA			:= fbSMEMA_OppFirst.bSigToDS AND (tylocalDSSMEMA.Out.bTimer = FALSE) AND (tylocalDSSMEMA.Out.bVirtual = FALSE);
					tylocalDSSMEMA.Out.bDBAStat		:= (fbSMEMA_OppFirst.bSigToDS) AND (fSMEMASigStatOut(tylocalDSSMEMA.In.tyParam.bStatSigSetGd, tylocalDSSMEMA.In.bGdBrd)) AND (tylocalDSSMEMA.In.tyParam.eSelection = SMEMASelIPC9851Ext);
					
					tylocalDSSMEMA.Out.bUSRdy			:= fbSMEMA_OppFirst.bSigToDS;
					tylocalDSSMEMA.Out.bUSGdBrdRdy		:= tylocalDSSMEMA.In.bGdBrd;
					
					IF fbSMEMA_OppFirst.udiStatus = 0 THEN
						tylocalDSSMEMA.Out.eStatus	:= Done;
					ELSIF fbSMEMA_OppFirst.udiStatus < 65534 THEN
						tylocalDSSMEMA.Out.eStatus		:= Error;
						
						IF fbSMEMA_OppFirst.udiStatus = 1200 THEN
							udiStatus	:= 10004;	//Standard SMEMA Transport Time Out While Transporting
						ELSIF fbSMEMA_OppFirst.udiStatus = 1201 THEN
							udiStatus	:= 10005;	//Standard SMEMA Transport Time Out After Opposite Machine Transport Finished
						ELSIF fbSMEMA_OppFirst.udiStatus = 1202 THEN
							udiStatus	:= 10006;	//Standard SMEMA Transport Time Out After Current Machine Transport Finished
						ELSIF fbSMEMA_OppFirst.udiStatus = 1203 THEN
							udiStatus	:= 10007;	//Standard SMEMA Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
						ELSE
							udiStatus	:= fbSMEMA_OppFirst.udiStatus;
						END_IF
					END_IF
					
				END_IF
				
			END_IF
		
		SMEMAActSetSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBA	:= TRUE;
				tylocalDSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
		SMEMAActSetStatSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBAStat	:= TRUE;
				tylocalDSSMEMA.Out.eStatus		:= Done;
		
			END_IF
			
		SMEMAActRstSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBA	:= FALSE;
				tylocalDSSMEMA.Out.eStatus	:= Done;
		
			END_IF
		
		SMEMAActRstStatSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBAStat	:= FALSE;
				tylocalDSSMEMA.Out.eStatus		:= Done;
		
			END_IF
			
		SMEMAActSetAllSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBA		:= TRUE;
				tylocalDSSMEMA.Out.bDBAStat	:= TRUE;
				tylocalDSSMEMA.Out.eStatus		:= Done;
		
			END_IF
		
		SMEMAActRstAllSig:
			IF tylocalDSSMEMA.Out.eStatus = Idle OR tylocalDSSMEMA.Out.eStatus = Busy THEN
		
				//Reset
				fbSMEMA_OppFirst(bEn := FALSE);
				fbSMEMA(bEn := FALSE);
				
				tylocalDSSMEMA.Out.bConvStart	:= FALSE;
				tylocalDSSMEMA.Out.bConvStop	:= FALSE;
				
				tylocalDSSMEMA.Out.bDBA		:= FALSE;
				tylocalDSSMEMA.Out.bDBAStat	:= FALSE;
				tylocalDSSMEMA.Out.eStatus		:= Done;
		
			END_IF
		
	END_CASE
	
END_ACTION
