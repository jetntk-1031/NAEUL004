(** 2019-04-26 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag2ConvPrep;
//	p_eLinkOpsMagULBufferAct ACCESS p_OpsMagUL2BufferAct;
	p_eLinkOpsMagConvULBufferAct ACCESS p_OpsMagConvUL2BufferAct;
	p_eLinkUIBufferAct ACCESS p_UIBuffer2Act;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_eLinkOpsLifMagULBufferAct ACCESS p_OpsLifMagULBufferAct2;
	
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bLinkMcParamProdSelTopToBtm ACCESS p_ProdRcpCurrRcp2TopToBtm;
	p_bLinkPresentSen1 ACCESS p_DIMagPresentSen2;
	p_bLinkPresentSen2 ACCESS p_DIMagConvEntSen2;
	p_bLinkProjLifter2Prep ACCESS p_NtParamProjLifter2Prep;
	p_bLinkOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sFileName ACCESS p_NtParamBffr2FileNm;
	p_bManual ACCESS p_UIMnlMod;
	p_dtCurrDT ACCESS p_TimeCurrDT;

	p_diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag2Slt1Pos;
//	p_diLifterCurrPosInUM ACCESS p_LifterBtmActualPos;
	p_bGdBrdIn ACCESS p_PshrConvGdBrd;
	p_bNxtLoadSeq ACCESS p_NtParamBffr2NxtLoadSeq;
//	p_bMagPresentSensor ACCESS p_DIMagPresentSen2;
	p_sCurrRcpNm ACCESS p_ProdRcpCurrRcp2Nm;
	p_sProgNm ACCESS p_NtParamBffr2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	
	//Siemens Req
	p_bOpsMagConvULRlsMagAllw ACCESS p_OpsMagConvUL2RlsMagAllw;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv2; //Siemens Req
	
	p_bNtParamAutoRcpF1ArbitraryType ACCESS p_NtParamAutoRcpF1ArbitraryType;
	(* Always Change If Project Change *)
	
END_ACTION
