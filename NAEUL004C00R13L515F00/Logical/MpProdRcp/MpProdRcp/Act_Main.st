
ACTION Act_Main:
	
	//Set p_eAct
	IF tylocalMpProdRcp.Out.eStatus = Idle THEN
		tylocalMpProdRcp.Out.eStat	:= tylocalMpProdRcp.In.eAct;
	END_IF
	
	//Main
	CASE tylocalMpProdRcp.Out.eStat OF
		
		MpProdRcpActIdle:
			IF tylocalMpProdRcp.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbDirCreate1(bEn := FALSE);
				fbDirCreate2(bEn := FALSE);
				fbMpRecipeRegPar(Enable := FALSE);
				fbMpRecipeXml(Enable := FALSE);
				usiStep			:= 0;
						
				sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
		
			END_IF
			
			tylocalMpProdRcp.Out.eStatus	:= Idle;
		
		MpProdRcpActCreateDir:
			IF tylocalMpProdRcp.Out.eStatus = Idle OR tylocalMpProdRcp.Out.eStatus = Busy THEN
				
				tylocalMpProdRcp.Out.eStatus	:= Busy;
						
				sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
		
				CASE usiStep OF
					0:
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							tylocalMpProdRcp.Out.eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Product Recipe Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		MpProdRcpActLoad:
			IF tylocalMpProdRcp.Out.eStatus = Idle OR tylocalMpProdRcp.Out.eStatus = Busy THEN
				
				tylocalMpProdRcp.Out.eStatus	:= Busy;
					
				sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
		
				CASE usiStep OF
					0:
						fbMpRecipeRegPar(Enable := TRUE);
						
						IF (fbMpRecipeRegPar.Active = TRUE) AND (fbMpRecipeRegPar.StatusID = 0) THEN
							usiStep	:= 1;
						ELSIF fbMpRecipeRegPar.StatusID <> 0 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							udiStatus	:= 10002;	//MpRecipeRegPar Error While Loading
						END_IF
					
					1:
						fbMpRecipeXml.Load	:= TRUE;
						fbMpRecipeXml.Save	:= FALSE;
						fbMpRecipeXml(Enable := TRUE);
					
						IF (fbMpRecipeXml.Active = TRUE) AND (fbMpRecipeXml.CommandDone = TRUE) AND (fbMpRecipeXml.StatusID = 0) THEN
							tylocalMpProdRcp.Out.eStatus	:= Done;
							pa_tyMpProdRcp	:= a_tyMpProdRcp1;
						ELSIF fbMpRecipeXml.StatusID <> 0 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							udiStatus	:= 10003;	//MpRecipeXml Error While Loading
						END_IF
						
				END_CASE
				
			END_IF
			
		MpProdRcpActSave:
			IF tylocalMpProdRcp.Out.eStatus = Idle OR tylocalMpProdRcp.Out.eStatus = Busy THEN
				
				tylocalMpProdRcp.Out.eStatus	:= Busy;
					
				sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
		
				CASE usiStep OF
					0:
						a_tyMpProdRcp1	:= pa_tyMpProdRcp;
						fbMpRecipeRegPar(Enable := TRUE);
						
						IF (fbMpRecipeRegPar.Active = TRUE) AND (fbMpRecipeRegPar.StatusID = 0) THEN
							usiStep	:= 1;
						ELSIF fbMpRecipeRegPar.StatusID <> 0 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							udiStatus	:= 10004;	//MpRecipeRegPar Error While Saving
						END_IF
					
					1:
						fbMpRecipeXml.Load	:= FALSE;
						fbMpRecipeXml.Save	:= TRUE;
						fbMpRecipeXml(Enable := TRUE);
					
						IF (fbMpRecipeXml.Active = TRUE) AND (fbMpRecipeXml.CommandDone = TRUE) AND (fbMpRecipeXml.StatusID = 0) THEN
							tylocalMpProdRcp.Out.eStatus	:= Done;
						ELSIF fbMpRecipeXml.StatusID <> 0 THEN
							tylocalMpProdRcp.Out.eStatus		:= Error;
							udiStatus	:= 10005;	//MpRecipeXml Error While Saving
						END_IF
						
				END_CASE
				
			END_IF
			
	END_CASE
	
END_ACTION
