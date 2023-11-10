(** 2021-04-20 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbSOT(bEn := FALSE);
		
		bTransporting	:= FALSE;
		bConvStart		:= FALSE;
		bConvStop		:= FALSE;
		bUSRdy			:= FALSE;
		
		IF eStatOld <> SOTActIdle
			AND eStatOld <> SOTActSetSig
			AND eStatOld <> SOTActRstSig THEN
			
			bDBA			:= FALSE;
			bDSMagSizeLarge	:= FALSE;
			
		END_IF
				
		sStatTxt	:= a_sStatText[eStat];
				
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		SOTActIdle:
			IF EDGENEG(p_bManual) THEN
				bDBA		:= FALSE;
				bDSMagSizeLarge	:= FALSE;
			END_IF
			
			eStatus	:= Idle;
		
		SOTActRun:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
					
				fbSOT.bDSRdy		:= fbSigInChk.bSigInValid;
				fbSOT.bRdySend		:= p_bRdySend;
				fbSOT.bComplSigOn	:= p_bComplSigOn;
					
				fbSOT.tTimeOut	:= DINT_TO_TIME(p_diTransferOutTO);
				fbSOT(bEn := TRUE);
					
				bTransporting	:= fbSOT.bTransporting;
				bConvStart		:= fbSOT.bConvStart;
				bConvStop		:= fbSOT.bConvStop;
				bDBA			:= fbSOT.bSigToDS AND (bVirtual = FALSE);
				bDSMagSizeLarge	:= p_bMagSizeLarge;
					
				bUSRdy			:= fbSOT.bSigToDS;
					
				IF fbSOT.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbSOT.udiStatus < 65534 THEN
					eStatus		:= Error;
						
					IF fbSOT.udiStatus = 1200 THEN
						udiStatus	:= 10000;	//SOT  Transport Time Out While Transporting
					ELSIF fbSOT.udiStatus = 1201 THEN
						udiStatus	:= 10001;	//SOT  Transport Time Out After Opposite Machine Transport Finished
					ELSIF fbSOT.udiStatus = 1202 THEN
						udiStatus	:= 10002;	//SOT  Transport Time Out After Current Machine Transport Finished
					ELSIF fbSOT.udiStatus = 1203 THEN
						udiStatus	:= 10003;	//SOT  Transport Time Out After Both Machine Transport Finished And Waiting Outlet Sensor
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
				
				bDBA	:= TRUE;
				eStatus	:= Done;
		
			END_IF
			
		SOTActRstSig:
			IF eStatus = Idle OR eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				bConvStart	:= FALSE;
				bConvStop	:= FALSE;
				
				bDBA	:= FALSE;
				eStatus	:= Done;
		
			END_IF
		
	END_CASE
	
END_ACTION
