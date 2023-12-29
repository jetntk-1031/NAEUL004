(** 2019-03-25 **)
ACTION Act_AlarmInfo1: 
	
	//Info
	
	tylocalMachine.Out.tyAlmData1.udiCode		:= udiStatus1;
	tylocalMachine.Out.tyAlmData1.eSeverity		:= AlmSeverityInfo;
	tylocalMachine.Out.tyAlmData1.udiRunTime	:= tylocalMachine.Out.tyAlmData1.udiRunTime + 1;
	g_tyAlmProgNm.sMachineProgNm		  		  := tylocalMachine.In.sProgNm;
//	//Get Info Message
//	IF tylocalMachine.Out.tyAlmData1.udiCode < 10000 OR tylocalMachine.Out.tyAlmData1.udiCode > 10099 THEN
//		tylocalMachine.Out.tyAlmData1.sAlmMsg	:= 'Unknown';
//		tylocalMachine.Out.tyAlmData1.sRcyMsg	:= 'Unknown';
//	ELSE
//		tylocalMachine.Out.tyAlmData1.sAlmMsg	:= a_tyAlmText[tylocalMachine.Out.tyAlmData1.udiCode].sAlmText;
//		tylocalMachine.Out.tyAlmData1.sRcyMsg	:= a_tyAlmText[tylocalMachine.Out.tyAlmData1.udiCode].sRcyText;
//	END_IF
		
END_ACTION
