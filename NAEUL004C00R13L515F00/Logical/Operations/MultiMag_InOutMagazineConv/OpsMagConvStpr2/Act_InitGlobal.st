(** 2019-04-16 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsMnlUnloadMag ACCESS p_UIOpsMnlUnloadMag2;
	p_bLinkOpsOutMagConvStepWaitRmv ACCESS p_OpsOutMagConv2StepWaitToRmvMag;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
//	p_sProgNm ACCESS p_NtParamOpsMagConv2StprProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_diLinkLiftBtmActualPos ACCESS p_Lifter2ActualPos;
	p_diLinkLiftBtmPos ACCESS p_McParamLifterBtmPos2;
	p_diLinkLiftTopPos ACCESS p_McParamLifterTopPos2;
		
	p_eStprBtmMidStat ACCESS p_PneuNoSenBtmMidStpr2Stat;
	p_eStprBtmMidStatus ACCESS p_PneuNoSenBtmMidStpr2Status;
	
	p_eStprBtmExitStat ACCESS p_PneuNoSenBtmExtStpr2Stat;
	p_eStprBtmExitStatus ACCESS p_PneuNoSenBtmExtStpr2Status;
	
	
	p_eStprTopEntStat ACCESS p_PneuNoSenTopEntStpr2Stat;
	p_eStprTopEntStatus ACCESS p_PneuNoSenTopEntStpr2Status;
	
	p_eStprTopMidStat ACCESS p_PneuNoSenTopMidStpr2Stat;
	p_eStprTopMidStatus ACCESS p_PneuNoSenTopMidStpr2Status;
	p_bStprTopMidStprExtended ACCESS p_PneuNoSenTopMidStpr2Extended;
	
	p_eStprTopExitStat ACCESS p_PneuNoSenTopExtStpr2Stat;
	p_eStprTopExitStatus ACCESS p_PneuNoSenTopExtStpr2Status;
	p_bStprTopExitStprExtended ACCESS p_PneuNoSenTopEntStpr2Extended;
	
	p_eInMagConvStatus ACCESS p_InMagConv2Status; 	//In magConv status
	p_eInMagConvStat ACCESS p_InMagConv2Stat; 		//In magConv status
	p_eOutMagConvStatus ACCESS p_OutMagConv2Status; //In magConv status
	p_eLiftMagConvStat ACCESS p_LifterMagConv2Stat; //LiftConv Status
	p_eLiftMagConvStatus ACCESS p_LifterMagConv2Status;
	
//	p_bBtmMagConvZ1Sen ACCESS p_DIBtmMagConvZ1Sen;
//	p_bTopMagConvZ1Sen ACCESS p_DITopMagConvZ1Sen;
	p_bBtmMagConvZ1Sen ACCESS p_DIOutMagConv2EntSen;
	p_bTopMagConvZ1Sen ACCESS p_DIInMagConv2ExtSen;

	p_bBtmMagConvMidSen ACCESS p_DIOutMagConv2MidSen; //LtoR view
	p_bTopMagConvMidSen ACCESS p_DIInMagConv2MidSen;

	p_bBtmMagConvEndSen ACCESS p_DIOutMagConv2ExtSen; //LtoR view
	p_bTopMagConvEndSen ACCESS p_DIInMagConv2EntSen;
	
	p_bMagPresentSen ACCESS p_DILifter2LmtSW;	
	
	p_bEnterSig ACCESS p_OpsInMagConv2StepEntToMid;
	p_bExitSig ACCESS p_OpsOutMagConv2StepExtMag;
	

	(* Always Change If Project Change *)
	
END_ACTION
