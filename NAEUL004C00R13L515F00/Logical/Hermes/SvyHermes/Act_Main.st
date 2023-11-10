(** 2021-08-01 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
		fbFileOldDel1(bEn := FALSE);
		fbFileRead1(bEn := FALSE);
		fbFileWrite1(bEn := FALSE);
		bFileNotFound	:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
				
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		HermesActIdle:
			eStatus	:= Idle;
		
		HermesActBGStartRun:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bRun	:= TRUE;
				bStop	:= FALSE;
				eStatus	:= Done;
				
			END_IF
		
		HermesActBGStopRun:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bStop	:= TRUE;
				eStatus	:= Done;
				
			END_IF
		
		HermesActDeleteOldLog:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileOldDel1.dtDTNow	:= p_dtCurrDT;
				fbFileOldDel1(bEn := TRUE);
				IF fbFileOldDel1.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileOldDel1.udiStatus < 65534 THEN
					eStatus		:= Error;
					
					IF fbFileOldDel1.udiStatus = 1910 THEN
						udiStatus	:= 10111;	//Get Directory Info Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1911 THEN
						udiStatus	:= 10112;	//Directory Read Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1912 THEN
						udiStatus	:= 10113;	//File Delete Error While Deleting Old Log
					ELSE
						udiStatus	:= fbFileOldDel1.udiStatus;
					END_IF
				END_IF
						
			END_IF
			
		HermesActReadRetain:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileRead1.p_Dest	:= p_udiRetainDataAddr;
				fbFileRead1.udiLen	:= p_udiRetainDataLen;
				fbFileRead1(bEn := TRUE);
				
				IF fbFileRead1.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 10114;	//File Open Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 10115;	//File Read Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 10116;	//File Close Error While Reading Retain File
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		HermesActWriteRetain:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileWrite1.p_Src	:= p_udiRetainDataAddr;
				fbFileWrite1.udiLen	:= p_udiRetainDataLen;
				fbFileWrite1(bEn := TRUE);
				
				IF fbFileWrite1.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 10117;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 10118;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 10119;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 10120;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 10121;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		HermesActReadRetainSendWO1:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileRead2.p_Dest	:= p_udiLoaderRetainDataAddr0;
				fbFileRead2.udiLen	:= p_udiLoaderRetainDataLen0;
				fbFileRead2(bEn := TRUE);
				
				IF fbFileRead2.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileRead2.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead2.udiStatus = 1900 THEN
						udiStatus	:= 10200;	//File Open Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1902 THEN
						udiStatus	:= 10201;	//File Read Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1904 THEN
						udiStatus	:= 10202;	//File Close Error While Reading Retain File
					ELSIF fbFileRead2.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead2.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
			
			
			
		HermesActWriteRetainSendWO1:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileWrite2.p_Src	:= p_udiLoaderRetainDataAddr0;
				fbFileWrite2.udiLen	:= p_udiLoaderRetainDataLen0;
				fbFileWrite2(bEn := TRUE);
				
				IF fbFileWrite2.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite2.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite2.udiStatus = 1900 THEN
						udiStatus	:= 10203;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1901 THEN
						udiStatus	:= 10204;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1903 THEN
						udiStatus	:= 10205;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1904 THEN
						udiStatus	:= 10206;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite2.udiStatus = 1914 THEN
						udiStatus	:= 10207;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite2.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
		HermesActReadRetainSendWO2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileRead3.p_Dest	:= p_udiLoaderRetainDataAddr1;
				fbFileRead3.udiLen	:= p_udiLoaderRetainDataLen1;
				fbFileRead3(bEn := TRUE);
				
				IF fbFileRead3.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileRead3.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead3.udiStatus = 1900 THEN
						udiStatus	:= 10208;	//File Open Error While Reading Retain File
					ELSIF fbFileRead3.udiStatus = 1902 THEN
						udiStatus	:= 10209;	//File Read Error While Reading Retain File
					ELSIF fbFileRead3.udiStatus = 1904 THEN
						udiStatus	:= 10210;	//File Close Error While Reading Retain File
					ELSIF fbFileRead3.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead3.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
			
			
			
		HermesActWriteRetainSendWO2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileWrite3.p_Src	:= p_udiLoaderRetainDataAddr1;
				fbFileWrite3.udiLen	:= p_udiLoaderRetainDataLen1;
				fbFileWrite3(bEn := TRUE);
				
				IF fbFileWrite3.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite3.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite3.udiStatus = 1900 THEN
						udiStatus	:= 10211;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite3.udiStatus = 1901 THEN
						udiStatus	:= 10212;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite3.udiStatus = 1903 THEN
						udiStatus	:= 10213;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite3.udiStatus = 1904 THEN
						udiStatus	:= 10214;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite3.udiStatus = 1914 THEN
						udiStatus	:= 10215;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite3.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		HermesActReadRetainSendWO3:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileRead4.p_Dest	:= p_udiBypassRetainDataAddr0;
				fbFileRead4.udiLen	:= p_udiBypassRetainDataLen0;
				fbFileRead4(bEn := TRUE);
				
				IF fbFileRead4.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileRead4.udiStatus < 65534 THEN
					eStatus	:= Error;
				
					IF fbFileRead4.udiStatus = 1900 THEN
						udiStatus	:= 10216;	//File Open Error While Reading Retain File
					ELSIF fbFileRead4.udiStatus = 1902 THEN
						udiStatus	:= 10217;	//File Read Error While Reading Retain File
					ELSIF fbFileRead4.udiStatus = 1904 THEN
						udiStatus	:= 10218;	//File Close Error While Reading Retain File
					ELSIF fbFileRead4.udiStatus = 1915 THEN
						eStatus			:= Done;
						bFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead4.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
			
			
		HermesActWriteRetainSendWO3:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				fbFileWrite4.p_Src	:= p_udiBypassRetainDataAddr0;
				fbFileWrite4.udiLen	:= p_udiBypassRetainDataLen0;
				fbFileWrite4(bEn := TRUE);
				
				IF fbFileWrite4.udiStatus = 0 THEN
					eStatus	:= Done;
				ELSIF fbFileWrite4.udiStatus < 65534 THEN
					eStatus	:= Error;
					
					IF fbFileWrite4.udiStatus = 1900 THEN
						udiStatus	:= 10219;	//File Open Error While Writing Retain File
					ELSIF fbFileWrite4.udiStatus = 1901 THEN
						udiStatus	:= 10220;	//File Create Error While Writing Retain File
					ELSIF fbFileWrite4.udiStatus = 1903 THEN
						udiStatus	:= 10221;	//File Write Error While Writing Retain File
					ELSIF fbFileWrite4.udiStatus = 1904 THEN
						udiStatus	:= 10222;	//File Close Error While Writing Retain File
					ELSIF fbFileWrite4.udiStatus = 1914 THEN
						udiStatus	:= 10223;	//Directory Does Not Exist While Writing Retain File
					ELSE
						udiStatus	:= fbFileWrite4.udiStatus;
					END_IF
				END_IF
				
			END_IF
			
			
		ELSE
			IF eStatus = Idle OR eStatus = Busy THEN		
				eStatus	:= Done;
			END_IF
		
	END_CASE
	
END_ACTION
