
ACTION Act_OptP1021HMIIPAddr:
	
	IF tyP1021McSetGen.tyGen.tyStringHMIIPAddr.bRtCompl = TRUE THEN
		
		IF fIPValid(tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue , ADR(a_iIPPart1)) THEN
			
			IF usiSaveHMIIPAddrStep = 0 THEN
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk);
				
				IF tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnYes.bRtCompl = TRUE THEN
					tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnYes.bRtCompl	:= FALSE;
					tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnYes.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
					
					usiSaveHMIIPAddrStep	:= 1;
					
				ELSIF tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnNo.bRtCompl = TRUE THEN
					tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnNo.bRtCompl	:= FALSE;
					tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrAsk.tyBtnNo.bValue	:= FALSE;
					
					//Recover IP Address
					tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue	:= p_tyMcParamCurr.sHMIIPAddr;
					
					tyP1021McSetGen.tyGen.tyStringHMIIPAddr.bRtCompl	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
					
				END_IF
				
			ELSIF usiSaveHMIIPAddrStep = 1 THEN
				//Set HMI IP Address
				sSetHMIIPAddr	:= tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue;
				
				bUpdateP1021Network	:= TRUE;
				bUpdtHMIIPAddr := TRUE;
				
				IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
					
					bUpdtHMIIPAddr := FALSE;
					
					usiSaveHMIIPAddrStep	:= 0;
					
					tyP1021McSetGen.tyGen.tyStringHMIIPAddr.bRtCompl	:= FALSE;
					
				ELSIF p_eMcParamStatus = Error THEN
					p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrErr);
					
					IF tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrErr.tyBtnNo.bRtCompl = TRUE THEN
						tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrErr.tyBtnNo.bRtCompl	:= FALSE;
						tyP1021McSetGen.tyMsgBoxUpdtHMIIPAddrErr.tyBtnNo.bValue	:= FALSE;
						
						p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
						
						//Recover IP Address
						tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue	:= p_tyMcParamCurr.sHMIIPAddr;
						
						usiSaveHMIIPAddrStep	:= 0;
						
						tyP1021McSetGen.tyGen.tyStringHMIIPAddr.bRtCompl	:= FALSE;
						
						bUpdtHMIIPAddr := FALSE;
					END_IF
					
				END_IF
				
			END_IF
			
		ELSE
			
			p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHMIIPAddrInvalid);
			
			IF tyP1021McSetGen.tyMsgBoxHMIIPAddrInvalid.tyBtnNo.bRtCompl = TRUE THEN
				tyP1021McSetGen.tyMsgBoxHMIIPAddrInvalid.tyBtnNo.bRtCompl	:= FALSE;
				tyP1021McSetGen.tyMsgBoxHMIIPAddrInvalid.tyBtnNo.bValue	:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1021McSetGen.tyMsgBoxHide);
				
				//Recover IP Address
				tyP1021McSetGen.tyGen.tyStringHMIIPAddr.sValue	:= p_tyMcParamCurr.sHMIIPAddr;
				
				tyP1021McSetGen.tyGen.tyStringHMIIPAddr.bRtCompl	:= FALSE;
				
			END_IF
			
		END_IF
		
	END_IF

END_ACTION
