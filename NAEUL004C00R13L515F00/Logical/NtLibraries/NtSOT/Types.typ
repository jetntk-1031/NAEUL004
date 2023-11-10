
TYPE
	eAIVPos : 
		(
		Loader := 0,
		Unloader := 1,
		Invalid := 2
		);
END_TYPE

(**)

TYPE
	eSOTStat : 
		( (*State*)
		SOTStatOppNotRdyNCurrNotRdy, (*Opposite Not Ready & Current Machine Not Ready*)
		SOTStatOppRdyNCurrNotRdy, (*Opposite Ready & Current Machine Not Ready*)
		SOTStatOppNotRdyNCurrRdy, (*Opposite Not Ready & Current Machine Ready*)
		SOTStatOppRdyNCurrRdy, (*Opposite Ready & Current Machine Ready*)
		SOTStatTransportStart, (*Transport Start*)
		SOTStatTransportIdle, (*Transport Idle*)
		SOTStatTransporting, (*Transporting*)
		SOTStatOppTransportFinished, (*Opposite Transport Finished*)
		SOTStatCurrTransportFinished, (*Current Machine Transport Finished*)
		SOTStatTransportDone (*Transport Done*)
		);
END_TYPE

(**)

TYPE
	tySOTUSInternal : 	STRUCT  (*Local Variables*)
		usiStep : USINT;
		fbSOTMagSeq : fbSOTMagSeq;
		fbSOTTransportIdle : fbSOTTransportIdle;
		fbSOTTransporting : fbSOTUSTransporting;
		fbDlyTM : TON;
	END_STRUCT;
	tySOTDSInternal : 	STRUCT  (*Local Variables*)
		usiStep : USINT;
		fbSOTMagSeq : fbSOTMagSeq;
		fbSOTTransporting1 : fbSOTDSTransporting;
	END_STRUCT;
	tySOTMagSeqInternal : 	STRUCT  (*Local Variables*)
		eStat : eSOTStat; (*State*)
	END_STRUCT;
	tySOTTransportIdleInternal : 	STRUCT  (*Local Variables*)
		eStat : eSOTStat; (*State*)
		fbTO : TON;
	END_STRUCT;
	tySOTTransportingInternal : 	STRUCT  (*Local Variables*)
		eStat : eSOTStat; (*State*)
		fbTO : TON;
		fbRstDlyTm : TON;
	END_STRUCT;
	tySOTSigInChkInternal : 	STRUCT  (*Local Variables*)
		bSigInValid : BOOL; (*Input Signal Valid*)
		bNomSigOld : BOOL; (*Normal Input Signal Old*)
		fbSigInChkTm : TON; (*Signal In Check Time*)
	END_STRUCT;
END_TYPE
