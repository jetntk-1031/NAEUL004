(** 2021-08-01 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbDirCreate1(bEn := FALSE);
		fbDirCreate2(bEn := FALSE);
	
		fbFileRead1(bEn := FALSE);
		fbFileWrite1(bEn := FALSE);
		fbFileRead2(bEn := FALSE);
		fbFileWrite2(bEn := FALSE);
		
		usiStep			:= 0;
		bFileNotFound	:= FALSE;
		
		//sStatTxt	:= a_sStatText[eStat];
				
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		AutoRcpActIdle:
			eStatus	:= Idle;
		
		AutoRcpActCreateDir:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 10000;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 10001;	//Create Retain Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		AutoRcpActReadRetain:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
//				fbFileRead1.p_Dest	:= p_udiRetainDataAddr1;
//				fbFileRead1.udiLen	:= p_udiRetainDataLen1;
				fbFileRead1(bEn := TRUE);
				
				IF fbFileRead1.udiStatus = 0 THEN
					eStatus	:= Done;
					CASE p_eNtParamAutoRcpPrecededBy OF  
						PrecededBySelf: 
							a_tyZ2RcpWr := a_tyCurrZ2Rcp;
						PrecededByF1:
							a_tyMagPropsWr := a_tyMagProps;
					END_CASE
					bOverWriteMagProperties := TRUE;
					
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10002;	//File Open Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10003;	//File Read Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10004;	//File Close Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		AutoRcpActWriteRetain:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
//				fbFileWrite1.p_Src	:= p_udiRetainDataAddr1;
//				fbFileWrite1.udiLen	:= p_udiRetainDataLen1;
				fbFileWrite1(bEn := TRUE);
				
				IF fbFileWrite1.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 10005;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 10006;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 10007;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 10008;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 10009;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		AutoRcpActReadRetain2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		

				fbFileRead2(bEn := TRUE);
				
				IF fbFileRead2.udiStatus = 0 THEN
					eStatus	:= Done;
					tyZ1RcpWr := tyCurrZ1Rcp;
					bOverWriteTravLifProperties := TRUE;
				ELSIF fbFileRead2.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead2.udiStatus = 1900 THEN
						udiStatus	:= 10002;	//File Open Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1902 THEN
						udiStatus	:= 10003;	//File Read Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1904 THEN
						udiStatus	:= 10004;	//File Close Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead2.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		AutoRcpActWriteRetain2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		

				fbFileWrite2(bEn := TRUE);
				
				IF fbFileWrite2.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite2.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite2.udiStatus = 1900 THEN
						udiStatus	:= 10005;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1901 THEN
						udiStatus	:= 10006;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1903 THEN
						udiStatus	:= 10007;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1904 THEN
						udiStatus	:= 10008;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1914 THEN
						udiStatus	:= 10009;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite2.udiStatus;
					END_IF
				END_IF
				
			END_IF	

		ELSE
			IF eStatus = Idle OR eStatus = Busy THEN		
				eStatus	:= Done;
			END_IF
		
	END_CASE
	
END_ACTION
