
ACTION Act_InputConfig: 
	
	
	
	tylocalTLBuz.In.bStartup 					:= g_tyStartUp.bRun;
	tylocalTLBuz.In.bErr	 					:= g_tyAlm.bErr;
	tylocalTLBuz.In.bSeqStop    				:= g_tyOps.bStatusCycleStop;
	tylocalTLBuz.In.bStep						:= g_tyOps.bStatusStep;
	tylocalTLBuz.In.bOps						:= g_tyOps.bStatusRun;
	tylocalTLBuz.In.bStandby					:= g_tyOps.bStatusStop;
	tylocalTLBuz.In.bMuteBuz					:= g_tyUIOut.bUIMuteBuz;
	tylocalTLBuz.In.bUIManualMod				:= g_tyUIOut.bUIManualMod;

	
	//  -----------------------------------------  TLBuz 5.00.2  -----------------------------------------	//
	
	tylocalTLBuz.In.tTLChgRcpBlinkTm 			:= g_tyNtParamCurr.tyTLBuz.tTLChgRcpBlinkTm;
	tylocalTLBuz.In.tTLErrBlinkTm	 			:= g_tyNtParamCurr.tyTLBuz.tTLErrBlinkTm;
	tylocalTLBuz.In.tBuzErrOnTm		 			:= g_tyNtParamCurr.tyTLBuz.tBuzErrOnTm;
	tylocalTLBuz.In.tBuzErrRestTm	 			:= g_tyNtParamCurr.tyTLBuz.tBuzErrRestTm;
	tylocalTLBuz.In.usiBuzAlertOnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzErrOnCntr;	
	tylocalTLBuz.In.bBuzErrStopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzErrStopSeqEn;
	tylocalTLBuz.In.usiBuzErrStopSeqCntr 		:= g_tyNtParamCurr.tyTLBuz.usiBuzErrStopSeqCntr;
	
	tylocalTLBuz.In.tTLWarnBlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarnBlinkTm;
	tylocalTLBuz.In.tBuzWarnOnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarnOnTm;
	tylocalTLBuz.In.tBuzWarnRestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarnRestTm;
	tylocalTLBuz.In.usiBuzWarnOnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarnOnCntr;
	tylocalTLBuz.In.bBuzWarnStopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarnStopSeqEn;
	tylocalTLBuz.In.usiBuzWarnStopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarnStopSeqCntr;
	
	tylocalTLBuz.In.tTLWarn1BlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarn1BlinkTm;
	tylocalTLBuz.In.tBuzWarn1OnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn1OnTm;
	tylocalTLBuz.In.tBuzWarn1RestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn1RestTm;
	tylocalTLBuz.In.usiBuzWarn1OnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn1OnCntr;
	tylocalTLBuz.In.bBuzWarn1StopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarn1StopSeqEn;
	tylocalTLBuz.In.usiBuzWarn1StopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn1StopSeqCntr;
	
	tylocalTLBuz.In.tTLWarn2BlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarn2BlinkTm;
	tylocalTLBuz.In.tBuzWarn2OnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn2OnTm;
	tylocalTLBuz.In.tBuzWarn2RestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn2RestTm;
	tylocalTLBuz.In.usiBuzWarn2OnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn2OnCntr;
	tylocalTLBuz.In.bBuzWarn2StopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarn2StopSeqEn;
	tylocalTLBuz.In.usiBuzWarn2StopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn2StopSeqCntr;
	
	tylocalTLBuz.In.tTLWarn3BlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarn3BlinkTm;
	tylocalTLBuz.In.tBuzWarn3OnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn3OnTm;
	tylocalTLBuz.In.tBuzWarn3RestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn3RestTm;
	tylocalTLBuz.In.usiBuzWarn3OnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn3OnCntr;
	tylocalTLBuz.In.bBuzWarn3StopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarn3StopSeqEn;
	tylocalTLBuz.In.usiBuzWarn3StopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn3StopSeqCntr;
	
	tylocalTLBuz.In.tTLWarn4BlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarn4BlinkTm;
	tylocalTLBuz.In.tBuzWarn4OnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn4OnTm;
	tylocalTLBuz.In.tBuzWarn4RestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn4RestTm;
	tylocalTLBuz.In.usiBuzWarn4OnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn4OnCntr;
	tylocalTLBuz.In.bBuzWarn4StopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarn4StopSeqEn;
	tylocalTLBuz.In.usiBuzWarn4StopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn4StopSeqCntr;
	
	tylocalTLBuz.In.tTLWarn5BlinkTm  			:= g_tyNtParamCurr.tyTLBuz.tTLWarn5BlinkTm;
	tylocalTLBuz.In.tBuzWarn5OnTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn5OnTm;
	tylocalTLBuz.In.tBuzWarn5RestTm				:= g_tyNtParamCurr.tyTLBuz.tBuzWarn5RestTm;
	tylocalTLBuz.In.usiBuzWarn5OnCntr			:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn5OnCntr;
	tylocalTLBuz.In.bBuzWarn5StopSeqEn			:= g_tyNtParamCurr.tyTLBuz.bBuzWarn5StopSeqEn;
	tylocalTLBuz.In.usiBuzWarn5StopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzWarn5StopSeqCntr;
	
	tylocalTLBuz.In.tBuzAlertOnTm 				:= g_tyNtParamCurr.tyTLBuz.tBuzAlertOnTm;
	tylocalTLBuz.In.tBuzAlertRestTm 			:= g_tyNtParamCurr.tyTLBuz.tBuzAlertRestTm;
	tylocalTLBuz.In.usiBuzAlertOnCntr 			:= g_tyNtParamCurr.tyTLBuz.usiBuzAlertOnCntr;
	tylocalTLBuz.In.bBuzAlertStopSeqEn  		:= g_tyNtParamCurr.tyTLBuz.bBuzAlertStopSeqEn;
	tylocalTLBuz.In.usiBuzAlertStopSeqCntr		:= g_tyNtParamCurr.tyTLBuz.usiBuzAlertStopSeqCntr;
	
	tylocalTLBuz.In.tTLBlueBlinkTm				:= g_tyNtParamCurr.tyTLBuz.tTLBlueBlinkTm;
	tylocalTLBuz.In.tTLAmberBlinkTm				:= g_tyNtParamCurr.tyTLBuz.tTLAmberBlinkTm;
	tylocalTLBuz.In.tTLWhiteBlinkTm				:= g_tyNtParamCurr.tyTLBuz.tTLWhiteBlinkTm;
	tylocalTLBuz.In.tTLRedBlinkTm				:= g_tyNtParamCurr.tyTLBuz.tTLRedBlinkTm;
	tylocalTLBuz.In.tTLGreenBlinkTm				:= g_tyNtParamCurr.tyTLBuz.tTLGreenBlinkTm;
	
	//  ----------------------------------------------  ||  ---------------------------------------------	//
	tylocalTLBuz.In.eTLBuzMode					:= g_tyNtParamCurr.tyTLBuz.eTLBuzMode;
	tylocalTLBuz.In.bCoverSwitchSig				:= g_tyDInput.bCoverSWSig;

	
	tylocalTLBuz.In.bMcParamAGVComEn			:= g_tyMcParamCurr.bAGVComEn;
	tylocalTLBuz.In.eMcParamMagExMode			:= g_tyMcParamCurr.eMagExMode;

	tylocalTLBuz.In.bWarning[0]					:= g_tyAlm.bWarning OR (g_tyAlm.bInfo AND NOT (g_tyAlm.bInfoLF AND g_tyMcParamCurr.bLFBuzMute)AND NOT(g_tyOpsMagConv1.bMagFullInfo AND g_tyOpsMagConv1.bTLMuteBuzzer) );
	tylocalTLBuz.In.bWarningNoBuz[0]			:= (g_tyAlm.bInfoLF AND g_tyMcParamCurr.bLFBuzMute) OR (g_tyOpsMagConv1.bMagFullInfo AND g_tyOpsMagConv1.bTLMuteBuzzer );
	
	IF g_tyUIOut.bUIManualMod THEN
		tylocalTLBuz.In.eAct	:= g_tyUIOut.eMnlAct.eTLBuzAct;
	ELSE
		tylocalTLBuz.In.eAct	:= tylocalTLBuz.In.eAct;
	END_IF
		
END_ACTION
