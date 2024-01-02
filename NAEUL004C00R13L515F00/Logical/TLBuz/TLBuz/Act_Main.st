(** 2020-02-18 **)
ACTION Act_Main:
		//Set p_eAct
	IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy OR tylocalTLBuz.Out.eStatus = Done THEN
		tylocalTLBuz.Out.eStat	:= tylocalTLBuz.In.eAct;
	END_IF
	IF eStatOld <> tylocalTLBuz.Out.eStat THEN
		IF eStatOld <> TLBuzActIdle
			AND eStatOld <> TLBuzActSetGreen
			AND eStatOld <> TLBuzActSetAmber
			AND eStatOld <> TLBuzActSetRed
			AND eStatOld <> TLBuzActSetBlue
			AND eStatOld <> TLBuzActSetWhite
			AND eStatOld <> TLBuzActSetBuz
			AND eStatOld <> TLBuzActRstGreen
			AND eStatOld <> TLBuzActRstAmber
			AND eStatOld <> TLBuzActRstRed
			AND eStatOld <> TLBuzActRstBlue
			AND eStatOld <> TLBuzActRstWhite
			AND eStatOld <> TLBuzActRstBuz 
			AND eStatOld <> TLBuzActSetAll
			AND eStatOld <> TLBuzActRstAll THEN
			
			tylocalTLBuz.Out.bTLGreen	:= FALSE;
			tylocalTLBuz.Out.bTLAmber	:= FALSE;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLBlue		:= FALSE;
			tylocalTLBuz.Out.bTLRed		:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		END_IF
		
		tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
		eStatOld	:= tylocalTLBuz.Out.eStat;
		
		tylocalTLBuz.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalTLBuz.Out.eStat OF
		
		TLBuzActIdle:
			IF tylocalTLBuz.Out.eStatus <> Idle THEN	//Reset Data
				//Private
						
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
			END_IF
			
			tylocalTLBuz.Out.eStatus	:= Idle;
		
		TLBuzActSetGreen:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
						
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLGreen	:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActSetAmber:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLAmber	:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActSetRed:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLRed	:= TRUE;
				tylocalTLBuz.Out.eStatus	:= Done;
				
			END_IF
			
		TLBuzActSetBlue:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLBlue		:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
			
		TLBuzActSetWhite:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLWhite	:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
			
		TLBuzActSetBuz:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bBuzBeep	:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActRstGreen:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLGreen	:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActRstAmber:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLAmber	:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActRstRed:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLRed		:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
			
		TLBuzActRstBlue:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLBlue		:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
			
		TLBuzActRstWhite:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLWhite	:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActRstBuz:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bBuzBeep	:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActSetAll:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLGreen	:= TRUE;
				tylocalTLBuz.Out.bTLRed		:= TRUE;
				tylocalTLBuz.Out.bTLAmber	:= TRUE;
				tylocalTLBuz.Out.bTLWhite	:= TRUE;
				tylocalTLBuz.Out.bTLBlue		:= TRUE;
				tylocalTLBuz.Out.bBuzBeep	:= TRUE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
		TLBuzActRstAll:
			IF tylocalTLBuz.Out.eStatus = Idle OR tylocalTLBuz.Out.eStatus = Busy THEN
		
				tylocalTLBuz.Out.sStatTxt	:= a_sStatText[tylocalTLBuz.Out.eStat];
		
				tylocalTLBuz.Out.bTLGreen	:= FALSE;
				tylocalTLBuz.Out.bTLAmber	:= FALSE;
				tylocalTLBuz.Out.bTLRed		:= FALSE;
				tylocalTLBuz.Out.bTLWhite	:= FALSE;
				tylocalTLBuz.Out.bTLBlue		:= FALSE;
				tylocalTLBuz.Out.bBuzBeep	:= FALSE;
				tylocalTLBuz.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
