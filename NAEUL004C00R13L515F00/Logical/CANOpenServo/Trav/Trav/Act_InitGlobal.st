(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bSimu ACCESS p_UISimuMod;
	
	p_bLinkOpsTravLifULInDSPos ACCESS p_OpsTravLifULInDSPos;
	p_bLinkNtParamProjUsFixToFixRail ACCESS p_NtParamProjUsFixToFixRail;
	p_diLinkFixtoFixPosIn ACCESS p_McParamTravInletFixtoFixPos;
	p_diLinkMcParamTravPosB ACCESS p_McParamTravPosB;
	p_tyProdRcpCurrRcp ACCESS p_ProdRcpCurrRcp1;
	p_bLinkSafetyRelay ACCESS p_DISafetyRlySig;
	
	p_diLinkDPos ACCESS p_MagRcpCurrRcpMag1TravPos;
	p_diLinkEPos ACCESS p_MagRcpCurrRcpMag2TravPos;
	p_diLinkFPos ACCESS p_MagRcpCurrRcpMag3TravPos;
	
	p_bLinkTravGotoChkPt ACCESS p_OpsTravLifULTravGotoChkPt;
	p_diLinkTravGotoChkPtDist1 ACCESS p_McParamMag1WidthChkDetDist;
	p_diLinkTravGotoChkPtDist2 ACCESS p_McParamMag2WidthChkDetDist;
	p_diLinkTravGotoChkPtDist3 ACCESS p_McParamMag3WidthChkDetDist;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bOps ACCESS p_OpsStatusRun;
	p_bManual ACCESS p_UIMnlMod;
	p_diAPos ACCESS p_McParamTravPosA;
//	p_diBPos ACCESS p_McParamTravPosB;
//	p_diDPos ACCESS p_MagRcpCurrRcpMag1TravPos;
//	p_diEPos ACCESS p_MagRcpCurrRcpMag2TravPos;
//	p_diFPos ACCESS p_MagRcpCurrRcpMag3TravPos;
	p_tyTuning ACCESS p_NtParamTravTuning;
	p_diJogVelInUMPS ACCESS p_UIMnlTravJogSpd;
	p_diMovePosInUM ACCESS p_UIMnlTravTargetPos;
	p_diMoveDistInUM ACCESS p_UIMnlTravStepSize;
	p_diMoveAcc ACCESS p_NtParamTravAcc;
	p_diMoveDec ACCESS p_NtParamTravDec;
	p_bDir ACCESS p_NtParamTravDir;
	p_usiNode ACCESS p_NtParamTravNode;
	p_sDevice ACCESS p_NtParamTravDevice;
	p_sProgNm ACCESS p_NtParamTravProgNm;
	p_tyParamInHm ACCESS p_NtParamTravParamInHm;
	p_tyParamInConvert ACCESS p_NtParamTravParamInConvert;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eNtParamMotorType ACCESS p_NtParamTravMotorType;
	
	p_bInletShutterCloseRS ACCESS p_DIInShutterCloseRS;
	p_bOutletShutterCloseRS ACCESS p_DIOutShutterCloseRS;
	p_bOutletShutterCloseRS2 ACCESS p_DIOutShutterCloseRS2;
	p_bOutletShutterCloseRS3 ACCESS p_DIOutShutterCloseRS3;
	p_bProjInletShutPrep ACCESS p_NtParamProjInletShutPrep;
	p_bInShutterDis ACCESS p_McParamInShutterDis;
	p_bProjOutletShutPrep ACCESS p_NtParamProjOutletShutPrep;
	p_bPusherRetSen ACCESS p_DIPusherRetRS;
	p_bPusherExtSen ACCESS p_DIPusherExtRS;
	
	
	p_bDIConvLftSen ACCESS p_DIConvLftSen;
	p_bDIConvClrSen ACCESS p_DIConvClrSen;
	(* Always Change If Project Change *)
	
END_ACTION