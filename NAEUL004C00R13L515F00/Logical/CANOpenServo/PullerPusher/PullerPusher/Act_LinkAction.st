(** 2019-10-21 **)
ACTION Act_LinkAction:
	
//	IF eStatus = Idle THEN
		IF bModuleNotOK THEN
			p_eAct ACCESS ADR(eAct);
		ELSE
			IF p_bLinkStartupRun = TRUE THEN
				p_eAct ACCESS p_StartupServoPPAct;
			ELSIF p_bLinkOpsRun = TRUE OR p_bManual = TRUE THEN
				IF p_bLinkPullConvPullerExtCtrl AND NOT bJogFwdDone
					//AND NOT p_bLinkDIPullerExtRS 
					THEN
						bJogStopDone := FALSE;
					
						CASE usiJogFwdStep OF
				
							0:
							
	//						diMtrPshrExtTrq    := 10 + (((p_diLinkProdRcpTrq -10)/10)*444/100);	  
							diMtrPshrExtTrq    := p_tyLinkTorqParam.usiStartTorque + (((p_diLinkProdRcpTrq -10)/10)*p_tyLinkTorqParam.uiRatio/100);	
							
								IF p_bManual THEN
									memcpy(ADR(fbSDOWriteTorque.data0),p_UIMnlMtrPshrExtTorq,1);
									memcpy(ADR(fbSDOWriteTorque.data1),p_UIMnlMtrPshrExtTorq+1,1);
								ELSE
	//								memcpy(ADR(fbSDOWriteTorque.data0),p_ProdRcpCurrRcp1MtrPshrExtTorq,1);
	//								memcpy(ADR(fbSDOWriteTorque.data1),p_ProdRcpCurrRcp1MtrPshrExtTorq+1,1);
								
									memcpy(ADR(fbSDOWriteTorque.data0),ADR (diMtrPshrExtTrq),1);
									memcpy(ADR(fbSDOWriteTorque.data1),ADR(diMtrPshrExtTrq)+1,1);
								END_IF
							
	
							
								IF eStat <> PPActIdle THEN
									p_eAct := PPActIdle;
									usiJogFwdStep := 20;
								ELSE
									usiJogFwdStep := 20;
								END_IF
						
							20:	
								fbSDOWriteTorque(enable := TRUE);
								IF fbSDOWriteTorque.status = 65535 THEN
									usiJogFwdStep := 22;
								END_IF
											
							22:
								fbSDOWriteTorque(enable := TRUE);
								IF fbSDOWriteTorque.status = 0 THEN
									fbSDOWriteTorque(enable := FALSE);
									usiJogFwdStep := 30;
								END_IF
								
							30: 
								IF tyParamOut.bPwrOn = FALSE THEN
									p_eAct := PPActPwrOn;
						
									IF tyParamOut.bPwrOn THEN
										p_eAct := PPActIdle;
										usiJogFwdStep := 40;
									END_IF
								ELSE
									p_eAct := PPActIdle;
									usiJogFwdStep := 40;
							
								END_IF
							
						40:
								
								p_eAct := PPActJogOpen;
				
								IF EDGEPOS(p_bLinkDIPullerExtSlwRS) THEN
									p_eAct := PPActIdle;
								END_IF
							
							IF p_bLinkDIPullerExtSlwRS OR p_bLinkDIPullerExtRS  THEN
			
									p_diJogVelInUMPS := diExtSlowSpeed;
								
								ELSE
									IF p_bManual THEN
										p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
									ELSE
										p_diJogVelInUMPS := p_dintLinkPullerRetSpd * 3000;//290000/410000//51250//64062//Extend Speed
									END_IF
								END_IF
				
						
							//	IF (eStat = PPActJogOpen AND eMainStatus = Done)
							//		OR p_bLinkDIPullerExtRS
								IF p_bLinkDIPullerExtRS
									THEN
									p_eAct := PPActIdle;
	//								p_eAct := PPActStop;
									p_diJogVelInUMPS := 0;
									usiJogFwdStep := 50;
					
								END_IF
							
						50:
							p_eAct := PPActJogStop;
	//						p_eAct := PPActStop;
							p_diJogVelInUMPS := 0;			
							IF (eStat = PPActJogStop AND eMainStatus = Done)
								THEN
								p_eAct := PPActIdle;
								usiJogFwdStep := 0;
								bJogFwdDone := TRUE;	
							END_IF	
						
						
						END_CASE	
	
				ELSIF p_bLinkPullConvPullerRetCtrl AND NOT bJogRevDone
					//AND NOT p_bLinkDIPullerRetRS 
					THEN
				
					bJogStopDone := FALSE;	
					CASE usiJogRevStep OF

						0:
							memcpy(ADR(fbSDOWriteTorque.data0),ADR(udiMaxTorque),1);
							memcpy(ADR(fbSDOWriteTorque.data1),ADR(udiMaxTorque)+1,1);
							
							IF eStat <> PPActIdle THEN
								p_eAct := PPActIdle;
								usiJogRevStep := 20;
							ELSE
								usiJogRevStep := 20;
							END_IF
					
						20:	
							fbSDOWriteTorque(enable := TRUE);
							IF fbSDOWriteTorque.status = 65535 THEN
								usiJogRevStep := 22;
							END_IF
										
						22:
							fbSDOWriteTorque(enable := TRUE);
							IF fbSDOWriteTorque.status = 0 THEN
								fbSDOWriteTorque(enable := FALSE);
								usiJogRevStep := 30;
							END_IF
							
						30: 
							IF tyParamOut.bPwrOn = FALSE THEN
								p_eAct := PPActPwrOn;
								IF tyParamOut.bPwrOn THEN
									p_eAct := PPActIdle;
									usiJogRevStep := 40;
								END_IF
							ELSE
								p_eAct := PPActIdle;
								usiJogRevStep := 40;
						
							END_IF
						
						40:
							p_eAct := PPActJogClose;
						
							IF EDGEPOS(p_bLinkDIPullerRetSlwRS) THEN
								p_eAct := PPActIdle;
							END_IF
						
						IF p_bLinkDIPullerRetSlwRS OR p_bLinkDIPullerRetRS THEN
								
								p_diJogVelInUMPS := diSlowSpeed;
							ELSE
								IF p_bManual THEN
									p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
								ELSE
								p_diJogVelInUMPS :=  diRetSpd; //36250 //512500 //410000 //16000
								END_IF
								
							END_IF
									
						//	IF (eStat = PPActJogClose AND eMainStatus = Done)
						//		OR p_bLinkDIPullerRetRS
							IF p_bLinkDIPullerRetRS 
								THEN
								p_eAct := PPActIdle;
							
								p_diJogVelInUMPS := 0;
								usiJogRevStep := 50;
							
							END_IF
					
						50:
							p_eAct := PPActJogStop;
							p_diJogVelInUMPS := 0;			
							IF (eStat = PPActJogStop AND eMainStatus = Done)
							THEN
								p_eAct := PPActIdle;
								usiJogRevStep := 0;
								bJogRevDone := TRUE;
							END_IF	
					
					
								
					END_CASE	
				ELSE
					
					IF bJogStopDone = FALSE THEN
						p_eAct := PPActJogStop;
					END_IF
				
					usiJogFwdStep := 0;
					usiJogRevStep := 0;
					p_diJogVelInUMPS := 0; 
					tyParamOutDriver.diJogVel_60FF := 0; // ADDED
				
					IF eStat = PPActJogStop AND eMainStatus = Done THEN
						p_eAct := PPActIdle;
						bJogStopDone := TRUE;
					END_IF
					
					IF tyParamInDriver.uiErrCode_603F <> 0 THEN //error 12592
						tyParamOutDriver.uiCtrlword_6040 := 0; //0111 (7)> 1111 (15)
					END_IF
				END_IF
			ELSE
			
				usiJogFwdStep := 0;
				usiJogRevStep := 0;
				p_diJogVelInUMPS := 0;
				IF eStatus <> Idle THEN
					p_eAct := PPActIdle;
					IF eStat = PPActIdle AND eMainStatus = Done THEN
						p_eAct := PPActIdle;
					END_IF
				END_IF
			END_IF
		END_IF
//	END_IF
	
	IF EDGENEG(p_bManual) OR EDGENEG(p_bLinkOpsRun) OR EDGENEG(p_bLinkStartupRun) THEN
		tyParamOutDriver.uiCtrlword_6040	:= 0;
	END_IF

	IF (eStat = PPActJogClose AND p_bLinkDIPullerRetRS)
		OR (eStat = PPActJogOpen AND p_bLinkDIPullerExtRS)
		THEN
		p_diJogVelInUMPS := 0;
	END_IF

	IF p_bLinkDIPullerRetRS = FALSE THEN
		bJogRevDone := FALSE;
	END_IF

	IF p_bLinkDIPullerExtRS = FALSE THEN
		bJogFwdDone := FALSE;
	END_IF
	//fbPwrOnDlyTmr
END_ACTION
