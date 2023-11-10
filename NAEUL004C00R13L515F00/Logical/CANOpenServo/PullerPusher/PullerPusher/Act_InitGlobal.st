(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkPullConvPullerExtCtrl ACCESS p_PshrConvPshrExtCtrl;
	p_bLinkPullConvPullerRetCtrl ACCESS p_PshrConvPshrRetCtrl;
	p_bLinkDIPullerExtRS ACCESS p_DIPusherExtRS;
	p_bLinkDIPullerRetRS ACCESS p_DIPusherRetRS;
	p_bLinkDIPullerExtSlwRS ACCESS p_DIPusherExtSlwSen;
	p_bLinkDIPullerRetSlwRS ACCESS p_DIPusherRetSlwSen;
	p_dintLinkPullerRetSpd ACCESS p_ProdRcpCurrRcp1MtrPshrExtSpd;
	p_dintLinkPullerRetTrq ACCESS p_ProdRcpCurrRcp1MtrPshrExtTorq;
	
	p_diLinkProdRcpTrq ACCESS p_ProdRcpCurrRcp1MtrPshrExtTorq;
	p_tyLinkTorqParam ACCESS p_NtParamPPTorqParam; 
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjServoPullPusherPrep;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_tyTuning ACCESS p_NtParamPPTuning;
//	p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlPPTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlPPStepSize;
	p_diMoveAcc ACCESS p_NtParamPPAcc;
	p_diMoveDec ACCESS p_NtParamPPDec;
	p_diWidthOffsetInUM ACCESS p_NtParamWidthOffset;
	p_bDir ACCESS p_NtParamPPDir;
	p_bDirBl ACCESS p_NtParamPPDirBl;
	p_usiNode ACCESS p_NtParamPPNode;
	p_sDevice ACCESS p_NtParamPPDevice;
	p_sProgNm ACCESS p_NtParamPPProgNm;
	p_diMoveBacklashDistInUM ACCESS p_NtParamPPMovBlDistInUM;
	p_diPitchInUM ACCESS p_NtParamPPPitchInUM;
	p_tyParamInHm ACCESS p_NtParamPPParamInHm;
	p_tyParamInConvert ACCESS p_NtParamPPParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamPPMotorType;
	
	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	p_bMagWidthChkSen ACCESS p_DIMagWidthChkSen;

	(* Always Change If Project Change *)
	
END_ACTION
