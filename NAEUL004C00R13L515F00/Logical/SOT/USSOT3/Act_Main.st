(** 2021-04-20 **)
ACTION Act_Main:
	

	
	
	
	
	
	
	
	
	
	//Set tylocalUSSOT.In.eAct
	IF tylocalUSSOT.Out.eStatus = Idle OR tylocalUSSOT.Out.eStatus = Busy OR tylocalUSSOT.Out.eStatus = Done THEN
		tylocalUSSOT.Out.eStat	:= tylocalUSSOT.In.eAct;
	END_IF
	IF eStatOld <> tylocalUSSOT.Out.eStat THEN
		fbSOT(bEn := FALSE);
			
		tylocalUSSOT.Out.bTransporting	:= FALSE;
		tylocalUSSOT.Out.bConvStart		:= FALSE;
		tylocalUSSOT.Out.bConvStop		:= FALSE;
		tylocalUSSOT.Out.bDSRdy			:= FALSE;
			
		IF eStatOld <> SOTActIdle
			AND eStatOld <> SOTActSetSig
			AND eStatOld <> SOTActRstSig THEN
			
			tylocalUSSOT.Out.bUSB	:= FALSE;
			
		END_IF
			
		tylocalUSSOT.Out.sStatTxt	:= a_sStatText[tylocalUSSOT.Out.eStat];
				
		eStatOld	:= tylocalUSSOT.Out.eStat;
		
		tylocalUSSOT.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalUSSOT.Out.eStat OF
		
		SOTActIdle:
			IF EDGENEG(tylocalUSSOT.In.bManual) THEN
				tylocalUSSOT.Out.bUSB	:= FALSE;
			END_IF
			
			tylocalUSSOT.Out.eStatus	:= Idle;
		
		SOTActRun:
			IF tylocalUSSOT.Out.eStatus = Idle OR tylocalUSSOT.Out.eStatus = Busy THEN
				
				tylocalUSSOT.Out.eStatus	:= Busy;
					
				fbSOT.tylocalUSSOT.Out.bUSRdy		:= fbSigInChk.bSigInValid;
				fbSOT.bRdyRcv		:= tylocalUSSOT.In.bRdyRcv;
				fbSOT.bComplSigOn	:= tylocalUSSOT.In.bComplSigOn;
				
				IF tylocalUSSOT.In.bDirLToR = TRUE THEN
					
					fbSOT.bInletSen		:= tylocalUSSOT.In.bLeftSen;
					fbSOT.bOutletSen	:= tylocalUSSOT.In.bRightSen;
					
				ELSE
					
					fbSOT.bInletSen		:= tylocalUSSOT.In.bRightSen;
					fbSOT.bOutletSen	:= tylocalUSSOT.In.bLeftSen;
					
				END_IF
				
				fbSOT.tTimeOut	:= DINT_TO_TIME(tylocalUSSOT.In.diTransferInTO);
				fbSOT(bEn := TRUE);
				
				tylocalUSSOT.Out.bTransporting	:= fbSOT.tylocalUSSOT.Out.bTransporting;
				tylocalUSSOT.Out.bConvStart		:= fbSOT.tylocalUSSOT.Out.bConvStart;
				tylocalUSSOT.Out.bConvStop		:= fbSOT.tylocalUSSOT.Out.bConvStop;
				tylocalUSSOT.Out.bUSB			:= fbSOT.bSigToUS  AND (tylocalUSSOT.Out.bVirtual = FALSE);
				tylocalUSSOT.Out.bDSRdy			:= fbSOT.bSigToUS;
				
				IF fbSOT.udiStatus = 0 THEN
					tylocalUSSOT.Out.eStatus	:= Done;
				ELSIF fbSOT.udiStatus < 65534 THEN
					tylocalUSSOT.Out.eStatus		:= Error;
					
					IF fbSOT.udiStatus = 1200 THEN
						udiStatus	:= 10000;	//SOT Transport Time Out While Transporting
					ELSIF fbSOT.udiStatus = 1201 THEN
						udiStatus	:= 10001;	//SOT Transport Time Out After Opposite Machine Transport Finished
					ELSIF fbSOT.udiStatus = 1202 THEN
						udiStatus	:= 10002;	//SOT Transport Time Out After Current Machine Transport Finished
					ELSIF fbSOT.udiStatus = 1203 THEN
						udiStatus	:= 10003;	//SOT Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
					ELSE
						udiStatus	:= fbSOT.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		SOTActSetSig:
			IF tylocalUSSOT.Out.eStatus = Idle OR tylocalUSSOT.Out.eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				tylocalUSSOT.Out.bConvStart	:= FALSE;
				tylocalUSSOT.Out.bConvStop	:= FALSE;
				
				tylocalUSSOT.Out.bUSB	:= TRUE;
				tylocalUSSOT.Out.eStatus	:= Done;
		
			END_IF
		
			
		SOTActRstSig:
			IF tylocalUSSOT.Out.eStatus = Idle OR tylocalUSSOT.Out.eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				tylocalUSSOT.Out.bConvStart	:= FALSE;
				tylocalUSSOT.Out.bConvStop	:= FALSE;
				
				tylocalUSSOT.Out.bUSB	:= FALSE;
				tylocalUSSOT.Out.eStatus	:= Done;
		
			END_IF
		
		
	END_CASE
	
	

END_ACTION
