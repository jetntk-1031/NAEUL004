(*2020-02-19*)
(**)
(*Action*)

TYPE
	eTLBuzAction : 
		(
		TLBuzActIdle,
		TLBuzActSetGreen,
		TLBuzActSetWhite,
		TLBuzActSetRed,
		TLBuzActSetAmber,
		TLBuzActSetBlue,
		TLBuzActSetBuz,
		TLBuzActRstGreen,
		TLBuzActRstWhite,
		TLBuzActRstRed,
		TLBuzActRstAmber,
		TLBuzActRstBlue,
		TLBuzActRstBuz,
		TLBuzActSetAll,
		TLBuzActRstAll
		);
	eTLBuzMod : 
		(
		TLBuzModNutek,
		TLBuzModAptiv,
		TLBuzModMEK,
		TLBuzModBHTC,
		TLBuzModSiemens_2Colour
		);
	tyTLBuz : 	STRUCT 
		In : tyTLBuzIn1;
		Out : tyTLBuzOut1;
	END_STRUCT;
	tyTLBuzIn1 : 	STRUCT 
		eAct : eTLBuzAction; (*Tower Light Buzzer's Action*)
		bCoverSwitchSig : BOOL := FALSE; (*Cover Switch Signal*)
		bAOIErrSig : BOOL := FALSE; (*AOI Err Signal*)
		bAOIOriginSig : BOOL := FALSE; (*AOI Origin Signal*)
		bBuzAlertEn : BOOL := FALSE; (*Buzzer Alert Enable*)
		bTLBlueFlashEn : BOOL := FALSE; (*Tower Light Blue Flash Enable*)
		bTLAmberFlashEn : BOOL := FALSE; (*Tower Light Amber Flash Enable*)
		bTLWhiteFlashEn : BOOL := FALSE; (*Tower Light White Flash Enable*)
		bTLRedFlashEn : BOOL := FALSE; (*Tower Light Red Flash Enable*)
		bTLGreenFlashEn : BOOL := FALSE; (*Tower Light Green Flash Enable*)
		bUIManualMod : BOOL := FALSE; (*Manual Mode*)
		bStartup : BOOL := FALSE; (*Startup Mode*)
		bErr : BOOL := FALSE; (*Error Exist*)
		bErrNoBuz : BOOL := FALSE; (*Error Exist With No Buzzer*)
		bWarning : ARRAY[0..5]OF BOOL := [6(FALSE)]; (*Warning*)
		bWarningNoBuz : ARRAY[0..5]OF BOOL := [6(FALSE)]; (*Warning With No Buzzer*)
		bChgRcp : BOOL := FALSE; (*Change Recipe*)
		bSeqStop : BOOL := FALSE; (*Sequence Stop*)
		bStep : BOOL := FALSE; (*Step*)
		bOps : BOOL := FALSE; (*Operation Mode*)
		bStandby : BOOL := FALSE; (*Standby Mode*)
		bSimulation : BOOL := FALSE; (*Simulation Mode*)
		bMuteBuz : BOOL := FALSE; (*Mute Buzzer*)
		tTLChgRcpBlinkTm : TIME := T#200ms; (*Tower Light Change Recipe Blink Timer*)
		tTLErrBlinkTm : TIME := T#500ms; (*Tower Light Error Blink Timer*)
		tBuzErrOnTm : TIME := T#500ms; (*Buzzer Error On Timer*)
		tBuzErrRestTm : TIME := T#500ms; (*Buzzer Error Reset Timer*)
		usiBuzErrOnCntr : USINT := 3; (*Buzzer Error On Counter*)
		bBuzErrStopSeqEn : BOOL := FALSE; (*Buzzer Error Stop Sequence Timer Counter*)
		usiBuzErrStopSeqCntr : USINT := 3; (*Buzzer Error Stop Sequence Counter*)
		tTLWarnBlinkTm : ARRAY[0..5]OF TIME := [6(T#500ms)]; (*Tower Light Warning Blink Timer*)
		tBuzWarnOnTm : ARRAY[0..5]OF TIME := [6(T#500ms)]; (*Buzzer Warning On Timer*)
		tBuzWarnRestTm : ARRAY[0..5]OF TIME := [6(T#5s)]; (*Buzzer Warning Reset Timer*)
		usiBuzWarnOnCntr : ARRAY[0..5]OF USINT := [6(3)]; (*Buzzer Warning On Counter*)
		bBuzWarnStopSeqEn : ARRAY[0..5]OF BOOL := [6(FALSE)]; (*Buzzer Warning Stop Sequence Enable*)
		usiBuzWarnStopSeqCntr : ARRAY[0..5]OF USINT := [6(3)]; (*Buzzer Warning Stop Sequence Counter*)
		tTLWarn1BlinkTm : TIME := T#500ms;
		tBuzWarn1OnTm : TIME := T#500ms;
		tBuzWarn1RestTm : TIME := T#5s;
		usiBuzWarn1OnCntr : USINT := 3;
		bBuzWarn1StopSeqEn : BOOL := FALSE;
		usiBuzWarn1StopSeqCntr : USINT := 3;
		tTLWarn2BlinkTm : TIME := T#500ms;
		tBuzWarn2OnTm : TIME := T#500ms;
		tBuzWarn2RestTm : TIME := T#5s;
		usiBuzWarn2OnCntr : USINT := 3;
		bBuzWarn2StopSeqEn : BOOL := FALSE;
		usiBuzWarn2StopSeqCntr : USINT := 3;
		tTLWarn3BlinkTm : TIME := T#500ms;
		tBuzWarn3OnTm : TIME := T#500ms;
		tBuzWarn3RestTm : TIME := T#5s;
		usiBuzWarn3OnCntr : USINT := 3;
		bBuzWarn3StopSeqEn : BOOL := FALSE;
		usiBuzWarn3StopSeqCntr : USINT := 3;
		tTLWarn4BlinkTm : TIME := T#500ms;
		tBuzWarn4OnTm : TIME := T#500ms;
		tBuzWarn4RestTm : TIME := T#5s;
		usiBuzWarn4OnCntr : USINT := 3;
		bBuzWarn4StopSeqEn : BOOL := FALSE;
		usiBuzWarn4StopSeqCntr : USINT := 3;
		tTLWarn5BlinkTm : TIME := T#500ms;
		tBuzWarn5OnTm : TIME := T#500ms;
		tBuzWarn5RestTm : TIME := T#5s;
		usiBuzWarn5OnCntr : USINT := 3;
		bBuzWarn5StopSeqEn : BOOL := FALSE;
		usiBuzWarn5StopSeqCntr : USINT := 3;
		tBuzAlertOnTm : TIME := T#500ms; (*Buzzer Alert On Timer*)
		tBuzAlertRestTm : TIME := T#5s; (*Buzzer Alert Reset Timer*)
		usiBuzAlertOnCntr : USINT := 3; (*Buzzer Alert On Counter*)
		bBuzAlertStopSeqEn : BOOL := FALSE; (*Buzzer Alert Stop Sequence Enable*)
		usiBuzAlertStopSeqCntr : USINT := 3; (*Buzzer Alert Stop Sequence Counter*)
		tTLBlueBlinkTm : TIME := T#500ms; (*Tower Light Blue Blink Timer*)
		tTLAmberBlinkTm : TIME := T#500ms; (*Tower Light Amber Blink Timer*)
		tTLWhiteBlinkTm : TIME := T#500ms; (*Tower Light White Blink Timer*)
		tTLRedBlinkTm : TIME := T#500ms; (*Tower Light Red Blink Timer*)
		tTLGreenBlinkTm : TIME := T#500ms; (*Tower Light Green Blink Timer*)
		eTLBuzMode : eTLBuzMod := TLBuzModNutek; (*Tower Light Buzzer Mode*)
		bMcParamAGVComEn : BOOL;
		eMcParamMagExMode : eMcMagExchangeMode;
	END_STRUCT;
	tyTLBuzOut1 : 	STRUCT 
		eStat : eTLBuzAction := TLBuzActIdle; (*Tower Light Buzzer's State*)
		eStatus : eFBStatus := Idle; (*Tower Light Buzzer's Status*)
		sStatTxt : STRING[200] := ''; (*Tower Light Buzzer's State in Text*)
		bTLBlue : BOOL; (*Tower Light Blue*)
		bTLRed : BOOL; (*Tower Light Red*)
		bTLAmber : BOOL; (*Tower Light Amber*)
		bTLWhite : BOOL; (*Tower Light White*)
		bTLGreen : BOOL; (*Tower Light Green*)
		bBuzBeep : BOOL; (*Buzzer Beeping*)
	END_STRUCT;
END_TYPE
