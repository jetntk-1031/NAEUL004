
ACTION PrecededBySelfBackground2: 

	//Convert ProdID to Rcp Name and rWidth to diWidth for F0 to output Hermes
	sProdtypeID:= tyCurrReqRcp.sProductTypeId;
	diProdWidth := REAL_TO_DINT(tyCurrReqRcp.rWidth*1000);
	
	
	//Convert to Width for F1
	IF bOverWriteTravLifProperties THEN
		diTravLifWidth := REAL_TO_DINT(tyCurrZ1Rcp.rWidth*1000);
		bOverWriteTravLifProperties	:= FALSE;
	END_IF
	
	
	//Convert to Pitch for F2 
	IF bOverWriteMagProperties = TRUE THEN
		//overwriting diMax
		FOR kk := 1 TO SIZEOF(a_tyCurrZ2Rcp)/SIZEOF(a_tyCurrZ2Rcp[1]) DO
			p_diRequestedMinSlt := 3;
			p_diRequestedGapToMaxSlt := 0;
			IF p_bProdRcp0ToptoBtm THEN 
				IF p_diRequestedGapToMaxSlt > ((a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000)) THEN
					rMaxslt := (p_diMagRcpCurrRcpTtlSlt-p_diRequestedGapToMaxSlt)  ;
				ELSE
					rMaxslt := p_diMagRcpCurrRcpTtlSlt - ((a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000)) + 1;
				END_IF
				rMinslt :=  (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000);
				rPitch := (a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000);
				IF rPitch = 0 THEN
					rPitch := 1;
				END_IF
				rNumInterval := (rMaxslt - rMinslt )/ceil(rPitch);
				diCalcedMax := REAL_TO_DINT(floor(rMaxslt));
				diCalcedPitch := REAL_TO_DINT(ceil(rPitch));
				diCalcedMin := REAL_TO_DINT((diCalcedMax - floor(rNumInterval)*ceil(rPitch)));
				
				IF diCalcedMin = 0 THEN
					diCalcedMin := diCalcedPitch;
				END_IF

			ELSE
				IF p_diRequestedMinSlt = 0 THEN
					p_diRequestedMinSlt := 1;
				END_IF
				IF ceil((a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000)) >= p_diRequestedMinSlt THEN
					rMinslt := (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000) + 1;
				ELSE
					rMinslt :=  p_diRequestedMinSlt;
				END_IF
				//+ (a_tyCurrZ2Rcp[kk].rBottomClearanceHeight)/(p_diMagRcpCurrRcpSltToSlt/1000);
				rMaxslt := p_diMagRcpCurrRcpTtlSlt-((a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000)) +1;
				rPitch := (a_tyCurrZ2Rcp[kk].rTopClearanceHeight + a_tyCurrZ2Rcp[kk].rBottomClearanceHeight + a_tyCurrZ2Rcp[kk].rThickness)/(p_diMagRcpCurrRcpSltToSlt/1000);
				IF rPitch = 0 THEN
					rPitch := 1;
				END_IF
				rNumInterval := (rMaxslt - rMinslt )/ceil(rPitch);
				diCalcedMin := REAL_TO_DINT(ceil(rMinslt));
				diCalcedPitch := REAL_TO_DINT(ceil(rPitch));
				diCalcedMax := REAL_TO_DINT((diCalcedMin + floor(rNumInterval)*ceil(rPitch)));
				
				IF diCalcedMax = p_diMagRcpCurrRcpTtlSlt + 1 THEN
					diCalcedMax := diCalcedMax - diCalcedPitch;
				END_IF	
				
			END_IF
			a_tyMagProps[kk].diMaxSlt := diCalcedMax;
			a_tyMagProps[kk].diMinSlt := diCalcedMin;
			a_tyMagProps[kk].diPitch  := diCalcedPitch;
			a_tyMagProps[kk].diWidth := REAL_TO_DINT(a_tyCurrZ2Rcp[kk].rWidth * 1000);
		END_FOR
			
		bOverWriteMagProperties := FALSE;
	END_IF 
	
	//			IF diCalcedMin < p_diRequestedMinSlt THEN
	//				diModulus :=  p_diRequestedMinSlt/diCalcedMin;
	//				diCalcedMin := diCalcedMin + diModulus*diCalcedPitch;
	//			END_IF
END_ACTION
