(** 2020-03-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bOps ACCESS ADR(bOps);
	p_bManual ACCESS ADR(bManual);
	p_diAPos ACCESS ADR(diAPos);
	p_diBPos ACCESS ADR(diBPos);
	p_diCPos ACCESS ADR(diCPos);
	p_diDPos ACCESS ADR(diDPos);
	p_diEPos ACCESS ADR(diEPos);
	p_diFPos ACCESS ADR(diFPos);
	p_diGPos ACCESS ADR(diGPos);
	p_diHPos ACCESS ADR(diHPos);
	p_tyTuning ACCESS ADR(tyTuning);
	p_diJogVelInUMPS ACCESS ADR(diJogVelInUMPS);
	p_diMovePosInUM ACCESS ADR(diMovePosInUM);
	p_diMoveDistInUM ACCESS ADR(diMoveDistInUM);
	p_diMoveVelInUMPS ACCESS ADR(diMoveVelInUMPS);
	p_diMoveAcc ACCESS ADR(diMoveAcc);
	p_diMoveDec ACCESS ADR(diMoveDec);
	p_diMinAbsPosInUM ACCESS ADR(diMinAbsPosInUM);
	p_diMaxAbsPosInUM ACCESS ADR(diMaxAbsPosInUM);
	p_bInterruptSensor1 ACCESS ADR(bInterruptSensor1);
	p_bInterruptSensor2 ACCESS ADR(bInterruptSensor2);
	p_bInterruptSensor3 ACCESS ADR(bInterruptSensor3);
	p_bInterruptSensor4 ACCESS ADR(bInterruptSensor4);
	p_bInterruptSensor5 ACCESS ADR(bInterruptSensor5);
	p_bDir ACCESS ADR(bDir);
	p_bNoIndexPulse ACCESS ADR(bNoIndexPulse);
	p_usiNode ACCESS ADR(usiNode);
	p_sDevice ACCESS ADR(sDevice);
	p_sProgNm ACCESS ADR(sProgNm);
	p_tyParamInHm ACCESS ADR(tyParamInHm);
	p_tyParamInConvert ACCESS ADR(tyParamInConvert);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_bInletShutterCloseRS ACCESS ADR(bInletShutterCloseRS);
	p_bOutletShutterCloseRS ACCESS ADR(bOutletShutterCloseRS);
	
	p_bProjInletShutPrep ACCESS ADR(bProjInletShutPrep);
	p_bInShutterDis ACCESS ADR(bInShutterDis);
	p_bProjOutletShutPrep ACCESS ADR(bProjOutletShutPrep);
	
END_ACTION
