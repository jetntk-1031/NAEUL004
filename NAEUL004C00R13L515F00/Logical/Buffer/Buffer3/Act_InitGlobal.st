(** 2019-04-26 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag3ConvPrep;
//	p_eLinkOpsMagULBufferAct ACCESS p_OpsMagUL3BufferAct;
	p_eLinkOpsMagConvULBufferAct ACCESS p_OpsMagConvUL3BufferAct;
	p_eLinkUIBufferAct ACCESS p_UIBuffer3Act;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_eLinkOpsLifMagULBufferAct ACCESS p_OpsLifMagULBufferAct3;
	
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bLinkMcParamProdSelTopToBtm ACCESS p_ProdRcpCurrRcp2TopToBtm;
	p_bLinkPresentSen1 ACCESS p_DIMagPresentSen3;
	p_bLinkPresentSen2 ACCESS p_DIMagConvEntSen3;
	p_bLinkOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sFileName ACCESS p_NtParamBffr3FileNm;
	p_bManual ACCESS p_UIMnlMod;
	p_dtCurrDT ACCESS p_TimeCurrDT;

	p_diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag3Slt1Pos;
	p_diLifterCurrPosInUM ACCESS p_LifterBtmActualPos;
	p_bGdBrdIn ACCESS p_PshrConvGdBrd;
	p_bNxtLoadSeq ACCESS p_NtParamBffr3NxtLoadSeq;
//	p_bMagPresentSensor ACCESS p_DIMagPresentSen3;
	p_sCurrRcpNm ACCESS p_ProdRcpCurrRcp2Nm;
	p_sProgNm ACCESS p_NtParamBffr3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	
	//Siemens Req
	p_bOpsMagConvULRlsMagAllw ACCESS p_OpsMagConvUL3RlsMagAllw;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv3; //Siemens Req
	
	p_bNtParamAutoRcpF1ArbitraryType ACCESS p_NtParamAutoRcpF1ArbitraryType;
	(* Always Change If Project Change *)
	
END_ACTION
