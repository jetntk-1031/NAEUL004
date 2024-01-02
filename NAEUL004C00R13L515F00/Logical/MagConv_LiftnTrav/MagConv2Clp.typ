(*2019-10-30*)
(**)
(*Action*)

TYPE
	eMagConv2ClpAction : 
		(
		MagConv2ClpActIdle,
		MagConv2ClpActInit,
		MagConv2ClpActInitStopClp,
		MagConv2ClpActInitClpStop,
		MagConv2ClpActEnt,
		MagConv2ClpActEntStopClp,
		MagConv2ClpActEntClpStop,
		MagConv2ClpActPreExit,
		MagConv2ClpActPreExitClpr,
		MagConv2ClpActPreExitClpr1,
		MagConv2ClpActExit,
		MagConv2ClpActExit1,
		MagConv2ClpActExitClpr,
		MagConv2ClpActExit1Clpr,
		MagConv2ClpActFixClprSetAll,
		MagConv2ClpActFixClprRstAll,
		MagConv2ClpActFixClprSetClamp,
		MagConv2ClpActFixClprSetUnclamp,
		MagConv2ClpActFixClprClamp,
		MagConv2ClpActFixClprUnclamp,
		MagConv2ClpActRmtClprSetAll,
		MagConv2ClpActRmtClprRstAll,
		MagConv2ClpActRmtClprSetClamp,
		MagConv2ClpActRmtClprSetUnclamp,
		MagConv2ClpActRmtClprClamp,
		MagConv2ClpActRmtClprUnclamp,
		MagConv2ClpActStop,
		MagConv2ClpActStopClpr,
		MagConv2ClpActSetMtrSigOnOrLToR,
		MagConv2ClpActSetMtrDirOrRToL,
		MagConv2ClpActRstMtrSigOnOrLToR,
		MagConv2ClpActRstMtrDirOrRToL,
		MagConv2ClpActSetMtrAll,
		MagConv2ClpActRstMtrAll
		);
END_TYPE

(**)

TYPE
	tyMagConv2Clp : 	STRUCT 
		In : tyMagConv2ClpIn1;
		Out : tyMagConv2ClpOut1;
	END_STRUCT;
	tyMagConv2ClpIn1 : 	STRUCT 
		bLinkDISafetyRlySig : BOOL;
		bLinkMagSmallSen : BOOL;
		bLinkMagLargeSen : BOOL;
		bLinkFixClprUnClampSen : BOOL;
		bLinkFixClprClampSen : BOOL;
		bLinkRmtClprUnclampSen : BOOL;
		bLinkFixClprMagDetectSen : BOOL;
		bLinkFixClprMagDetectSenPrep : BOOL;
		bLinkMagOpsStepMagFullExit : BOOL;
		bLinkDIMagEntSen : BOOL;
		bWidthChkSen : BOOL;
		bWidthChkInterrupt : BOOL;
		bLinkNtParamMagModelAutoVerify : BOOL;
		udiRstErr : UDINT;
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
		bManual : BOOL;
		bOnDirMod : BOOL;
		diInitTm : DINT;
		tMtrOffDlyTm : TIME;
		diTxInTimeOut : DINT;
		diTxOutTimeOut : DINT;
		eDirection : eConvDir;
		sProgNm : STRING[15];
		tClprClampTO : TIME;
		tClprUnclampTO : TIME;
		bLeftSen : BOOL;
		bRightSen : BOOL;
		bFixClprUnclampSen : BOOL;
		bRmtClprUnclampSen : BOOL;
		bFixClprClampSen : BOOL;
		bRmtClprClampSen : BOOL;
		bFixClprClampSafetySen : BOOL;
		bFixClprUnclampSafetySen : BOOL;
		bRmtClprClampSafetySen : BOOL;
		bRmtClprUnclampSafetySen : BOOL;
		bWidthChkPrep : BOOL;
	END_STRUCT;
	tyMagConv2ClpOut1 : 	STRUCT 
		eStat : eMagConv2ClpAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bHvMag : BOOL;
		bMtrSigOnOrLToR : BOOL;
		bMtrDirOrRToL : BOOL;
		bFixClprClampCtrl : BOOL;
		bRmtClprClampCtrl : BOOL;
		bClprTwoOutputControl : BOOL;
		bRmtClprUnClampCtrl : BOOL;
		bFixClprUnClampCtrl : BOOL;
	END_STRUCT;
END_TYPE
