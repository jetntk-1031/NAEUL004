(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_diLinkProdSelWidth ACCESS p_ProdRcpCurrRcp1Width; 
	p_diLinkPshrOffset ACCESS p_ProdRcpCurrRcp1PshrPulerOffset;
	p_diLinkMnlGoWidth ACCESS p_UIMnlAWPushOrPullerGoWidth;
	p_bLinkSafetyRelay ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bPrep ACCESS p_NtParamAWPushPulPrep;
	p_bDis ACCESS p_McParamAWPusherDis;
	p_bOps ACCESS p_OpsStatusRun;
	p_diWidthAtHmPos ACCESS p_McParamAWPusherAtHmPos;
	p_tyTuning ACCESS p_NtParamAWPushPulTuning;
	p_diJogVelInUMPS ACCESS p_UIMnlAWPushOrPullerJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlAWPushOrPullerTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlAWPushOrPullerStepSize;
	p_diMoveAcc ACCESS p_NtParamAWPushPulAcc;
	p_diMoveDec ACCESS p_NtParamAWPushPulDec;
	p_diMinWidthInUM ACCESS p_NtParamProdRcpMinWidth;
	p_diMaxWidthInUM ACCESS p_NtParamProdRcpMaxWidth;
	p_diWidthOffsetInUM ACCESS p_NtParamPushPulAWidthOffset;
	p_bInletSensor ACCESS p_DIConvLftSen;
	p_bOutletSensor ACCESS p_DIConvRgtSen;
	p_bDir ACCESS p_NtParamAWPushPulDir;
	p_bDirBl ACCESS p_NtParamAWPushPulDirBl;
	p_usiNode ACCESS p_NtParamAWPushPulNode;
	p_sDevice ACCESS p_NtParamAWPushPulDevice;
	p_sProgNm ACCESS p_NtParamAWPushPulProgNm;
	p_diMoveBacklashDistInUM ACCESS p_NtParamAWPushPulMovBlDistInUM;
	p_diPitchInUM ACCESS p_NtParamAWPushPulPitchInUM;
	p_tyParamInHm ACCESS p_NtParamAWPushPulParamInHm;
	p_tyParamInConvert ACCESS p_NtParamAWPushPulParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamAWPushPulMotorType;

	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bOutletShutterCloseRS2 ACCESS p_DIOutShutterCloseRS2;
	p_bOutletShutterCloseRS3 ACCESS p_DIOutShutterCloseRS3;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
	p_bInShutterDis ACCESS p_McParamInShutterDis;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	
	p_bPusherRetSen ACCESS p_DIPusherRetRS;
	p_bPusherExtSen ACCESS p_DIPusherExtRS;
	(* Always Change If Project Change *)
	
END_ACTION
