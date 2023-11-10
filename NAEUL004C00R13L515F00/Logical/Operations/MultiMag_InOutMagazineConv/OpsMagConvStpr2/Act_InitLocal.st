(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_eStprBtmExitStat ACCESS ADR(eStprBtmExitStat);
	p_eStprBtmExitStatus ACCESS ADR(eStprBtmExitStatus);
	p_eStprBtmMidStat ACCESS ADR(eStprBtmMidStat);
	p_eStprBtmMidStatus ACCESS ADR(eStprBtmMidStatus);

	p_eStprTopExitStat ACCESS ADR(eStprTopExitStat);
	p_eStprTopExitStatus ACCESS ADR(eStprTopExitStatus);
	p_eStprTopMidStat ACCESS ADR(eStprTopMidStat);
	p_eStprTopMidStatus ACCESS ADR(eStprTopMidStatus);
	p_eStprTopEntStat ACCESS ADR(eStprTopEntStat);
	p_eStprTopEntStatus ACCESS ADR(eStprTopEntStatus);

	p_bLiftBtmPos ACCESS ADR(bLiftBtmPos);
	p_bLiftTopPos ACCESS ADR(bLiftTopPos);
	
	p_bBtmEntToLift ACCESS ADR(bBtmEntToLift);
	p_bBtmExitFromLift ACCESS ADR(bBtmExitFromLift);
	p_bTopEntToLift ACCESS ADR(bTopEntToLift);
	p_bTopExitFromLift ACCESS ADR(bTopExitFromLift);
	p_bBtmExitFromMagConv ACCESS ADR(bBtmExitFromMagConv);
	p_bTopEntFromMagConv ACCESS ADR(bTopEntFromMagConv);
	p_bBtmExitMnl ACCESS ADR(bBtmExitMnl);

	p_bBtmMagConvZ1Sen ACCESS ADR(bBtmMagConvZ1Sen);
	p_bTopMagConvZ1Sen ACCESS ADR(bTopMagConvZ1Sen);
	
	p_bTopMagConvMidSen ACCESS ADR(bTopMagConvMidSen);
	p_bBtmMagConvMidSen ACCESS ADR(bBtmMagConvMidSen);

	p_bBtmMagConvEndSen ACCESS ADR(bBtmMagConvEndSen);
	p_bTopMagConvEndSen ACCESS ADR(bTopMagConvEndSen);
	
	p_bMagPresentSen ACCESS ADR(bMagPresentSen);
	p_eLiftMagConvAct ACCESS ADR(eLiftMagConvAct);
	
	p_bEnterSig ACCESS ADR(bEnterSig);
	p_bExitSig ACCESS ADR(bExitSig);

	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
