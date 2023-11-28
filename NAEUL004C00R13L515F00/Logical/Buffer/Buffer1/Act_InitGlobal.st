(** 2019-04-26 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag1ConvPrep;
//	p_eLinkOpsMagULBufferAct ACCESS p_OpsMagUL1BufferAct;
	p_eLinkOpsMagConvULBufferAct ACCESS p_OpsMagConvUL1BufferAct;
	p_eLinkUIBufferAct ACCESS p_UIBuffer1Act;
	p_bLinkOpsMagStepBffrLoad ACCESS p_OpsMagConvUL1StepBffrLoad;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_eLinkOpsLifMagULBufferAct ACCESS p_OpsLifMagULBufferAct1;
	
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bLinkMcParamProdSelTopToBtm ACCESS p_ProdRcpCurrRcp2TopToBtm;
	p_bLinkPresentSen1 ACCESS p_DIMagPresentSen1;
	p_bLinkPresentSen2 ACCESS p_DIMagConvEntSen1;
	p_bLinkOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sFileName ACCESS p_NtParamBffr1FileNm;
	p_bManual ACCESS p_UIMnlMod;
	p_dtCurrDT ACCESS p_TimeCurrDT;
//	p_diMinSlt ACCESS p_ProdRcpCurrRcp2MinSltValue;
//	p_diMaxSlt ACCESS p_ProdRcpCurrRcp2MaxSltValue;
//	p_diPitch ACCESS p_ProdRcpCurrRcp2Pitch;
	p_diBffrTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diLifterBtmPosInUM ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
	p_diLifterCurrPosInUM ACCESS p_LifterBtmActualPos;
	p_bGdBrdIn ACCESS p_PshrConvGdBrd;
	p_bNxtLoadSeq ACCESS p_NtParamBffr1NxtLoadSeq;
//	p_bMagPresentSensor ACCESS p_DIMagPresentSen1;
	p_sCurrRcpNm ACCESS p_ProdRcpCurrRcp2Nm;
	p_sProgNm ACCESS p_NtParamBffr1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;

	//Siemens Req
	p_bOpsMagConvULRlsMagAllw ACCESS p_OpsMagConvUL1RlsMagAllw;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_tyResponseFromMES ACCESS p_TagFromMesMagConv1; 
	
	p_bNtParamAutoRcpF1ArbitraryType ACCESS p_NtParamAutoRcpF1ArbitraryType;
	(* Always Change If Project Change *)
	
END_ACTION
