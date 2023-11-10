(** 2021-04-20 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbSOT(bEn := FALSE);
			
		bTransporting	:= FALSE;
		bConvStart		:= FALSE;
		bConvStop		:= FALSE;
		bDSRdy			:= FALSE;
			
		IF eStatOld <> SOTActIdle
			AND eStatOld <> SOTActSetSig
			AND eStatOld <> SOTActRstSig THEN
			
			bUSB	:= FALSE;
			
		END_IF
			
		sStatTxt	:= a_sStatText[eStat];
				
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		SOTActIdle:
			IF EDGENEG(p_bManual) THEN
				bUSB	:= FALSE;
			END_IF
			
			eStatus	:= Idle;
		
		SOTActRun:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
					
				fbSOT.bUSRdy		:= fbSigInChk.bSigInValid;
				fbSOT.bRdyRcv		:= p_bRdyRcv;
				fbSOT.bComplSigOn	:= p_bComplSigOn;
				
				IF p_bDirLToR = TRUE THEN
					
					fbSOT.bInletSen		:= p_bLeftSen;
					fbSOT.bOutletSen	:= p_bRightSen;
					
				ELSE
					
					fbSOT.bInletSen		:= p_bRightSen;
					fbSOT.bOutletSen	:= p_bLeftSen;
					
				END_IF
				
				fbSOT.tTimeOut	:= DINT_TO_TIME(p_diTransferInTO);
				fbSOT(bEn := TRUE);
				
				bTransporting	:= fbSOT.bTransporting;
				bConvStart		:= fbSOT.bConvStart;
				bConvStop		:= fbSOT.bConvStop;
				bUSB			:= fbSOT.bSigToUS  AND (bVirtual = FALSE);
				bDSRdy			:= fbSOT.bSigToUS;
				
				IF fbSOT.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbSOT.udiStatus < 65534 THEN
					eStatus		:= Error;
					
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
			IF eStatus = Idle OR eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				bConvStart	:= FALSE;
				bConvStop	:= FALSE;
				
				bUSB	:= TRUE;
				eStatus	:= Done;
		
			END_IF
		
			
		SOTActRstSig:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				bConvStart	:= FALSE;
				bConvStop	:= FALSE;
				
				bUSB	:= FALSE;
				eStatus	:= Done;
		
			END_IF
		
		
	END_CASE
	
END_ACTION
