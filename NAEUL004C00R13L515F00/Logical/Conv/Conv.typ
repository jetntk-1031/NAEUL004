(*2019-06-17*)
(**)
(*Action*)

TYPE
	eConvAction : 
		(
		ConvActIdle,
		ConvActInit,
		ConvActInitRev,
		ConvActInitPshr,
		ConvActInitPuller,
		ConvActInitRej,
		ConvActInitInsp,
		ConvActEnt,
		ConvActEntToInOff,
		ConvActEntRev,
		ConvActRev,
		ConvActRevImmedStart,
		ConvActEntPuller,
		ConvActEntRej,
		ConvActEntInsp,
		ConvActPreExit,
		ConvActRejResume,
		ConvActExit,
		ConvActExit1,
		ConvActExitPshr,
		ConvActExit1Pshr,
		ConvActPshrSetAll,
		ConvActPshrRstAll,
		ConvActPshrSetExt,
		ConvActPshrSetRet,
		ConvActPshrExt,
		ConvActPshrRet,
		ConvActPullerSetAll,
		ConvActPullerRstAll,
		ConvActPullerSetExt,
		ConvActPullerSetRet,
		ConvActPullerExt,
		ConvActPullerRet,
		ConvActRotSetAll,
		ConvActRotRstAll,
		ConvActRotSetHome,
		ConvActRotSetRmt,
		ConvActRotHome,
		ConvActRotRemote,
		ConvActRejSetAll,
		ConvActRejRstAll,
		ConvActRejSetUp,
		ConvActRejSetDown,
		ConvActRejUp,
		ConvActRejDown,
		ConvActStop,
		ConvActStopPshr,
		ConvActStopPuller,
		ConvActStopRej,
		ConvActSetMtrSigOnOrLToR,
		ConvActSetMtrDirOrRToL,
		ConvActRstMtrSigOnOrLToR,
		ConvActRstMtrDirOrRToL,
		ConvActSetMtrAll,
		ConvActRstMtrAll
		);
END_TYPE

(**)

TYPE
	eConvDir : 
		(
		ConvDirLToR,
		ConvDirRToL,
		ConvDirLToL,
		ConvDirRToR
		);
END_TYPE

(**)

TYPE
	tyPshrConv : 	STRUCT 
		In : tyPshrConvIn1;
		Out : tyPshrConvOut1;
	END_STRUCT;
	tyPshrConvIn1 : 	STRUCT 
		eAct : eConvAction;
		udiRstErr : UDINT;
		bPrep : BOOL;
		bEn : BOOL;
		bDis : BOOL;
		bManual : BOOL;
		bLongBrdPrep : BOOL;
		bLongBrdEn : BOOL;
		bOnDirMod : BOOL;
		diInitTm : DINT;
		diRevDlyTm : DINT;
		tMtrOffDlyTm : TIME;
		diTxInTimeOut : DINT;
		diTxOutTimeOut : DINT;
		eDirection : eConvDir;
		bGdBrdInit : BOOL;
		bGdBrdEnt : BOOL;
		sProgNm : STRING[15];
		tPshrExtTO : TIME;
		tPshrRetTO : TIME;
		tPullerExtTO : TIME;
		tPullerRetTO : TIME;
		tRotHomeTO : TIME;
		tRotRemoteTO : TIME;
		tRejectUpTO : TIME;
		tRejectDownTO : TIME;
		bNtSettingsLoadDone : BOOL;
		bLeftSen : BOOL;
		bRightSen : BOOL;
		bMiddleSen : BOOL;
		bPullerChkSen : BOOL;
		bPshrExtSen : BOOL;
		bPshrRetSen : BOOL;
		bPshrExtSafetySen : BOOL;
		bPshrRetSafetySen : BOOL;
		bPullerExtSen : BOOL;
		bPullerRetSen : BOOL;
		bPullerExtSafetySen : BOOL;
		bPullerRetSafetySen : BOOL;
		bRotHomeSen : BOOL;
		bRotRemoteSen : BOOL;
		bRotHomeSafetySen : BOOL;
		bRotRemoteSafetySen : BOOL;
		bRejectUpSen : BOOL;
		bRejectDownSen : BOOL;
		bRejectUpSafetySen : BOOL;
		bRejectDownSafetySen : BOOL;
		bSelfTest : BOOL;
		bNtParamAutoRcpPrep : BOOL;
		bMcParamAutoRcpDis : BOOL;
		bLinkUIBypsInitConv : BOOL;
		bLinkDISafetyRlySig : BOOL;
		bLinkDIRgtSen : BOOL;
		bLinkDIClrSen : BOOL;
		usiLinkMcParamProdSelMcMod : USINT;
		eLinkOpsTravLifPosGo : eTravLifULPos;
		eLinkMcParamUSCommAMod : eMcSetCommMod;
		eLinkMcParamUSCommBMod : eMcSetCommMod;
		bLinkPshrRetSen : BOOL;
		bLinkPshrRetSlwSen : BOOL;
	END_STRUCT;
	tyPshrConvOut1 : 	STRUCT 
		eStat : eConvAction;
		eStatus : eFBStatus;
		sStatTxt : STRING[200];
		tyAlmData : tyAlmDat;
		bHvBrd : BOOL;
		bRejHvBrd : BOOL;
		bInspHvBrd : BOOL;
		bGdBrd : BOOL;
		bLmtSenActivated : BOOL;
		bMtrSigOnOrLToR : BOOL;
		bMtrDirOrRToL : BOOL;
		bPshrExtCtrl : BOOL;
		bPshrRetCtrl : BOOL;
		bPshrTwoOutputControl : BOOL := FALSE;
		bPshrExtended : BOOL;
		bPshrRetracted : BOOL;
		bPullerExtCtrl : BOOL;
		bPullerRetCtrl : BOOL;
		bPullerTwoOutputControl : BOOL := TRUE;
		bPullerExtended : BOOL;
		bPullerRetracted : BOOL;
		bRotRemoteCtrl : BOOL;
		bRotTwoOutputControl : BOOL := FALSE;
		bRotAtRemote : BOOL;
		bRotAtHome : BOOL;
		bRejectUpCtrl : BOOL;
		bRejectDownCtrl : BOOL;
		bRejectTwoOutputControl : BOOL := TRUE;
		bRejectAtUp : BOOL;
		bRejectAtDown : BOOL;
		bPshrRetAllwTraverse : BOOL;
	END_STRUCT;
END_TYPE
