(** 2021-04-20 **)
ACTION Act_Main:

	
	
	//Main
	fbSOT.tRstDlyTm	:= tylocalDSSOT.In.tRstDlyTm;
	fbSigInChk.tSigInChkTm	:= tylocalDSSOT.In.tSigInChkTm;
	//Set tylocalDSSOT.In.eAct
	IF tylocalDSSOT.Out.eStatus = Idle OR tylocalDSSOT.Out.eStatus = Busy OR tylocalDSSOT.Out.eStatus = Done THEN
		tylocalDSSOT.Out.eStat	:= tylocalDSSOT.In.eAct;
	END_IF
	IF eStatOld <> tylocalDSSOT.Out.eStat THEN
		fbSOT(bEn := FALSE);
		
		tylocalDSSOT.Out.bTransporting	:= FALSE;
		tylocalDSSOT.Out.bConvStart		:= FALSE;
		tylocalDSSOT.Out.bConvStop		:= FALSE;
		tylocalDSSOT.Out.bUSRdy			:= FALSE;
		
		IF eStatOld <> SOTActIdle
			AND eStatOld <> SOTActSetSig
			AND eStatOld <> SOTActRstSig THEN
			
			tylocalDSSOT.Out.bDBA			:= FALSE;
			tylocalDSSOT.Out.bDSMagSizeLarge	:= FALSE;
			
		END_IF
				
		tylocalDSSOT.Out.sStatTxt	:= a_sStatText[tylocalDSSOT.Out.eStat];
				
		eStatOld	:= tylocalDSSOT.Out.eStat;
		
		tylocalDSSOT.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalDSSOT.Out.eStat OF
		
		SOTActIdle:
			IF EDGENEG(tylocalDSSOT.In.bManual) THEN
				tylocalDSSOT.Out.bDBA		:= FALSE;
				tylocalDSSOT.Out.bDSMagSizeLarge	:= FALSE;
			END_IF
			
			tylocalDSSOT.Out.eStatus	:= Idle;
		
		SOTActRun:
			IF tylocalDSSOT.Out.eStatus = Idle OR tylocalDSSOT.Out.eStatus = Busy THEN
				
				tylocalDSSOT.Out.eStatus	:= Busy;
					
				fbSOT.tylocalDSSOT.Out.bDSRdy		:= fbSigInChk.bSigInValid;
				fbSOT.bRdySend		:= tylocalDSSOT.In.bRdySend;
				fbSOT.bComplSigOn	:= tylocalDSSOT.In.bComplSigOn;
					
				fbSOT.tTimeOut	:= DINT_TO_TIME(tylocalDSSOT.In.diTransferOutTO);
				fbSOT(bEn := TRUE);
					
				tylocalDSSOT.Out.bTransporting	:= fbSOT.tylocalDSSOT.Out.bTransporting;
				tylocalDSSOT.Out.bConvStart		:= fbSOT.tylocalDSSOT.Out.bConvStart;
				tylocalDSSOT.Out.bConvStop		:= fbSOT.tylocalDSSOT.Out.bConvStop;
				tylocalDSSOT.Out.bDBA			:= fbSOT.bSigToDS AND (tylocalDSSOT.Out.bVirtual = FALSE);
				tylocalDSSOT.Out.bDSMagSizeLarge	:= tylocalDSSOT.In.bMagSizeLarge;
					
				tylocalDSSOT.Out.bUSRdy			:= fbSOT.bSigToDS;
					
				IF fbSOT.udiStatus = 0 THEN
					tylocalDSSOT.Out.eStatus	:= Done;
				ELSIF fbSOT.udiStatus < 65534 THEN
					tylocalDSSOT.Out.eStatus		:= Error;
						
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
			IF tylocalDSSOT.Out.eStatus = Idle OR tylocalDSSOT.Out.eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				tylocalDSSOT.Out.bConvStart	:= FALSE;
				tylocalDSSOT.Out.bConvStop	:= FALSE;
				
				tylocalDSSOT.Out.bDBA	:= TRUE;
				tylocalDSSOT.Out.eStatus	:= Done;
		
			END_IF
			
		SOTActRstSig:
			IF tylocalDSSOT.Out.eStatus = Idle OR tylocalDSSOT.Out.eStatus = Busy THEN
		
				//Reset
				fbSOT(bEn := FALSE);
				
				tylocalDSSOT.Out.bConvStart	:= FALSE;
				tylocalDSSOT.Out.bConvStop	:= FALSE;
				
				tylocalDSSOT.Out.bDBA	:= FALSE;
				tylocalDSSOT.Out.eStatus	:= Done;
		
			END_IF
		
	END_CASE
	

END_ACTION
