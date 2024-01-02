(** 2019-01-10 **)
ACTION Act_Main:
	IF tylocalMcParam.Out.eStatus = Idle THEN
		tylocalMcParam.Out.eStat	:= tylocalMcParam.In.eAct;
	END_IF

	//Main
	CASE tylocalMcParam.Out.eStat OF
		
		McParamActIdle:
			IF tylocalMcParam.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbDirCreate1(bEn := FALSE);
				fbDirCreate2(bEn := FALSE);
				fbFileRead1(bEn := FALSE);
				fbFileWrite1(bEn := FALSE);
				fbFileWrite2(bEn := FALSE);
				usiStep	:= 0;
				
				bFileNotFound	:= FALSE;
				
				sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
		
			END_IF
			
			tylocalMcParam.Out.eStatus	:= Idle;
		
		McParamActCreateDir:
			IF tylocalMcParam.Out.eStatus = Idle OR tylocalMcParam.Out.eStatus = Busy THEN
				
				tylocalMcParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							tylocalMcParam.Out.eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							tylocalMcParam.Out.eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							tylocalMcParam.Out.eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Machine Parameter Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		McParamActWrite:
			IF tylocalMcParam.Out.eStatus = Idle OR tylocalMcParam.Out.eStatus = Busy THEN
				
				tylocalMcParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
		
				fbFileWrite1(bEn := TRUE);
				
				IF fbFileWrite1.udiStatus = 0 THEN
					tyMcParamCurr	:= tylocalMcParam.In.tyMcParmWr;
					tylocalMcParam.Out.eStatus			:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					tylocalMcParam.Out.eStatus			:= Error;
					
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
			
		McParamActRead:
			IF tylocalMcParam.Out.eStatus = Idle OR tylocalMcParam.Out.eStatus = Busy THEN
				
				tylocalMcParam.Out.eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
		
				fbFileRead1(bEn := TRUE);
				IF fbFileRead1.udiStatus = 0 THEN
					tylocalMcParam.Out.eStatus			:= Done;
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					tylocalMcParam.Out.eStatus		:= Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10006;	//File Open Error While Reading
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10007;	//File Read Error
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10008;	//File Close Error While Reading
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						tylocalMcParam.Out.eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
	END_CASE
	
END_ACTION
