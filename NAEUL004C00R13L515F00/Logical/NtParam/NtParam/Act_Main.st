
ACTION Act_Main:
	
	IF tylocalNtParam.Out.eStatus = Idle THEN
		tylocalNtParam.Out.eStat	:= tylocalNtParam.In.eAct;
	END_IF
	
	//Main
	CASE tylocalNtParam.Out.eStat OF
		
		NtParamActIdle:
			IF tylocalNtParam.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbDirCreate1(bEn := FALSE);
				fbDirCreate2(bEn := FALSE);
				fbDirCreate3(bEn := FALSE);
				fbFileRead1(bEn := FALSE);
				fbFileWrite1(bEn := FALSE);
				fbMpNtParamRegPar(Enable := FALSE);
				fbMpNtParamXml(Enable := FALSE);
				usiStep	:= 0;
				
				tylocalNtParam.Out.bFileNotFound	:= FALSE;
				
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
			END_IF
			
			tylocalNtParam.Out.eStatus	:= Idle;
		
		NtParamActCreateDir:
			IF tylocalNtParam.Out.eStatus = Idle OR tylocalNtParam.Out.eStatus = Busy THEN
				
				tylocalNtParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
				CASE usiStep OF
					0:
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							usiStep	:= 2;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Nutek Parameter Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
					2:
						fbDirCreate3(bEn := TRUE);
						IF fbDirCreate3.udiStatus = 0 THEN
							tylocalNtParam.Out.eStatus	:= Done;
						ELSIF fbDirCreate3.udiStatus < 65534 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							
							IF fbDirCreate3.udiStatus = 1908 THEN
								udiStatus	:= 10014;	//Create Nutek Parameter xml Directory Error
							ELSE
								udiStatus	:= fbDirCreate3.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		NtParamActWrite:
			IF tylocalNtParam.Out.eStatus = Idle OR tylocalNtParam.Out.eStatus = Busy THEN
				
				tylocalNtParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
				fbFileWrite1(bEn := TRUE);
				IF fbFileWrite1.udiStatus = 0 THEN
					tylocalNtParam.Out.eStatus	:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					tylocalNtParam.Out.eStatus	:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 10002;	//File Open Error While Writing
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 10003;	//File Create Error While Writing
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 10004;	//File Write Error
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 10005;	//File Close Error While Writing
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 10009;	//Directory Does Not Exist While Writing
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		NtParamActRead:
			IF tylocalNtParam.Out.eStatus = Idle OR tylocalNtParam.Out.eStatus = Busy THEN
				
				tylocalNtParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
				fbFileRead1(bEn := TRUE);
				IF fbFileRead1.udiStatus = 0 THEN
					tylocalNtParam.Out.eStatus	:= Done;
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					tylocalNtParam.Out.eStatus := Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10006;	//File Open Error While Reading
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10007;	//File Read Error
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10008;	//File Close Error While Reading
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						tylocalNtParam.Out.eStatus			:= Done;
						tylocalNtParam.Out.bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		NtParamActLoad:
			IF tylocalNtParam.Out.eStatus = Idle OR tylocalNtParam.Out.eStatus = Busy THEN
				
				tylocalNtParam.Out.eStatus	:= Busy;
					
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
				CASE usiStep OF
					0:
						fbMpNtParamRegPar(Enable := TRUE);
						
						IF (fbMpNtParamRegPar.Active = TRUE) AND (fbMpNtParamRegPar.StatusID = 0) THEN
							usiStep	:= 1;
						ELSIF fbMpNtParamRegPar.StatusID <> 0 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							udiStatus						:= 10010;	//MpRecipeRegPar Error While Loading
						END_IF
					
					1:
						fbMpNtParamXml.Load	:= TRUE;
						fbMpNtParamXml.Save	:= FALSE;
						fbMpNtParamXml(Enable := TRUE);
					
						IF (fbMpNtParamXml.Active = TRUE) AND (fbMpNtParamXml.CommandDone = TRUE) AND (fbMpNtParamXml.StatusID = 0) THEN
							//	tylocalNtParam.Out.eStatus	:= Done;
							usiStep	:= 2;
							tyNtParamCurr	:= tyMpNtParamCurr1;
						ELSIF fbMpNtParamXml.StatusID <> 0 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							udiStatus						:= 10011;	//MpRecipeXml Error While Loading
						END_IF
					
					2: 
						fbFileWrite1(bEn := TRUE);
						IF fbFileWrite1.udiStatus = 0 THEN
							tylocalNtParam.Out.eStatus	 := Done;
						ELSIF fbFileWrite1.udiStatus < 65534 THEN
							tylocalNtParam.Out.eStatus	 := Error;
					
							IF fbFileWrite1.udiStatus = 1900 THEN
								udiStatus	:= 10002;	//File Open Error While Writing
							ELSIF fbFileWrite1.udiStatus = 1901 THEN
								udiStatus	:= 10003;	//File Create Error While Writing
							ELSIF fbFileWrite1.udiStatus = 1903 THEN
								udiStatus	:= 10004;	//File Write Error
							ELSIF fbFileWrite1.udiStatus = 1904 THEN
								udiStatus	:= 10005;	//File Close Error While Writing
							ELSIF fbFileWrite1.udiStatus = 1914 THEN
								udiStatus	:= 10009;	//Directory Does Not Exist While Writing
							ELSE
								udiStatus	:= fbFileWrite1.udiStatus;
							END_IF
						END_IF
						
				END_CASE
				
			END_IF
		
		NtParamActSave:
			IF tylocalNtParam.Out.eStatus = Idle OR tylocalNtParam.Out.eStatus = Busy THEN
				
				tylocalNtParam.Out.eStatus	:= Busy;
					
				sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
				CASE usiStep OF
					0:
						tyMpNtParamCurr1	:= tyNtParamCurr;
						fbMpNtParamRegPar(Enable := TRUE);
						
						IF (fbMpNtParamRegPar.Active = TRUE) AND (fbMpNtParamRegPar.StatusID = 0) THEN
							usiStep	:= 1;
						ELSIF fbMpNtParamRegPar.StatusID <> 0 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							udiStatus	:= 10012;	//MpRecipeRegPar Error While Saving
						END_IF
					
					1:
						fbMpNtParamXml.Load	:= FALSE;
						fbMpNtParamXml.Save	:= TRUE;
						fbMpNtParamXml(Enable := TRUE);
					
						IF (fbMpNtParamXml.Active = TRUE) AND (fbMpNtParamXml.CommandDone = TRUE) AND (fbMpNtParamXml.StatusID = 0) THEN
							tylocalNtParam.Out.eStatus	:= Done;
						ELSIF fbMpNtParamXml.StatusID <> 0 THEN
							tylocalNtParam.Out.eStatus		:= Error;
							udiStatus	:= 10013;	//MpRecipeXml Error While Saving
						END_IF
						
				END_CASE
				
			END_IF
		
	END_CASE
	
	
	
END_ACTION
