(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	
	p_bManual ACCESS ADR(bManual);
	p_bDir ACCESS ADR(bDir);
	p_tAlmRstTm ACCESS ADR(tAlmRstTm);
	p_tAlmTrigTm ACCESS ADR(tAlmTrigTm);
	p_tMtrBrkOffDlyTm ACCESS ADR(tMtrBrkOffDlyTm);
	p_tExtTO ACCESS ADR(tExtTO);
	p_tRetTO ACCESS ADR(tRetTO);
	p_diExtSlowSpd ACCESS ADR(diExtSlowSpd);
	p_diRetSlowSpd ACCESS ADR(diRetSlowSpd);
	p_diExtNomSpd ACCESS ADR(diExtNomSpd);
	p_diRetNomSpd ACCESS ADR(diRetNomSpd);
	p_diExtTorque ACCESS ADR(diExtTorque);
	p_diRetTorque ACCESS ADR(diRetTorque);
	p_diStartTorque ACCESS ADR(diStartTorque);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_bExtSen ACCESS ADR(bExtSen);
	p_bRetSen ACCESS ADR(bRetSen);
	p_bExtSlowSen ACCESS ADR(bExtSlowSen);
	p_bRetSlowSen ACCESS ADR(bRetSlowSen);
	p_bExtSafetySen ACCESS ADR(bExtSafetySen);
	p_bRetSafetySen ACCESS ADR(bRetSafetySen);
	p_bAlarmSig ACCESS ADR(bAlarmSig);
	p_bTorqueSig ACCESS ADR(bTorqueSig);
	
END_ACTION
