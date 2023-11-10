(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsMnlUnloadMag ACCESS p_UIOpsMnlUnloadMag;
	p_bLinkOpsOutMagConvStepWaitRmv ACCESS p_OpsOutMagConvStepWaitToRmvMag;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	p_sProgNm ACCESS p_NtParamOpsMagConvStprProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_diLinkLiftBtmActualPos ACCESS p_LifterBtmActualPos;
	p_diLinkLiftBtmPos ACCESS p_McParamLifterBtmPos;
	p_diLinkLiftTopPos ACCESS p_McParamLifterTopPos;
		
	p_eStprBtmMidStat ACCESS p_PneuNoSenBtmMidStprStat;
	p_eStprBtmMidStatus ACCESS p_PneuNoSenBtmMidStprStatus;
	
	p_eStprBtmExitStat ACCESS p_PneuNoSenBtmExtStprStat;
	p_eStprBtmExitStatus ACCESS p_PneuNoSenBtmExtStprStatus;
	
	
	p_eStprTopEntStat ACCESS p_PneuNoSenTopEntStprStat;
	p_eStprTopEntStatus ACCESS p_PneuNoSenTopEntStprStatus;
	
	p_eStprTopMidStat ACCESS p_PneuNoSenTopMidStprStat;
	p_eStprTopMidStatus ACCESS p_PneuNoSenTopMidStprStatus;
	p_bStprTopMidStprExtended ACCESS p_PneuNoSenTopMidStprExtended;
	
	p_eStprTopExitStat ACCESS p_PneuNoSenTopExtStprStat;
	p_eStprTopExitStatus ACCESS p_PneuNoSenTopExtStprStatus;
	p_bStprTopExitStprExtended ACCESS p_PneuNoSenTopEntStprExtended;
	
	p_eInMagConvStatus ACCESS p_InMagConvStatus; 	//In magConv status
	p_eInMagConvStat ACCESS p_InMagConvStat; 	//In magConv status
	p_eOutMagConvStatus ACCESS p_OutMagConvStatus; 	//In magConv status
	p_eLiftMagConvStat ACCESS p_LifterMagConvStat; //LiftConv Status
	p_eLiftMagConvStatus ACCESS p_LifterMagConvStatus;
	
//	p_bBtmMagConvZ1Sen ACCESS p_DIBtmMagConvZ1Sen;
//	p_bTopMagConvZ1Sen ACCESS p_DITopMagConvZ1Sen;
	p_bBtmMagConvZ1Sen ACCESS p_DIOutMagConvEntSen;
	p_bTopMagConvZ1Sen ACCESS p_DIInMagConvExtSen;

	p_bBtmMagConvMidSen ACCESS p_DIOutMagConvMidSen; //LtoR view
	p_bTopMagConvMidSen ACCESS p_DIInMagConvMidSen;

	p_bBtmMagConvEndSen ACCESS p_DIOutMagConvExtSen; //LtoR view
	p_bTopMagConvEndSen ACCESS p_DIInMagConvEntSen;
	
	p_bMagPresentSen ACCESS p_DILifterLmtSW;	
	
	p_bEnterSig ACCESS p_OpsInMagConvStepEntToMid;
	p_bExitSig ACCESS p_OpsOutMagConvStepExtMag;
	

	(* Always Change If Project Change *)
	
END_ACTION
