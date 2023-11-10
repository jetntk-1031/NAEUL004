(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkDIMagPresentSen ACCESS p_DIMagPresentSen2;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMagAWPrep;
	p_bDis ACCESS p_McParamMagAWDis;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_diWidthAtHmPos ACCESS p_McParamMag2WidthAtHmPos;
	p_tyTuning ACCESS p_NtParamMagAW2Tuning;
	p_diJogVelInUMPS ACCESS p_UIMnlMagAW2JogSpd;
	p_diEngageVelInUMPS ACCESS p_NtParamMagAW2EngageSpdInUMPS;
	p_diMovePosInUM ACCESS p_UIMnlMagAW2TargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlMagAW2StepSize;
	p_diMoveAcc ACCESS p_NtParamMagAW2Acc;
	p_diMoveDec ACCESS p_NtParamMagAW2Dec;
	p_diMinWidthInUM ACCESS p_NtParamProdRcpMinWidth;
	p_diMaxWidthInUM ACCESS p_NtParamProdRcpMaxWidth;
	p_diWidthOffsetInUM ACCESS p_NtParamMag2WidthOffset;
	p_bGearEngaged ACCESS p_DIMag2WallEngageRS;
	p_bDir ACCESS p_NtParamMagAW2Dir;
	p_bDirBl ACCESS p_NtParamMagAW2DirBl;
	p_usiNode ACCESS p_NtParamMagAW2Node;
	p_sDevice ACCESS p_NtParamMagAW2Device;
	p_sProgNm ACCESS p_NtParamMagAW2ProgNm;
	p_diMoveBacklashDistInUM ACCESS p_NtParamMagAW2MovBlDistInUM;
	p_diPitchInUM ACCESS p_NtParamMagAW2PitchInUM;
	p_tyParamInHm ACCESS p_NtParamMagAW2ParamInHm;
	p_tyParamInConvert ACCESS p_NtParamMagAW2ParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamMagAW2MotorType;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	(* Always Change If Project Change *)
	
END_ACTION
