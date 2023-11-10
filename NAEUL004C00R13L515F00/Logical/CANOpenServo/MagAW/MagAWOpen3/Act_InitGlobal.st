(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkNtParamProjMag ACCESS p_NtParamProjMag;
	p_bLinkNtParamProjMagAWPrep ACCESS p_NtParamProjMagAWPrep;
	
	p_bLinkDIMagPresentSen ACCESS p_DIMagPresentSen3;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bDis ACCESS p_McParamMagAWDis;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_diWidthAtHmPos ACCESS p_McParamMag3WidthAtHmPos;
	p_tyTuning ACCESS p_NtParamMagAW3Tuning;
	p_diJogVelInUMPS ACCESS p_UIMnlMagAW3JogSpd;
	p_diEngageVelInUMPS ACCESS p_NtParamMagAW3EngageSpdInUMPS;
	p_diMovePosInUM ACCESS p_UIMnlMagAW3TargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlMagAW3StepSize;
	p_diMoveAcc ACCESS p_NtParamMagAW3Acc;
	p_diMoveDec ACCESS p_NtParamMagAW3Dec;
	p_diMinWidthInUM ACCESS p_NtParamProdRcpMinWidth;
	p_diMaxWidthInUM ACCESS p_NtParamProdRcpMaxWidth;
	p_diWidthOffsetInUM ACCESS p_NtParamMag3WidthOffset;
	p_bGearEngaged ACCESS p_DIMag3WallEngageRS;
	p_bDir ACCESS p_NtParamMagAW3Dir;
	p_bDirBl ACCESS p_NtParamMagAW3DirBl;
	p_usiNode ACCESS p_NtParamMagAW3Node;
	p_sDevice ACCESS p_NtParamMagAW3Device;
	p_sProgNm ACCESS p_NtParamMagAW3ProgNm;
	p_diMoveBacklashDistInUM ACCESS p_NtParamMagAW3MovBlDistInUM;
	p_diPitchInUM ACCESS p_NtParamMagAW3PitchInUM;
	p_tyParamInHm ACCESS p_NtParamMagAW3ParamInHm;
	p_tyParamInConvert ACCESS p_NtParamMagAW3ParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamMagAW3MotorType;
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep ;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	(* Always Change If Project Change *)
	
END_ACTION
