(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_diLinkSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;

//	p_bLinkLifterSafetySen1 ACCESS p_DILifterSafetySen1;
//	p_bLinkLifterSafetySen2 ACCESS p_DILifterSafetySen2;
//	p_bLinkOpsInitULDStepInitDone ACCESS p_OpsInitULDStepInitDone;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_bEn ACCESS p_NtParamProjLifter2Prep;
//	p_diASltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	p_diASlt1Pos ACCESS p_MagRcpCurrRcpMag1Slt1Pos;
	p_diBSlt1Pos ACCESS p_MagRcpCurrRcpMag2Slt1Pos;
	p_diCSlt1Pos ACCESS p_MagRcpCurrRcpMag3Slt1Pos;
	p_diGPos ACCESS p_McParamLifterTopPos2;
	p_diHPos ACCESS p_McParamLifterBtmPos2;
//	p_diBPos ACCESS p_McParamLifterTopPos;
	p_tyTuning ACCESS p_NtParamLifter2Tuning;
	p_diJogVelInUMPS ACCESS p_UIMnlLifter2JogSpd;
	p_diMovePosInUM ACCESS p_UIMnlLifter2TargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlLifter2StepSize;
	p_diMoveAcc ACCESS p_NtParamLifter2Acc;
	p_diMoveDec ACCESS p_NtParamLifter2Dec;
	p_bDir ACCESS p_NtParamLifter2Dir;
	p_bInterruptSensor3 ACCESS p_DIOutMagConv2EntSen;	//**** lifter 1 also 
	p_bInterruptSensor4 ACCESS p_DIConvClrSen;
	p_usiNode ACCESS p_NtParamLifter2Node;
	p_sDevice ACCESS p_NtParamLifter2Device;
	p_sProgNm ACCESS p_NtParamLifter2ProgNm;
	p_tyParamInHm ACCESS p_NtParamLifter2ParamInHm;
	p_tyParamInConvert ACCESS p_NtParamLifter2ParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamLifter2MotorType;
	(* Always Change If Project Change *)
	
END_ACTION
