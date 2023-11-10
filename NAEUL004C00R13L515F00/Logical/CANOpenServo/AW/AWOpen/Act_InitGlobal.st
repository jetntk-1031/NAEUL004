(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bLinkSafetyRelay ACCESS p_DISafetyRlySig;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamAWPrep;
	p_bDis ACCESS p_McParamAWDis;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_diWidthAtHmPos ACCESS p_McParamWidthAtHmPos;
	p_tyTuning ACCESS p_NtParamAWTuning;
	p_diJogVelInUMPS ACCESS p_UIMnlAWJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlAWTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlAWStepSize;
	p_diMoveAcc ACCESS p_NtParamAWAcc;
	p_diMoveDec ACCESS p_NtParamAWDec;
	p_diMinWidthInUM ACCESS p_NtParamProdRcpMinWidth;
	p_diMaxWidthInUM ACCESS p_NtParamProdRcpMaxWidth;
	p_diWidthOffsetInUM ACCESS p_NtParamWidthOffset;
	p_bInletSensor ACCESS p_DIConvLftSen;
	p_bOutletSensor ACCESS p_DIConvRgtSen;
	p_bClearSensor ACCESS p_DIConvClrSen;
	p_bMiddleSensor ACCESS p_DIConvMidSen;
	p_bDir ACCESS p_NtParamAWDir;
	p_bDirBl ACCESS p_NtParamAWDirBl;
	p_usiNode ACCESS p_NtParamAWNode;
	p_sDevice ACCESS p_NtParamAWDevice;
	p_sProgNm ACCESS p_NtParamAWProgNm;
	p_diMoveBacklashDistInUM ACCESS p_NtParamAWMovBlDistInUM;
	p_diPitchInUM ACCESS p_NtParamAWPitchInUM;
	p_tyParamInHm ACCESS p_NtParamAWParamInHm;
	p_tyParamInConvert ACCESS p_NtParamAWParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamAWMotorType;
	
	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bOutletShutterCloseRS2 ACCESS p_DIOutShutterCloseRS2;
	p_bOutletShutterCloseRS3 ACCESS p_DIOutShutterCloseRS3;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
	p_bInShutterDis ACCESS p_McParamInShutterDis;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;

	p_bPusherRetSen ACCESS p_DIPusherRetRS;
	p_bPusherExtSen ACCESS p_DIPusherExtRS;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	//follower action link to rcp1 but can use with smeama
	(* Always Change If Project Change *)
	
END_ACTION
