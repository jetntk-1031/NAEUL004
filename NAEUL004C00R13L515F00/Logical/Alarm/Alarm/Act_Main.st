(** 2022-12-20 **)
ACTION Act_Background:
	
	a_tyAlmData[1]	:= tyAlmData;

	IF (bRstErr = TRUE) THEN	
		
		tylocalAlm.Out.bErr		:= FALSE;
		tylocalAlm.Out.bWarning	:= FALSE;
			
		//Reset Warning
		memset(ADR(a_tyWarningCurrList) , 0 , SIZEOF(a_tyWarningCurrList));
		udiWarningMax	:=1;
			
		memset(ADR(tylocalAlm.Out.a_tyCurrList) , 0 , SIZEOF(tylocalAlm.Out.a_tyCurrList));
	//	memset(ADR(tylocalAlm.Out.a_sRecoveryList) , 0 , SIZEOF(tylocalAlm.Out.a_sRecoveryList));
		memset(ADR(tylocalAlm.Out.a_udiRecoveryList),0,SIZEOF(tylocalAlm.Out.a_udiRecoveryList));

		
		udiAlmCntr	:= 0;
		
		bAlmUpdt	:= FALSE;
		
	END_IF
		
	IF (bRstWarning = TRUE) THEN
		
		IF tylocalAlm.Out.bErr =FALSE AND tylocalAlm.Out.bWarning= TRUE THEN
			//Reset Warning
			memset(ADR(a_tyWarningCurrList) , 0 , SIZEOF(a_tyWarningCurrList));
			udiWarningMax	:=1;
			
			memset(ADR(tylocalAlm.Out.a_tyCurrList) , 0 , SIZEOF(tylocalAlm.Out.a_tyCurrList));
		//	memset(ADR(tylocalAlm.Out.a_sRecoveryList) , 0 , SIZEOF(tylocalAlm.Out.a_sRecoveryList));
			memset(ADR(tylocalAlm.Out.a_udiRecoveryList),0,SIZEOF(tylocalAlm.Out.a_udiRecoveryList));
			udiAlmCntr	:= 0;
			tylocalAlm.Out.bWarning := FALSE;
		END_IF
		
		bAlmUpdt	:= FALSE;
		
	END_IF
	
	
	IF bAlarmLog = TRUE  AND tylocalAlm.In.bStartupUISettingsLoadDone THEN
		
		IF (bAlmUpdt = FALSE) OR (tylocalAlm.Out.eStatus = Error) THEN
			
			
			tylocalAlm.Out.bInfo		:= FALSE;
			tylocalAlm.Out.bInfoLF		:= FALSE;
			iInfoCntr	:= 0;
		
			FOR udi := 1 TO c_udiAlarmCurrMax DO
			
				IF (a_tyAlmData[udi].udiRunTime <> a_udiRunTimeOld[udi]) AND a_tyAlmData[udi].udiCode <> 0 
					AND ((a_tyAlmData[udi].eSeverity = AlmSeverityError ) ) THEN
					
					
					a_udiRunTimeOld[udi]	:= a_tyAlmData[udi].udiRunTime;
					
					bAlmUpdt	:= TRUE;
					
					udiAlmCntr	:= udiAlmCntr + 1;
					IF udiAlmCntr > c_udiAlarmCurrMax THEN
						udiAlmCntr	:= c_udiAlarmCurrMax;
					END_IF
					
					udiLogCntr	:= udiLogCntr + 1;
					IF udiLogCntr > c_udiAlarmCurrMax THEN
						udiLogCntr	:= c_udiAlarmCurrMax;
					END_IF
					
					fLogDTConvert(ADR(sDT) , tylocalAlm.In.dtCurrDT);
					
					IF a_tyAlmData[udi].udiCode < 10000 THEN
						udiErrorCode := a_tyAlmData[udi].udiCode;
					ELSE
						udiErrorCode := (a_tyAlmData[udi].udiCode - 10000) + (a_tyAlmData[udi].udiModuleNum);//*For HMI Text Group*
					END_IF
					
					//In this case, Program Name/Data Time/
					//Current List
					tylocalAlm.Out.a_tyCurrList[udiAlmCntr].eSeverity		:= a_tyAlmData[udi].eSeverity;
					tylocalAlm.Out.a_tyCurrList[udiAlmCntr].sDT				:= sDT;

					//To HMI Text Group 
					tylocalAlm.Out.a_tyCurrList[udiAlmCntr].udiErrorCode	:= udiErrorCode;
					tylocalAlm.Out.a_tyCurrList[udiAlmCntr].bAlm			:= a_tyAlmData[udi].bAlm;
					
					//Recovery List
					tylocalAlm.Out.a_udiRecoveryList[udiAlmCntr]			:= udiErrorCode; //*For HMI Text Group **It will be the same procedure with the above**
				
					//History List
					memmove(ADR(a_tyHistoryList[2]) , ADR(a_tyHistoryList[1]) , SIZEOF(a_tyHistoryList[1]) * (c_udiAlarmHistoryMax - 1));
				
					a_tyHistoryList[1].sDT				:= sDT;
					a_tyHistoryList[1].udiModErrCode	:= a_tyAlmData[udi].udiCode;
					a_tyHistoryList[1].udiErrorCode		:= udiErrorCode;

								
					//Log List
					//					fLogAlmDispMsg(ADR(sAlmMsg) , tylocalAlm.In.dtCurrDT , a_tyAlmData[udi].sProgNm , a_tyAlmData[udi].udiCode , a_tyAlmData[udi].sAlmMsg); // *For Log files*
					//					a_sLogList[udiLogCntr]	:= sAlmMsg;
					a_sLogList[udiLogCntr]	:= CONCAT(a_sLogList[udiLogCntr] , '$r$n');
					
					//Severity
					IF a_tyAlmData[udi].eSeverity = AlmSeverityError THEN
						tylocalAlm.Out.bErr		:= TRUE;
					END_IF
				
			
					// Alarm warning	
				ELSIF (( a_tyAlmData[udi].eSeverity = AlmSeverityWarning) AND  (a_tyAlmData[udi].udiCode <> 0 )) THEN
			
				
					//Used to compare
					memset(ADR(sWarningCompareMsg) , 0 , SIZEOF(sWarningCompareMsg));
				
					//					sWarningCompareMsg	:= CONCAT(sWarningCompareMsg , a_tyAlmData[udi].sProgNm);
					//					sWarningCompareMsg	:= CONCAT(sWarningCompareMsg , ' | ');
					//					sWarningID := UDINT_TO_STRING(a_tyAlmData[udi].udiCode);	
					//					sWarningCompareMsg	:= CONCAT(sWarningCompareMsg , sWarningID);
					//					sWarningCompareMsg	:= CONCAT(sWarningCompareMsg , ' | ');
					////					sWarningCompareMsg	:= CONCAT(sWarningCompareMsg , a_tyAlmData[udi].sAlmMsg);
					//				
					//					//Checking whether it is recorded in the alarm list
					//					FOR udi1 := 0 TO  udiWarningMax DO 
					//						WarningListOccur := (memcmp(ADR(sWarningCompareMsg),ADR(a_tyWarningCurrList[udi1].sMsg),SIZEOF(sWarningCompareMsg) )= 0);
					//					
					//						IF WarningListOccur THEN
					//							EXIT;
					//						END_IF
					//		
					//					END_FOR	
				
					//IF warning message is no recorded in alarm list 
					IF 	WarningListOccur =FALSE THEN 
						
						bAlmUpdt	:= TRUE;	
						udiWarningMax := udiWarningMax +1;
						
						udiAlmCntr	:= udiAlmCntr + 1;
						
						IF udiAlmCntr > c_udiAlarmCurrMax THEN
							udiAlmCntr	:= c_udiAlarmCurrMax;
						END_IF
					
						udiRecorded[udiWarningMax-1]:= udi;
							
						udiLogCntr	:= udiLogCntr + 1;
						
						IF udiLogCntr > c_udiAlarmCurrMax THEN
							udiLogCntr	:= c_udiAlarmCurrMax;
						END_IF
					
						//Warning List
						//						a_tyWarningCurrList[udiWarningMax-1].sMsg		:= sWarningCompareMsg;
					
						
						fLogDTConvert(ADR(sDT) , tylocalAlm.In.dtCurrDT);
						udiErrorCode := (a_tyAlmData[udi].udiCode - 10000) + a_tyAlmData[udi].udiModuleNum; //*For HMI Text Group*
					
						//Current List
						tylocalAlm.Out.a_tyCurrList[udiAlmCntr].eSeverity		:= a_tyAlmData[udi].eSeverity;
						tylocalAlm.Out.a_tyCurrList[udiAlmCntr].sDT				:= sDT;
						tylocalAlm.Out.a_tyCurrList[udiAlmCntr].udiModErrCode	:= a_tyAlmData[udi].udiCode;
					
						//To HMI Text Group 
						tylocalAlm.Out.a_tyCurrList[udiAlmCntr].udiErrorCode	:= udiErrorCode;
						tylocalAlm.Out.a_tyCurrList[udiAlmCntr].bWarning		:= a_tyAlmData[udi].bWarning;
							
						//Recovery List
						//						tylocalAlm.Out.a_sRecoveryList[udiAlmCntr]	 	:= a_tyAlmData[udi].sRcyMsg;
						tylocalAlm.Out.a_udiRecoveryList[udiAlmCntr]	:= udiErrorCode;
						
						//History List
						memmove(ADR(a_tyHistoryList[2]) , ADR(a_tyHistoryList[1]) , SIZEOF(a_tyHistoryList[1]) * (c_udiAlarmHistoryMax - 1));
				
						a_tyHistoryList[1].sDT				:= sDT;
						a_tyHistoryList[1].udiModErrCode	:= a_tyAlmData[udi].udiCode;
						a_tyHistoryList[1].udiErrorCode		:= udiErrorCode;
							
						//Log List
						//Info Message
						//						fLogAlmDispMsg(ADR(sWarningMsg) , tylocalAlm.In.dtCurrDT , a_tyAlmData[udi].sProgNm , a_tyAlmData[udi].udiCode , a_tyAlmData[udi].sAlmMsg);
						
						a_sLogList[udiLogCntr]	:= sWarningMsg;
						a_sLogList[udiLogCntr]	:= CONCAT(a_sLogList[udiLogCntr] , '$r$n');
					
						tylocalAlm.Out.bWarning	:= TRUE;

					END_IF
			
				
					// Show Info Message
				ELSIF  ((a_tyAlmData[udi].udiCode <> 0) AND (a_tyAlmData[udi].eSeverity = AlmSeverityInfo)) THEN
										
					iInfoCntr	:= iInfoCntr + 1;
										
					IF iInfoCntr = 1 THEN
						
						IF a_tyAlmData[udi].udiModuleNum = 3901 AND a_tyAlmData[udi].bAlm THEN //Identify Leader Follower Inforamtion
						
							tylocalAlm.Out.bInfoLF	:= TRUE;
							tylocalAlm.Out.bInfo	:= TRUE;
							
						ELSE
							tylocalAlm.Out.bInfoLF	:= FALSE;
							tylocalAlm.Out.bInfo	:= TRUE;
						END_IF
							
		
					ELSIF iInfoCntr = 2 THEN
						//						tylocalAlm.sInfoMsg	:= CONCAT(tylocalAlm.sInfoMsg , '$r$n$r$n');
						//						tylocalAlm.sInfoMsg	:= CONCAT(tylocalAlm.sInfoMsg , a_tyAlmData[udi].sAlmMsg);
						
					END_IF	
				
				END_IF
				
			END_FOR
			
		ELSE
			
			tylocalAlm.In.eAct	:= AlarmActAppendLogWriteHistory;
			IF tylocalAlm.Out.eStatus = Done AND tylocalAlm.Out.eStat = AlarmActAppendLogWriteHistory THEN
				tylocalAlm.In.eAct		:= AlarmActIdle;
				bAlmUpdt	:= FALSE;
				udiLogCntr	:= 0;
			END_IF
			
		END_IF
		
	END_IF
	//**** Background Running Done*****
	
	
	
	//Delete Old Alarm Log File for 24 hours After Machine is Continuous Running 30 Days.
	fbDlyTmr(IN := TRUE);
	IF fbDlyTmr.Q THEN
		fbDeleteLogTmr (IN := TRUE);
		IF fbDeleteLogTmr.Q AND eStatus <> Busy THEN
			p_eAct := AlarmActDeleteOldLog;
			IF eStat = AlarmActDeleteOldLog AND eStatus = Done THEN
				p_eAct := AlarmActIdle;
				fbDlyTmr (IN := FALSE);
				fbDeleteLogTmr (IN := FALSE);
			END_IF
		END_IF
	END_IF
	

	
	//Reset Done
	IF tylocalAlm.Out.eStatus = Done AND tylocalAlm.In.eAct = AlarmActIdle THEN
		tylocalAlm.Out.eStat	:= AlarmActIdle;
	END_IF
	
	//Set tylocalAlm.In.eAct
	IF tylocalAlm.Out.eStatus = Idle THEN
		tylocalAlm.Out.eStat	:= tylocalAlm.In.eAct;
	END_IF
	//Main
	CASE tylocalAlm.Out.eStat OF
		
		AlarmActIdle:
			IF tylocalAlm.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbDirCreate1(bEn := FALSE);
				fbDirCreate2(bEn := FALSE);
				fbFileOldDel1(bEn := FALSE);
				fbFileRead1(bEn := FALSE);
				fbFileAppend1(bEn := FALSE);
				fbFileWrite1(bEn := FALSE);
				usiStep	:= 0;
				
				tylocalAlm.Out.bHistoryFileNotFound	:= FALSE;
				udiWriteLogCntr			:= 1;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
			END_IF
			
			tylocalAlm.Out.eStatus	:= Idle;
		
		AlarmActCreateDir:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				CASE usiStep OF
					0:			
						fbDirCreate1(bEn := TRUE);
						IF fbDirCreate1.udiStatus = 0 THEN
							usiStep	:= 1;
						ELSIF fbDirCreate1.udiStatus < 65534 THEN
							tylocalAlm.Out.eStatus		:= Error;
							
							IF fbDirCreate1.udiStatus = 1908 THEN
								udiStatus	:= 5051;	//Create User Directory Error
							ELSE
								udiStatus	:= fbDirCreate1.udiStatus;
							END_IF
						END_IF
						
					1:			
						fbDirCreate2(bEn := TRUE);
						IF fbDirCreate2.udiStatus = 0 THEN
							tylocalAlm.Out.eStatus	:= Done;
						ELSIF fbDirCreate2.udiStatus < 65534 THEN
							tylocalAlm.Out.eStatus		:= Error;
							
							IF fbDirCreate2.udiStatus = 1908 THEN
								udiStatus	:= 5052;	//Create Alarm Directory Error
							ELSE
								udiStatus	:= fbDirCreate2.udiStatus;
							END_IF
						END_IF
					
				END_CASE
				
			END_IF
		
		AlarmActDeleteOldLog:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				fbFileOldDel1.dtDTNow			:= tylocalAlm.In.dtCurrDT;
				fbFileOldDel1.udiFileKeepDay	:= tylocalAlm.In.udiFileKeepDay;
				fbFileOldDel1(bEn := TRUE);
				IF fbFileOldDel1.udiStatus = 0 THEN
					tylocalAlm.Out.eStatus	:= Done;
				ELSIF fbFileOldDel1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileOldDel1.udiStatus = 1910 THEN
						udiStatus	:= 5053;	//Get Directory Info Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1911 THEN
						udiStatus	:= 5054;	//Directory Read Error While Deleting Old Log
					ELSIF fbFileOldDel1.udiStatus = 1912 THEN
						udiStatus	:= 5055;	//File Delete Error While Deleting Old Log
					ELSE
						udiStatus	:= fbFileOldDel1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActReadHistory:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				fbFileRead1(bEn := TRUE);
				IF fbFileRead1.udiStatus = 0 THEN
					tylocalAlm.Out.eStatus	:= Done;
				ELSIF fbFileRead1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileRead1.udiStatus = 1900 THEN
						udiStatus	:= 5056;	//File Open Error While Reading Alarm History
					ELSIF fbFileRead1.udiStatus = 1902 THEN
						udiStatus	:= 5057;	//File Read Error While Reading Alarm History
					ELSIF fbFileRead1.udiStatus = 1904 THEN
						udiStatus	:= 5058;	//File Close Error While Reading Alarm History
					ELSIF fbFileRead1.udiStatus = 1915 THEN
						tylocalAlm.Out.eStatus					:= Done;
						tylocalAlm.Out.bHistoryFileNotFound	:= TRUE;
					ELSE
						udiStatus	:= fbFileRead1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActWriteHistory:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				fbFileWrite1(bEn := TRUE);
				IF fbFileWrite1.udiStatus = 0 THEN
					tylocalAlm.Out.eStatus	:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 5059;	//File Open Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 5060;	//File Create Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 5061;	//File Write Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 5062;	//File Close Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 5063;	//Directory Does Not Exist While Writing Alarm History
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActAppendLog:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				dtCurrDTTemp			:= tylocalAlm.In.dtCurrDT;
				fbFileAppend1.sFile		:= DT_TO_STRING(dtCurrDTTemp);
				fbFileAppend1.sFile		:= MID(fbFileAppend1.sFile , 10 , 4);
				fbFileAppend1.sFile		:= CONCAT('ALARM_' , fbFileAppend1.sFile);
				fbFileAppend1.sFile		:= CONCAT(fbFileAppend1.sFile , '.dat');
				
				fbFileAppend1.p_Src		:= ADR(a_sLogList[udiWriteLogCntr]);
				fbFileAppend1.udiLen	:= LEN(a_sLogList[udiWriteLogCntr]);
				
				fbFileAppend1(bEn := TRUE);
				IF fbFileAppend1.udiStatus = 0 THEN
					IF udiWriteLogCntr >= udiLogCntr THEN
						tylocalAlm.Out.eStatus	:= Done;
					ELSE
						udiWriteLogCntr	:= udiWriteLogCntr + 1;
						fbFileAppend1(bEn := FALSE);
					END_IF
					
				ELSIF fbFileAppend1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileAppend1.udiStatus = 1900 THEN
						udiStatus	:= 5064;	//File Open Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1901 THEN
						udiStatus	:= 5065;	//File Create Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1913 THEN
						udiStatus	:= 5066;	//Get File Info Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1903 THEN
						udiStatus	:= 5067;	//File Write Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1904 THEN
						udiStatus	:= 5068;	//File Close Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1914 THEN
						udiStatus	:= 5069;	//Directory Does Not Exist While Writing Alarm Log
					ELSE
						udiStatus	:= fbFileAppend1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActAppendLogWriteHistory:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				dtCurrDTTemp			:= tylocalAlm.In.dtCurrDT;
				fbFileAppend1.sFile		:= DT_TO_STRING(dtCurrDTTemp);
				fbFileAppend1.sFile		:= MID(fbFileAppend1.sFile , 10 , 4);
				fbFileAppend1.sFile		:= CONCAT('ALARM_' , fbFileAppend1.sFile);
				fbFileAppend1.sFile		:= CONCAT(fbFileAppend1.sFile , '.dat');
				
				fbFileAppend1.p_Src		:= ADR(a_sLogList[udiWriteLogCntr]);
				fbFileAppend1.udiLen	:= LEN(a_sLogList[udiWriteLogCntr]);
				
				fbFileAppend1(bEn := TRUE);
				fbFileWrite1(bEn := TRUE);
				
				IF (fbFileAppend1.udiStatus = 0) AND (udiWriteLogCntr >= udiLogCntr) AND fbFileWrite1.udiStatus = 0 THEN
					tylocalAlm.Out.eStatus	:= Done;
					
				ELSIF fbFileAppend1.udiStatus = 0 AND udiWriteLogCntr < udiLogCntr THEN
					udiWriteLogCntr	:= udiWriteLogCntr + 1;
					fbFileAppend1(bEn := FALSE);
					
				ELSIF fbFileWrite1.udiStatus > 0 AND fbFileWrite1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 5070;	//File Open Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 5071;	//File Create Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 5072;	//File Write Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 5073;	//File Close Error While Writing Alarm History
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 5074;	//Directory Does Not Exist While Writing Alarm History
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				
				ELSIF fbFileAppend1.udiStatus > 0 AND fbFileAppend1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileAppend1.udiStatus = 1900 THEN
						udiStatus	:= 5075;	//File Open Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1901 THEN
						udiStatus	:= 5076;	//File Create Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1913 THEN
						udiStatus	:= 5077;	//Get File Info Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1903 THEN
						udiStatus	:= 5078;	//File Write Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1904 THEN
						udiStatus	:= 5079;	//File Close Error While Writing Alarm Log
					ELSIF fbFileAppend1.udiStatus = 1914 THEN
						udiStatus	:= 5080;	//Directory Does Not Exist While Writing Alarm Log
					ELSE
						udiStatus	:= fbFileAppend1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActResetHistory:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
				
				tylocalAlm.Out.eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				memset(ADR(a_tyHistoryList) , 0 , SIZEOF(a_tyHistoryList));
				
				fbFileWrite1(bEn := TRUE);
				IF fbFileWrite1.udiStatus = 0 THEN
					tylocalAlm.Out.eStatus	:= Done;
				ELSIF fbFileWrite1.udiStatus < 65534 THEN
					tylocalAlm.Out.eStatus		:= Error;
					
					IF fbFileWrite1.udiStatus = 1900 THEN
						udiStatus	:= 5081;	//File Open Error While Resetting Alarm History
					ELSIF fbFileWrite1.udiStatus = 1901 THEN
						udiStatus	:= 5082;	//File Create Error While Resetting Alarm History
					ELSIF fbFileWrite1.udiStatus = 1903 THEN
						udiStatus	:= 5083;	//File Write Error While Resetting Alarm History
					ELSIF fbFileWrite1.udiStatus = 1904 THEN
						udiStatus	:= 5084;	//File Close Error While Resetting Alarm History
					ELSIF fbFileWrite1.udiStatus = 1914 THEN
						udiStatus	:= 5085;	//Directory Does Not Exist While Resetting Alarm History
					ELSE
						udiStatus	:= fbFileWrite1.udiStatus;
					END_IF
				END_IF
						
			END_IF
		
		AlarmActBGStartLog:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				bAlarmLog	:= TRUE;
				tylocalAlm.Out.eStatus		:= Done;
				
			END_IF
		
		AlarmActBGStopLog:
			IF tylocalAlm.Out.eStatus = Idle OR tylocalAlm.Out.eStatus = Busy THEN
		
				sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
				bAlarmLog	:= FALSE;
				tylocalAlm.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
		
	END_CASE
END_ACTION